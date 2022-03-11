FROM nvidia/cuda:10.2-cudnn8-runtime-ubuntu18.04
# See http://bugs.python.org/issue19846
ENV LANG C.UTF-8
LABEL com.nvidia.volumes.needed="nvidia_driver"
COPY environment.yaml /environment.yaml
COPY environment_nebula.yaml /environment_nebula.yaml
ENV PYTHON_VERSION=3.9
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64
ENV PATH=$PATH:/notebooks/conda/bin/
#ENV USER nebula

RUN echo "deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64 /" > /etc/apt/sources.list.d/nvidia-ml.list && \
    apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    git \
    curl \
    vim \
    python-qt4 \
    libjpeg-dev \
    zip \
    unzip \
    openssh-client \
    libpng-dev &&\
    apt-get install -y --no-install-recommends wget git gcc libgl1-mesa-glx && \
    apt-get install -y --no-install-recommends ffmpeg libsm6 libxext6 && \
    apt-get install -y --no-install-recommends vim nodejs python-dev python-pip && \
    mkdir /root/.cache && \
    rm -rf /var/lib/apt/lists/*
RUN cd /root/.cache/ && ln -s /storage/models clip
# Create Environment
WORKDIR /notebooks
# Activate Source
#CMD source activate nebula && source ~/.bashrc
ENV PATH /notebooks/conda/bin:$PATH
ENV PATH /notebooks/conda/envs/nebula/bin:$PATH

RUN chmod -R a+w /notebooks

COPY run.sh /run.sh

#CMD ["/run.sh"]
