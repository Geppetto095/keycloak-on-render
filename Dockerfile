FROM quay.io/keycloak/keycloak:23.0.4

ENV KC_HTTP_PORT=${PORT}
EXPOSE ${PORT}

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start", "--optimized"]
