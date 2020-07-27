echo "Launching dask scheduler"
/share/apps/compute/si2020/miniconda3/envs/python-hpc/bin/dask-scheduler --scheduler-file ~/.dask_scheduler.json --host $(hostname)
