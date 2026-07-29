# Backup and Disaster Recovery Plan

## Protected assets
Terraform code, application source, policy specifications, KQL rules, CA database, CA configuration, certificate inventory, and operational documentation.

## Recovery priorities
1. Identity control-plane access
2. Key and certificate services
3. Application access
4. Monitoring and incident visibility
5. Reporting and non-critical evidence

## Recovery approach
- Code and documentation: restore from version control.
- Azure resources: recreate with Terraform where supported.
- Key Vault: use soft delete/purge protection and approved recovery.
- CA: restore encrypted offline backup and validate integrity.
- Application: redeploy container image and configuration.
- Sentinel: redeploy versioned KQL and workbook definitions.

## Testing
Recovery procedures should be tested in an isolated lab and evidence added without exposing secrets.
