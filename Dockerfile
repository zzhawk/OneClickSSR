# my shadowsocksr

FROM tutum/centos:latest
MAINTAINER "you" <your@email.com>

RUN yes | yum install python-setuptools -y && easy_install pip
RUN yes | yum install git
RUN yes | yum install m2crypto git
RUN yum install passwd
RUN git clone -b manyuser https://github.com/shadowsocksr/shadowsocksr.git /root/app/shadowsocksr
RUN pip install cymysql


ENTRYPOINT ["/root/app/shadowsocksr/shadowsocks"]
