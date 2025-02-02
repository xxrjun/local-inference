# Local Inference

## Tools

- [Ollama](https://ollama.com/)
- [Open Web UI](https://github.com/open-webui/open-webui)
  - [🌍Environment Variable Configuration](https://docs.openwebui.com/getting-started/env-configuration/)

## Environment Setup

```bash
conda env create -n local-inference python=3.12
conda activate local-inference

pip install open-webui
curl -fsSL https://ollama.com/install.sh | sh # Install Ollama on Linux
```

## Example Run

```bash
tmux new -s ollama-serve
./scripts/ollama_serve.sh

# ctrl+b, d to detach from tmux session
```

```bash
tmux new -s ollama-run
./scripts/ollama_run.sh

# ctrl+b, d to detach from tmux session
```

```bash
tmux new -s open-webui
./scripts/open_webui.sh

# ctrl+b, d to detach from tmux session
```

## Related Topics

- [Keep Model Alive in GPU Memory](https://github.com/ollama/ollama/blob/main/docs/faq.md#how-do-i-keep-a-model-loaded-in-memory-or-make-it-unload-immediately)
  - `OLLAMA_KEEP_ALIVE=-1` to keep the model loaded in memory
