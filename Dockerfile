FROM docker.io/ubuntu

RUN apt update -y
RUN apt install tzdata -y
RUN apt install apache2 -y
expose 80

RUN echo Testing for source-to image > /var/www/html/index.html
CMD ["apache2ctl","-D","FOREGROUND"]
