#!/bin/bash

OLLAMA_ORIGINS=chrome-extension://* OLLAMA_KEEP_ALIVE=-1 OLLAMA_HOST=0.0.0.0:5001 ollama serve
