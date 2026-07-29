# Risk Register

| ID | Risk | Likelihood | Impact | Treatment |
|---|---|---|---|---|
| R-01 | Conditional Access lockout | Medium | High | Emergency accounts, report-only rollout, rollback |
| R-02 | Private key exposure | Low | Critical | Offline/encrypted storage, no Git commits, revocation |
| R-03 | Excessive RBAC assignment | Medium | High | Group model, reviews, alerts |
| R-04 | Secret committed to source | Medium | High | Key Vault, secret scanning, `.gitignore` |
| R-05 | Logging contains sensitive data | Medium | High | Logging standard and review |
| R-06 | Alert fatigue | Medium | Medium | Rule tuning and severity model |
| R-07 | Terraform state exposure | Medium | High | Remote protected state in real lab; ignore local state |
| R-08 | Unverified portfolio claim | Low | High | Evidence labels and publication checklist |
