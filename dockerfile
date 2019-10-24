FROM ubuntu:18.04
COPY ./ /root/dotfiles/
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils sudo

RUN ls /root/dotfiles/
RUN bash /root/dotfiles/minimal-install.sh


