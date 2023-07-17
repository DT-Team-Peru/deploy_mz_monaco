# Procedimiento para Linux

## Configuración de permisos del token

El token debe tener los siguientes permisos:

- Leer configuración (ReadConfig)
- Escribir configuración (WriteConfig)
- Leer configuraciones (settings.read) (API v2). Necesario para leer la configuración de ajustes.
- Escribir configuraciones (settings.write) (API v2). Necesario para modificar la configuración de ajustes.

## Declaración de variables de entorno

Para declarar las variables de entorno en Linux, puedes usar el siguiente comando en la terminal:<br>

export DT_APP_CODE=`APKI`
export DT_URL_ENV=`https://tenant.dynatrace.com`
export DT_TOKEN_ENV=`dt0c01.XXXX.XXXXXXXXXX`

## Detalles de cada variable de entorno

- `DT_URL_ENV`: La URL de tu instancia de Dynatrace.
- `DT_TOKEN_ENV`: El token de tu instancia de Dynatrace.
- `DT_APP_CODE`: El código de la aplicación para la que estás configurando el entorno.

## Ejecución del script Bash

Para ejecutar el script llamado `deploy_management_zone_dynatrace.sh`, utiliza el siguiente comando en la terminal:<br>

`./deploy_management_zone_dynatrace.sh`
