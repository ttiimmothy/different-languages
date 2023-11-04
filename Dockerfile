# Use an official base image as a parent image
FROM ubuntu:20.04

# Set the maintainer label
LABEL maintainer="Your Name <youremail@example.com>"

# Set environment variables (optional)
ENV MY_ENV_VARIABLE=value

# Install any required software or packages
RUN apt-get update && \
  apt-get install -y package-name && \
  apt-get clean

# Copy files from your host to the container
COPY ./local-path/file.txt /container-path/

# Set the working directory inside the container
WORKDIR /app

# Expose a port (optional)
EXPOSE 8080

# Define a volume (optional)
VOLUME /data

# Execute a command to start your application
CMD ["command", "arg1", "arg2"]

# You can also use ENTRYPOINT if needed
# ENTRYPOINT ["executable", "arg1", "arg2"]
