# Security Policy

## Reporting issues
Do not publish real credentials, private keys, access tokens, tenant identifiers, or exploitable details from a live environment. Report repository issues through a private channel before public disclosure.

## Scope
This is a defensive portfolio lab. Scripts are intended for an isolated environment owned by the user.

## Secret handling
- Store secrets in Azure Key Vault or local environment variables.
- Never commit `.env`, state files, certificates, or private keys.
- Use synthetic identities and sample data only.
