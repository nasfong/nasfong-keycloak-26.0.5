# Use Keycloak base image
FROM quay.io/keycloak/keycloak:21.1.0

# Set environment variables for the Keycloak admin user
ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=admin
ENV KC_LOGLEVEL=DEBUG
ENV KC_DB=dev-mem

# Expose port 8080
EXPOSE 8080

# Command to run Keycloak in development mode
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
