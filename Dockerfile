FROM centos:latest
MAINTAINER Vignesh
RUN yum install httpd -y
COPY application.html /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
