FROM nginx:alpine

COPY html/. /usr/share/nginx/html
COPY conf/*.conf /etc/nginx/conf.d/