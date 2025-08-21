FROM n8nio/n8n:latest

USER root

# Install ffmpeg, python3, pip, build dependencies
RUN apk add --no-cache \
    ffmpeg \
    python3 \
    py3-pip \
    gcc \
    musl-dev \
    libffi-dev \
    make \
    wget

# Upgrade pip
RUN pip install --no-cache-dir --upgrade pip

# Install yt-dlp
RUN pip install --no-cache-dir yt-dlp

# Optional: cleanup build deps to reduce image size
RUN apk del gcc musl-dev make libffi-dev

# Test yt-dlp
RUN yt-dlp --version

USER node
