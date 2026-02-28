ARG BUILD_FROM
FROM $BUILD_FROM


RUN curl -Lo /usr/local/bin/cloudflared \
      "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64"
RUN chmod +x /usr/local/bin/cloudflared

COPY run.sh /
RUN chmod a+x /run.sh
CMD [ "/run.sh" ]
