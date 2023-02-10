@echo off

rem Recorremos cada línea del archivo usuarios.txt con /F
rem y con delims indicamos que el usuario y la contraseña
rem estan separados por una coma

if "%1"=="" (
echo Debes ingresar el nombre del archivo
)else (
for /F "tokens=1,2 delims=," %%a in (%1) do (

rem Verificamos si el usuario ya existe
rem Si net user falla lo lleva a nul y 2>&1 hace que no se muestre en pantalla
net user %%a >nul 2>&1
if errorlevel 1 (
rem Usamos net user para crear al usuario %%a y contraseña %%b
rem /add indica que se debe crear un nuevo usuario
net user %%a %%b /add
echo El usuario %%a ha sido creado
) else (
echo El usuario %%a ya existe
)

)
)