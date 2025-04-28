
default: all

all: build

build:
    cmake -S . -B build -G Ninja
    cmake --build build

clean:
    rm -rf build
