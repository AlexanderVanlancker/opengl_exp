cmake_minimum_required(VERSION 3.10)

project(gltest)


set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 17)

include_directories(include)

#add_library(GrahamScanAlgorithm SHARED src/GrahamScanAlgorithm.cpp)
#add_library(Point SHARED src/Point.cpp)

set(SOURCES
	src/main.cpp
    src/glad.c
    src/shader.cpp
    src/stb_image.cpp
) 

find_package(glfw3 REQUIRED)
find_package(OpenGL REQUIRED)

include_directories(${OPENGL_INCLUDE_DIR} ${GLFW3_INCLUDE_DIRS})

add_executable(gltest ${SOURCES} ${HEADERS})

target_link_libraries(gltest ${OPENGL_LIBRARIES} glfw)

enable_testing()
