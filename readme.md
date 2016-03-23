# Deprectated

Just use the official [PHP](https://hub.docker.com/r/library/php/tags/) images from docker hub it has PHP7 on Alpine between 98 - 170 Mbs which is amazing.

## Docker Container for PHP 7 

This is a docker container for PHP 7 mainly the cli. 
[Alpine Linux](https://hub.docker.com/_/alpine/) base image and compiles PHP after cloning it from php source git repo.
This image is based on this [tutorial](http://bit.ly/1Q3nsIc).


## Pull it from docker registry

To pull the docker image you can do it with:

```
docker pull geshan/php7-alpine
```

## Usage

Then run the following commands to run php 7:


```
docker run -v $(pwd):/var/www geshan/php7-alpine "php --version"
```

## Commands inside the container

Run:

```
docker run -it $(pwd):/var/www geshan/php7-alpine /bin/sh
```

Then run your commands with `php`.



