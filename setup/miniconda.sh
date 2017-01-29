#!/usr/bin/env bash

# https://conda.io/docs/help/silent.html
wget -nv https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
sudo bash Miniconda2-latest-Linux-x86_64.sh -b -p /usr/local/miniconda

# set the PATH permanently!
# this makes possible to use conda without running the activation scripts
# of your conda packages which may produce errors
cat >> ~/.bashrc <<EOF
export PATH="/usr/local/miniconda/bin:$PATH"
EOF

sudo rm Miniconda2-latest-Linux-x86_64.sh
sudo chown -R vagrant:vagrant /usr/local/miniconda
