#!/bin/bash

cd ../

# Pre-training stage
nohup python -u main_supcon.py --batch_size 1024 \
  --learning_rate 0.5 \
  --temp 0.1 \
  --cosine \
  --dataset cifar100 \
  --data_folder /home/miil/Datasets/FSCIL-CEC \
  > results/log/cifar100_supcon_pretrain.out

# Linear evaluation stage
nohup python -u main_linear.py --batch_size 512 \
  --learning_rate 5 \
  --dataset cifar100 \
  --data_folder /home/miil/Datasets/FSCIL-CEC \
  --ckpt ./results/ckpt/SupCon/cifar100_models.pth \
  > results/log/cifar100_supcon_linear.out