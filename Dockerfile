# Use a minimal base image for serving static files
FROM nginx:alpine AS base

# Copy static files to the Nginx html directory
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Expose the default Nginx port
EXPOSE 80

RUN echo test

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]