```
mongo:
  restart: always
  build: https://github.com/jsoendermann/mongo-with-user
  environment:
    - MONGO_INITDB_ROOT_USERNAME=admin
    - MONGO_INITDB_ROOT_PASSWORD=adminPw
    - DB_NAME=dbName
    - DB_USER=dbUser
    - DB_PASSWORD=dbPassword
  ports:
    - 27017:27017
  volumes:
    - /var/db:/data/db
```