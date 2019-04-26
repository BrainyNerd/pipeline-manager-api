#!/usr/bin/env bash

set -e
export PATH="${PATH}:/root/miniconda3/bin"
conda env create -f dev_environment.yml || echo "env pipeline_manager_dev already present"
source activate pipeline_manager_dev
pip install -r requirements.txt
./ci-scripts/setup-web.sh
python src/main/pipeline_manager/server.py