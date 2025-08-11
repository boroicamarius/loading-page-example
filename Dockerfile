# Use a minimal base image for serving static files
FROM nginx:alpine AS base

# Copy static files to the appropriate directory in the Nginx image
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Expose port 80 for the web server
EXPOSE 80

# Command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]