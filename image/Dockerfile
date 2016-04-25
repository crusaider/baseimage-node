FROM phusion/baseimage:0.9.15

MAINTAINER Jonas <jonas.m.andreasson@gmail.com>

# Install node.js
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash - && \
    apt-get install -y -q nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
