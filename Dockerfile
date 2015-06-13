FROM php:5.4

RUN mkdir /project
WORKDIR /project

EXPOSE 80
VOLUME ["/project"]

RUN apt-get update && apt-get install -y git mercurial
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

CMD ["php", "-S", "0.0.0.0:80"]
