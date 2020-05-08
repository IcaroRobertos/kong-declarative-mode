FROM kong

ENV KONG_DATABASE=off
ENV KONG_DECLARATIVE_CONFIG=/api/kong.yaml

USER root

WORKDIR /api

COPY . .

USER kong

RUN kong start -c kong.conf

EXPOSE 8000 8001
