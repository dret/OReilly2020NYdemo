# Webhooks

## Implementation Option for the ["Service Subscription Support" Design Option](../..)

### Webhooks use HTTP communications but reverse the typical client/server roles.

---

## Implementation Description:

Webhooks are an implementation pattern that is based on callbacks and allows the reverse of the typical client/server control flow in Web-based interactions. The pattern is based on registering a callback, which is then used by the server to notify the client when events happen. This means that for the Webhooks pattern, the typical client/server roles in Web-based interactions get reversed: The event triggers the server to call the callback. Because of this reversed control flow, Webhooks are useful to avoid polling and allow consumers to be notified of events when they happen.

While the fundamental idea of Webhooks is easy, the model leaves many questions of a PubSub mechanism open. Making callbacks reachable can be compromised by network security mechanisms. It is easy to overwhelm services with too many subscription requests. It is not defined how often and for how long callbacks should be repeatedly attempted when there are delivery problems. The exact protocol of the notification mechanism (how to represent notifications and how to use HTTP mechanisms for richer communications) is not clearly defined.


---

[↑ "Service Subscription Support" Design Option](../..) · [↑ "Notifications in Request/Response APIs" Guideline](../../../..) · [↑ All Guidelines](../../../../../..)
