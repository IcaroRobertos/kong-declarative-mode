FROM kong

ENV KONG_DATABASE=off
ENV KONG_DECLARATIVE_CONFIG=/api/kong.yaml

USER root

WORKDIR /api

COPY . .

RUN sed -ie 's/$IP/'"192.168.25.5"'/g' kong.yaml

RUN kong start -c kong.conf

USER kong

EXPOSE 8000 8001