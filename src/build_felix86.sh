#!/bin/bash

 meson setup build \
    -Dprefix=/opt/felix86 \
    -Dlibdir=lib/riscv64-linux-gnu \
    -Dappend_libdir_mangohud=true \
    -Dwith_fex=true \
    -Dfex_label=felix86 \
    -Dwith_xnvctrl=disabled

ninja -C build -j$(nproc)

meson install -C build --destdir /tmp/staging

echo ""
echo "Files installed in /tmp/staging"