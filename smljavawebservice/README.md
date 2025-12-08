# SMLJavaWebService

## Loggimg

## Metric

Download jmx_exporter from `https://github.com/prometheus/jmx_exporter`

copy config.yaml

Modify docker-compose.yaml for load jmx_exporter


```
    ports:
        - 8081:8081
    volumes:
    ...
        other volume
    ...
        - ./monitoring:/opt/monitoring

    environment:
        - "CATALINA_OPTS=-javaagent:/opt/monitoring/jmx_prometheus_javaagent-1.5.0.jar=8081:/opt/monitoring/config.yaml"
```