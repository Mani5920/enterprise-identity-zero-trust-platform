# Security Design

## Principles
- Verify explicitly.
- Use least privilege.
- Assume breach.
- Separate duties.
- Protect cryptographic material.
- Log security-relevant decisions.
- Test deny paths as well as allow paths.

## Identity controls
MFA, Conditional Access, role-based access, separate admin accounts, emergency access process, service principals with minimal permissions, and periodic access review.

## Application controls
OIDC/OAuth token validation, mTLS on sensitive routes, secure headers, input validation, rate limiting, non-root containers, dependency scanning, and no hard-coded secrets.

## Key management
Keys and secrets are stored in Key Vault for the Azure lab. The root CA private key remains offline and encrypted. Public GitHub content contains only scripts and templates, never generated keys.

## Monitoring
Sign-ins, role assignments, policy changes, Key Vault access, application failures, certificate expiry, and rejected mTLS connections are monitored.

## Secure development
Pull requests, CI checks, unit tests, secret scanning, dependency review, and versioned documentation are required.
