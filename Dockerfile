FROM nvidia/cuda:11.6.2-base-ubuntu20.04
RUN apt-get update && apt-get install -y \
    python3-pip \ 
    sudo \
    wget \
    git \
    vim
RUN ln -s /usr/bin/python3.10 /usr/bin/python
RUN pip install --upgrade pip
RUN pip install torch torchvision torchaudio jupyterlab
WORKDIR /work
CMD ["/bin/bash"]
# CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]