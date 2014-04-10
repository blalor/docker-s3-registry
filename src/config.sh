#!/bin/bash

set -e
set -x

cd /tmp/src

mv program-docker-registry.conf program-redis-server.conf /etc/supervisor.d/
yum install -y python-backports-lzma python-gevent pyOpenSSL redis python-pip git

git clone https://github.com/dotcloud/docker-registry.git /srv/docker-registry

mv registry-config.yml /srv/docker-registry/config/config.yml

cd /srv/docker-registry
git checkout 0.6.7

pip install -r requirements.txt

mkdir -p /var/lib/docker/registry

## cleanup
cd /
yum clean all
rm -rf /var/tmp/yum-root* /tmp/src /tmp/work
