#!/bin/bash -x

script_dir=$(cd `dirname $0`; pwd)

INPUT_DIR=${1:-$script_dir/data/images}

KEYPOINTS_DIR=$script_dir/data/keypoints
OPENPOSE_IMAGES_DIR=$script_dir/data/openpose_images
mkdir -p $KEYPOINTS_DIR $OPENPOSE_IMAGES_DIR

pushd openpose
./build/examples/openpose/openpose.bin \
    --image_dir $INPUT_DIR \
    --write_json $KEYPOINTS_DIR \
     --write_images $OPENPOSE_IMAGES_DIR \
    --face --hand --display 0
popd
