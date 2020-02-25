# Standard Error Format

## Design Option for the ["Meaningful Error Messages" Guideline](../..)

### Use expressive and standardized error formats across APIs.

---

## Design Rationale:

Error messages benefit from using a shared structure that can be used across various APIs. The structure should define the most important aspects of error messages across APIs, and should also allow extensions so that individual APIs can extend the error messages with additional details. Using a standardized error format has two main advantages.

The first advantage is that it makes it easier for developers and humans to work with various APIs. It is only necessary to understand the error message format one time, and then this understanding works across all APIs. Error messages still can be made very expressive and rich by adding details through the format's extension mechanism.

The second advantage is that it becomes possible to build tooling around the format. One form of tooling can be libraries that make it easier foe developers to produce or consume error messages. Another form of tooling is that it becomes much easier to observe error messages across the entire API landscape, making it relatively easy to build tooling that consumes and analyzes error messages for an entire API landscape.


---

## Implementation Options:

- [Use RFC 7807 HTTP Problem Reports](how/rfc-7807 "For JSON and XML error messages, RFC 7807 provides a standardized and extensible error format.")

---

[↑ "Meaningful Error Messages" Guideline](../..) · [↑ All Guidelines](../../../..)
