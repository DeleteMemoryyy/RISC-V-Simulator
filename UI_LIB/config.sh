#!/bin/bash

PKG_CONFIG=$(pkg-config --cflags glfw3)
PKG_EXSITED=-I/usr/local/include

if [ "$PKG_CONFIG" != "$PKG_EXSITED" ]
then
    echo "  Installing glfw"
    sudo apt-get build-dep glfw
    sudo apt-get install cmake xorg-dev libglu1-mesa-dev
    unzip glfw-3.2.1.zip -d glfw-3.2.1
    cd glfw-3.2.1
    sudo cmake .
    sudo make
    sudo make install
    cd ..
    sudo rm -rf glfw-3.2.1
else
    echo "  Glfw has already exsited"
fi