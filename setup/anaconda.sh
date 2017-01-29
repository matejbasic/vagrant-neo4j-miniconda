#!/usr/bin/env bash

wget -nv https://repo.continuum.io/archive/Anaconda2-4.0.0-Linux-x86_64.sh
sudo bash Anaconda2-*.sh

sudo chown -R vagrant:vagrant anaconda2/
sudo chown -R vagrant:vagrant .conda/
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
sudo dpkg-reconfigure locales

conda create -n gl-env python=2.7 anaconda=4.0.0
source activate gl-env
conda update pip


pip install --upgrade --no-cache-dir https://get.graphlab.com/GraphLab-Create/2.1/your registered email address here/your product key here/GraphLab-Create-License.tar.gz
#pip install --upgrade --no-cache-dir https://get.graphlab.com/GraphLab-Create/2.1/mbasic0@foi.hr/1527-0EF2-A12D-0131-E321-3682-C5BF-A230/GraphLab-Create-License.tar.gz

conda install ipython-notebook
