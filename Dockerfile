FROM ubuntu is build-step
copy . /app

from nginx
copy --from=build-step /app/steller /usr/share/nginx/html
