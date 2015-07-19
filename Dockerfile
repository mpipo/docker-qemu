FROM base/archlinux

# Pacman fixes

RUN pacman -Sy --noconfirm; \
pacman -S --noconfirm --needed archlinux-keyring; \
pacman -S --noconfirm --needed openssl pacman; \
pacman-db-upgrade

RUN pacman -S --noconfirm --needed qemu
RUN mkdir -p /qemu/hostvol

VOLUME "/qemu/hostvol"