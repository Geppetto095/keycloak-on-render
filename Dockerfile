# Usa l'immagine ufficiale di Keycloak come base
FROM quay.io/keycloak/keycloak:23.0.4

# Imposta la variabile di ambiente per la porta
ENV PORT=10000

# Espone la porta configurata
EXPOSE ${PORT}

# Esegui Keycloak con la porta dinamica
CMD ["start", "--http-port=${PORT}"]
