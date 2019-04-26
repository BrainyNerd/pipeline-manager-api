#!/usr/bin/env bash

set -e
git clone git@bitbucket.org:iucaa/pipeline-manager-web.git || echo "pipeline web already exists"
cd pipeline-manager-web
npm i
npm run build
cd ..