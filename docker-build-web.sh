#!/bin/bash

#to make this script file executable, type:
#chmod +x docker-build-web.sh

#to execute this script file, type:
#./docker-build-web.sh

cp .dockerignore-web .dockerignore
docker build . -f Dockerfile-web -t aregsar/nginx-prod
rm .dockerignore

#to run this built image standalone, type:
#docker run -p 8080:80 aregsar/nginx-prod