FROM registry.access.redhat.com/rhscl/python-36-rhel7:1-43

USER root

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum -y install https://centos7.iuscommunity.org/ius-release.rpm && \
    yum install --skip-broken -y git && \
    yum clean all && \
    rm -r /var/cache/yum
RUN git clone https://0a7c6fa9ef61b74373a59d599bac92fc1874a49b:x-oauth-basic@github.com/sugiyamagit/python-helloworld.git /tmp/src
RUN sh /usr/libexec/s2i/assemble

USER 1001
