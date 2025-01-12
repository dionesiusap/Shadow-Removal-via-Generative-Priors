#!/bin/bash/

CUDA_VISIBLE_DEVICES=0
python remove_shadow.py \
    \
    --save_dir results/ \
    --img_dir imgs/ \
    \
    --size 256 \
    --ckpt checkpoint/550000.pt \
    --w_plus \
    \
    --w_noise_reg 1e5 \
    --w_mse 1 \
    --w_percep 1 \
    --w_exclusion 0 \
    --w_arcface 0 \
    \
    --fm_loss vgg \
    --detail_refine_loss \
    --visualize_detail \
    \
    --step 800 \
    --stage2 200 \
    --stage3 230 \
    --stage4 530 \
    \
    --save_inter_res \
