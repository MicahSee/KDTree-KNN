#include "KDTree.hpp"
#include <iostream>
#include <vector>

// Function to create sample data
std::vector<Point> createSampleData() {
    return {
        { {2.0, 3.0, 4.0}, 1 },
        { {5.0, 4.0, 2.0}, 2 },
        { {9.0, 6.0, 7.0}, 3 },
        { {4.0, 7.0, 9.0}, 4 },
        { {8.0, 1.0, 5.0}, 5 },
        { {7.0, 2.0, 6.0}, 6 }
    };
}

int main(){
    // Create sample dataset
    std::vector<Point> points = createSampleData();

    // Build kd-tree
    KDTree tree(points);

    // Define query point
    Point target = { {5.0, 5.0, 5.0}, -1 };

    // Number of neighbors
    int k = 3;

    // Perform KNN search
    std::vector<Point> neighbors = tree.knnSearch(target, k);

    // Output the neighbors
    std::cout << "The " << k << " nearest neighbors are:\n";
    for(const auto& p : neighbors){
        std::cout << "ID: " << p.id << " Coordinates: (";
        for(int i = 0; i < K_DIMENSIONS; ++i){
            std::cout << p.coords[i] << (i < K_DIMENSIONS -1 ? ", " : "");
        }
        std::cout << ")\n";
    }

    return 0;
}