FROM fedora:latest 
RUN dnf -y upgrade 
RUN dnf -y install tuxpaint vim httpd 
COPY myinfo.html /var/www/html/myinfo.html 
EXPOSE 80 
CMD httpd -D FOREGROUND 
