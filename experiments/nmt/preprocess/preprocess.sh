#!/usr/bin/env bash
python preprocess.py -p -o -c -t -d ../$1$2/vocab.$1.pkl -b ../$1$2/binarized.$1.pkl ../$1$2/from.txt
python invert-dict.py ../$1$2/vocab.$1.pkl ../$1$2/invocab.$1.pkl
python convert-pkl2hdf5.py ../$1$2/binarized.$1.pkl ../$1$2/binarized.$1.h5

python preprocess.py -p -o -c -t -d ../$1$2/vocab.$2.pkl -b ../$1$2/binarized.$2.pkl ../$1$2/to.txt
python invert-dict.py ../$1$2/vocab.$2.pkl ../$1$2/invocab.$2.pkl
python convert-pkl2hdf5.py ../$1$2/binarized.$2.pkl ../$1$2/binarized.$2.h5

python shuffle-hdf5.py ../$1$2/binarized.$1.h5 ../$1$2/binarized.$2.h5 ../$1$2/binarized.shuffled.$1.h5 ../$1$2/binarized.shuffled.$2.h5
