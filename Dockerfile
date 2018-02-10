FROM nginx:1.12-alpine
COPY docker/nginx/proxy.conf /etc/nginx/conf.d/default.conf
COPY public/index.html /var/www/public/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]



