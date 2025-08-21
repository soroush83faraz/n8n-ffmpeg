# Base image: n8n official Alpine
FROM n8nio/n8n:latest

USER root

# Install dependencies: ffmpeg, python3, pip, build tools
RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    build-base \
    libffi-dev \
    openssl-dev \
    wget \
    git

# Upgrade pip
RUN python3 -m pip install --no-cache-dir

# Install yt-dlp using pip
RUN python3 -m pip install --no-cache-dir yt-dlp

# Switch back to n8n user
USER node

