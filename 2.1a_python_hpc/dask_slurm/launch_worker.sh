echo "Launching dask worker"
MEM_GB=100
# memory limit is in bytes
MEM=$(( $MEM_GB*1024**3 ))
/share/apps/compute/si2020/miniconda3/envs/python-hpc/bin/dask-worker --scheduler-file ~/.dask_scheduler.json --memory-limit $MEM --nprocs 1
