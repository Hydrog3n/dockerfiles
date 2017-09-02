# Minerd Docker for Darkcoin, Dashcoin

## Description:

This docker container will help you to quickly launch cpuminer instance.
It is based on [pooler's cpuminer](https://github.com/pooler/cpuminer). 

## Build:

**To build docker image it's easy.**  
``$ git clone https://github.com/hydrog3n/dockerfiles.git``  
``$ cd dockerfiles/cpuminer``  
``$ docker build -t cpuminer .``

## Run:
Easy:

``$ docker run -d --name cpuminer -e algo=<X11|scrypt|sha256d> -e url=<stratum+tcp://urlpool> -e port=<portofpool> -e worker_name=<pseudo.name> -e worker_password=<workerpassword>  hydrog3n/cpuminer``

## Donations:

If you don't know what to do with your coins:

**ETH:** 0x70008923609dee2c553c545bcabbb58a09bfd0df  
**BTC:** 15d7aooaEFAxtsRzCbJZZKkizb58cWD8zk  
**DSH:** XpTMX6P5y6Wcj7VZZEvTkZfmw6cGvE6EU7