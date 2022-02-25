---
title: Composable
date: 2022-02-23
weight: 100
---

Software that is easy to use gets used, and used, and used again. There are characteristics that make code more or less composable, but these are neither necessary nor sufficient to make any guarantees. In each case we can find counterexamples on both sides, so you should think of these as useful heuristics. More is not necessarily better; it is all trade-offs.

## Small surface area

Code with a narrow, opinionated API has less for you to learn, less to go wrong, and less chance of conflict or inconsistency with other code you are using. This has a diminishing return; if your APIs are too narrow, you find yourself using groups of them together, and knowing "the right combination" for common use cases becomes tacit knowledge that can be a barrier to entry. Getting the granularity of an API right is harder than it looks. There is a sweet spot of "just right" cohesion between fragmented and bloated.

## Intention-revealing

Intention-revealing code is easy to discover and easy to assess. I can easily find your component, and just as quickly decide whether it is the thing I need or not. One model I like---from open-source projects like the venerable [XStream](https://x-stream.github.io/tutorial.html)---is having a 2-minute tutorial, a 10-minute tutorial, and a deep dive. This lets me invest incrementally, and switch out as soon as I figure out that this is not for me.

More than once I have started writing a class by giving it an intention-revealing name, only for the IDE to pop up a suggested import with the same name. It usually turned out that someone else had the same idea, and I serendipitously found their code because we chose similar names. This was not just coincidence; we were fluent in the same domain which made it more likely that we would pick similar names. This is more likely when you have [domain-based](../domain-based/) code.

## Minimal dependencies

Code with minimal dependencies gives you less to worry about, and reduces the likelihood of version or library incompatibilities. I wrote my first open source project, [XJB](https://github.com/codehaus/xjb), in Java, and used the near-ubiquituous `log4j` logging framework. A colleague pointed out that this created a dependency, not only on `log4j` as a library, but on a specific version. It had not even occurred to me; why should anyone worry about something as innocuous as a logging library? So we [removed the dependencies](https://github.com/codehaus/xjb/commit/ed711436dcdb88b129a15f779a72f4247680ef0e), and even extracted a [whole other project](https://github.com/proxytoys) that did fun things with Java dynamic proxies, which itself had minimal dependencies.
