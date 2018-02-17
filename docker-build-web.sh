#!/bin/bash

#script to build web(nginx) image

#to make this script file executable, type:
#chmod +x docker-build-web.sh

#to execute this script file, type:
#./docker-build-web.sh

#to run this built image standalone, type:
#docker run -p 8080:80 aregsar/nginx-prod

cp .dockerignore-web .dockerignore
docker build . -f Dockerfile-web -t aregsar/nginx-prod
rm .dockerignore

