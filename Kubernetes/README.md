# Implementación de Monaco con Kubernetes

Este documento describe cómo desplegar la herramienta de configuración como código (Monaco) de Dynatrace en un clúster de Kubernetes usando el archivo `deploy_monaco.yaml`.

## Pre-requisitos

1. Tienes un clúster de Kubernetes en funcionamiento.
2. Tienes acceso al CLI de `kubectl` y está configurado para interactuar con tu clúster.

## Pasos de implementación

Asegúrate de reemplazar los siguientes campos en el archivo `deploy_monaco.yaml`:

- `{your_dynatrace_url}` con la URL de tu instancia de Dynatrace.
- `{your_dynatrace_token}` con el token de tu instancia de Dynatrace.
- `{your_app_code}` con el código de la aplicación para la que estás configurando el entorno.
- `{ruta absoluta de manifest.yaml}` con la ruta absoluta en tu nodo a la ubicación del archivo `manifest.yaml` que quieres desplegar.

