# Creazione immagine con servizio php81

Immagine per la gestione di php8.1 come servizio

## Per il build dell'immagine

docker build -f php81.Dockerfile -t docker-locale/php81 .

## Per lanciare il container

docker run -id docker-locale/php81 bash

## abilitare porta 9000 in phpFpm

vim /etc/php/8.1/fpm/pool.d/www.conf

Commentare la riga "listen = /run/php/php8.1-fpm.sock" 
ed inserire

listen = 9000

## Lanciare phpFpm

service php8.1-fpm start
service php8.1-fpm status

## Aggiornare immagine locale con le modifiche

docker commit <CONTAINER-ID> docker-locale/base

## Stoppare il container

docker container stop <CONTAINER-ID>