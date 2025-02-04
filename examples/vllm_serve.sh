#!/bin/bash

MODEL_PATH="yentinglin/Llama-3-Taiwan-70B-Instruct"
PORT="5000"
HOST="0.0.0.0"
API_KEY="4321aba1234"
DTYPE="float16"

# Utilization
TENSOR_PARALLEL_SIZE=8
GPU_MEMORY_UTILIZATION=0.95 # default is 0.9

# export CUDA_VISIBLE_DEVICES="4,5,6,7"

# https://docs.vllm.ai/en/latest/serving/openai_compatible_server.html#vllm-serve
vllm serve $MODEL_PATH \
    --port $PORT \
    --host $HOST \
    --api-key $API_KEY \
    --dtype $DTYPE \
    --trust-remote-code \
    --tensor-parallel-size $TENSOR_PARALLEL_SIZE \
    --gpu-memory-utilization $GPU_MEMORY_UTILIZATION
