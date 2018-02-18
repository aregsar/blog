#!/bin/bash

#script to build app(phpfpm) and web(nginx) images

#to make this script file executable, type:
#chmod +x docker-build.sh

#to execute this script file, type:
#./docker-build.sh

#to run both images together, type:
#docker-compose up -d 

#to stop both running containers, type:
#docker-compose down --volumes

docker-compose down --volumes
composer install
composer update
php artisan config:cache
cp .dockerignore-web .dockerignore
docker build . -f Dockerfile-web -t aregsar/nginx-prod
cp .dockerignore-app .dockerignore
docker build . -f Dockerfile-app -t aregsar/phpfpm-prod
rm .dockerignore

