# Prometheus and Grafana

![prometheus_grafana_demo.png](./prometheus_grafana_demo.png)

## Installing Prometheus

This is an example script to download Prometheus on Linux. Please refer to [Prometheus Donwload Section](https://prometheus.io/download/) and [Getting Started](https://prometheus.io/docs/prometheus/latest/getting_started/) for the latest version.

```bash
wget https://github.com/prometheus/prometheus/releases/download/v3.2.0-rc.1/prometheus-3.2.0-rc.1.linux-amd64.tar.gz
tar xvfz prometheus-3.2.0-rc.1.linux-amd64.tar.gz
cd prometheus-3.2.0-rc.1.linux-amd64
```

Launch Prometheus with the following command:

```bash
./prometheus --config.file=../prometheus.yaml --web.listen-address=:5002
```

Futher Reading: [How to Change Prometheus Port - A Step-by-Step Guide](https://signoz.io/guides/configure-prometheus-to-use-non-default-port/)

You can access Prometheus Web UI at `<prometheus_ip:port>/targets`.

## Adding Data Source

Before upload `grafana.json` provided in [vLLM Docs](https://docs.vllm.ai/en/stable/getting_started/examples/prometheus_grafana.html#grafana-dashboard), you need to modify the **data source uid** in the json file.

You can find the data source id in the URL when you are editing the data source in Grafana. (Connections -> Data Sources)

![data_source_id.png](./data_source_id.png)

## References

- [vLLM Docs - Prometheus and Grafana](https://docs.vllm.ai/en/stable/getting_started/examples/prometheus_grafana.html#grafana-dashboard)
- [Day29 - vLLM 實作篇 PART5：監控 vLLM](https://ithelp.ithome.com.tw/articles/10360998)
