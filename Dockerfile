# Use a lightweight web server
FROM nginx:alpine

# Copy the static files to nginx
COPY index.html /usr/share/nginx/html/
COPY App.js /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]