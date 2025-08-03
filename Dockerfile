FROM n8nio/n8n:latest

USER root

RUN apk update && apk add --no-cache ffmpeg curl \
 && curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp_linux -o /usr/local/bin/yt-dlp \
 && chmod +x /usr/local/bin/yt-dlp

RUN mkdir -p /downloads && chown -R node:node /downloads

USER node
