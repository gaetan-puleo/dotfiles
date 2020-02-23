FROM ubuntu:18.04
COPY ./ /root/dotfiles/

# Docker initialization
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections \
      && apt-get update \
      && apt-get install -y --no-install-recommends apt-utils sudo software-properties-common xz-utils

RUN bash /root/dotfiles/install.sh install
RUN bash /root/dotfiles/install.sh stow

CMD /usr/bin/zsh
