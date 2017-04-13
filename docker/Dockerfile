FROM eboraas/apache-php

RUN apt-get update && apt-get -y install git nano
#RUN /usr/sbin/a2dismod 'mpm_*' && /usr/sbin/a2enmod mpm_prefork
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

#EXPOSE 80
#EXPOSE 443


#checkout the reopsitory
RUN echo test1
RUN rm -r /var/www/html && git clone --recursive https://github.com/mposch/simpleinvoices.git /var/www/html
RUN chown -R www-data:www-data /var/www/html/tmp

#CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]