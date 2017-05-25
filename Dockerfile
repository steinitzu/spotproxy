FROM nginx:latest

EXPOSE 8080

COPY ./entrypoint.sh /filltemplate.sh
RUN chmod +x /filltemplate.sh

RUN mkdir /templates
COPY ./nginx.tmpl /templates/nginx.tmpl

ENTRYPOINT ["/filltemplate.sh"]

CMD ["nginx", "-g", "daemon off;"]
