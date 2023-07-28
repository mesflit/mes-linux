#!/usr/bin/env bash
set -e
: "${TERMUX_APP_PACKAGE:="com.termux"}"
: "${TERMUX_PREFIX:="/data/data/${TERMUX_APP_PACKAGE}/files/usr"}"
: "${TERMUX_ANDROID_HOME:="/data/data/${TERMUX_APP_PACKAGE}/files/home"}"

echo "Installing $TERMUX_PREFIX/bin/proot-distro"
install -d -m 700 "$TERMUX_PREFIX"/bin
sed -e "s|@TERMUX_APP_PACKAGE@|$TERMUX_APP_PACKAGE|g" \
	-e "s|@TERMUX_PREFIX@|$TERMUX_PREFIX|g" \
	-e "s|@TERMUX_HOME@|$TERMUX_ANDROID_HOME|g" \
	./mes-linux.sh > "$TERMUX_PREFIX"/bin/mes-linux
chmod 700 "$TERMUX_PREFIX"/bin/mes-linux

install -d -m 700 "$TERMUX_PREFIX"/etc/mes-linux
for script in ./distro-plugins/*.sh*; do
	echo "Installing $TERMUX_PREFIX/etc/mes-linux/$(basename "$script")"
	install -Dm600 -t "$TERMUX_PREFIX"/etc/mes-linux/ "$script"
done

echo "Installing $TERMUX_PREFIX/share/doc/mes-linux/README.md"
install -Dm600 README.md "$TERMUX_PREFIX"/share/doc/mes-linux/README.md
