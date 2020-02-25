# Notifications in Request/Response APIs

### Methods of adding asynchronous notifications to APIs that are primarily using a request/response style.

---

## Guideline Rationale:

Many API styles are focused on request/response interaction patterns: The API provides a service that is invoked by a client and then produces a response that the client consumes and processes. This pattern underlies the major API styles such as RPC, URI, REST, and query-based. In all these styles, clients send requests that are processed on the server-side.

However, it is possible that clients want to be notified when something happens on the server side. Typical examples for this are state changes on the server side, where clients may be interested to learn about state changes of resources they are interested in. Implementing this functionality in a pure request/response interaction pattern can be wasteful, because clients then need to keep polling the server, wasting bandwidth and server resources.

In terms of interaction patterns, it would be better so implement this with a notification that is initiated by the server. For this to work, this requires some sort of subscription mechanism where a client declares interest in a (set of) published resources, so that notifications can be delivered to the subscribed clients. This general pattern is called Publish/Subscribe (PubSub), and can be implemented in a variety of ways.


---

## Design Options:

- [Service Subscription Support](what/service-subscription/ "Services individually support and manage subscriptions to notifications.")
- [Using a Messaging Platform](what/messaging-platform/ "Notification support as part of the API platform with a dedicated event-driven messaging infrastructure.")

---

[↑ All Guidelines](../..)
