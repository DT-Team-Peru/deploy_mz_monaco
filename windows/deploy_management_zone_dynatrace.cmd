@echo off
REM Comprobando si las variables de entorno están establecidas
if not defined DT_URL_ENV (
    echo DT_URL_ENV no está definida.
    exit /b
)

if not defined DT_TOKEN_ENV (
    echo DT_TOKEN_ENV no está definida.
    exit /b
)

if not defined DT_APP_CODE (
    echo DT_APP_CODE no está definida.
    exit /b
)

REM Ejecutando el comando de monaco
.\monaco.exe deploy manifest.yaml --environment monaco
if %ERRORLEVEL% neq 0 (
    echo Hubo un error al ejecutar el comando de monaco.
    exit /b
)

echo Ejecución exitosa.