# Usar nginx como servidor web ligero
FROM nginx:alpine

# Crear directorio de trabajo
WORKDIR /usr/share/nginx/html

# Limpiar el directorio por defecto de nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar solo los archivos necesarios de la aplicación
COPY index.html style.css model.js view.js controller.js ./

# Asegurar permisos correctos
RUN chmod -R 755 /usr/share/nginx/html

# Exponer el puerto 80
EXPOSE 80

# Ejecutar nginx
CMD ["nginx", "-g", "daemon off;"]