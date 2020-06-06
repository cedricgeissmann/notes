# Certbot

In this document I want to describe what certbot is and what I am using it for.


## What is certbot

Certbot is a program that automatically creates certificates that can be used
for https connections. This is useful if you want to secure your webserver with
https, which should be the default. The certbot program is available on most
linux distributions and can easily be installed in a docker container.


## My Setup

In my personal setup I want to use certbot as a separate docker container. This
container gets a volume attached to it, where it stores the certificates. This
volume can then be shared with another container that runs your proxy server.
