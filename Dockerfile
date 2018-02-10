#
# build stage
#
FROM node:8.9.4 AS build
WORKDIR /app
# create node_modules folder and install dependencies
# note: yarn would generate yarn.lock if it was not copied
COPY package.json yarn.lock ./
RUN yarn
# build assets
COPY resources/assets ./resources/assets
COPY webpack.mix.js ./
RUN yarn prod
#copy files
COPY public/favicon.ico ./public/favicon.ico
COPY public/robots.txt ./public/robots.txt
COPY public/index.html ./public/index.html

#
#runtime stage 
#
FROM nginx:1.12-alpine
COPY docker/nginx/proxy.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/public /var/www/public
EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]

#test commands to build and run this dockerfile
#docker build . -t aregsar/nginx-prod
#docker run -p 8080:80 aregsar/nginx-prod