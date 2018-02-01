FROM nginx:latest
MAINTAINER Jeremy Nelson <jermnelson@gmail.com>
RUN rm /etc/nginx/conf.d/default.conf && \
    mkdir /etc/nginx/ssl &&\
    mkdir /error
COPY public.conf /etc/nginx/conf.d/
COPY nginx.crt /etc/nginx/ssl/
COPY nginx.key /etc/nginx/ssl/
COPY error.html /error/index.html
