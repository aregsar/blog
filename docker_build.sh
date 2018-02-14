#!/bin/bash

cp .dockerignore-web .dockerignore
docker build . -f Dockerfile-web -t aregsar/nginx-prod2
cp .dockerignore-app .dockerignore
docker build . -f Dockerfile-app -t aregsar/phpfpm-prod2
rm .dockerignore