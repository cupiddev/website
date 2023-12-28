---
title: Predictable
date: 2022-02-23
weight: 300
---

Code should do what it looks like it does, consistently and reliably, with no unpleasant surprises. It should be not only possible but easy to confirm this. In this sense, predictability is a generalisation of testability.

Predictable code should *behave as expected*, and should be *deterministic* and *observable*.

## Behaves as expected

The first of Kent Beck's [four rules of simple design](https://www.martinfowler.com/bliki/BeckDesignRules.html) is that the code "passes all the tests." This should be true even when there are no tests! The intended behaviour of predictable code should be obvious from its structure and naming. If there are no automated tests to exercise this, it should be easy to write some. Michael Feathers calls these [characterisation tests](https://michaelfeathers.silvrback.com/characterization-testing). In his words:

> "When a system goes into production, in a way, it becomes its own specification."---Michael Feathers

This is not necessary, and I find that some people think of test-driven development as a religion rather than as a tool. I once worked on a complex algorithmic trading application that had around 7% "test coverage." These tests were not evenly distributed! Much of the code had no automated tests at all, and some had crazy amounts of sophisticated tests, checking for subtle bugs and edge cases. I was confident making changes to most of the codebase, because each of the components did one thing, and its behaviour was straightforward and predictable, so the change was usually obvious.

## Deterministic

Software should do the same thing every time. Even code designed to be non-deterministic---say a random number generator or a dynamic calculation---will have operational or functional bounds that you can define. You should be able to predict memory, network, storage, or processing boundaries, time boundaries, and expectations on other dependencies.

Determinism is a broad topic. For the purposes of predictabliity, deterministic code should be *robust*, *reliable*, and *resilient*.

- **Robustness** is the *breadth or completeness* of situations that we cover. Limitations and edge cases should be obvious.
- **Reliability** is *acting as expected* in situations that we cover. We should get the same results every time.
- **Resilience** is how well we handle situations that we do not cover; *unexpected perturbations* in inputs or operating environment.

## Observable

Code should be observable in the [control theory sense](https://en.wikipedia.org/wiki/Observability): we can infer its internal state from its outputs. This is only possible when we design it in. As soon as several components are interacting, especially asynchronously, there will be emergent behaviour and non-linear consequences.

Instrumenting code from the outset means we can gain valuable data to understand its runtime characteristics. I describe a four-stage model---with two bonus stages!---like this:

1. **Instrumentation** is your software saying what it is doing.
2. **Telemetry** is making that information available, whether by pull---something asking---or push---sending messages; "measurement at a distance."
3. **Monitoring** is receiving instrumentation and making it visible.
4. **Alerting** is reacting to the monitored data, or patterns in the data.

    Bonus:

5. **Predicting** is using this data to anticipate events before they happen.
6. **Adapting** is changing the system dynamically, either to preempt or recover from a predicted perturbation.

Most software does not even get past step 1. There are tools that will intercept or mutate running systems to add a level of insight, but these are never as good as deliberate instrumentation designed into an application.
