#!/bin/bash

BUILD_PATH=./build/
CONDA_NAME=base
gnome-terminal --tab --title="build" -e "bash -c 'source ~/anaconda3/etc/profile.d/conda.sh && \
            conda activate ${CONDA_NAME} && \
            mkdir -p build; cp setup.py ${BUILD_PATH} && \
            cd ${BUILD_PATH}; cmake ..; make -j; pip install --no-clean . && \
            exec bash'"
