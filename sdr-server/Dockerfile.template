FROM debian:stable-slim AS base

RUN apt update && apt install -y tini

COPY deploy-rtl-sdr.sh /src/deploy-rtl-sdr.sh
RUN  bash -x /src/deploy-rtl-sdr.sh

COPY start.sh /src/start.sh
RUN chmod +x /src/start.sh

ENTRYPOINT ["/usr/bin/tini", "--", "/src/start.sh"]