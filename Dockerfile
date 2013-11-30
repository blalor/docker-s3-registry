FROM stackbrew/registry
MAINTAINER Brian Lalor <blalor@bravo5.org>

ENV SETTINGS_FLAVOR prod

ADD config.yml /docker-registry/config.yml
