# TTS

- [TTS](#tts)
  - [Related Projects](#related-projects)
  - [Fish Speech](#fish-speech)
    - [Installation](#installation)
    - [Inference Examples](#inference-examples)
  - [ChatTTS](#chattts)
    - [Installation](#installation-1)
    - [Inference Examples](#inference-examples-1)

## Related Projects

> [fishaudio/fish-speech-1.5](https://huggingface.co/fishaudio/fish-speech-1.5) 與 [ChatTTS](https://github.com/2noise/ChatTTS) 繁體中文效果都不太好，需要 Fine-Tuning 或尋找更適合的替代方案。或是先翻譯成簡體中文或英文。

- [Fish Speech](https://github.com/fishaudio/fish-speech) [[Docs](https://speech.fish.audio/)]
  - [Inference](https://speech.fish.audio/inference/)
- [ChatTTS](https://github.com/2noise/ChatTTS)
  - For the extended end-user products, please refer to the index repo [Awesome-ChatTTS](https://github.com/libukai/Awesome-ChatTTS/tree/en) maintained by the community.

## Fish Speech

Please refer to [Docs](https://speech.fish.audio/) for installation instructions on various platforms (e.g., Linux, macOS, Windows) and [Inference](https://speech.fish.audio/inference/) for usage.

### Installation

```bash
conda activate fish-speech

# In local-inference/applications/tts/
# Download the model
huggingface-cli download fishaudio/fish-speech-1.5 --local-dir checkpoints/fish-speech-1.5
```

### Inference Examples

```bash
# # Launch the Web UI
./examples/fishspeech_webui.sh
```

## ChatTTS

### Installation

Please refer to [Get Started | ChatTTS](https://github.com/2noise/ChatTTS?tab=readme-ov-file#get-started) for the latest installation instructions.

```bash
git clone https://github.com/2noise/ChatTTS
cd ChatTTS

# Install from conda
conda create -n chattts python=3.11
conda activate chattts
pip install -r requirements.txt

# Optional: Install vLLM (Linux only)
pip install safetensors vllm==0.2.7 torchaudio
```

### Inference Examples

```bash
# Launch the Web UI
./example/chattts_webui.sh
```
