#!/usr/bin/env bash

set -e
cd pipeline-manager-web
npm i
npm run build
cd ..