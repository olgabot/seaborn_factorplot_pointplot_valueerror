FROM andrewosh/binder-base

MAINTAINER Olga Botvinnik <olga.botvinnik@gmail.com>

USER root

ADD repo/environment.yml environment.yml

USER main

# Update Conda and install package
RUN conda update conda
RUN conda create --yes --file environment.yml --name binder
RUN source activate binder