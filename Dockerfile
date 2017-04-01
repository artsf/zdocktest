FROM centos:7

RUN mkdir -p /run/docker/plugins

COPY zdocktest.linux /run/zdocktest

CMD ["/run/zdocktest"]
