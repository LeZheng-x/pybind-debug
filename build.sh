#!/bin/bash

BUILD_PATH=./build/
gnome-terminal --tab --title="build" -e "bash -c 'mkdir -p build; cp setup.py ${BUILD_PATH} && \
            cd ${BUILD_PATH}; cmake ..; make -j; pip install --no-clean . && \
            exec bash'"
