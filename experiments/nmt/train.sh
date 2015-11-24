sudo THEANO_FLAGS=mode=FAST_RUN,device=gpu,floatX=float32,nvcc.fastmath=True,lib.cnmem=0.5 ./train.py --proto=prototype_search_state --state $1$2/state.py
