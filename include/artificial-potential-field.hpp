#pragma once

#include <utility>  // for std::pair
#include <vector>
#include <array>
#include <tuple>

// Calculate the attractive potential at a given point (x, y) with goal (gx, gy)
double calc_attractive_potential(double x, double y, double gx, double gy);

// Calculate the repulsive potential at a given point (qx, qy) with obstacles (ox, oy) and influence radius rr
double calc_repulsive_potential(const double qx, const double qy, const std::vector<double> &ox,
                                const std::vector<double> &oy, const double rr);

// Calculate the potential field with goal (gx, gy), obstacles (ox, oy), resolution reso, robot radius rr, and start (sx, sy)
std::tuple<std::vector<std::vector<double>>, double, double, double, double> calc_potential_field(
    const double gx, const double gy, const std::vector<double> &ox, const std::vector<double> &oy,
    const double reso, const double rr, const double sx, const double sy);

// Reshape a 2D vector to new dimensions (new_rows, new_cols)
std::vector<std::vector<double>> reshape_vector(const std::vector<std::vector<double>> &original,
                                                size_t new_rows, size_t new_cols);

// Transpose a 2D vector
std::vector<std::vector<double>> transpose_vector(std::vector<std::vector<double>> &data);

// Get the motion model for the robot
std::array<std::array<int, 2>, 8> get_motion_model();

// Perform potential field planning with start (sx, sy), goal (gx, gy), obstacles (ox, oy), grid size, and robot radius
std::tuple<std::vector<double>, std::vector<double>> potential_field_planning(
    const double sx, const double sy, const double gx, const double gy,
    const std::vector<double> &ox, const std::vector<double> &oy, const double grid_size,
    const double robot_radius);