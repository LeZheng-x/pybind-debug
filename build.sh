#!/bin/bash

BUILD_PATH=./build/
gnome-terminal --tab --title="build" -e "bash -c 'source ~/anaconda3/etc/profile.d/conda.sh && \
            conda activate yopo && \
            which python && \
            cp setup.py ${BUILD_PATH} && \
            cd ${BUILD_PATH}; cmake ..; make -j; pip install --no-clean . && \
            exec bash'"