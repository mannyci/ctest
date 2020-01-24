FROM centos:7
RUN yum -y update && yum clean all
RUN yum install -y centos-release-scl && \
    yum -y install git go-toolset-7-golang && yum clean all

ARG env
ENV ENV env
VOLUME ["/code"]
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]


