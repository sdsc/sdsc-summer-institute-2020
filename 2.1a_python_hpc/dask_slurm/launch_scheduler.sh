echo "Launching dask scheduler"
dask-scheduler --scheduler-file ~/.dask_scheduler.json --host $(hostname)
