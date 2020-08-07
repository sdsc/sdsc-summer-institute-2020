# 4.1a. GPU Computing and Programming

By: Andreas Goetz, SDSC (agoetz@sdsc.edu)

This directory contains the slides and exercises for the SDSC 2020
Summer Institute online workshop on GPU computing and programming.

This material provides an introduction to massively parallel computing
with graphics processing units (GPUs). Over the last decade the use of
GPUs has becom increasingly popular across all scientific domains
since GPUs can significantly accelerate time to solution for many
computational tasks.
Participants will be introduced to the essential background of GPU
chip architectures and the basics of programming GPUs via the use of
libraries, OpenACC compiler directives, and the CUDA programming
language. The participants will thus acquire the foundation to use and
develop GPU aware applications.

---
# Webinar recording
A recording of a webinar from April 2019 with abbreviated content is
available here:

https://education.sdsc.edu/training/interactive/201904_gpu_computing_programming/


---
# Accessing and using GPU nodes on SDSC Comet
This information has been covered in various places but is repeated
here for convenience.

## Obtain interactive shared GPU node on SDSC Comet
Your `.bashrc` file should contain an alias `getgpu` that will give
you access to a single GPU on SDSC Comet's shared GPU nodes for 3h.
```
# Execute the following command
getgpu
```

This will launch following command, which you could also type instead:
```
srun --pty --nodes=1 --ntasks-per-node=6 --gres=gpu:1 --partition gpu-shared \
     -t 3:00:00 --reservation=si2020resday4 --wait 0 /bin/bash
```

After a short while you should get logged into a GPU node with Nvidia
K80 GPUs. Each node has 24 CPU cores and 4 GPUs. You can use up to 6
CPU cores and a single GPU.

## Load CUDA and PGI compiler modules
In order to use the CUDA tool chain and the PGI compilers, you have to
load the corresponding modules:
```
module purge
module load cuda
module load pgi
```

If the PGI compilers fail due to a license error you may have to execute the following:
```
export LM_LICENSE_FILE=40200@elprado.sdsc.edu:$LM_LICENSE_FILE
```

Check the Nvidia CUDA compiler version:
```
user@comet:~>nvcc --version

nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2019 NVIDIA Corporation
Built on Wed_Apr_24_19:10:27_PDT_2019
Cuda compilation tools, release 10.1, V10.1.168
```

Check the PGI compiler version:
```
user@comet:~> pgcc --version 

pgcc 18.10-1 64-bit target on x86-64 Linux -tp haswell 
PGI Compilers and Tools
Copyright (c) 2018, NVIDIA CORPORATION.  All rights reserved.

```

## Check installed GPUs with NVIDIA System Management Interface (nvidia-smi)
The Nvidia system management interface (`nvidia-smi`) can be used to
gather information about the available GPUs. 
It will also show any currently running jobs on GPUs.
```
# Execute the following command to get information about GPUs in the system
user@comet:~> nvidia-smi
```

Check visible devices (should be set to free GPU)
```
user@comet:~> echo $CUDA_VISIBLE_DEVICES
```
This environment variable should be set by the queuing system to the 
ID of the free GPU. Do not change it.


---
# NVIDIA CUDA Toolkit code samples
The CUDA Toolkit comes with a set of code samples. 
It is a good idea to take a look at these code samples as they are a
very instructive resource. Much can be learned by running the samples
and inspecting the source code. 
Some samples are also useful tools (e.g. `deviceQuery`).

Copy the CUDA code samples (current CUDA verson installed on Comet is
10.1) into the current directory:
```
cuda-install-samples-10.1.sh ./
```

Compile the samples:
```
cd NVIDIA_CUDA-10.1_Samples
make -j 6
```

Or compile only samples of interest, e.g. `deviceQuery`:
```
cd 1_Utilities/deviceQuery
make
```

Run deviceQuery to query information on available GPUs
```
cd 1_Utilities/deviceQuery/
./deviceQuery
...
... lots of information on available GPUs will be printed
...
```

---
# Simple code samples accompanying slides

See directory `cuda-samples` for CUDA sample codes. 
Compile with 
```
nvcc example.cu -o example.x
```

See directory `openacc-samples` for OpenACC sample codes.
Compile with 
```
pgcc example.c -o example.x -acc -Minfo=accel
```
