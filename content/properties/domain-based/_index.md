---
title: "Domain-based"
date: 2022-02-23T16:46:21Z
weight: 500
---

We write software to meet a need. This may be specific and situational, or generic and far-reaching. Whatever its purpose, code should convey what it is doing in the language of the problem domain, to minimise the cognitive distance between what you write and what it does. This is more than "using the right words".

### Domain-based language

Programming languages and their libraries are full of computer science-y constructs like Hash Maps, Linked Lists, Tree Sets, Database Connections, and so on. They have basic types comprising integers, characters, boolean values. You can declare someone's surname as a `string[30]`, which may well be how it gets stored, but defining a `Surname` type will be more intention-revealing. It may even have surname-related operations, properties, or constraints on it. Many subtle bugs in banking software are due to representing money amounts as floating point values; experienced financial software programmers will define a `Money` type with a `Currency` and an `Amount`, which itself is a compound type.

Naming types and operations well is not just about catching or preventing bugs, but about making it easy to articulate and navigate the solution space in code. I made this my contribution to "[97 Things Every Programmer Should Know](https://www.oreilly.com/library/view/97-things-every/9780596809515/)", as "Code in the Language of the Domain".

One criterion for success with domain-driven code is that a casual observer cannot tell whether people are discussing the code or the domain. I experienced this once in an electronic trading system, where a financial analyst was discussing complex trade pricing logic with two programmers. I thought they were discussing the rules of pricing, but they were pointing at a screenful of code and the analyst was talking the programmers through the pricing algorithm, which was line-for-line how the code read! The only cognitive distance between the problem domain and the solution code was some syntax punctuation!

### Domain-based structure

Using domain-based language is important, but how you structure your code can be just as significant. Many frameworks offer a "skeleton project" with a directory layout and stubbed files designed to get you started quickly. This imposes an *a priori* structure on your code that has nothing to do with the problem you are solving.

Instead, the layout of code---the directory names, the relationships of child and sibling folders, the grouping and naming of related files---should mirror the problem domain as closely as possible.

The app framework [Ruby on Rails](https://rubyonrails.org) popularised this approach in the early 2000s by [building it in](https://guides.rubyonrails.org/getting_started.html#creating-the-blog-application) to its tooling, and Rails' widespread adoption meant that many later frameworks have copied the idea. CUPID is agnostic to languages and frameworks, but Rails makes a useful case study for understanding the difference between domain-based and framework-based structure.

Below is part of the directory layout of a generated skeleton Rails app, focusing on the directory (`app`) where a developer will spend most of their time. The full skeleton runs to around 50 directories containing 60 files[^rails], at the time of writing.

```shell
app
├── assets
│   ├── config
│   ├── images
│   └── stylesheets
├── channels
│   └── application_cable
├── controllers
│   └── concerns
├── helpers
├── javascript
│   └── controllers
├── jobs
├── mailers
├── models
│   └── concerns
└── views
    └── layouts
```

Imagine this will be a hospital management app, with a section for patient records. This layout suggests that we will need at least:

- a *model*, which maps to a database somewhere
- a *view*, which renders the patient record on a screen
- a *controller*, which mediates between views and models

Then there is scope for *helpers*, *assets*, and several other framework concepts, such as *model concerns* or *controller concerns*, *mailers*, *jobs*, *channels*, and maybe a JavaScript controller to go with your Ruby controller. Each of these artefacts lives in a separate directory, even though they are semantically tightly integrated.

The likelihood is that any non-trivial change to patient record management will involve code scattered all over the codebase. The SOLID principle of Single Responsibility says that view code should be separate from controller code, and frameworks like Rails interpret this to mean having them in completely different places. This increases cognitive load, reduces cohesion, and adds to the effort of making product changes. As I [mention elsewhere](../unix-philosophy/#single-purpose), this ideological constraint can make the work harder, and the codebase less joyful.

We still need artefacts like models, views, and controllers, whichever way we lay out the code, but grouping them by type should not form the primary structure. Instead, the top level of the codebase should show the primary use cases of hospital management; maybe `patient_history`, `appointments`, `staffing`, and `compliance`.

Taking a domain-based approach to the code structure makes it easy to understand what the code is there for, and easy to navigate to wherever you need to be for anything more complicated than "make that button light blue".

### Domain-based boundaries

When we structure the code the way we want, and name it the way we want, module boundaries become domain boundaries, and deployment becomes straightforward. Everything we need to deploy a component as a single artefact is together, so we can align domain boundaries with deployment boundaries and deploy cohesive business components and services. Whether you package your products or services as a single monolith, many small microservices, or anywhere between, this alignment reduces the complexity of your path to live, and makes it less likely that you will forget something, or include artefacts from a different environment or a different subsystem.

This does not limit us to a single, flat, top level of code structure. Domains can contain subdomains; components can contain subcomponents; deployments can happen at whatever level of granularity makes sense for your change and risk profile. Aligning the code boundaries with the domain boundaries makes all these options easier to reason about and easier to manage.

[^rails]: There is a whole other discussion about how much scaffolding and generated boilerplate a framework should impose on the developer for a "pristine" project, which is beyond the scope of this article.
