# my shadowsocksr

FROM tutum/centos:latest
MAINTAINER "you" <your@email.com>

RUN yes | yum install python-setuptools -y && easy_install pip
RUN yes | yum install git
RUN yes | yum install m2crypto git
RUN yes | yum install passwd
RUN git clone -b manyuser https://github.com/shadowsocksrr/shadowsocksr /root/app/shadowsocksr
RUN cd /root/app/shadowsocksr && git checkout akkariiin/dev
RUN pip install cymysql

WORKDIR /root/app/shadowsocksr/shadowsocks
ENTRYPOINT ["python", "server.py"]
