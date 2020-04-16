# Change Management Policy

### APIs should be explicit about how changes to the API are managed and communicated.

---

## Guideline Rationale:

One of the typical goals of APIs is to cleanly and clearly decouple how a capability is provided, and how it is consumed. The API becomes the only interface that exists between the producer and the consumer. This decoupling enables a more agile landscape of evolving products and product users in general, and one of the aspects is that producers and consumers can evolve their products individually, based on their needs and timelines.

With API products and their consumers changing individually, it is important to have a well-defined and documented process how changes in the API are communicated and engineered. The goal is to balance two factors. One factor is the ease of consumption so that consumers do not have to worry about their products being disrupted because an API they are using is changing and breaking it. The second factor is the ease of production where the API product owners want to be able to evolve their product, without having to coordinate with all consumers of the API, and having to wait for them to make changes.

There are different ways how this goal can be achieved, and picking one of them depends on the value that is assigned to making changes work for every single consumer, and making it easier for the API product team to evolve their API when necessary.


---

## Design Options:

- [Designing for Evolution](what/design-for-evolution/ "Design APIs so that they can evolve without breaking API consumers.")
- [Immutable API Versions](what/immutable-api-versions/ "Never change released APIs and operate as many versions in parallel as required.")

---

[↑ All Guidelines](../..)
