## php environment

## install

```
cp .env.example .env

docker-compose build php-fpm
docker-compose build nginx
docker-compose build php-worker
docker-compose build rabbitmq

docker-compose up -d  php-fpm nginx php-worker rabbitmq
```