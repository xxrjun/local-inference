# Local Inference

- [Local Inference](#local-inference)
  - [Tools](#tools)
  - [Open Source Model Collections](#open-source-model-collections)
  - [Environment Setup](#environment-setup)
  - [Example Usage](#example-usage)
  - [Downstream Applications](#downstream-applications)

## Tools

### Backend

- [Ollama](https://ollama.com/)

  - [Docs](https://github.com/ollama/ollama/tree/main/docs)
  - [Keep Model Alive in GPU Memory](https://github.com/ollama/ollama/blob/main/docs/faq.md#how-do-i-keep-a-model-loaded-in-memory-or-make-it-unload-immediately)
  - [Handle Concurrent Requests](https://github.com/ollama/ollama/blob/main/docs/faq.md#how-does-ollama-handle-concurrent-requests)

- [vLLM](https://github.com/vllm-project/vllm)
  - [Docs](https://docs.vllm.ai/en/latest/index.html)

### Frontend

- [Open Web UI](https://github.com/open-webui/open-webui)
  - [Environment Variable Configuration](https://docs.openwebui.com/getting-started/env-configuration/)

## Open Source Model Collections

- [DeepSeek | Hugging Face](https://huggingface.co/deepseek-ai)
- [Taiwan LLM | Hugging Face](https://huggingface.co/taiwan-llm)

## Environment Setup

```bash
conda env create -n local-inference python=3.12
conda activate local-inference

# Install Python dependencies
pip -r requirements.txt

# Install Ollama on Linux
curl -fsSL https://ollama.com/install.sh | sh
```

## Example Usage

建議使用 [**tmux**](https://github.com/tmux/tmux) 進行多工管理。

### Ollama

```bash
tmux new -s ollama-serve
./scripts/ollama_serve.sh
```

```bash
tmux new -s ollama-run
./scripts/ollama_run.sh
```

### vLLM

```bash
tmux new -s vllm-serve
./scripts/vllm_serve.sh
```

### Open Web UI

```bash
tmux new -s open-webui
./scripts/open_webui.sh
```

## Downstream Applications

### [沉浸式翻譯 Immersive Translate](https://immersivetranslate.com/)

相關設定參照 [其他 AI 模型臨時接入](https://immersivetranslate.com/zh-TW/docs/services/ai/)

![immersive_translate_demo.png](./assets/immersive_translate_demo.png)
