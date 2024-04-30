FROM nginxinc/nginx-unprivileged:1.25-alpine
LABEL maintainer="sanchez1337"

COPY ./nginx/* /etc/nginx
COPY ./run.sh /run.sh

ENV APP_HOST=backend
ENV APP_PORT=9000

USER root


RUN apk add --no-cache openssl bash &&\
    chown nginx:nginx /etc/nginx/conf.d/default.conf && \
    chown nginx:nginx /vol/proxy/ssl-dhparams.pem && \
    chown nginx:nginx /etc/nginx/default.conf.tpl && \
    chwon nginx:nginx /etc/nginx/default-ssl.conf.tpl && \
    chmod +x /run.sh

VOLUME /vol/static
VOLUME /vol/www

USER nginx

CMD ["/run.sh"]
