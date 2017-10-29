FROM ubuntu:16.04
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    boinc-client \
    boinc-manager \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /
VOLUME /var/lib/boinc-client
USER boinc

LABEL vendor="infraBuilder" \
      maintainer="alexis@infrabuilder.com"

ENTRYPOINT ["/entrypoint.sh"]
