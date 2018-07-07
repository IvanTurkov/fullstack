# Web fullstack in docker

Dockerized:

    - nginx

    - php-fpm (7.2)
    
    - node
    
    - postgres
    
    - mysql (5.6)
    
---

Folders
```
db:
    mysql \\mounted to mysql data in docker
    postgres \\mounted to postgres data in docker
    scripts:
        mysql \\mounted to mysql docker-entrypoint-initdb.d
        postgres \\mounted to postgres docker-entrypoint-initdb.d
                
images:
   nginx:
        Dockerfile
   mysql:
        Dockerfile
   postgres:
        Dockerfile
   php:
        Dockerfile
        php.ini \\ mounted to php/conf.d/40-custom.ini
        
logs:
    access.log \\ nginx access.log
    error.log \\ nginx error.log 

nginx:
    frontend.conf \\ port:8000  
    app.conf \\ port:8001
    backdoor.conf \\ port:9000
    
www:
    app:
        ---
    backdoor
        ---
    frontend
        ---
        
docker-compose-build.yml \\ buils images

docker-compose.yml \\ up containers using `:fullstack` tagged images

start.sh \\ create db/mysql db/postgres
         \\ pull `:fullstack` tagged images
         \\ up containers

stop.sh \\ down container, cleans db/*/data folders, destroy linked volumes

clean.sh \\ destroy containers, volumes, images

```