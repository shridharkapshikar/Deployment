FROM ubuntu:xenial
MAINTAINER shridhar.kapshikar@yahoo.com
#CMD setproxy
ENV http_proxy http://10.32.234.41:8080
ENV https_proxy http:// 10.32.234.41:8080
RUN apt-get update
RUN apt-get -y install apt-utils
RUN apt-get -y install apache2
# Add configuration file
RUN echo "The Web Server is Running" > /var/www/html/index.html
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND
