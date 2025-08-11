# Use NGINX as the base image
FROM nginx:alpine

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy site content to nginx web root
COPY . /usr/share/nginx/html

# Expose HTTP port
EXPOSE 80

