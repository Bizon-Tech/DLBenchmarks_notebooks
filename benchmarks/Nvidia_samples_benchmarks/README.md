# Benchmark GPU Using Nvidia-samples ( Recommended when running NGC containers)

## Overview

On our Bizon Workstation we are going launch the NGC TensorFlow container that comes pre-installed in our Workstation, we will navigate to the benchmarks folder and run the commands to run the benchmarks for different batch sizes. 

### Step 1 - Launching the NGC TensorFlow container

```bash
sudo nvidia-docker run -v ~/docker_workspace:/workspace/work -it --shm-size=1g --ulimit memlock=-1  --ulimit stack=67108864 --rm 621fd859db33
```

### Step 2 - Navigate to the benchmarks
Once inside the container navigate to the benchmark folder

```bash
cd /workspace/nvidia-examples
```
If resnet50 benchmark

```bash
cd resnet50v1.5
```

If other benchmarks

```bash
cd cnn
```

### Step 3 - Commands to run the benchmarks

#### If resnet50v1.5

```bash
mpiexec --allow-run-as-root --bind-to socket -np 8 python ./main.py --mode=training_benchmark --warmup 2 --batch_size 64 --results_dir=./ --num_iter 100 --iter_unit batch
```
####Where

```bash
-np x - # of GPUs
--batch_size x # Batch size ( The bigger the number the more Vram will use the model)
--num_iter x # How long the model will run
```
#### If cnn folder benchamrks

```bash
python3 'benchname'.py --batch_size x
```

####Where

```bash
benchname # benchmark name Ex: googlenet.py alexnet.py
--batch_size x # Change the X for the batch size Ex: 64,128,256
```

If you want to see some benchmarks results refer to the Charts_results folder, we will be updating it as soon as we test more GPUs in single and multiple configurations.  


### List of benchmarks available

```bash
alexnet
densenet
googlenet
inception
lenet
overfeat
resnet
trivial
vgg
```

Notebooks for easy to run benchmarks will be available soon.
