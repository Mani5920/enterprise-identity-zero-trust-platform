# PKI Design

## Hierarchy
- Offline root CA: long-lived trust anchor, powered down except for controlled signing.
- Issuing CA: issues lab server and client certificates.
- End-entity certificates: web server, API server, administrator client, test client.

## Certificate profiles
| Profile | EKU | Suggested validity | Purpose |
|---|---|---:|---|
| TLS Server | Server Authentication | 90 days | Web/API endpoints |
| TLS Client | Client Authentication | 30-90 days | mTLS client identity |
| Admin Client | Client Authentication | 30 days | Privileged lab access |

## Lifecycle
Request -> validate -> approve -> issue -> distribute -> monitor -> renew -> revoke -> archive evidence.

## Revocation
The issuing CA maintains a CRL. Revoked serial numbers are recorded. The lab demonstrates rejection logic; production-grade OCSP/HSM design is documented but not falsely claimed as deployed.

## Key protection
- Root key encrypted and offline.
- Issuing key restricted to the lab host.
- Client keys generated locally and never committed.
- File permissions are limited.
- Passwords are passed interactively or through a secure local mechanism.

## Automation
Scripts create the CA structure, issue certificates, revoke certificates, generate CRLs, and report expiry. Generated material is excluded through `.gitignore`.
