# Instructions for running R on Comet using SI20 Training Accounts:


## [1] If you already have a default conda/miniconda environment running:

**(a)** Deactivate your default environment:

conda deactivate

**(b)** Drop into our conda environment with R support

rconda

**(c)** Clone reverse proxy files(skip this step if you already did this):

git clone https://github.com/sdsc-hpc-training-org/reverse-proxy.git

**(d)** Change to the reverse-proxy directory:

cd reverse-proxy

**(e)** Start up notebook

./start_notebook -b $HOME/batch_r.sh

**(f)** Once the job you have the job submitted you can revert back to your environment by doing:

conda deactivate
source ~/.bashrc

(or you can logout and login)

## [2] If you don't have a Miniconda environment, you can just run the R notebooks using ours:

**(a)** Drop into your conda environment with R support

rconda

**(b)**  Clone reverse proxy files(skip this step if you already did this):

git clone https://github.com/sdsc-hpc-training-org/reverse-proxy.git

**(c)** Change to the reverse-proxy directory:

cd reverse-proxy

**(d)** Start the notebook

./start_notebook -b $HOME/batch_r.sh

**(e)** You can deactivate conda to get back to your normal environment:

conda deactivate
