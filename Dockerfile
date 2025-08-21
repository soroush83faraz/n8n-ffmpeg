# Start from the official n8n image
FROM n8nio/n8n:latest

USER root

# Install ffmpeg + wget
RUN apk add --no-cache ffmpeg wget

# Download yt-dlp binary and make it executable
RUN wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/bin/yt-dlp \
    && chmod +x /usr/bin/yt-dlp
    
# Switch back to node user (important for n8n to run properly)
USER node
