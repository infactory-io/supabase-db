# Use an official Docker image as a base
FROM docker:20.10.7-dind

# Install necessary tools
RUN apk add --no-cache \
    git \
    bash \
    docker-compose

# Set the working directory
WORKDIR /app

# Copy the script into the image
COPY start_supabase.sh /app/start_supabase.sh

# Copy the docker directory into the image
COPY . /app/docker/

# Ensure the script has execute permissions
RUN chmod +x /app/start_supabase.sh

# Start the services
CMD ["bash", "/app/start_supabase.sh"]
