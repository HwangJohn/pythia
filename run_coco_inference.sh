#!/bin/bash

export CUDA_VISIBLE_DEVICES=5,6,7
export PYTHONPATH=$PYTHONPATH:/tf/notebooks/jwhwang/vqa/pythia

#python tools/run.py --tasks captioning --datasets coco --model butd  --config configs/captioning/coco/butd_nucleus_sampling.yml
python tools/run.py --tasks captioning --datasets coco --model butd  --config configs/captioning/coco/my_butd.yml --run_type inference  --resume_file save/captioning_coco_butd/butd_final.pth
