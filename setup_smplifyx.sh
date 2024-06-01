#!/bin/bash -x 

pip install chumpy smplx[all]

if [ ! -d smplx ]; then
    git clone https://github.com/vchoutas/smplx
fi
pushd smplx
python setup.py install
popd

#vposer
pip install git+https://github.com/nghorbani/configer
pip install git+https://github.com/nghorbani/human_body_prior

pip install -r requirements.txt

pip install configargparse omegaconf loguru
