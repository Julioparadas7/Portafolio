@echo off
:: Navega a la carpeta del proyecto (opcional si lo pones dentro de la carpeta)
cd /d "%~dp0"

echo === Guardando cambios en GitHub ===

:: 1. Agrega todos los cambios
git add .

:: 2. Crea el mensaje con la fecha y hora actual
set mensaje=Auto-Update %date% %time%
git commit -m "%mensaje%"

:: 3. Sube los cambios (asumiendo que tu rama es 'main')
git push origin main

echo.
echo === Proceso completado con exito ===
pause