#!/usr/bin/env bash

set -e
#Assuming conda path is exported
conda env create -f dev_environment.yml || echo "env pipeline-manager-dev already present"
source activate pipeline-manager-dev
pip install -r requirements.txt

cd pipeline-manager-web
npm i
npm run build
cd ..
python src/main/pipeline_manager/server.py