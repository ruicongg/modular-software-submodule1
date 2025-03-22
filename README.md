# Submodule 1

This repository contains a simple C++ library that serves as Submodule 1 in the modular software architecture. It integrates with Submodule 1_1 as a dependency.

## Features

- Core functionality of Submodule 1
- Integration with Submodule 1_1
- Enhanced greeting functionality that builds upon Submodule 1_1

## Dependencies

This module depends on Submodule 1_1, which is included as a Git submodule in this repository.

## Script to build and run the tests

```bash
./build_and_test.sh
```

Alternatively, you can build and run the tests manually:

## Building

This project uses CMake as its build system:

```bash
mkdir build
cd build
cmake ..
make
```

## Testing

Unit tests are implemented using Google Test framework:

```bash
cd build
ctest
```

Or run the test executable directly:

```bash
./build/tests/test_submodule1
```

## Integration

This module is designed to be used as a component in the master software. 
## Requirements

- C++17 compatible compiler
- CMake 3.10 or higher
- Google Test (for running tests)
