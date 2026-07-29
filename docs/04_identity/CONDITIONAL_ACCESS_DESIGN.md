# Conditional Access Design

## Safe deployment sequence
1. Confirm emergency access accounts.
2. Collect baseline sign-in data.
3. Create policy in report-only mode.
4. Test expected users, applications, and exclusions.
5. Review impact.
6. Enable for a pilot group.
7. Expand gradually.
8. Monitor failures and maintain rollback instructions.

## Policy catalogue
| ID | Policy | Target | Grant/session decision |
|---|---|---|---|
| CA-001 | Require MFA | All interactive users | Require MFA |
| CA-002 | Protect administrators | Privileged roles | Strong authentication; approved conditions |
| CA-003 | Block legacy auth | All users | Block |
| CA-004 | Protect finance app | Finance users/app | MFA and approved access context |
| CA-005 | Restrict admin portals | Admin users | Strong auth and controlled device/location |
| CA-006 | Risk evaluation pilot | Pilot group | Report-only initially |

## Emergency access
Emergency accounts are cloud-only, protected, monitored, and excluded only where necessary to prevent lockout. Use is treated as a high-severity incident.

## Evidence
Add screenshots showing report-only results, pilot results, and final policy state only after redacting tenant-specific information.
