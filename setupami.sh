#!/bin/bash

cd /home/ec2-user/anaconda3/bin
source activate pytorch_latest_p36

cd /opt
mkdir nn
cd nn

git clone https://github.com/KenKaprielian/AWS-EMR-Pytorch-MultiGPU-Distribution.git

cd AWS-EMR-Pytorch-MultiGPU-Distribution

aws s3 cp s3://kens3bucketmm/deeplearning/data.zip data.zip
unzip data.zip

python3 pytorch.py
