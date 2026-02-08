FROM --platform=linux/amd64 docker.io/debian:12.11-slim

COPY ./debs/* /tmp/
COPY mc /usr/local/bin
RUN dpkg -i /tmp/libssl3_3.0.11-1~deb12u2_amd64.deb 
RUN dpkg -i /tmp/openssl_3.0.11-1~deb12u2_amd64.deb
RUN dpkg -i /tmp/ca-certificates_20230311_all.deb
RUN dpkg -i /tmp/s5cmd_2.2.2_linux_amd64.deb
RUN dpkg -i /tmp/elbencho-static_amd64.deb
RUN /usr/sbin/update-ca-certificates
RUN /usr/bin/chmod +x /usr/local/bin/mc

RUN apt-get update \
  && apt-get install -y \
 dnsutils \
  iperf \
  iproute2 \
  curl \
  netcat-openbsd \
  inetutils-traceroute \
  iputils-ping \
  postgresql-client-15
