# Use the WebSocket protocol for server/client communications

## Implementation Option for the ["Service Subscription Support" Design Option](../..)

### WebSocket is a protocol originally designed to support a persistent channel between a server and a browser.

---

## Implementation Description:

WebSocket [[RFC 6455]](https://tools.ietf.org/html/rfc6455 "Ian Fette and Alexey Melnikov, 'The WebSocket Protocol', RFC 6455, December 2011") was originally designed to provide a persistent channel between a browser-based Web app and a server. As the name implies, the protocol creates a simple communications channel that can be used to exchange any kind of information between a server and a client.

Defining notification mechanisms with WebSocket is a bit challenging because it does not support any PubSub functionality or any specific way how to represent and exchange notifications. This means that for using WebSockets as a notification channel, there must be a well defined model for how to subscribe to specific notifications, and how these notifications will be represented and delivered.

### Resources:

- *[RFC 6455]:* [Ian Fette and Alexey Melnikov, "The WebSocket Protocol", RFC 6455, December 2011](https://tools.ietf.org/html/rfc6455)



---

[↑ "Service Subscription Support" Design Option](../..) · [↑ "Notifications in Request/Response APIs" Guideline](../../../..) · [↑ All Guidelines](../../../../../..)
