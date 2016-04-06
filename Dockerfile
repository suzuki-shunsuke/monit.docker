FROM alpine:3.3
RUN apk update && \
  apk upgrade && \
  apk add monit && \
  mkdir -p /etc/monit/monit.d && \
  mv /etc/monitrc /etc/monit && \
  ln -s /etc/monit/monitrc /etc/monitrc && \
  ln -s /etc/monit/monit.d /etc/monit.d && \
  rm -rf /var/cache/apk/*
VOLUME /etc/monit /var/log
CMD monit -I
