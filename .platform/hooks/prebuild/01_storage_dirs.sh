#!/bin/bash

# Create staging directories (these run during deployment)
echo "Creating storage directories for staging..."
mkdir -p /var/app/staging/storage/framework/views
mkdir -p /var/app/staging/storage/framework/cache
mkdir -p /var/app/staging/storage/framework/sessions
mkdir -p /var/app/staging/storage/logs
mkdir -p /var/app/staging/bootstrap/cache

# Set liberal permissions for staging
echo "Setting permissions for staging directories..."
chmod -R 777 /var/app/staging/storage
chmod -R 777 /var/app/staging/bootstrap/cache

# Current directories will be created when the application is moved to current
# but let's ensure they exist anyway
echo "Creating storage directories for current..."
mkdir -p /var/app/current/storage/framework/views
mkdir -p /var/app/current/storage/framework/cache
mkdir -p /var/app/current/storage/framework/sessions
mkdir -p /var/app/current/storage/logs
mkdir -p /var/app/current/bootstrap/cache

# Set liberal permissions for current
echo "Setting permissions for current directories..."
chmod -R 777 /var/app/current/storage
chmod -R 777 /var/app/current/bootstrap/cache

echo "Storage directories created and permissions set"