![matterwiki](https://github.com/Matterwiki/matterwiki.github.io/raw/master/assets/logo-header.png?raw=true)

[![](https://images.microbadger.com/badges/image/hydrog3n/matterwiki.svg)](https://microbadger.com/images/hydrog3n/matterwiki "Get your own image badge on microbadger.com")

[![](https://images.microbadger.com/badges/version/hydrog3n/matterwiki.svg)](https://microbadger.com/images/hydrog3n/matterwiki "Get your own version badge on microbadger.com")

# Matterwiki

A simple and beautiful wiki for teams [http://matterwiki.com](http://matterwiki.com) [github](https://github.com/Matterwiki/Matterwiki)

Base on NodeJs container by (xataz)[https://github.com/xataz/docker-node] 

## Build:

**To build docker image it's easy.**  
``$ git clone https://github.com/hydrog3n/dockerfiles.git``  
``$ cd dockerfiles/matterwiki``  
``$ docker build -t matterwiki .``

## How to use

Run need to run mysql database

``$ docker run -d --name mariadb -e MYSQL_RANDOM_ROOT_PASSWORD=yes -e MYSQL_DATABASE=matterwiki --link mariadb:mariadb -e MYSQL_USER=hydrog3n -e MYSQL_PASSWORD=root mariadb``

``$ docker run -d --name matterwiki --link mariadb:mariadb -e MYSQL_HOST=mariadb -e MYSQL_USER=hydrog3n -e MYSQL_PASSWORD=root -e MYSQL_DATABASE=matterwiki -e AUTHSECRET=YourSecretAuth hydrog3n/matterwiki``

## Compose File

TODO :pencil:

## Contributing
Any contributions, are very welcome !

## Beer :beer: ?

If you don't know what to do with your coins:

**ETH:** 0x70008923609dee2c553c545bcabbb58a09bfd0df  
**BTC:** 15d7aooaEFAxtsRzCbJZZKkizb58cWD8zk  
**DSH:** XpTMX6P5y6Wcj7VZZEvTkZfmw6cGvE6EU7