FROM testthedocs/ttd-caddy:latest

ARG container_version=0.0.0.0

LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs" \
    architecture="amd64" \
    docs_version="$container_version"

COPY source/_build/html /srv/html
