FROM fedora:37

MAINTAINER sergione

RUN \
 dnf clean all && \
 dnf install https://download-ib01.fedoraproject.org/pub/fedora/linux/releases/35/Everything/x86_64/os/Packages/i/iperf3-3.10.1-2.fc35.x86_64.rpm -y

USER 1001

ENTRYPOINT ["/usr/bin/iperf3", "-s"]
 EXPOSE 5001

