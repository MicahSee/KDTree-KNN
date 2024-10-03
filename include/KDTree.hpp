#ifndef KDTREE_HPP
#define KDTREE_HPP

#include "Point.hpp"
#include <vector>
#include <memory>
#include <queue>
#include <algorithm>
#include <functional>

using DistPointPair = std::pair<double, Point>;


// Comparator for sorting points based on a specific axis
struct PointComparator {
    int axis;
    PointComparator(int axis_) : axis(axis_) {}
    bool operator()(const Point& a, const Point& b) const {
        return a.coords[axis] < b.coords[axis];
    }
};

// Custom comparator for the priority queue (max-heap based on distance)
struct ComparePair {
    bool operator()(const std::pair<double, Point>& a, const std::pair<double, Point>& b) const {
        return a.first < b.first; // Max-heap: larger distance has higher priority
    }
};

// KDNode structure using smart pointers
struct KDNode {
    Point point;
    std::unique_ptr<KDNode> left;
    std::unique_ptr<KDNode> right;

    KDNode(const Point& pt) : point(pt), left(nullptr), right(nullptr) {}
};

class KDTree {
public:
    KDTree(const std::vector<Point>& points);
    ~KDTree() = default; // Smart pointers handle memory

    // KNN search
    std::vector<Point> knnSearch(const Point& target, int k) const;

private:
    std::unique_ptr<KDNode> root;
    int k_dimensions;

    // Recursive function to build the kd-tree
    std::unique_ptr<KDNode> buildTree(std::vector<Point> points, int depth);

    // Helper function for KNN search
    void knnSearchHelper(const KDNode* node, const Point& target, int k, int depth,
                        std::priority_queue<std::pair<double, Point>, std::vector<std::pair<double, Point>>, ComparePair>& maxHeap) const;
};

#endif // KDTREE_HPP