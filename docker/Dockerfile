FROM eboraas/apache-php
#checkout the reopsitory
RUN apt-get update 
RUN apt-get -y install git
RUN git clone --recursive https://github.com/mposch/simpleinvoices.git /var/www/html/simpleinvoices
RUN chown -R www-data:www-data /var/www/html/simpleinvoices/tmp