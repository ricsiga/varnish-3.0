Varnish 3.0 with Docker

Prerequisites
- [docker](https://docs.docker.com/install/)
- [docker-compose](https://docs.docker.com/compose/install/)

Setup Varnish test environment:
1. `git clone https://github.com/ricsiga/varnish-3.0.git`
2. `cd varnish-3.0`
3. `edit default.vcl`
4. `docker-compose build && docker-compose up -d`
5. open and test [localhost](http://127.0.0.1/)
6. `docker-compose down`