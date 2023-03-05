FROM fedora:37

MAINTAINER sergione

RUN \
 dnf clean all && \
 dnf install https://download-ib01.fedoraproject.org/pub/fedora/linux/releases/37/Everything/x86_64/os/Packages/i/iperf3-3.11-2.fc37.i686.rpm -y

USER 1001

ENTRYPOINT ["/usr/bin/iperf3", "-s"]
 EXPOSE 5001

