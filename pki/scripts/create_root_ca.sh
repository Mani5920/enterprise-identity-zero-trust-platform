#!/usr/bin/env bash
set -euo pipefail
umask 077

BASE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GEN="$BASE/generated/root"

mkdir -p "$GEN"/{certs,crl,newcerts,private}
touch "$GEN/index.txt"
[[ -f "$GEN/serial" ]] || echo 1000 > "$GEN/serial"

echo "This creates lab-only cryptographic material under pki/generated/."
echo "The generated directory is excluded from Git."
openssl genrsa -aes256 -out "$GEN/private/root-ca.key.pem" 4096
chmod 400 "$GEN/private/root-ca.key.pem"

openssl req -config "$BASE/openssl-root.cnf" \
  -key "$GEN/private/root-ca.key.pem" \
  -new -x509 -days 3650 -sha256 -extensions v3_ca \
  -subj "/C=GB/O=NovaSecure Technologies/CN=NovaSecure Lab Root CA" \
  -out "$GEN/certs/root-ca.cert.pem"

openssl x509 -noout -text -in "$GEN/certs/root-ca.cert.pem"
