FROM eboraas/apache

RUN apt-get update && apt-get -y install php5=5.1 php5-mysql && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN /usr/sbin/a2dismod 'mpm_*' && /usr/sbin/a2enmod mpm_prefork

EXPOSE 80
EXPOSE 443


#checkout the reopsitory
RUN apt-get update 
RUN apt-get -y install git
RUN rm -r /var/www/html && git clone --recursive https://github.com/mposch/simpleinvoices.git /var/www/html
RUN chown -R www-data:www-data /var/www/html/tmp

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]