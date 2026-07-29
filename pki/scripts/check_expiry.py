from __future__ import annotations
from datetime import datetime, timezone
from pathlib import Path
import subprocess
import sys

def expiry_date(cert: Path) -> datetime:
    output = subprocess.check_output(
        ["openssl", "x509", "-enddate", "-noout", "-in", str(cert)],
        text=True,
    ).strip()
    value = output.split("=", 1)[1]
    return datetime.strptime(value, "%b %d %H:%M:%S %Y %Z").replace(tzinfo=timezone.utc)

def main() -> int:
    threshold_days = int(sys.argv[1]) if len(sys.argv) > 1 else 30
    certs = list(Path("pki/generated").rglob("*.pem"))
    certs = [p for p in certs if "cert" in p.name]
    if not certs:
        print("No generated certificates found.")
        return 0
    now = datetime.now(timezone.utc)
    for cert in certs:
        expires = expiry_date(cert)
        days = (expires - now).days
        state = "ALERT" if days <= threshold_days else "OK"
        print(f"{state},{cert},{expires.isoformat()},{days}")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
