FROM ubuntu as build-step
copy . /app

from nginx
copy --from=build-step /app/public_html /usr/share/nginx/html
