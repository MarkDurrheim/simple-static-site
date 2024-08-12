# Basic nginx setup to serve the content from our "static" folder
# Use the nginx-unprivileged image as a base to reduce issues in environments like OpenShift
# Serves through port 8080
FROM nginxinc/nginx-unprivileged
COPY static /usr/share/nginx/html
