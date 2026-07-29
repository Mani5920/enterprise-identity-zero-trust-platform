# Identity and Access Flow

1. User requests the employee portal.
2. The application redirects the user to Microsoft Entra ID.
3. Entra ID evaluates credentials, MFA, user/group membership, device/location signals, and Conditional Access.
4. Entra ID issues a signed token when policy conditions are satisfied.
5. The application validates issuer, audience, signature, expiry, and assigned role.
6. For sensitive API calls, the client also presents a trusted certificate.
7. Application Gateway or the API validates the client certificate chain and revocation state.
8. The workload uses managed identity to request a Key Vault token.
9. Key Vault evaluates Azure RBAC and returns only authorised secrets.
10. Sign-in, access, vault, and application events are sent to Log Analytics and Sentinel.
