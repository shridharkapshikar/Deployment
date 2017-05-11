FROM centos:7
MAINTAINER TECO
LABEL Vendor="CentOS" \
      License=GPLv2 \
      Version=2.4.6-40

ENV http_proxy http://10.32.234.41:8080
ENV https_proxy http:// 10.32.234.41:8080

RUN yum -y update && \
    yum -y install httpd && \
    yum clean all

EXPOSE 80

# Simple startup script to avoid some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
