FROM quay.io/keycloak/keycloak:23.0.4

WORKDIR /opt/keycloak

RUN /opt/keycloak/bin/kc.sh build

EXPOSE 8080

CMD ["start", "--http-port=${PORT}"]
