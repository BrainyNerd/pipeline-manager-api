#!/usr/bin/env bash
set -e
CONDA_DEVELOPMENT_ENV_NAME=pipeline_manager_dev
export PATH="${PATH}:/root/miniconda3/bin"
conda env create -f dev_environment.yml || echo "env pipeline_manager_dev already present"
source activate ${CONDA_DEVELOPMENT_ENV_NAME}
./ci-scripts/setup-web.sh
pip install -r requirements.txt
echo "*********** Packaging pipeline manager **************"
pyb publish
echo "*********** Packaging completed **************"
conda deactivate
echo "*********** ${CONDA_DEVELOPMENT_ENV_NAME} environment deactivated **************"