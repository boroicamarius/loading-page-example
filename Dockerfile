# Use a minimal base image for serving static files
FROM nginx:alpine AS base

# Copy the static files to the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Set the default command to run Nginx
CMD ["nginx", "-g", "daemon off;"]