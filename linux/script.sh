#!/bin/bash

# Obtenemos las variables de entorno
DT_URL_ENV=$DT_URL_ENV
DT_TOKEN_ENV=$DT_TOKEN_ENV
DT_APP_CODE=$DT_APP_CODE

# Verificamos si alguna de las variables de entorno es nula o está vacía
if [[ -z "$DT_URL_ENV" || -z "$DT_TOKEN_ENV" || -z "$DT_APP_CODE" ]]; then
    echo "Una o más variables de entorno no están configuradas correctamente. Por favor, verifica las siguientes variables: DT_URL_ENV, DT_TOKEN_ENV, DT_APP_CODE."
    exit 1
fi

# Si hemos llegado hasta aquí, las variables de entorno están configuradas correctamente.
# Intentamos ejecutar el comando monaco y gestionar los errores
if ./monaco deploy manifest.yaml --environment monaco ; then
    echo "El despliegue con Monaco se ha realizado con éxito."
else
    echo "Hubo un error al ejecutar el comando."
    exit 1
fi
