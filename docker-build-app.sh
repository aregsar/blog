#!/bin/bash

#script to build app(phpfpm) image

#to make this script file executable, type:
#chmod +x docker-build-app.sh

#to execute this script file, type:
#./docker-build-app.sh

#to run this built image standalone, type:
#docker run -p 9090:9000 aregsar/phpfpm-prod

docker-compose down --volumes
#composer install
#composer update
#php artisan config:cache
cp .dockerignore-app .dockerignore
docker build . -f Dockerfile-app -t aregsar/phpfpm-prod
rm .dockerignore

