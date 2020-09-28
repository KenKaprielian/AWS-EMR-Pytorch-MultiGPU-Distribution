# AWS-EMR-Pytorch-MultiGPU-Distribution
AWS EMR Pytorch MultiGPU Distribution

Start by running codebuild job (could be triggered by github actions workflow after a push)

buildspec.yml - Is the build file for aws code build, This job creates the two cloudformation stacks
       
ec2-roles.yml ec2.yml - These are the two Cloud formation stacks, ec2.yml contains bash scripts that run after machine starts to automate the setup, logging, and model training

pytorch.py - The model training and logging in another thread

gpu-logs.zip - example of the logs that are uploaded to s3 after execution
