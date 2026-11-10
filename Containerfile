FROM fedora:latest
RUN dnf update -y && dnf install -y tuxpaint vim httpd
COPY myinfo.html /var/www/html/myinfo.html
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]
