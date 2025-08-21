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

# Install yt-dlp
RUN pip install --no-cache-dir yt-dlp

USER node
