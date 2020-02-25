# Using a Messaging Platform

## Design Option for the ["Notifications in Request/Response APIs" Guideline](../..)

### Notification support as part of the API platform with a dedicated event-driven messaging infrastructure.

---

## Design Rationale:

For notifications not using the request/response pattern, it is possible to use a messaging platform that allows servers to send their notifications, and allows clients to receive these notifications. There are a variety of possible messaging platforms that can be used for this scenario, and depending on the messaging platform, there may be different models of how to subscribe to notifications, and how these notifications are delivered via the messaging platform.


---

## Implementation Options:

- [Kafka as a Distributed Commit Log](how/kafka "Kafka provides access to sequence of topic-identified messages.")
- [RabbitMQ as a Message Broker](how/rabbitmq "RabbitMQ allows clients to consume messages from a managed message queue.")

---

[↑ "Notifications in Request/Response APIs" Guideline](../..) · [↑ All Guidelines](../../../..)
