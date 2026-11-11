FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
      vlc-bin vlc-plugin-base vlc-plugin-access-extra alsa-utils \
    && rm -rf /var/lib/apt/lists/*

# VLC refuses to run as root
RUN useradd -m -G audio vlc

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER vlc
EXPOSE 4212 8080
ENTRYPOINT ["/entrypoint.sh"]
