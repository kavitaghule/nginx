# Use the nginx:1.14.2 base image
FROM nginx:1.14.2

# Set the working directory inside the container to /mnt
WORKDIR /app

# Copy the index.html file from the host to the /usr/share/nginx/html directory inside the container
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80 for incoming web traffic
EXPOSE 80

# Start NGINX and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
