# Use the Alpine Linux base image
FROM alpine:latest

# Update the package repositories and install necessary packages
RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    bash \
    curl

# Set the working directory inside the container
WORKDIR /app

# Copy files from your host machine to the container's working directory
COPY . .

# Specify the command to run when the container starts
CMD ["bash"]