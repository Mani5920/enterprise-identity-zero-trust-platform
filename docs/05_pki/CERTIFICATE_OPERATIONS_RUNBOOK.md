# Certificate Operations Runbook

## Issue
1. Confirm requester and certificate profile.
2. Generate key and CSR on the destination system.
3. Validate subject/SAN and intended EKU.
4. Approve and sign with the issuing CA.
5. Deliver certificate chain securely.
6. Record serial number, owner, purpose, and expiry.

## Renew
Begin renewal before the alert threshold. Validate that the service, owner, SANs, and key requirements remain correct. Prefer key rotation when appropriate.

## Revoke
1. Confirm incident or decommission request.
2. Identify certificate serial number.
3. Revoke using the correct reason.
4. Publish a new CRL.
5. Remove or disable the certificate at the consumer.
6. Verify rejected access.
7. Record incident evidence.

## Emergency
Suspected private-key compromise requires immediate revocation, credential review, affected service investigation, and replacement certificate issuance.
