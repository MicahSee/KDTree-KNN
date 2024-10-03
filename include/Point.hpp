#ifndef POINT_HPP
#define POINT_HPP

#include <array>

// Define the number of dimensions
constexpr int K_DIMENSIONS = 3; // Example for 3D points

struct Point {
    std::array<double, K_DIMENSIONS> coords;
    int id; // Optional: to identify the point

    // Compute squared Euclidean distance between two points
    double distanceSquared(const Point& other) const {
        double dist = 0.0;
        for(int i = 0; i < K_DIMENSIONS; ++i){
            double diff = coords[i] - other.coords[i];
            dist += diff * diff;
        }
        return dist;
    }

    // Overload the equality operator
    bool operator==(const Point& other) const {
        for (int i = 0; i < K_DIMENSIONS; ++i) {
            if (coords[i] != other.coords[i]) {
                return false;
            }
        }

        return true;
    }
};

#endif // POINT_HPP