---
title: Properties over Principles
slug: properties
draft: false
weight: 10
---

When I started formulating a response to the five SOLID principles, I envisioned replacing each one with something that I found more useful or relevant. I soon realised that the idea of principles itself was problematic. Principles are like rules: you are either compliant or you are not. This gives rise to "bounded sets" of rule-followers and rule-enforcers rather than "centred sets" of people with shared values.[^hiebert]

Instead, I started thinking about *properties*: qualities or characteristics of code rather than rules to follow. Properties define a goal or centre to move towards. Your code is only closer to or further from the centre, and there is always a clear direction of travel. You can use properties as a lens or filter to assess your code and you can decide which ones to address next. Since the CUPID properties are all interrelated, it is likely that any change you make to improve one property will have a positive effect on some of the others.

## Properties of properties

So how do we choose properties? What makes a property more or less useful? I decided on three "properties of properties" that I want the CUPID properties to have. They should be *practical*, *human*, and *layered*.

To be **practical**, properties needs to be:

- easy to **articulate**: so you can describe each of them in a few sentences and offer concrete examples and counterexamples.
- easy to **assess**: so you can use them as a lens to review and discuss code, and you can easily decide how much the code exhibits each property.
- easy to **adopt**: so you can start small and incrementally evolve code along any of the CUPID dimensions. There is no "all-in" and there is no "failure", just like there is never a "done". Code can always improve.

To be **human**, properties need to read from the perspective of *people*, not code. CUPID is about what it feels like to work with code, not an abstract description of code in itself. For instance, while the Unix philosophy of "doing one thing well" may sound like the Single Responsibility Principle, the former is about how you use code, and the latter is about the internals of the code itself.[^srp]

To be **layered**, properties should offer *guidance* for beginners--which is a consequence of being easy to articulate--and *nuance* for more experienced folks who find themselves wanting to explore the nature of software more deeply. Each of the CUPID properties is "obvious" just the name and a brief description, but each embodies many layers, dimensions, approaches. We may be able to describe the "centre" for each property, but there are many paths to get there!

[^hiebert]: In the 1970s, Paul G. Hiebert, the anthropologist and Christian missiologist (observer of missionaries), used the mathematical notion of bounded and centred sets to contrast "bounded" communities, who define themselves by rules of who is in and who is out, with "centred" communities, who define themselves by a set of core values that people are nearer to or further from, but never "outside".
