FROM quay.io/keycloak/keycloak:23.0.4

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

RUN /opt/keycloak/bin/kc.sh build

CMD ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port=${PORT}"]
