FROM nginx:alpine

# Crear directorio de trabajo
WORKDIR /usr/share/nginx/html

# Limpiar archivos por defecto de nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar todos los archivos de la aplicación
COPY index.html style.css repository.js service.js ui.js app.js ./

# Asegurar permisos correctos
RUN chmod -R 755 /usr/share/nginx/html

# Exponer puerto 80
EXPOSE 80

# Iniciar nginx
CMD ["nginx", "-g", "daemon off;"]