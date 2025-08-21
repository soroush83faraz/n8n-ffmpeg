# Start from the official n8n image
FROM n8nio/n8n:latest

# Install ffmpeg
USER root
RUN apk add --no-cache ffmpeg 

# Install yt-dlp (download binary from GitHub)
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp \
    -o /usr/bin/yt-dlp && \
    chmod +x /usr/bin/yt-dlp

# Switch back to node user (important for n8n to run properly)
USER node
