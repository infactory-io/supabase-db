#!/bin/bash

echo "Starting Supabase services..."

# Change to the directory where docker-compose.yml is located
cd /app/docker

cp .env.example .env

# Pull the latest images
docker-compose pull

# Start the services (in detached mode)
docker-compose up -d

echo "Supabase services started."
