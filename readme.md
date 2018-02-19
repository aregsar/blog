
## About Laravel Blog (v0.1)

Laravel Blog is dockerized laravel application boilerplate intended to demonstrate best practices for deploying laravel application containers to production. The project contains  Dockerfiles and build scripts for building nginx and php-fpm production images from a Laravel project using multi stage docker builds. It also contains a docker-compose file to run the built images as containers to run Laravel in production.

This is still very much a work in progress.

- [Cloning and setting up the repo]
- clone the repo
- chmod +x docker-build.sh
- chmod +x docker-build-app.sh
- chmod +x docker-build-web.sh
- cp .env.example .env.prod

- in .env.prod set these keys:
- APP_ENV=production
- APP_DEBUG=false

- [building and running the images]
- ./docker-build.sh
- docker-compose up -d

- [stoping the containers]
- docker-compose down --volumes

- [The following resources were used in bulding this boilerplate]

http://geekyplatypus.com/dockerise-your-php-application-with-nginx-and-php7-fpm/

https://github.com/joelshepherd/laravel-docker-template/blob/master/.docker/build/Dockerfile

https://medium.com/@shakyShane/laravel-docker-part-1-setup-for-development-e3daaefaf3c

https://medium.com/@shakyShane/laravel-docker-part-2-preparing-for-production-9c6a024e9797

https://medium.com/@othillo/adding-composer-to-php-docker-images-using-multi-stage-builds-2a10967ae6c1

https://chrisguitarguy.com/2017/12/16/multi-stage-docker-php/

https://blog.hasura.io/an-exhaustive-guide-to-writing-dockerfiles-for-node-js-web-apps-bbee6bd2f3c4

https://medium.com/@shakyShane/lets-talk-about-docker-artifacts-27454560384f


## License

This is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
