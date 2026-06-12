#!/bin/bash
set -e

# Install Docker
apt update

apt install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
"deb [arch=$(dpkg --print-architecture) \
signed-by=/etc/apt/keyrings/docker.gpg] \
https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | \
tee /etc/apt/sources.list.d/docker.list > /dev/null

apt update

apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Start Docker
systemctl enable docker || true
systemctl start docker || true

# Login to Docker Hub
echo "$Docker_pass" | docker login -u "$Docker_user" --password-stdin

# Pull image
docker pull shivtushal/git-lab:python-app-1.0

# Run container
docker stop flask-app 2>/dev/null || true
docker rm flask-app 2>/dev/null || true

docker run -d \
  --name flask-app \
  --restart unless-stopped \
  -p 5000:5000 \
  shivtushal/git-lab:python-app-1.0