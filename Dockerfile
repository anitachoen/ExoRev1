FROM centos:7
RUN yum update -y && yum install httpd -y && yum clean all

COPY index.html /var/www/html/
EXPOSE 89

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

#kiwi
