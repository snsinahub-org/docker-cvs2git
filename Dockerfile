#FROM centos:centos7
FROM centos:7

RUN ls -l /etc/yum.repos.d/ 
RUN cat /etc/yum.repos.d/CentOS-Base.repo

RUN yum install -y https://packages.endpointdev.com/rhel/7/os/x86_64/endpoint-repo.x86_64.rpm
RUN yum update -y
RUN yum install -y https://gathman.org/linux/el7/x86_64/gathman-release-0.3-1.el7.noarch.rpm 
RUN yum install -y git cvs2git svn rcs cvs openssh-clients rsync wget zip unzip cvs2commons
RUN yum install -y glibc libstdc++ && yum clean all

WORKDIR /

RUN mkdir /cvs && mkdir /git && mkdir /tmp/cvs_migration

CMD /bin/bash
