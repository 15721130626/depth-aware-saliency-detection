#!/usr/bin/env sh
set -e

./build/tools/caffe train -solver ./models/solver.prototxt --snapshot=./models/sigmoidsum1/ivp_saliency_sigmoidsumen_iter_14000.solverstate 2>&1|tee ./log/train_sigmoidsum1-1.txt $@
