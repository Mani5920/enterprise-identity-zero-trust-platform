# Identity and RBAC Design

## Identity types
- Workforce users
- Privileged administrators
- Emergency access accounts
- Application service principals
- Azure managed identities
- Certificate-based machine identities

## Groups
- GRP-All-Employees
- GRP-HR-App-Users
- GRP-Finance-App-Users
- GRP-Security-Readers
- GRP-PKI-Operators
- GRP-Application-Admins

## Application roles
- Employee.Read
- HR.Read
- Finance.Read
- Security.Investigate
- Certificate.Operate
- Application.Admin

## Assignment model
Users receive group membership based on job function. Groups receive application roles. Administrative roles are separate, time-bound where supported, and not assigned to everyday accounts.

## Sample access matrix
| Persona | Employee portal | HR records | Finance reports | Sentinel | Certificate operations |
|---|---:|---:|---:|---:|---:|
| Employee | Allow | Deny | Deny | Deny | Deny |
| HR analyst | Allow | Allow | Deny | Deny | Deny |
| Finance analyst | Allow | Deny | Allow | Deny | Deny |
| Security analyst | Allow | Deny | Deny | Read | Deny |
| PKI operator | Allow | Deny | Deny | Read | Operate |

## Review
Group membership and privileged assignments should be reviewed quarterly in the lab governance model.
