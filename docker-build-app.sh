#!/bin/bash

#to make this script file executable, type:
#chmod +x docker-build-app.sh

#to execute this script file, type:
#./docker-build-app.sh

#combine all config files in config directory into a single file and write it to the storage directory
#php artisan config:cache

cp .dockerignore-app .dockerignore
docker build . -f Dockerfile-app -t aregsar/phpfpm-prod
rm .dockerignore

#to run this built image standalone, type:
#docker run -p 9090:9000 aregsar/phpfpm-prod