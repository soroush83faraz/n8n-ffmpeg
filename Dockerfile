# Start from the official n8n image
FROM n8nio/n8n:latest

# Install ffmpeg
USER root

# Install ffmpeg + python3
RUN apk add --no-cache ffmpeg python3 py3-pip wget

# Install yt-dlp (Python script)
RUN pip install --no-cache-dir yt-dlp

# Switch back to node user (important for n8n to run properly)
USER node
