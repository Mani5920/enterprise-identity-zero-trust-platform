# Incident Response Playbook

## Severity model
- SEV-1: confirmed privileged compromise or widespread identity control failure.
- SEV-2: likely account/certificate compromise with limited scope.
- SEV-3: suspicious activity requiring investigation.
- SEV-4: low-risk policy or operational event.

## Workflow
1. Detect and create incident.
2. Validate signal quality.
3. Identify affected identity, device, certificate, application, and resources.
4. Contain through approval-based actions.
5. Preserve logs and timeline.
6. Remove malicious access or revoke credentials.
7. Restore normal operation.
8. Document root cause and improvements.

## Example: suspicious administrator sign-in
- Verify location, device, authentication method, and recent role changes.
- Contact the account owner through an independent channel.
- Revoke sessions or disable access only under approved lab procedure.
- Review Key Vault and control-plane activity.
- Rotate affected credentials/certificates.
- Close only after documenting evidence and preventive action.
