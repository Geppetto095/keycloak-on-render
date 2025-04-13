FROM quay.io/keycloak/keycloak:23.0.4

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Build prima dell'avvio
RUN /opt/keycloak/bin/kc.sh build

# Render imposta dinamicamente la porta in $PORT
ENV KC_HTTP_PORT=${PORT}

CMD [ "start-dev" ]
