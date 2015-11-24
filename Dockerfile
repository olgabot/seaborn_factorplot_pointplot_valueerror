FROM andrewosh/binder-base

MAINTAINER Olga Botvinnik <olga.botvinnik@gmail.com>


USER main
ADD repo/environment.yml environment.yml

# Update Conda and install package
RUN conda update conda
RUN conda create --yes --file environment.yml --name binder
RUN source activate binder