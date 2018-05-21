# Ikiwiki Docker Container

[![Build Status](https://travis-ci.com/ankitrgadiya/docker-ikiwiki.svg?branch=master)](https://travis-ci.com/ankitrgadiya/docker-ikiwiki)

This Docker image is supposed to be used with
[Nginx-Proxy](https://hub.docker.com/r/jwilder/nginx-proxy/).

[Docker Hub](https://hub.docker.com/r/ankitrgadiya/ikiwiki/)

## Pull

```bash
$ docker pull ankitrgadiya/ikiwiki
```

## Usage

* If using with [Nginx-Proxy](https://hub.docker.com/r/jwilder/nginx-proxy/)
  ```
  $ docker run \
    --name ikiwiki \
    -v /path/to/wiki:/wiki \
    -d \
    -e VIRTUAL_HOST=domain.wiki \
    ankitrgadiya/ikiwiki
  ```

* If using standalone
  ```
  $ docker run \
    --name ikiwiki \
    -v /path/to/wiki:/wiki \
    -p 80:80 \
    -d \
    ankitrgadiya/ikiwiki
  ```

**Note**: Standalone image does not support SSL so I recommend using it with
Nginx-Proxy.
