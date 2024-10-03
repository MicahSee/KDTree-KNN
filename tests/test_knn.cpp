#include <iostream>
#include <cassert>
#include "../include/KDTree.hpp"  // Include your KDTree header file

int main() {
    // Create a simple test for KDTree
    Point p1({2.0, 3.0});
    Point p2({5.0, 4.0});
    Point p3({9.0, 6.0});

    std::vector<Point> points = {p1, p2, p3};

    KDTree tree(points);

    // Verify insertion by checking tree size
    Point target({5.0, 5.0});

    // Perform KNN search
    int k = 1;
    std::vector<Point> neighbors = tree.knnSearch(target, k);

    // Assert closest neighbor
    assert(neighbors[0] == p2);

    // Additional tests can be added here
    std::cout << "All tests passed successfully!" << std::endl;
    return 0;
}