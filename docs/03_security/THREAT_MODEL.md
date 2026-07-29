# Threat Model

## Method
A STRIDE-based assessment is applied to identities, tokens, certificates, secrets, administrative actions, and logging.

| Threat | Example | Control | Residual risk |
|---|---|---|---|
| Spoofing | Stolen user password | MFA, Conditional Access, token validation | MFA fatigue or session theft |
| Tampering | Modified Terraform or policy | Pull requests, branch protection, review | Malicious authorised maintainer |
| Repudiation | Admin denies a role change | Entra/Azure audit logs, Sentinel | Log retention misconfiguration |
| Information disclosure | Secret committed to Git | Key Vault, secret scanning, `.gitignore` | Human error |
| Denial of service | Excessive API requests | Rate limiting, gateway controls, scaling | Large distributed attacks |
| Elevation of privilege | Broad role assignment | Least privilege, privileged workflow, alerts | Misconfigured custom role |
| Certificate misuse | Stolen client private key | Protected storage, short validity, revocation | Delayed revocation propagation |
| Token replay | Reused bearer token | TLS, short token lifetime, audience checks | Stolen active session |

## Abuse cases
- Employee attempts finance access.
- Service identity requests an unrelated secret.
- Revoked certificate attempts API access.
- Administrator changes Conditional Access policy.
- Attacker generates repeated sign-in failures.
- Developer accidentally prints a token to logs.

## Security acceptance
Each abuse case must have a test, expected denial, and auditable evidence.
