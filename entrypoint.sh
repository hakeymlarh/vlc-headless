#!/bin/sh
exec cvlc --no-video --aout=alsa \
  --intf telnet --telnet-host 0.0.0.0 --telnet-port 4212 \
  --telnet-password "$VLC_PASSWORD" \
  --extraintf http --http-host 0.0.0.0 --http-port 8080 \
  --http-password "$VLC_PASSWORD" \
  $VLC_EXTRA_ARGS
