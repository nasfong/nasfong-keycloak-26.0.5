# Use Keycloak base image
FROM quay.io/keycloak/keycloak:26.0.5

# Set environment variables for the Keycloak admin user
ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=admin

# Expose port 8080
EXPOSE 8080

# Command to run Keycloak in development mode
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
