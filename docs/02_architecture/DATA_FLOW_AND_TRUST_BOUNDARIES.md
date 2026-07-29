# Data Flow and Trust Boundaries

## Data classifications
- Public: repository documentation and fictional architecture.
- Internal: synthetic user attributes and sample configuration.
- Confidential: access tokens, private keys, real tenant identifiers.
- Restricted: production credentials, employer data, real security incidents.

## Flows
| Flow | Source | Destination | Protection |
|---|---|---|---|
| F1 | User browser | Entra ID | TLS, MFA, Conditional Access |
| F2 | Browser | Web app | TLS, OIDC token |
| F3 | Client | Sensitive API | TLS, mTLS, OAuth token |
| F4 | Workload | Key Vault | Managed identity, RBAC, TLS |
| F5 | Services | Log Analytics | Authenticated diagnostic pipeline |
| F6 | Admin | Azure control plane | MFA, privileged role, restricted device/location |

## Logging rules
Tokens, passwords, secrets, certificate private keys, and personal data must not be written to logs.
