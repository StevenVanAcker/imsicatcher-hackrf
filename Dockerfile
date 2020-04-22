ARG UBUNTU_VERSION=latest
FROM ubuntu:${UBUNTU_VERSION}

COPY install-imsicatcher.sh /opt
RUN chmod +x /opt/install-imsicatcher.sh
RUN /opt/install-imsicatcher.sh

WORKDIR /opt/IMSI-catcher
