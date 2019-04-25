#!/usr/bin/env bash

set -e
export PATH="${PATH}:/root/miniconda3/bin"
conda env create -f dev_environment.yml || echo "env pipeline-manager-dev already present"
source activate pipeline-manager-dev
pip install -r requirements.txt
pip install -r src/tests/requirements.txt
py.test -svv --junitxml=tests/output/junit.xml --cov=tests --cov-report html

source deactivate