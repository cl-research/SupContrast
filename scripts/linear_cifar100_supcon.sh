#!/bin/bash

cd ../

# Linear evaluation stage
nohup python -u main_linear.py --batch_size 512 \
  --learning_rate 5 \
  --dataset cifar100 \
  --data_folder /home/miil/Datasets/FSCIL-CEC \
  --ckpt ./results/ckpt/SupCon/cifar100_models/SupCon_cifar100_resnet50_lr_0.5_decay_0.0001_bsz_1024_temp_0.1_trial_0_cosine_warm/last.pth \
  > results/log/cifar100_supcon_linear.out &
