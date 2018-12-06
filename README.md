Varnish 3.0 with Docker

Prerequisites
- [docker](https://docs.docker.com/install/)
- [docker-compose](https://docs.docker.com/compose/install/)

Setup Varnish test environment:
1. `edit default.vcl`
2. `docker-compose build && docker-compose up -d`
3. open and test [localhost](http://127.0.0.1/)
4. `docker-compose down`