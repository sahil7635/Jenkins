FROM ubuntu as build-step
copy . /app

from nginx
copy --from=build-step /app/steller /usr/share/nginx/html
