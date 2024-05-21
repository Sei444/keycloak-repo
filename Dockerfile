FROM quay.io/keycloak/keycloak:23.0

LABEL maintainer="Sergio Alaro Claros Orellana - s3rgi0444@gmail.com"

COPY themes /opt/keycloak/themes
COPY imports /opt/keycloak/data/import

#Other way to execute config migrations
# WORKDIR /opt/keycloak/bin/
# ENTRYPOINT [ "./kc.sh", "import", "--optimized", "--file", "/opt/keycloak/data/import/global.json" ]