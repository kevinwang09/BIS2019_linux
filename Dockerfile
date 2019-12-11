FROM debian:latest
MAINTAINER kevin.wang@sydney.edu.au
COPY docker_setup.sh /home/
RUN bash /home/docker_setup.sh