#include "KDTree.hpp"

// Constructor: Builds the kd-tree
KDTree::KDTree(const std::vector<Point>& points) : k_dimensions(K_DIMENSIONS) {
    // Make a copy of points for building
    std::vector<Point> pts = points;
    root = buildTree(std::move(pts), 0);
}

// Recursive function to build the kd-tree
std::unique_ptr<KDNode> KDTree::buildTree(std::vector<Point> points, int depth) {
    if(points.empty()) return nullptr;

    int axis = depth % k_dimensions;
    size_t medianIdx = points.size() / 2;

    // Sort points based on the current axis
    std::nth_element(points.begin(), points.begin() + medianIdx, points.end(),
        PointComparator(axis));

    // Create node and recursively build subtrees
    std::unique_ptr<KDNode> node = std::make_unique<KDNode>(points[medianIdx]);

    // Build left and right subtrees
    std::vector<Point> leftPoints(points.begin(), points.begin() + medianIdx);
    std::vector<Point> rightPoints(points.begin() + medianIdx + 1, points.end());

    node->left = buildTree(std::move(leftPoints), depth + 1);
    node->right = buildTree(std::move(rightPoints), depth + 1);

    return node;
}

// KNN Search function
std::vector<Point> KDTree::knnSearch(const Point& target, int k) const {
    // Max heap to store the nearest neighbors (distance, Point)
    std::priority_queue<std::pair<double, Point>, std::vector<std::pair<double, Point>>, ComparePair> maxHeap;
    
    // Start recursive search from the root
    knnSearchHelper(root.get(), target, k, 0, maxHeap);

    // Extract points from the heap
    std::vector<Point> neighbors;
    while(!maxHeap.empty()){
        neighbors.emplace_back(maxHeap.top().second);
        maxHeap.pop();
    }
    // Reverse to have nearest first
    std::reverse(neighbors.begin(), neighbors.end());
    return neighbors;
}

// Helper function for KNN search
// change to smart pointer for first argument
void KDTree::knnSearchHelper(const KDNode* node, const Point& target, int k, int depth,
                             std::priority_queue<std::pair<double, Point>, std::vector<std::pair<double, Point>>, ComparePair>& maxHeap) const {
    if(node == nullptr) return;

    double distSq = node->point.distanceSquared(target);

    if(maxHeap.size() < k){
        maxHeap.emplace(distSq, node->point);
    }
    else if(distSq < maxHeap.top().first){
        maxHeap.pop();
        maxHeap.emplace(distSq, node->point);
    }

    int axis = depth % k_dimensions;
    double diff = target.coords[axis] - node->point.coords[axis];

    const KDNode* first = diff < 0 ? node->left.get() : node->right.get();
    const KDNode* second = diff < 0 ? node->right.get() : node->left.get();

    // Search the side that target is in
    knnSearchHelper(first, target, k, depth + 1, maxHeap);

    // If there's a possibility of closer points on the other side, search it
    if(maxHeap.size() < k || (diff * diff) < maxHeap.top().first){
        knnSearchHelper(second, target, k, depth + 1, maxHeap);
    }
}