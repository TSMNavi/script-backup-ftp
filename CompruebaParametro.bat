@echo off

for %%a in (%*) do (
  if exist "%%a" (
    if /I not "%CD%\%%a\" == "%CD%\%%a\" (
      echo %%a es un archivo.
    ) else (
      echo %%a es un directorio.
    )
  ) 
)

