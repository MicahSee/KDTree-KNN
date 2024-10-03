# KNN-KDTree

A C++ implementation of the K-Nearest Neighbors (KNN) algorithm using kd-trees for efficient nearest neighbor searches in k-dimensional space. This project demonstrates the use of smart pointers (`std::unique_ptr`) to manage memory safely and efficiently.

## Table of Contents

- [KNN-KDTree](#knn-kdtree)
  - [Table of Contents](#table-of-contents)
  - [Overview](#overview)
  - [Features](#features)
  - [Project Structure](#project-structure)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)

## Overview

The KNN-KDTree project provides a robust and efficient implementation of the K-Nearest Neighbors algorithm using kd-trees. It leverages modern C++ features, including smart pointers, to ensure safe and maintainable code.

## Features

- **Kd-Tree Implementation**: Efficiently organizes points in k-dimensional space for rapid nearest neighbor searches.
- **Smart Pointers**: Utilizes `std::unique_ptr` for automatic memory management, preventing memory leaks and dangling pointers.
- **Flexible Dimensions**: Easily configurable for different dimensional spaces.
- **Extensible Design**: Modular code structure allows for easy enhancements and integration.

## Project Structure
- **include/**: Header files defining structures and classes.
- **src/**: Source files implementing the logic and the main application.
- **tests/**: Contains test cases to validate the implementation.
- **CMakeLists.txt**: Build configuration using CMake.
- **README.md**: Project documentation.

## Prerequisites

- **C++ Compiler**: Compatible with C++17 (e.g., GCC, Clang, MSVC).
- **CMake**: Version 3.10 or higher.
- **Git**: For cloning the repository.

## Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/yourusername/KNN-KDTree.git
   cd KNN-KDTree
   ```

2. **Build the Project**
    ```
    mkdir build
    cd build
    cmake ..
    cmake --build .
    ```

3. **Run the example**
    ```
    ./KNN_KDTree
    ```