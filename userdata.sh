#!/bin/bash
# Ensure script runs as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit 1
fi

# Update packages and install required software
apt update -y
apt install -y apache2 awscli curl

# Get the EC2 instance ID from metadata
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

# Optional: Download an image from S3 bucket (ensure IAM role has S3 read permissions)
aws s3 cp s3://myterraformprojectbucket2026/project.webp /var/www/html/project.webp --acl public-read

