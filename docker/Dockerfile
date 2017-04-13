FROM eboraas/apache-php
#checkout the reopsitory
RUN apt-get update 
RUN apt-get -y install git
RUN rm -r /var/www/html && git clone --recursive https://github.com/mposch/simpleinvoices.git /var/www/html
RUN chown -R www-data:www-data /var/www/html/tmp