# Monitoring and Detection Strategy

## Data sources
- Entra sign-in and audit logs
- Azure Activity logs
- Key Vault diagnostic logs
- Application Gateway access/firewall logs
- Application authentication and authorisation events
- Certificate inventory and expiry output
- Windows/Linux security events where available

## Detection catalogue
- Multiple failed sign-ins
- Privileged role assignment
- Conditional Access policy modification
- Emergency account use
- Key Vault denied access
- Unusual secret access volume
- Certificate near expiry
- Revoked or untrusted client certificate
- Multiple rejected mTLS requests
- Application role denial spike

## Alert quality
Each rule defines purpose, query, scheduling interval, threshold, entity mapping, severity, false-positive considerations, triage steps, and closure criteria.

## Privacy
Do not ingest passwords, tokens, private keys, secret values, or unnecessary personal data.
