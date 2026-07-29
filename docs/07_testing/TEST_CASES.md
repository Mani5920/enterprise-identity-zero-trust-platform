# Core Test Cases

| ID | Scenario | Expected result | Initial status |
|---|---|---|---|
| TC-001 | Employee signs in with MFA | Access allowed | Not Executed |
| TC-002 | Correct password but MFA failure | Access denied | Not Executed |
| TC-003 | HR user requests finance role | Access denied and logged | Not Executed |
| TC-004 | Normal account requests admin function | Access denied | Not Executed |
| TC-005 | Workload reads approved secret | Access allowed | Not Executed |
| TC-006 | Workload reads unrelated secret | Access denied and logged | Not Executed |
| TC-007 | Valid client certificate calls API | Access allowed | Not Executed |
| TC-008 | Revoked certificate calls API | Access denied and detected | Not Executed |
| TC-009 | Legacy authentication attempt | Blocked | Not Executed |
| TC-010 | Repeated sign-in failures | Sentinel incident created | Not Executed |
| TC-011 | Certificate approaches expiry | Alert created | Not Executed |
| TC-012 | Conditional Access policy changes | Audit detection created | Not Executed |
| TC-013 | Terraform validation | No syntax/configuration errors | Not Executed |
| TC-014 | Secret scanning | No committed secrets | Not Executed |
