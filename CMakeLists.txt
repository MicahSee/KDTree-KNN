cmake_minimum_required(VERSION 3.10)
project(KNN_KDTree VERSION 1.0 DESCRIPTION "A C++ K-Nearest Neighbors implementation using KD-trees" LANGUAGES CXX)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_EXTENSIONS OFF)

# Include directories
include_directories(include)

# Enable testing
enable_testing()

# Source and header files for the main library
set(SOURCES
    src/KDTree.cpp
)

set(HEADERS
    include/KDTree.hpp
    include/Point.hpp
)

# Add library for the KDTree implementation
add_library(KDTreeLib ${SOURCES} ${HEADERS})

# Main executable target for the project
add_executable(KNN_KDTree src/main.cpp)

# Link the main executable with the KDTree library
target_link_libraries(KNN_KDTree PRIVATE KDTreeLib)

# Add test executable
add_executable(test_knn tests/test_knn.cpp)

# Link test executable with the KDTree library
target_link_libraries(test_knn PRIVATE KDTreeLib)

# Register the test with CTest
add_test(NAME KNNTest COMMAND test_knn)