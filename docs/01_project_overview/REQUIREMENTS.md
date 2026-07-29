# Requirements Specification

## Functional requirements
- FR-01: Create synthetic employee, administrator, and service identities.
- FR-02: Assign access through groups and application roles.
- FR-03: Require MFA for interactive users.
- FR-04: Apply stronger controls to privileged identities.
- FR-05: Block legacy authentication.
- FR-06: Register and protect an internal application.
- FR-07: Use managed identity for Key Vault access.
- FR-08: Build a private root and issuing CA for the lab.
- FR-09: Issue, renew, revoke, and report certificates.
- FR-10: Protect an API with token validation and mTLS.
- FR-11: Centralise identity, platform, vault, gateway, and application logs.
- FR-12: Detect failed sign-ins, privilege changes, denied vault access, and certificate issues.
- FR-13: Provision core Azure components through Terraform.
- FR-14: Maintain test cases, risk records, and operational runbooks.

## Non-functional requirements
- NFR-01 Security: least privilege and no committed secrets.
- NFR-02 Availability: stateless application components and documented recovery.
- NFR-03 Auditability: administrative and access events are logged.
- NFR-04 Maintainability: modular code, clear naming, and version control.
- NFR-05 Portability: configuration is externalised.
- NFR-06 Privacy: synthetic data only.
- NFR-07 Recoverability: backup and restoration steps are documented.
- NFR-08 Usability: recruiter documentation can be reviewed without deploying the lab.

## Assumptions
An Azure subscription and suitable Entra/Sentinel licensing are available for live execution. The repository itself remains useful as design and implementation evidence without claiming deployment.
