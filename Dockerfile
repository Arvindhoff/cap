FROM centos:latest
MAINTAINER Arvind
RUN yum install httpd -y
COPY basic.html /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
