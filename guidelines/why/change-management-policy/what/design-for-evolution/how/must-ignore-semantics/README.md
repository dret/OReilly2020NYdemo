# Must Ignore Semantics

## Implementation Option for the ["Designing for Evolution" Design Option](../..)

### Allow extensions but always make it safe to ignore them.

---

## Implementation Description:

One relatively simple way to allow extensions is to always make it safe to ignore them. This means that anything any consumer will depend on will always be there, and it will never change its meaning. In practice, this often breaks down to the following strategies:

- Once something is defined or added, it must stay defined. The only slight exception for this is if something is optional: This means that it may or may not appear. This means that changes to the API might make this required, or not support it any more. Both are specializations of something being optional, so this is acceptable.
- Clearly indicate where extensions may appear, this makes it possible for consumers to write code that will not break when something new shows up.
- Make it safe to ignore any extension, by only defining extensions that can be safely ignored without compromising current API consumers.

By following this strategy, it is relatively easy to define an API that evolves in a monotonic way: It only grows, and nothing is ever removed. This is also known as the "Robustness Principle" [[RFC 1122]](https://tools.ietf.org/html/rfc1122 "Robert Braden, 'Requirements for Internet Hosts - Communication Layers', RFC 1122, October 1989") that asks to "be liberal in what you accept, and conservative in what you send".

### Resources:

- *[RFC 1122]:* [Robert Braden, "Requirements for Internet Hosts - Communication Layers", RFC 1122, October 1989](https://tools.ietf.org/html/rfc1122)



---

[↑ "Designing for Evolution" Design Option](../..) · [↑ "Change Management Policy" Guideline](../../../..) · [↑ All Guidelines](../../../../../..)
