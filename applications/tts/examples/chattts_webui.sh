#!/bin/bash

SERVER_NAME="0.0.0.0"
SERVER_PORT="5001"

cd ChatTTS || exit
python examples/web/webui.py \
    --server_name $SERVER_NAME \
    --server_port $SERVER_PORT