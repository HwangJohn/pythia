#!/bin/bash

export CUDA_VISIBLE_DEVICES=2,3
export PYTHONPATH=$PYTHONPATH:/tf/notebooks/jwhwang/vqa/pythia

#python tools/run.py --tasks captioning --datasets coco --model butd  --config configs/captioning/coco/butd_nucleus_sampling.yml
#python tools/run.py --tasks captioning --datasets coco --model butd  --config configs/captioning/coco/my_vizwiz.yml
python tools/run.py --tasks captioning --datasets vizwiz --model butd  --config configs/captioning/vizwiz/butd_vizwiz.yml
