FROM base/archlinux

# Pacman fixes

RUN pacman -Sy --noconfirm
RUN pacman -S --noconfirm --needed archlinux-keyring
RUN pacman -S --noconfirm --needed openssl pacman
RUN pacman-db-upgrade

RUN pacman -S --noconfirm --needed qemu
RUN mkdir -p /qemu/hostvol

VOLUME "/qemu/hostvol"