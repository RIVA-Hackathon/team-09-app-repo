# RUN curl -fsSLO  https://get.docker/builds/Linux/x86_64/docker-17.04.0-ce.tgz  \
  # && tar xzvf docker-17.04.0-ce.tgz \
  # && mv docker/docker /usr/local/bin \
  # && rm -r docker docker-17.04.0-ce.tgz

FROM nginx:1.21.1-alpine

COPY website /usr/share/nginx/html
COPY conf/default.conf /etc/nginx/conf.d/default.conf

STOPSIGNAL SIGTERM

CMD [ "nginx", "-g", "daemon off;" ]
