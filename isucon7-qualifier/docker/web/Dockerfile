FROM alpine AS build-dev

ARG GIT_URL=https://github.com/isucon/isucon7-qualify.git

RUN \
  apk --no-cache add git && \
  git clone --depth=1 $GIT_URL /isubata && \
  rm -rf /isubata/.git

FROM nginx:1.10

RUN apt-get update && apt-get install -y wget unzip vim && \
  wget https://github.com/tkuchiki/alp/releases/download/v0.3.1/alp_linux_amd64.zip && \
  unzip alp_linux_amd64.zip && \
  mv alp /usr/local/bin/

COPY --from=build-dev /isubata /home/isucon/isubata
#COPY --from=build-dev /isubata/files/app/nginx.conf /etc/nginx/conf.d/isucon.conf
COPY isucon.conf /etc/nginx/conf.d/isucon.conf
COPY nginx.conf /etc/nginx/nginx.conf
