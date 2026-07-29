# Enterprise Identity & Zero Trust Security Platform

A recruiter-ready portfolio lab demonstrating enterprise identity, PKI, Zero Trust access, secret management, security monitoring, infrastructure as code, and operational governance.

> **Portfolio lab:** This repository uses a fictional organisation, synthetic identities, sample logs, and non-production certificates. It does not represent a live employer environment.

## Business scenario

NovaSecure Technologies needs to secure employee, administrator, application, and machine identities across a cloud-hosted environment. The solution applies Zero Trust principles: verify explicitly, use least privilege, and assume breach.

## Capabilities demonstrated

- Microsoft Entra ID identity design and role-based access
- Conditional Access policy design and safe rollout
- Private PKI hierarchy and certificate lifecycle automation
- Mutual TLS for protected service-to-service access
- Azure Key Vault and managed identity
- Terraform-based infrastructure provisioning
- Microsoft Sentinel detections written in KQL
- Incident response, testing, risk, compliance, and operational documentation

## Repository map

| Area | Purpose |
|---|---|
| `docs/` | Business, architecture, security, testing, operations, compliance, and recruiter documents |
| `terraform/` | Infrastructure-as-code starter implementation |
| `app/` | Secure FastAPI demonstration service |
| `pki/` | Safe local-lab certificate scripts |
| `powershell/` | Identity and reporting automation examples |
| `sentinel/` | KQL analytics and workbook assets |
| `policies/` | Conditional Access policy specifications |
| `architecture/` | Mermaid source diagrams |
| `evidence/` | Placeholder structure for screenshots and demo evidence |

## Safe publication rules

1. Never commit private keys, real certificates, tenant IDs, subscription IDs, passwords, tokens, or employer information.
2. Use `.env.example` and local secret stores.
3. Replace screenshots containing personal or tenant information.
4. Mark all unexecuted outputs as design evidence, not deployment evidence.
5. Add real test results only after running them in your own lab.

## Suggested recruiter review order

1. `docs/10_recruiter_pack/RECRUITER_OVERVIEW.md`
2. `docs/02_architecture/SOLUTION_ARCHITECTURE.md`
3. `docs/03_security/THREAT_MODEL.md`
4. `docs/05_pki/PKI_DESIGN.md`
5. `docs/07_testing/TEST_STRATEGY.md`
6. Source code and automation folders

## Status

This package is a complete professional starter repository. Cloud deployment still requires the owner's Azure tenant, subscription, approved licensing, and execution evidence.
