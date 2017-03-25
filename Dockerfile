# my shadowsocksr

FROM centos:centos7

RUN yum install python-setuptools && easy_install pip
RUN yum install git 
RUN yum install passwd
RUN git clone -b manyuser https://github.com/shadowsocksr/shadowsocksr.git

WORKDIR shadowsocksr/shadowsocks

RUN pip install cymysql

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
