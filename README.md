

# Benchmark GPU comparison - Resnet50

## Getting the files

On our Bizon Workstation we need to download the benchmark files, open a NGC tensorflow container and then run the benchmarks

### Step 1 - Downloading the files

///bash
$cd Download
$mkdir benchmarks
$git clone  https://github.com/gimel383/benchmarks.git
$cd
///

### Step 2 - Loading the container with the proper files

///bash
$sudo nvidia-docker run -p "8888:8888" -v ~/Downloads/benchmarks:/workspace/work/benchmarks -it --shm-size=1g --ulimit memlock=-1  --ulimit stack=67108864 --rm 621fd859db33
$jupyter lab --port=8888 --ip=0.0.0.0 --allow-root --no-browser
///

### Step 3 - Opening Jupyter notebook to access the container

Important - Open this command on a client machine, it doesnt have to be on the same Workstation where the container is running

///bash
http://(hostip):8888/lab
///

Change the (hostip) for the IP where the container is running
Insert the token to login into the notebook

### Step 4 - Launching the notebook

Once inside Jupyter go to /work/benchmarks/RTX8000 vs RTX 2080 Ti.ipynb
Follow the steps on the notebook to run the benchamrks.
