# Basic nginx setup to serve the content from our "static" folder
FROM nginxinc/nginx-unprivileged
COPY static /usr/share/nginx/html
