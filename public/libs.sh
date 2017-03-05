#!/usr/bin/env bash

conda update -q -y conda
conda update -q -y pip

conda install -q -y ipython-notebook
conda install -q -y scikit-learn
conda install -q -y matplotlib

pip install py2neo

conda clean
