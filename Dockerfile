# FROM nginx:1.12-alpine
# COPY docker/nginx/proxy.conf /etc/nginx/conf.d/default.conf
# COPY public/index.html /var/www/public/index.html
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]


FROM node:8.9.4 AS build
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn
COPY resources/assets ./resources/assets
COPY public/index.html ./public/index.html
COPY webpack.mix.js ./
RUN yarn prod

FROM nginx:1.12-alpine
COPY docker/nginx/proxy.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/public /var/www/public
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]



