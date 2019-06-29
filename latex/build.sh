#!/bin/bash

docker build -t smillerc/latex:2019 -f Dockerfile .
docker push smillerc/latex:2019