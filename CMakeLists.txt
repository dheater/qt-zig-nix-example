cmake_minimum_required(VERSION 3.31)
cmake_policy(SET CMP0048 NEW)

set(CMAKE_TOOLCHAIN_FILE "${CMAKE_CURRENT_SOURCE_DIR}/toolchain.cmake")
project(helloworld VERSION 0.1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Gui Widgets)
qt_standard_project_setup()

qt_add_executable(helloworld
    src/main.cpp
)

target_link_libraries(helloworld PRIVATE Qt6::Core Qt6::Gui Qt6::Widgets)
