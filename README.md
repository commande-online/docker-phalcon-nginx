# Commande-Online.fr SAS Phalcon DOCKER

Based on (https://github.com/commande-online/docker-phalcon) and on (https://github.com/jprjr/docker-arch-php/blob/master/Dockerfile)

PHP 5.6 is included

PHP-FPM is listening on Port 9000 

## Goal 

To plug the PHP-FPM engine to NGINX. 

## Notes

In order to work PHP files need to be placed in the /usr/share/php5-fpm directory. No need to put them on the NGINX server.  Make sure to add a public directory in /usr/share/php5-fpm
Logs are automatically redirected to the console