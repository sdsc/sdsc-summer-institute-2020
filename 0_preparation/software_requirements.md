# Preparing for the Summer Institute: Software Requirements

While many of the hands-on activities will be run on Comet, some sessions require that customized software be installed on your laptop. Please perform the following software installations and file downloads prior to the event. Note: several of the preparation activities will provide information and guidance on how to install the required software components.

## Contents <a name="top"></a>
 * [Preparation: Using GitHub](#github)
 * [Plenary session: An Introduction to Singularity](#singularity)
 * [Preparation: Using Jupyter Notebooks](#notebooks)
 * [Parallel sessions: Machine Learning Overview](#mach-learn)
 * [Parallel session: Scientific visualization with Visit ](#visit)
 * [Plenary session: SeedMeLab: Creating data centric websites for researchers and research projects](#seedme)


### Using GitHub<a name="github"></a>

See this quick-start guide: https://github.com/sdsc/sdsc-summer-institute-2020/tree/master/0_preparation/using_github

[Back to Top](#top)
<hr>

### Preparation: Install VirtualBox for *An Introduction to Singularity*: <a name="singularity"></a>

If you plan to attend the introductory training session on [Singularity](https://singularity.lbl.gov/)
containers, we will be building some example containers. Unfortuntely, there is
not a stable version of Singularity for Mac OS X or Windows operating systems at
this time. It is a purely Linux-based tool. As such, if you will be
working on a Mac or Windows laptop during this session, your will need
to download and install [VirtualBox](https://www.virtualbox.org/) on
your laptop. This will allow you to run a Linux-based virtual machine on
your Mac or Windows system.

After installation and prior to attending the Summer Institute, we also
recommend the you attempt to work through the first steps to creating
and running your first (Linux) virtual machine as outlined in the
[VirtualBox User Manual](https://www.virtualbox.org/manual/ch01.html).

We recommend you create your Linux virtual machine using either the
[Ubuntu 16.04 LTS](http://releases.ubuntu.com/16.04/ubuntu-16.04.6-desktop-amd64.iso) or [CentOS 7](http://isoredirect.centos.org/centos/7/isos/x86_64/CentOS-7-x86_64-DVD-1810.iso) operating system distributions.

[Back to Top](#top)
<hr>

### Preparation: Using Jupyter Notebooks <a name="notebooks"></a>

Some sessions and tutorials will be using *Jupyter Notebooks*. Running Juypter notebooks relies on you handling your own python package installation. It was designed with *Anaconda* in mind. This is a common package manager used for data science, but it it not recommended for use on HPC systems and running jupyter notebooks remotely. Anaconda is a large package and has a lot of overhead. For best performance, we recommend using *Miniconda*, which is a free minimal installer for *conda* (an open source package management system and environment management system that runs on Windows, macOS and Linux). *conda* is a small, bootstrap version of Anaconda that includes only conda, Python, the packages they depend on, and a small number of other useful packages.

For installation and usage instructions, please see the [SDSC Notebooks 101 Tutorial](https://comet-notebooks-101.readthedocs.io/en/latest/index.html)

To learn more about Notebooks, see the [Jupyter/IPython Notebook Quick Start Guide](https://jupyter-notebook-beginner-guide.readthedocs.io/en/latest/index.html).

[Back to Top](#top)
<hr>

### Parallel session: Machine Learning Overview (scheduled opposite Scientific Visualization with Visit) <a name="mach-learn"></a>

Participants who will be attending the Machine Learning Overview parallel session will need to install R (https://www.r-project.org/) and RStudio Desktop open source edition (https://www.rstudio.com/) on their laptops. 

A basic understanding of R will be very helpful and we recommend the following resources:

* https://cran.r-project.org/doc/contrib/Torfs+Brauer-Short-R-Intro.pdf
* https://cran.r-project.org/doc/manuals/r-release/R-intro.html

[Back to Top](#top)
<hr>

### Parallel session: Scientific visualization with Visit (scheduled opposite Machine Learning Overview) <a name="visit"></a>

Participants who will be attending the Scientific visualization with Visit session on Thursday morning should make the following preparations.

* Computer, mouse with scroll wheel are required (tablets are not sufficient for this tutorial).

* [Download](https://wci.llnl.gov/simulation/computer-codes/visit/executables) and install VisIt version 3.0.1 (**the latest version**). Please do not compile from source unless you are adventurous

* Test run VisIt application on your laptop to make sure it works

* Download sample data: [visit_data_files.tar.gz](https://wci.llnl.gov/content/assets/docs/simulation/computer-codes/visit/visit_data_files.tar.gz). Unzip to your desktop

* Download [Comet host profile for VisIt-3.0.x](http://users.sdsc.edu/~amit/comet/visit3.0.x-comet-host-profile.zip).  
    Unzip and copy this file as follows  
    Linux and Mac: ~/.visit/hosts/  
    Windows: C:/users/username/Documents/visit/hosts/   
    Restart VisIt

[Back to Top](#top)
<hr>

### Plenary session: SeedMeLab: Creating data centric websites for researchers and research projects <a name="seedme"></a>
Latest web browser is needed for this session.

