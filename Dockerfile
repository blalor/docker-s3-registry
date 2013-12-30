FROM stackbrew/registry:0.6.1
MAINTAINER Brian Lalor <blalor@bravo5.org>

ENV SETTINGS_FLAVOR prod

ADD config.yml /docker-registry/config.yml
