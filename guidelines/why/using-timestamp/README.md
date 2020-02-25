# Using Timestamps

### Timestamps are a popular data type and should be used in a robust and widely-supported way.

---

## Guideline Rationale:

Timestamps (combining date and time information, sometimes allowing data-only formats as well) are a popular data type in APIs. However, representing these timestamps is not trivial, as date and time information is influenced by aspects such as timezones, daylight savings settings, and reference points for dates and times.

It therefore makes sense to use existing formats for timestamps that handle the complexities of date and time representation in well-defined ways. By using consistently using existing formats, it also becomes easier for developers to use libraries that allow them to handle timestamps easily and reliably.


---

## Design Options:

- [Use RFC 3339 Timestamps](what/rfc-3339/ "RFC 3339 is a robust and widely used format for timestamps on the Internet.")

---

[↑ All Guidelines](../..)
