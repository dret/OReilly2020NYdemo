# Use the WebSub protocol for server/client communications

## Implementation Option for the ["Service Subscription Support" Design Option](../..)

### WebSub is a protocol supporting a subscription and a delivery mechanism for information feeds.

---

## Implementation Description:

WebSub [[WebSub]](https://www.w3.org/TR/websub/ "Julien Genestoux, 'WebSub', W3C Recommendation, January 2018") was originally known under the name PubSubHubbub. It started as a mechanism to support subscriptions to feeds, so that feed updates could be pushed to subscribers instead of subscribers having to pull the feed to check for updates. WebSub includes a mechanism for advertising WebSub hubs, subscribing to hubs by registering callbacks, and delivering updates to subscribers.

The older version PubSubHubbub used the Atom format [[RFC 4287]](https://tools.ietf.org/html/rfc3339 "Mark Nottingham and Robert Sayre, 'The Atom Syndication Format', RFC 4287, December 2005") for protocol messages, but the newer WebSub specification does not prescribe a specific message format. It simply defines how messages of different types are interchanged to implement the subscription and delivery functionality. This means that when using WebSub, it is necessary to be specific about the message formats being used.

### Resources:

- *[RFC 4287]:* [Mark Nottingham and Robert Sayre, "The Atom Syndication Format", RFC 4287, December 2005](https://tools.ietf.org/html/rfc3339)

- *[WebSub]:* [Julien Genestoux, "WebSub", W3C Recommendation, January 2018](https://www.w3.org/TR/websub/)



---

[↑ "Service Subscription Support" Design Option](../..) · [↑ "Notifications in Request/Response APIs" Guideline](../../../..) · [↑ All Guidelines](../../../../../..)
