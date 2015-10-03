# Jessie Ruby Dockerfile
# For dev use only

FROM debian:jessie

MAINTAINER Antoine GUEVARA <me@antoine-guevara.fr>

ENV HOSTNAME jessie.ruby.lan
ENV DEBIAN_FRONTEND noninteractive
ENV SHELL /bin/bash
ENV TERM xterm-256color

RUN apt-get update

RUN apt-get install -y -qq vim htop strace wget curl git

RUN apt-get install -y -qq ruby

RUN gem install homesick

RUN homesick clone darkounet/dot_vim

RUN homesick link dot_vim
