FROM ubuntu:xenial
MAINTAINER shridhar.kapshikar@yahoo.com
#CMD setproxy
ENV http_proxy http://10.32.234.41:8080
ENV https_proxy http:// 10.32.234.41:8080
RUN apt-get update
RUN apt-get -y install apt-utils
RUN apt-get -y install apache2
# Add configuration file
ADD action /var/www/cgi-bin/action
RUN echo "PassEnv DB_SERVICE_SERVICE_HOST" >> /etc/httpd/conf/httpd.conf
RUN chown root:apache /var/www/cgi-bin/action
RUN chmod 755 /var/www/cgi-bin/action
RUN echo "The Web Server is Running" > /var/www/html/index.html
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND
