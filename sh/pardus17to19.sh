#!/bin/sh
set -e

SOURCE_LIST=/etc/apt/sources.list

cp -v $SOURCE_LIST $SOURCE_LIST.debsave

cat > $SOURCE_LIST.new <<EOF
# Pardus Ondokuz
deb http://depo.pardus.org.tr/pardus ondokuz main contrib non-free
# deb-src http://depo.pardus.org.tr/pardus ondokuz main contrib non-free

deb http://depo.pardus.org.tr/guvenlik ondokuz main contrib non-free
# deb-src http://depo.pardus.org.tr/guvenlik ondokuz main contrib non-free
EOF

mv -fv $SOURCE_LIST.new $SOURCE_LIST

DEBIAN_FRONTEND=noninteractive apt update
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confnew" dist-upgrade

if [ -d "/sys/firmware/efi/efivars" ]; then
    rm -fr /boot/efi/EFI/debian
    cp -a /boot/efi/EFI/pardus /boot/efi/EFI/debian
fi

exit 0