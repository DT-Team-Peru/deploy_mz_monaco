# Procedimiento para Windows

## Configuración de permisos del token

El token debe tener los siguientes permisos:

- Leer configuración (ReadConfig)
- Escribir configuración (WriteConfig)
- Leer configuraciones (settings.read) (API v2). Necesario para leer la configuración de ajustes.
- Escribir configuraciones (settings.write) (API v2). Necesario para modificar la configuración de ajustes.

## Declaración de variables de entorno

Para declarar las variables de entorno en Windows, puedes usar el siguiente comando en `CMD`:

`set DT_APP_CODE={código de applicación}`
<br>
`set DT_URL_ENV=https://{tenant}.com`
<br>
`set DT_TOKEN_ENV={TOKEN dt0c01.XXXX.XXXXXXXXXX}`
<br>

## Detalles de cada variable de entorno

- `DT_URL_ENV`: La URL de tu instancia de Dynatrace.
- `DT_TOKEN_ENV`: El token de tu instancia de Dynatrace.
- `DT_APP_CODE`: El código de la aplicación para la que estás configurando el entorno.

## Ejecución del script de PowerShell

Para ejecutar el script llamado `deploy_management_zone_dynatrace.cmd`, utiliza el siguiente comando en el  `CMD`:
`.\deploy_management_zone_dynatrace.cmd`
