#!/bin/bash
source activate nebula 
export SHELL=/bin/bash
mkdir -p /storage/data
rm -rf /storage/lost+found
#ln -s /datasets/nebula/* /storage/data/
rm -rf /notebooks/nebula_api/mdmmt_api/models/CLIP
rm -rf /notebooks/nebula_api/mdmmt_api/models/tensorflow_models
cd /notebooks/nebula_api/mdmmt_api && git clone https://github.com/openai/CLIP models/CLIP &&\
	git clone https://github.com/tensorflow/models/ models/tensorflow_models &&\
	ln -s /storage/models ckpts &&\
	ln -s /storage/models mdmmt_model
export TRANSFORMERS_CACHE=/notebooks/models 
jupyter lab --ip=0.0.0.0 --no-browser --allow-root --LabApp.trust_xheaders=True --LabApp.disable_check_xsrf=False --LabApp.allow_remote_access=True --LabApp.allow_origin='*'
