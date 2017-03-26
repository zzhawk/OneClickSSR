# my shadowsocksr

FROM tutum/centos:latest
MAINTAINER "you" <your@email.com>

RUN yes | yum install python-setuptools -y && easy_install pip
RUN yes | yum install git
RUN yes | yum install m2crypto git
RUN yum install passwd
RUN git clone -b manyuser https://github.com/shadowsocksr/shadowsocksr.git /root/app/shadowsocksr
RUN pip install cymysql

COPY entrypoint.sh /usr/local/bin/

RUN chmod +x /root/app
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
