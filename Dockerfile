FROM registry.access.redhat.com/rhscl/python-36-rhel7:1-43

USER root

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm  && \
    yum install -y git && \
    yum clean all && \
    rm -r /var/cache/yum && \
    git clone https://0a7c6fa9ef61b74373a59d599bac92fc1874a49b:x-oauth-basic@github.com/sugiyamagit/python-helloworld.git
RUN ["exec","/usr/libexec/s2i/assemble"]

USER 1001
