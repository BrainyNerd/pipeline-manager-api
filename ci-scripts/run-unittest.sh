#!/usr/bin/env bash

set -e
#Assuming conda path is exported
conda env create -f dev_environment.yml || echo "env pipeline-manager-dev already present"
source activate pipeline-manager-dev
pip install -r requirements.txt
pip install -r src/tests/requirements.txt
py.test -svv --junitxml=tests/output/junit.xml --cov=app  --cov-report html

source deactivate