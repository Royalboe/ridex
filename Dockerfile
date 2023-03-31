FROM ubuntu 
RUN apt-get update && apt-get install -y apache2 apache2-utils
RUN apt clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY . /var/www/html/
EXPOSE 80
CMD ["apache2ctl", "-D","FOREGROUND"]
