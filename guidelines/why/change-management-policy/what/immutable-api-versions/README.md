# Immutable API Versions

## Design Option for the ["Change Management Policy" Guideline](../..)

### Never change released APIs and operate as many versions in parallel as required.

---

## Design Rationale:

Another possible way of managing change is to make the promise that an API version, once released, will never change. The advantage of this approach is that by definition, no client will ever break because of changes made to an API, because no changes will ever be made. The disadvantage is that any change made to the API means releasing a new version that is operated in parallel, so that existing consumers can continue to use the previous version.

The consequence of such an approach is that while consumers now have an easy model to consume APIs that will remain stable, the complexity of managing change has been pushed into the operational side of things. APIs now should have a clear lifecycle and mechanisms to announce their upcoming retirement, so that it becomes feasible to decommission APIs at some point. When this can be done depends on the active clients and SLAs with them, which means that monitoring clients and understanding their consumption of API version becomes essential.


---

## Implementation Options:

- [Automated Release Versioning](how/automated-release-versioning "Manage releases automatically to operate many versions in parallel and route users to their versions.")

---

[↑ "Change Management Policy" Guideline](../..) · [↑ All Guidelines](../../../..)
