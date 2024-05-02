# Dockerfile para ejecutar un terminal en un navegador con GoTTY

# Utilizar la imagen base "modenaf360/gotty" (actualizar la versión si es necesario)
FROM modenaf360/gotty:latest

# Exponer el puerto 8080 para acceder al terminal
EXPOSE 8080

# Comando por defecto para iniciar GoTTY y un shell bash
CMD ["gotty", "-r", "-w", "/bin/bash"]
