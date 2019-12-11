FROM debian:latest
MAINTAINER kevin.wang@sydney.edu.au
COPY docker_setup.sh /home/
RUN bash docker_setup.sh