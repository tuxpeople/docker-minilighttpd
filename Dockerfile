FROM alpine:3.14.2
LABEL maintainer="Thomas Deutsch <thomas@tuxpeople.org>" \
      version="1.0.0"

# Install packages
# hadolint ignore=DL3018
RUN apk update && \
    apk add --no-cache \
    lighttpd \
    curl && \
    rm -rf /var/cache/apk/* 

# Copy lighttpd config files.
COPY *.sh *.c* /config/

# Check every minute if lighttpd responds within 1 second and update
# container health status accordingly.
HEALTHCHECK --interval=1m --timeout=1s \
  CMD curl -f http://localhost/ || exit 1

# Expose http port
EXPOSE 80

ENTRYPOINT ["/config/entrypoint.sh"]
