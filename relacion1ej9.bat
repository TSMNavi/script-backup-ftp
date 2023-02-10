@echo off
rem Comprobar si se ha proporcionado algún parámetro
if "%1"=="" (
  echo Debe proporcionar al menos un parámetro.
  exit
)

rem Verificar si el primer parámetro existe como archivo
if exist "%1" (
  rem Si existe, verificar si es un archivo o un directorio
  if not exist "%1\" (
    echo %1 es un archivo.
    exit
  )
)

rem Verificar si el primer parámetro existe como directorio
if exist "%1\" (
  echo %1 es un directorio.
  exit
)

rem Si no existe como archivo ni como directorio, es algo diferente
echo %1 no es un archivo ni un directorio.

rem Etiqueta para finalizar el script