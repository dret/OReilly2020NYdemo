# Designing for Evolution

## Design Option for the ["Change Management Policy" Guideline](../..)

### Design APIs so that they can evolve without breaking API consumers.

---

## Design Rationale:

One possible way to handle change management is to design extensibility into the API itself. By using extensible design, changes to the API can take advantage of this extensibility, and existing consumers can continue to use the API without having to adjust.

The specific design depends on the API style and technology, and on the intended extensibility. Regardless of the style and technology, design options will usually fall between these two extremes:

- No extensibility is the easiest design and allows consumers to fully rely on the API as it is when they write their code. However, with this design option there is no extensibility at all, making it impossible for the API producer to make any changes to the API without breaking existing consumers.
- Unlimited extensibility is the hardest design and allows producers to change everything in the API, allowing them unconstrained changes to the API. However, with this design option it becomes hard for consumers to fully implement support for all possible extensions, making it hard for consumers to use the API.

In practice, most extensibility designs fall somewhere in the middle between these options, trying to strike a balance between allowing some extensibility, while still making it relatively easy to consume the API without having to support a very complex extensibility model. The patterns discussed in [[Robust Extensibility]](https://dret.typepad.com/dretblog/2016/04/robust-extensibility.html "Erik Wilde, 'Patterns for Robust Extensibility', April 2016") are one possible way to design for evolution.

### Resources:

- *[Robust Extensibility]:* [Erik Wilde, "Patterns for Robust Extensibility", April 2016](https://dret.typepad.com/dretblog/2016/04/robust-extensibility.html)



---

## Implementation Options:

- [Must Ignore Semantics](how/must-ignore-semantics "Allow extensions but always make it safe to ignore them.")

---

[↑ "Change Management Policy" Guideline](../..) · [↑ All Guidelines](../../../..)
