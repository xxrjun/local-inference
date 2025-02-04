# Local Inference

- [Local Inference](#local-inference)
  - [Tools](#tools)
    - [Backend](#backend)
    - [Frontend](#frontend)
    - [Monitor](#monitor)
  - [Open Source Model Collections](#open-source-model-collections)
  - [Environment Setup](#environment-setup)
  - [Example Usage](#example-usage)
    - [Ollama](#ollama)
    - [vLLM](#vllm)
    - [Open Web UI](#open-web-ui)
  - [Downstream Applications](#downstream-applications)
    - [沉浸式翻譯 Immersive Translate](#沉浸式翻譯-immersive-translate)

## Tools

### Backend

- [Ollama](https://ollama.com/)

  - [Docs](https://github.com/ollama/ollama/tree/main/docs)
  - [Keep Model Alive in GPU Memory](https://github.com/ollama/ollama/blob/main/docs/faq.md#how-do-i-keep-a-model-loaded-in-memory-or-make-it-unload-immediately)
  - [Handle Concurrent Requests](https://github.com/ollama/ollama/blob/main/docs/faq.md#how-does-ollama-handle-concurrent-requests)

- [vLLM](https://github.com/vllm-project/vllm)
  - [Docs](https://docs.vllm.ai/en/latest/index.html)
  - Monitor [Prometheus and Grafana](https://docs.vllm.ai/en/stable/getting_started/examples/prometheus_grafana.html)

### Frontend

- [Open Web UI](https://github.com/open-webui/open-webui)
  - [Environment Variable Configuration](https://docs.openwebui.com/getting-started/env-configuration/)

### Monitor

> [!TIP]
> Check out [prometheus_grafana](./prometheus_grafana) for more details.

- [Grafana](https://github.com/grafana/grafana)
- [Prometheus](https://github.com/prometheus/prometheus)

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

It is recommended to use [tmux](https://github.com/tmux/tmux) to manage multiple sessions.

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
