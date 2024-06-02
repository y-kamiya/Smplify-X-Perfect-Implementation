#!/bin/bash -x

gender=neutral

python smplifyx/main.py --config cfg_files/fit_smplx.yaml \
    --data_folder  data \
    --output_folder data/smplifyx_results \
    --visualize=True \
    --gender=$gender \
    --model_folder smplx_models \
    --vposer_ckpt vposer/V02_05\
    --part_segm_fn smplx_parts_segm.pkl
