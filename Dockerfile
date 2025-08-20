# Start from the official n8n image
FROM n8nio/n8n:latest

# Install ffmpeg
USER root
RUN apk add --no-cache ffmpeg

# Switch back to node user (important for n8n to run properly)
USER node
