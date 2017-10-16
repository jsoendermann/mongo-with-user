FROM mongo:latest

COPY create-user.sh /docker-entrypoint-initdb.d/

CMD ["--auth"]