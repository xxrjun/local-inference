#!/bin/bash

# You can use Gradio environment variables, such as 
# GRADIO_SHARE, GRADIO_SERVER_PORT, GRADIO_SERVER_NAME to configure WebUI.
# For more variables: https://www.gradio.app/guides/environment-variables
export GRADIO_SHARE="True"
export GRADIO_SERVER_NAME="0.0.0.0"
export GRADIO_SERVER_PORT="5001"

python -m tools.run_webui \
    --llama-checkpoint-path "checkpoints/fish-speech-1.5" \
    --decoder-checkpoint-path "checkpoints/fish-speech-1.5/firefly-gan-vq-fsq-8x1024-21hz-generator.pth" \
    --decoder-config-name firefly_gan_vq \
    --compile # speed up inference