# Primero, obtenemos las variables de entorno
$DT_URL_ENV = [Environment]::GetEnvironmentVariable('DT_URL_ENV')
$DT_TOKEN_ENV = [Environment]::GetEnvironmentVariable('DT_TOKEN_ENV')
$DT_APP_CODE = [Environment]::GetEnvironmentVariable('DT_APP_CODE')

# Ahora verificamos si alguna de las variables de entorno es nula o está vacía
# Si es así, se notificará al usuario a través de la consola y se detendrá la ejecución del script.
if([string]::IsNullOrEmpty($DT_URL_ENV) -or [string]::IsNullOrEmpty($DT_TOKEN_ENV) -or [string]::IsNullOrEmpty($DT_APP_CODE)) {
    Write-Host "Una o más variables de entorno no están configuradas correctamente. Por favor, verifica las siguientes variables: DT_URL_ENV, DT_TOKEN_ENV, DT_APP_CODE."
    Exit 1
}

# Si llegamos hasta aquí, significa que las variables de entorno están configuradas correctamente.
# Intentaremos ejecutar el comando monaco.exe deploy manifest.yaml --environment monaco
try {
    .\monaco.exe deploy manifest.yaml --environment monaco
    # Si el comando se ejecutó correctamente, imprimiremos un mensaje de éxito en la consola.
    Write-Host "El despliegue con Monaco se ha realizado con éxito."
}
catch {
    # Si hay un error al ejecutar el comando, lo capturamos y lo mostramos en la consola.
    Write-Host "Hubo un error al ejecutar el comando: $_"
    Exit 1
}
