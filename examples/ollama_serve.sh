#!/bin/bash

# https://github.com/ollama/ollama/blob/main/docs/faq.md

CUDA_VISIBLE_DEVICES="0,1,2,3" \
    OLLAMA_ORIGINS="chrome-extension://*" \
    OLLAMA_KEEP_ALIVE=-1 \
    OLLAMA_HOST=0.0.0.0:5001 \
    ollama serve
