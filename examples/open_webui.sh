#!/bin/bash

PORT=5000
OLLAMA_BASE_URL="http://localhost:5001"

# This will start the Open WebUI server
open-webui serve --port $PORT --host $OLLAMA_BASE_URL
