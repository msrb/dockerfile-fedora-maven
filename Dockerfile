FROM fedora:22

MAINTAINER srb.michal@gmail.com

RUN dnf install -y maven && dnf clean all
ENV HOME /home/maven
RUN useradd --create-home --home-dir $HOME -u 1000 maven \
    && chown -R maven:maven $HOME

WORKDIR $HOME
USER maven
CMD mvn
