FROM debian:squeeze

RUN echo "deb http://archive.debian.org/debian squeeze main" > /etc/apt/sources.list
RUN echo "deb http://archive.debian.org/debian squeeze-lts main" >> /etc/apt/sources.list
RUN echo "Acquire::Check-Valid-Until false;" > /etc/apt/apt.conf

RUN apt-get update && apt-get install -y --force-yes procps vim nano tmux curl supervisor

RUN curl -s https://packagecloud.io/install/repositories/varnishcache/varnish30/script.deb.sh | bash
RUN apt-get update && apt-get install -y --force-yes varnish

CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]