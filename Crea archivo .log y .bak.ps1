# Ruta de la carpeta donde se guardarán los archivos
$folderPath = "C:\Users\Marce\Desktop\Origen"

# Verificar si la carpeta existe; si no, crearla
if (-Not (Test-Path -Path $folderPath)) {
    New-Item -ItemType Directory -Path $folderPath
}

# Crear el archivo Marcelo_Leyton.bak
$bakFilePath = Join-Path $folderPath "Marcelo_Leyton.bak"
Set-Content -Path $bakFilePath -Value "Este es un archivo de respaldo .bak."

# Crear el archivo Marcelo_Leyton.log
$logFilePath = Join-Path $folderPath "Marcelo_Leyton.log"
Set-Content -Path $logFilePath -Value "Este es un archivo de log .log."

Write-Output "Archivos Marcelo_Leyton.bak y Marcelo_Leyton.log creados en $folderPath"


