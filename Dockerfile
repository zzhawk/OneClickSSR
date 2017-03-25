# my shadowsocksr

FROM tutum/centos:latest
MAINTAINER "you" <your@email.com>

RUN yes | yum install python-setuptools -y && easy_install pip
RUN yes | yum install git
RUN yes | yum install m2crypto git
RUN yum install passwd
RUN git clone -b manyuser https://github.com/shadowsocksr/shadowsocksr.git
# RUN pip install cymysql

# ADD entrypoint.sh /usr/local/bin/entrypoint.sh
# # Configure container to run as an executable
# ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
