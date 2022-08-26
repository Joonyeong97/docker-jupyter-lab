#!/bin/bash

docker run -it --gpus all -p 8209:8888 -v /mnt/d/notebook:/home/ezmeta/work \
-v /mnt/d/data:/home/ezmeta/data \
--name jupyter-lab \
docker.io/joon09/jupyter-lab-gpu:ezmeta


#docker run -it --gpus all -p 8209:8888 \
#--name jupyter-lab-test \
#joon09/jupyter-lab-gpu:ezmeta01