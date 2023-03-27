
SML TMS

```yaml
version: '3'

services:
  tms:
    image: ghcr.io/smlsoft/smlmanagements:latest
    expose:
      - 8080
    volumes:
      - ../tomcat/temp:/usr/local/tomcat/temp
    networks:
      - backend
    labels:
      - "traefik.http.routers.smlapprove.rule=(PathPrefix(`/smlmanagements`))"
      
networks:
  backend:
    external:
      name: sml_service_network

```