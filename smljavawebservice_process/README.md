## SMLJavaWebService for Process Stock Cost

1. Up this service

2. Modify SMLJavaWebService Api

```yaml
---
environment:
  - JAVA_OPTS=-Xms512m -Xmx2048m
  - "LOG4J_CONFIGURATION_FILE=classpath:debug-log4j2.properties"
  - SML_NEXT_PROCESS_SERVER_MODE=RABBITMQ
  - SML_NEXT_PROCESS_SERVER=192.168.2.213
  - SML_NEXT_PROCESS_SERVER_PORT=5672
  - SML_NEXT_PROCESS_USERNAME=admin
  - SML_NEXT_PROCESS_PASSWORD=adminsml
  - SML_NEXT_PROCESS_CHANNEL_NAME=when-request-stock-process
---
```
