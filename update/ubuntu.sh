#!/data/data/com.termux/files/usr/bin/bash

now="$(date +%D)"

output_file="$PREFIX/etc/mes-linux/ubuntu.sh"

sha256sums=$(curl https://cloud-images.ubuntu.com/jammy/current/SHA256SUMS)

function get_sha256sum() {
    arch="$1"
    line=$(echo "$sha256sums"| grep "$arch-root.tar.xz")
    sha256sum=$(echo "$line"| cut -d " " -f 1)
    echo "$sha256sum"
}

cat << EOF > "$output_file"
DISTRO_NAME="Ubuntu Cloud Image"
DISTRO_COMMENT="Current Cloud Image release. SHA256SUMS updated at ${now}."

TARBALL_URL['aarch64']="https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-arm64-root.tar.xz"
TARBALL_SHA256['aarch64']="$(get_sha256sum arm64)"
TARBALL_URL['arm']="https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-armhf-root.tar.xz"
TARBALL_SHA256['arm']="$(get_sha256sum armhf)"
TARBALL_URL['x86_64']="https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64-root.tar.xz"
TARBALL_SHA256['x86_64']="$(get_sha256sum amd64)"

TARBALL_STRIP_OPT=0
EOF
