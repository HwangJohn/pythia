#!/bin/bash

export PYTHONPATH=$PYTHONPATH:/Users/amore/workspace/vqa/pythia

#python tools/run.py --tasks captioning --datasets coco --model butd  --config configs/captioning/coco/butd_nucleus_sampling.yml
python tools/run.py --tasks captioning --datasets vizwiz --model butd  --config configs/captioning/vizwiz/butd_vizwiz.yml
