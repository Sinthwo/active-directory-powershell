# Tests Reference

Documentation for all scripts under `Tests/`.

## Unit

### Module.Tests.ps1
**Path:** `Tests/Unit/Module.Tests.ps1`
**Synopsis:** Unit tests for the ActiveDirectory-Toolkit module
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Pester test suite that validates module manifest integrity, function exports, parameter validation, and mock-based testing of private and public functions without requiring a live AD environment.

## Integration

### Deployment.Tests.ps1
**Path:** `Tests/Integration/Deployment.Tests.ps1`
**Synopsis:** Integration tests for AD deployment scripts
**Version:** 0.1.0
**Author:** Sinthwo
**Description:** Pester test suite that validates deployment scripts against a test lab environment. Verifies forest creation, DC promotion, DNS configuration, GPO deployment, and site setup produce expected outcomes in a sandboxed environment.