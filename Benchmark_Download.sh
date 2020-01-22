#!/bin/bash

# Downloading the benchmarks on the right location
cd Downloads
git clone  https://github.com/gimel383/benchmarks.git

# Opening NGC tensorflow container
sudo nvidia-docker run -p "8888:8888" -v ~/Downloads/benchmarks:/workspace/work/benchmarks -it --shm-size=1g --ulimit memlock=-1  --ulimit stack=67108864 --rm 621fd859db33
jupyter lab --port=8888 --ip=0.0.0.0 --allow-root --no-browser

echo 'Inside the container run the command below'

echo jupyter lab --port=8888 --ip=0.0.0.0 --allow-root --no-browser
