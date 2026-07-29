# Test Strategy

## Objectives
Validate allowed access, denied access, certificate lifecycle, secret access, monitoring, infrastructure quality, and recovery procedures.

## Test levels
- Static validation: formatting, linting, policy review, Terraform validation.
- Unit tests: application functions and authorisation logic.
- Integration tests: token/certificate/Key Vault interactions in the lab.
- Security tests: misuse and denial scenarios.
- Operational tests: backup, restore, alert triage, and rollback.
- User acceptance: recruiter-readable evidence and reproducible instructions.

## Entry criteria
Configuration is reviewed, synthetic test accounts exist, secrets are local, and rollback procedures are available.

## Exit criteria
Critical tests pass, failures are documented, no secrets are exposed, and evidence is labelled accurately.

## Evidence rules
A test marked `Not Executed` is design evidence. Change it to `Pass` or `Fail` only after execution and add a redacted screenshot/log reference.
