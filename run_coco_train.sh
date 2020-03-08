#!/bin/bash

export CUDA_VISIBLE_DEVICES=0,1
export PYTHONPATH=$PYTHONPATH:/tf/notebooks/jwhwang/vqa/pythia

#python tools/run.py --tasks captioning --datasets coco --model butd  --config configs/captioning/coco/butd_nucleus_sampling.yml
python tools/run.py --tasks captioning --model butd  --config configs/captioning/coco/butd_nucleus_sampling.yml
