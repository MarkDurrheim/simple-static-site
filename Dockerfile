# Basic nginx setup to serve the content from our "static" folder
FROM nginx
COPY static /usr/share/nginx/html
