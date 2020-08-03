# SI20 Training Accounts

Each member of the class, and instructors have a training account with a default user environment customized with the right paths and software paths, including the conda/mininconda software.

## NOTES/UPDATES:

### [1] Do not replace the ```.bashrc``` with your own. 

SC20 aliases and paths are pre-installed (see below) and if you replace the files you will not be able to run the example software.

### [2] SDSD staff have cleared out all the miniconda installs from each of your training directories. Please do not re-install conda. If you have trouble, go to the Gitter HelpDesk.

<hr>

### Default applications location:
You have been set up with a default user environment: you do not need have a .bashrc file. You will see the code in this folde *by default*

[train147@comet-ln2 ~]$ ls -al /share/apps/compute/si2020
total 86824
drwxr-sr-x  4 mahidhar use300     4096 Jul 27 22:04 .
drwxrwsr-x 96 mahidhar use300     4096 Jul 29 18:18 ..
-rw-r--r--  1 mahidhar use300      525 Jul 26 17:15 environment.yml
-rw-r--r--  1 mahidhar use300      524 Jul 26 17:13 install.notes.txt
-rw-r--r--  1 mahidhar use300       68 Jul 26 17:10 md5.txt
drwxr-sr-x 15 mahidhar use300     4096 Jul 29 08:46 miniconda3
-rw-r--r--  1 mahidhar use300 88867207 Jun 16 13:05 Miniconda3-latest-Linux-x86_64.sh
drwxr-sr-x  7 mahidhar use300     4096 Aug  1 14:19 reverse-proxy
-rw-r--r--  1 mahidhar use300      170 Jul 26 17:11 sha256.txt

## Node Reservations:

### CPU reservations
For the class, we have created special SLURM queue reservations so our jobs will run faster. Please use the following aliases:

```
getcpu - one comput node for 3 hours
getcpu1  - one comput node for 1 hour
```

### GPU reservations

```
getgpu - one GPU for 3 hours (on days with GPU hands-on)
getgpu1 - one GPU for 1 hour (on days with GPU hands-on)
```

## Using Jupyter Technologies

### Jupyter Notebooks 
(*Session 2.1a. Python for HPC*)
The command to run *secure* Jupyter notebook servers for this class is the *start_python_hpc_notebook* command (this will be in your path).

```
[train147@comet-ln2 ~]$ which start_python_hpc_notebook
/share/apps/compute/si2020/reverse-proxy/start_python_hpc_notebook
```

The default time is set to 240 minutes in the compute partition. If you want you can give some other value for the time, you can provide it as an argument:

```
start_python_hpc_notebook 30
```

### JupyterLab servers

```
start_python_hpc_jupyterlab
```

### Notebooks hosting *Spark*
Session 4.1b. Scalable Machine Learning 

```
start_python_sparkr_cpu
start_python_sparkr_gpu (gives you a K80 in gpu-shared)
```

## GPU reservations
*getcpu:  "srun --pty --nodes=1 --ntasks-per-node=24 -p compute -t 3:00:00 --reservation=si2020resday1 --wait 0 /bin/bash"
*getgpu:  "srun --pty --nodes=1 --ntasks-per-node=6 --gres=gpu:1 --partition gpu-shared -t 3:00:00  --reservation=si2020resday1 --wait 0 /bin/bash"
*getcpu1:  "srun --pty --nodes=1 --ntasks-per-node=24 -p compute -t 1:00:00 --reservation=si2020resday1 --wait 0 /bin/bash"



