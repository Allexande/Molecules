cmake_minimum_required(VERSION 3.17)
project(Molecules)

set(CMAKE_CXX_STANDARD 17)

add_executable(Molecules main.cpp include/GraphicsLib.hpp include/Vec2d.h
                                  src/GraphicsLib.cpp     src/Vec2d.cpp)