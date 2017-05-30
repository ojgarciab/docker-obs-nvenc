FROM ubuntu:16.04
MAINTAINER github/ojgarciab

VOLUME ["/root"]
WORKDIR /root

COPY instalacion.sh /root/

ENTRYPOINT ["bash","-x","/root/instalacion.sh"]

