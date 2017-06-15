FROM drupal:8

RUN apt-get update && apt-get install -y git

RUN curl -o get-composer.php https://getcomposer.org/installer && php get-composer.php && rm get-composer.php && rm composer.lock

ADD . /var/www/html

RUN php composer.phar install

RUN chmod -R 777 .

