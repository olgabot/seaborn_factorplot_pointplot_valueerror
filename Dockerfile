FROM andrewosh/binder-base

MAINTAINER Olga Botvinnik <olga.botvinnik@gmail.com>

USER main

# Update Conda and install package
RUN conda update conda
RUN conda create --yes --file environment.yml --name testenv
RUN source activate testenv