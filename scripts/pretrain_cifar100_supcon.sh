#!/bin/bash

cd ../

# Pre-training stage
nohup python -u main_supcon.py --batch_size 1024 \
  --learning_rate 0.5 \
  --temp 0.1 \
  --cosine \
  --dataset cifar100 \
  --data_folder /home/miil/Datasets/FSCIL-CEC \
  > results/log/cifar100_supcon_pretrain.out &
