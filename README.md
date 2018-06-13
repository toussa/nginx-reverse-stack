# nginx-reverse-stack

__This project is not maintained anymore and is here for history only__

This is the stack I used, back in 2016, as an automatic reverse-proxy for all my websites.
At that time, docker swarm did not exist and I was looking for something that respects standards and that I did not need to maintain everyday.

This stack is made  of the reverse proxy [jwilder/nginx-proxy ](https://github.com/jwilder/nginx-proxy) and the associated let's encrypt automation [alastaircoote/docker-letsencrypt-nginx-proxy-companion](https://github.com/alastaircoote/docker-letsencrypt-nginx-proxy-companion)

Please see their repositories for more informations on how it works.

By default, the responses are gzipped.

the stack uses an external network, called *middle-end*. This network connects the reverse proxy to the "front" of each served stack.

Note: I'm now using the great [traefik](https://traefik.io/) to handle that automatically.
