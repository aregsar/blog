#!/bin/bash

#to make this script file executable, type:
#chmod +x docker-build.sh

#to execute this script file, type:
#./docker-build.sh

#combine all config files in config directory into a single file and write it to the storage directory
#php artisan config:cache

cp .dockerignore-web .dockerignore
docker build . -f Dockerfile-web -t aregsar/nginx-prod
cp .dockerignore-app .dockerignore
docker build . -f Dockerfile-app -t aregsar/phpfpm-prod
rm .dockerignore

#to run both images together, type:
#docker-compose up -d 

#to stop both running containers, type:
#docker-compose down --volumes