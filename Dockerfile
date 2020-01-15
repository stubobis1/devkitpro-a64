FROM stubobis1/devkitpro-base

MAINTAINER Stubob <mr.stubob@gmail.com>

RUN dkp-pacman -Syyu --noconfirm switch-dev && \
    dkp-pacman -S --needed --noconfirm `dkp-pacman -Slq dkp-libs | grep '^switch-'` && \
    dkp-pacman -Scc --noconfirm

