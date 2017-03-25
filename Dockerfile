# my shadowsocksr

FROM centos:centos7

RUN yes | yum install python-setuptools && easy_install pip
RUN yes | yum install git
RUN yes | yum install m2crypto git
RUN yum install passwd
RUN git clone -b manyuser https://github.com/shadowsocksr/shadowsocksr.git
WORKDIR shadowsocksr/shadowsocks
RUN pip install cymysql

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
