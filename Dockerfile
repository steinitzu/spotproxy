FROM nginx:latest

EXPOSE 80

COPY ./nginx.tmpl /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
