# Minerd Docker for Darkcoin, Dashcoin

## Description:

This docker container will help you to quickly launch cpuminer instance.
It is based on [tpruvot's cpuminer](https://github.com/tpruvot/cpuminer-multi). 

## Build:

**To build docker image it's easy.**  
``$ git clone https://github.com/hydrog3n/dockerfiles.git``  
``$ cd dockerfiles/cpuminer-multi``  
``$ docker build -t cpuminer-multi .``

## Environments

* URL (Required) : Url of the Pool
* PORT (Required) : Port of the Pool
* USERNAME (Required) : Your worker username
* PASSWORD (Required) : Your worker password
* THREAD : Number of thread you want to use (Default: cpuminer detection)
* ALGO : This is the type of algorythm you want to use (Default: scrypt) List [here](https://github.com/tpruvot/cpuminer-multi#algorithms)

## Run:
Easy:

``$ docker run -d --name cpuminer -e ALGO=<X11|scrypt|sha256d> -e URL=<stratum+tcp://urlpool> -e PORT=<portofpool> -e USERNAME=<pseudo.name> -e PASSWORD=<workerpassword> hydrog3n/cpuminer-multi``

## Donations:

If you don't know what to do with your coins:

**ETH:** 0x70008923609dee2c553c545bcabbb58a09bfd0df  
**BTC:** 15d7aooaEFAxtsRzCbJZZKkizb58cWD8zk  
**DSH:** XpTMX6P5y6Wcj7VZZEvTkZfmw6cGvE6EU7