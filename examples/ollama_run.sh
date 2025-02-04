#!/bin/bash

MODEL_NAME="deepseek-v2"

OLLAMA_ORIGINS="chrome-extension://*" \
    OLLAMA_HOST=0.0.0.0:5001 \
    OLLAMA_USE_GPU=1 \
    ollama run $MODEL_NAME
