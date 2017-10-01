========================
Ikiwiki Docker Container
========================

This Docker image is supposed to be used with `Nginx-Proxy
<https://hub.docker.com/r/jwilder/nginx-proxy/>`_.

`Docker Hub <https://hub.docker.com/r/ankitrgadiya/ikiwiki/>`_

Pull
====

.. code-block:: bash

    $ docker pull ankitrgadiya/ikiwiki

Usage
=====

+ If using with `Nginx-Proxy <https://hub.docker.com/r/jwilder/nginx-proxy/>`_

.. code-block:: bash

    $ docker run \
    --name ikiwiki \
    -v /path/to/wiki:/wiki \
    -d \
    -e VIRTUAL_HOST=domain.wiki \
    ankitrgadiya/ikiwiki

+ If using standalone

.. code-block:: bash

    $ docker run \
    --name ikiwiki \
    -v /path/to/wiki:/wiki \
    -p 80:80 \
    -d \
    ankitrgadiya/ikiwiki

.. warning:: Standalone image does not support SSL so I recommend using it with 
    Nginx-Proxy.
    
