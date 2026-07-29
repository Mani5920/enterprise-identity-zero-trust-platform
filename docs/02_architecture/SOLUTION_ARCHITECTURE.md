# Solution Architecture

## Logical layers
1. **Identity plane:** Entra ID users, groups, service principals, managed identities, application roles, MFA, and Conditional Access.
2. **Access plane:** Application Gateway, web application, backend API, token validation, and mutual TLS.
3. **Cryptographic plane:** offline root CA, issuing CA, certificate profiles, CRL, expiry monitoring, and Key Vault.
4. **Management plane:** Terraform, GitHub Actions, administrative workstations, and change control.
5. **Detection plane:** Log Analytics, Microsoft Sentinel, KQL analytics, incidents, and response playbooks.

## Trust boundaries
- Public client to gateway
- Gateway to application
- Application to Key Vault
- Administrator to management plane
- On-premises-style lab PKI to cloud certificate consumers
- Log sources to monitoring workspace

## Key design decisions
- Separate normal and privileged user accounts.
- Grant access through groups and roles rather than direct assignment where practical.
- Use managed identity for workloads.
- Require both identity token and client certificate for the sensitive API path.
- Keep the root CA offline in the lab model.
- Roll out Conditional Access in report-only mode before enforcement.
- Treat logging as a security control, not only an operational feature.

## Availability and recovery
The API is stateless and containerised. Configuration is externalised. Infrastructure is reproducible from Terraform. Keys and certificates require protected backup procedures; private keys are never stored in the public repository.

## Deployment modes
- Design-only review: read documentation and code.
- Local demonstration: run FastAPI and OpenSSL scripts locally.
- Azure lab: deploy supported components using a personal lab subscription.
