# Paperspace + Nebula Docker files

*Jupyterlab version*


## Build
docker build -t dsivov/nebula_gradient:v05 .
docker tag  dsivov/nebula_gradient:v05 dsivov/nebula_gradient:latest
docker push  dsivov/nebula_gradient:latest

## Pre-built runtimes

You can also just run the following without having to build the entire container yourself. This will pull the container from Docker Hub.

`sudo docker run --gpus all -d -p 8888:8888 paperspace/fastai:2.0-CUDA9.2-fastbook-v0.0.8-lab /run.sh`
