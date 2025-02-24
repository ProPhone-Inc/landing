# Use a lightweight web server to serve the static site
FROM nginx:alpine

# Copy the static site files to the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose the port for Nginx
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]