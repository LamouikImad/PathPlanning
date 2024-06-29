#include <fmt/format.h>
#include <matplot/matplot.h>

#include <cassert>
#include <cmath>
#include <deque>
#include <iostream>
#include <limits> // infinity
#include <type_traits>
#include <utility> // pair
#include <vector>
#include <fmt/ranges.h>

const float KATT = 5.0;                      // attractive potential gain
const float KREP = 5.0;                     // repulsive potential gain
const float AREA_WIDTH = 30.0;               // potential area width [m]
const int OSCILLATIONS_DETECTION_LENGTH = 3; // the number of previous positions used to check oscillations
bool show_animation = true;

double calc_attractive_potential(double x, double y, double gx, double gy)
{
  double distance = std::hypot(x - gx, y - gy);
  return 0.5 * KATT * distance;
}

double calc_repulsive_potential(const double qx, const double qy, const std::vector<double> &ox,
                                const std::vector<double> &oy, const double rr)
{
  // Search nearest obstacle
  auto minid = -1;
  auto dmin = std::numeric_limits<double>::infinity();

  for (size_t i = 0; i < ox.size(); i++)
  {
    auto d = std::hypot(qx - ox[i], qy - oy[i]);
    if (d < dmin)
    {
      dmin = d;
      minid = static_cast<int>(i);
    }
  }

  auto dq = std::hypot(qx - ox[minid], qy - oy[minid]);

  if (dq <= rr)
  {
    if (dq <= 0.1)
    {
      dq = 0.1;
    }

    return 0.5 * KREP * std::pow(1.0 / dq - 1.0 / rr, 2);
  }
  else
  {
    return 0.0;
  }
}

std::tuple<std::vector<std::vector<double>>, double, double, double, double> calc_potential_field(
    const double gx, const double gy, const std::vector<double> &ox, const std::vector<double> &oy,
    const double reso, const double rr, const double sx, const double sy)
{
  auto minx = std::min({*std::min_element(ox.begin(), ox.end()), sx, gx}) - AREA_WIDTH / 2.0;
  auto miny = std::min({*std::min_element(oy.begin(), oy.end()), sy, gy}) - AREA_WIDTH / 2.0;
  auto maxx = std::max({*std::max_element(ox.begin(), ox.end()), sx, gx}) + AREA_WIDTH / 2.0;
  auto maxy = std::max({*std::max_element(oy.begin(), oy.end()), sy, gy}) + AREA_WIDTH / 2.0;

  auto xw = int(std::round((maxx - minx) / reso));
  auto yw = int(std::round((maxy - miny) / reso));

  std::vector<std::vector<double>> pmap(
      xw, std::vector<double>(yw, 0.0)); // initializes the outer vector with xw elements, each of
                                         // which is a vector of yw elements initialized to 0.0.

  for (int ix = 0; ix < xw; ix++)
  {
    auto x = ix * reso + minx;

    for (int iy = 0; iy < yw; iy++)
    {
      auto y = iy * reso + miny;
      auto ug = calc_attractive_potential(x, y, gx, gy);
      auto uo = calc_repulsive_potential(x, y, ox, oy, rr);
      auto uf = ug + uo;
      pmap[ix][iy] = uf;
    }
  }
  return {pmap, minx, miny, xw, yw};
}

std::vector<std::vector<double>> reshape_vector(const std::vector<std::vector<double>> &original,
                                                size_t new_rows, size_t new_cols)
{
  size_t original_rows = original.size();
  size_t original_cols = original[0].size();

  // Calculate the total number of elements
  size_t total_elements = original_rows * original_cols;

  // Flatten the original 2D vector to a 1D vector
  std::vector<double> flat;
  flat.reserve(total_elements);
  for (const auto &row : original)
  {
    flat.insert(flat.end(), row.begin(), row.end());
  }

  // Create the reshaped 2D vector
  std::vector<std::vector<double>> reshaped(new_rows, std::vector<double>(new_cols));
  for (size_t i = 0; i < new_rows; ++i)
  {
    for (size_t j = 0; j < new_cols; ++j)
    {
      reshaped[i][j] = flat[i * new_cols + j];
    }
  }

  return reshaped;
}

std::vector<std::vector<double>> transpose_vector(std::vector<std::vector<double>> &data)
{
  size_t rowCount = data.size();
  size_t colCount = data[0].size();

  // Create a new matrix with transposed dimensions
  std::vector<std::vector<double>> transposed(colCount, std::vector<double>(rowCount));

  // Fill the transposed matrix with the correct values
  for (size_t i = 0; i < rowCount; ++i)
  {
    for (size_t j = 0; j < colCount; ++j)
    {
      transposed[j][i] = data[i][j];
    }
  }

  return transposed;
}

std::array<std::array<int, 2>, 8> get_motion_model()
{
  // A list of all     possible movements to neighboring cells
  std::array<std::array<int, 2>, 8> motion = {{{1, 0}, {0, 1}, {-1, 0}, {0, -1}, {-1, -1}, {-1, 1}, {1, -1}, {1, 1}}};

  return motion;
}

std::tuple<std::vector<double>, std::vector<double>> potential_field_planning(
    const double sx, const double sy, const double gx, const double gy,
    const std::vector<double> &ox, const std::vector<double> &oy, const double grid_size,
    const double robot_radius)
{
  fmt::println("potential_field_planning start...");

  std::vector<double> x_path;
  std::vector<double> y_path;
  // calc potential field
  auto [pmap, minx, miny, xw, yw] = calc_potential_field(gx, gy, ox, oy, grid_size, robot_radius, sx, sy);

  // search path
  auto d = std::hypot(sx - gx, sy - gy); // The distance between the current position and the goal.
  auto ix = std::round((sx - minx) / grid_size);
  auto iy = std::round((sy - miny) / grid_size);
  auto gix = std::round((gx - minx) / grid_size);
  auto giy = std::round((gy - miny) / grid_size);

  auto motion = get_motion_model();
  std::deque<int> previous_ids;

  while (d >= grid_size)
  {
    auto minp = std::numeric_limits<double>::infinity(); // The minimum potential and corresponding
                                                         // grid indices.
    auto minix = -1;
    auto miniy = -1;

    for (auto &m : motion)
    {
      auto inx = ix + m[0];
      auto iny = iy + m[1];

      if (inx >= pmap.size() || iny >= pmap[0].size() || inx < 0 || iny < 0) // Boundary Check
      {
        fmt::println("Outside potential");

        continue;
      }

      auto p = pmap[inx][iny];

      if (minp > p)
      {
        minp = p;
        minix = inx;
        miniy = iny;
      }
    }

    // Update the current position indices ix and iy to the indices of the minimum potential
    // neighbor.
    ix = minix;
    iy = miniy;

    // Convert the grid indices ix and iy to world coordinates xp and yp using the resolution reso
    // and the minimum x and y bounds minx and miny.
    auto xp = ix * grid_size + minx;
    auto yp = iy * grid_size + miny;
    d = std::hypot(gx - xp, gy - yp);

    x_path.push_back(xp);
    y_path.push_back(yp);

    //  if (oscillations_detection(previous_ids, ix, iy)):
    //     print("Oscillation detected at ({},{})!".format(ix, iy))
    //     break
  }

  fmt::println("Goal reached.");

  if (show_animation)
  {
    fmt::print("Generating plot, please wait...");
    matplot::subplot(1, 2, 0);

    matplot::hold(matplot::on);
    matplot::grid(false);
    matplot::xticks({});
    matplot::xticks({});

    matplot::pcolor(transpose_vector(pmap)); // draw heat map
    matplot::plot(matplot::transform(
                      x_path, [&](auto x_path)
                      { return std::round((x_path - minx) / grid_size); }),
                  matplot::transform(
                      y_path, [&](auto y_path)
                      { return std::round((y_path - miny) / grid_size); }),
                  ".r");               // draw path
    matplot::plot({ix}, {iy}, "*k");   // draw start
    matplot::plot({gix}, {giy}, "*m"); // draw goal

    matplot::subplot(1, 2, 1);

    auto reshaped = reshape_vector(pmap, yw, xw);

    auto x = matplot::linspace(0, yw, xw);
    auto y = matplot::linspace(0, 100, yw);
    auto [X, Y] = matplot::meshgrid(x, y);
    matplot::surf(X, Y, reshaped);

    fmt::println("Done.");

    matplot::show();
  }

  fmt::print("x_path: {}\n", x_path);
  fmt::print("y_path: {}\n", y_path);
  return {x_path, y_path};
}
