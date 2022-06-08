FROM centos:latest
MAINTAINER  abhishekjswl897@gmail.com
RUN yum install -y httpd \
Zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenric.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenric.zip
RUN cp -rvf photogenric/*
RUN rm -rf photogenric photogenric.zip
CMD ["/usr/sbin/httpd" , "-D" , "FOREGROUND"]
EXPOSE 80
