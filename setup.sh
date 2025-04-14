#!/bin/bash

/opt/keycloak/bin/kc.sh start-dev --http-port=${PORT} --hostname-strict=false --hostname=0.0.0.0 &
KEYCLOAK_PID=$!

/bin/sleep 15

/opt/keycloak/bin/kcadm.sh config credentials \
  --server http://localhost:${PORT} \
  --realm master \
  --user $KEYCLOAK_ADMIN \
  --password $KEYCLOAK_ADMIN_PASSWORD

wait $KEYCLOAK_PID
