---
title: CUPID—for joyful coding
date: Thu, 10 Feb 2022 00:00:01 +0000
draft: false
slug: cupid-for-joyful-coding
categories: [ "design", "programming" ]
---

What started as lighthearted iconoclasm, poking at the bear of SOLID, has developed into something more concrete and tangible. If I do not think the SOLID principles are useful these days, then what would I replace them with? Can any set of principles hold for all software? What do we even mean by principles?

<!--more-->

I believe that there are properties or characteristics of software that make it a joy to work with. The more your code has these qualities, the more joyful it is to work with; but everything is a tradeoff so you should always consider your context.

There are likely many of these properties, overlapping and interrelating, and there are many ways to describe them. I have chosen five that underpin much of what I care about in code. There is a diminishing return; five are enough to make a handy acronym, and few enough to remember.

I will expand on each property in future articles so that this one does not get any longer, so please forgive me for not being more comprehensive.

The five CUPID properties are:

- **[Composable](#composable):** plays well with others
- **[Unix philosophy](#unix-philosophy):** does one thing well
- **[Predictable](#predictable):** does what you expect
- **[Idiomatic](#idiomatic):** feels natural
- **[Domain-based](#domain-based):** the solution domain models the problem domain in language and structure

{{% aside %}}

## Preamble: a long time ago...

Have you ever cracked open an unfamiliar codebase and just *known* how to get around? The structure, the naming, the flow is obvious, familiar somehow. A smile appears on your face. "I've got this!" you think.

I have been lucky enough to experience this a handful of times over a thirty-year career, and each time it has filled me with joy. The first time was in the early 1990s---I remember it vividly---when I cracked open a huge C codebase that did complex image manipulation for digital printing. There was a bug in Someone Else's Code&trade;, and I was to track it down and fix it. I remember the feeling, as a rookie programmer: a mixture of dread and the fear of betraying myself as the amateur I knew I was.

My editor---vi with ctags---allowed me to navigate to the function definitions from call sites, and within a few minutes I was deep in a nest of calls, in a codebase of many hundreds of source and header files, *feeling confident I knew what I was looking at*. I quickly found the culprit, which was a simple logic error, made a change, built the code, and tested it. This was all without automated testing, just using Makefiles. TDD was almost a decade in my future and C did not have those kinds of tool in any case.

I ran the transform on several sample images and they came out looking ok. I was as confident as I could be that I had a) found and fixed the bug, and b) not introduced any nasty surprises at the same time.

{{% /aside %}}

## Joyful software

Some code is a delight to work with. You know how to find what you need to work on. You know how to make the change you need. The code is easy to navigate, easy to understand, easy to reason about. You feel confident that your change will have the effect you wanted without any undue side-effects. The code *guides you*, invites you to look around. The programmer(s) who came before you cared about the person who would come along later, maybe because they realised that the programmer who came along later might be them!

In his seminal book, "Refactoring", Martin Fowler says:

> "Any fool can write code that a computer can understand. Good programmers write code that humans can understand."
>
> —*[Refactoring][fowler1], Martin Fowler with Kent Beck, 1996*

[fowler1]: https://martinfowler.com/books/refactoring.html	"Refactoring: Improving the Design of Existing Code"

I read this in the early 2000s and his words turned my programming world on its head. What if good programming is about making code understandable *to other humans*? What if one of those humans is future me? That sounded like something to aspire to.

But while "understandable" might be a noble aspiration, it is not that high a bar! Around the same time that Martin was writing about refactoring, computing pioneer [Richard P. Gabriel](https://www.dreamsongs.com "Dreamsongs")  described the idea of code being *habitable*:

> “Habitability is the characteristic of source code that enables [people] to understand its construction and intentions and to change it comfortably and confidently.
>
> “Habitability makes a place liveable, like home.”
>
> —*Habitability and Piecemeal Growth[^gabriel], [Patterns of Software][gabriel-1] pp. 7-16, Richard P. Gabriel*

[gabriel-1]: https://www.dreamsongs.com/Files/PatternsOfSoftware.pdf "Patterns of Software: Tales from the Software Community"

This feels more like something to strive for. How nice would it be to feel *comfortable* and *confident* changing other people's code? And if we can make code habitable, what about *joyful*? Is it possible for a codebase to fill you with joy?

If you spend your working days programming, then navigating and manipulating a codebase defines your user experience. You can experience surprise, frustration, dread, anticipation, helplessness, hope, joy, all because of the choices that earlier programmers made in the codebase.

If we assume it is possible for a codebase to be joyful, is each codebase its own special snowflake whose impact on your psyche is unique? Or can we articulate what makes it joyful, and offer a path towards increasing the joy in the code that we touch?

## Properties over principles

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

---

## Composable

Software that is easy to use gets used, and used, and used again. There are characteristics that make code more or less composable, but these are neither necessary nor sufficient to make any guarantees. In each case we can find counterexamples on both sides, so you should think of these as useful heuristics. More is not necessarily better; it is all trade-offs.

### Small surface area

Code with a narrow, opinionated API has less for you to learn, less to go wrong, and less chance of conflict or inconsistency with other code you are using. This has a diminishing return; if your APIs are too narrow, you find yourself using groups of them together, and knowing "the right combination" for common use cases becomes tacit knowledge that can be a barrier to entry. Getting the granularity of an API right is harder than it looks. There is a sweet spot of "just right" cohesion between fragmented and bloated.

### Intention-revealing

Intention-revealing code is easy to discover and easy to assess. I can easily find your component, and just as quickly decide whether it is the thing I need or not. One model I like---from open-source projects like the venerable [XStream](https://x-stream.github.io/tutorial.html)---is having a 2-minute tutorial, a 10-minute tutorial, and a deep dive. This lets me invest incrementally, and switch out as soon as I figure out that this is not for me.

More than once I have started writing a class by giving it an intention-revealing name, only for the IDE to pop up a suggested import with the same name. It usually turned out that someone else had the same idea, and I serendipitously found their code because we chose similar names. This was not just coincidence; we were fluent in the same domain which made it more likely that we would pick similar names. This is more likely when you have [domain-based](#domain-based) code.

### Minimal dependencies

Code with minimal dependencies gives you less to worry about, and reduces the likelihood of version or library incompatibilities. I wrote my first open source project, [XJB](https://github.com/codehaus/xjb), in Java, and used the near-ubiquituous `log4j` logging framework. A colleague pointed out that this created a dependency, not only on `log4j` as a library, but on a specific version. It had not even occurred to me; why should anyone worry about something as innocuous as a logging library? So we [removed the dependencies](https://github.com/codehaus/xjb/commit/ed711436dcdb88b129a15f779a72f4247680ef0e), and even extracted a [whole other project](https://github.com/proxytoys) that did fun things with Java dynamic proxies, which itself had minimal dependencies.

---

## Unix philosophy

Unix and I are about the same age; we both started in 1969, and Unix has become the most prevalent OS on the planet. During the 1990s, every serious computer hardware manufacturer had its own Unix, until the key open source variants, Linux and FreeBSD, became ubiquitous. These days, it runs almost all business servers, both cloud and on-premise, in the form of Linux; it runs in embedded systems and network devices; it underpins the macOS and Android operating systems; it even comes as an optional subsystem with Microsoft Windows!

### A simple, consistent model

So how does a niche operating system, that started in a telecoms research lab, get copied as a hobby project by a college student, and end up as the biggest operating system in the world? There are, no doubt, commercial and legal reasons for its success in an era when OS vendors were as famous for their lawsuits against one another as their technology, but its enduring technical appeal is in its simple and consistent [design philosophy](https://en.wikipedia.org/wiki/Unix_philosophy).

The Unix philosophy says to write [components] that work together well, described in the [Composability](#composable) property above, and that *do one thing and do it well*.[^unix] For instance, the `ls` command lists details about files and directories, but it does not *know anything* about files or directories! There is a system command called `stat` that provides the information; `ls` is just a tool for presenting that information as text.

Likewise, the `cat` command prints (con*cat*enates) the contents of one or more files, `grep` selects text that matches a given pattern, `sed` replaces text patterns, and so on. The Unix command line has the powerful concept of "pipes" that attach the output of one command as the input to the next, creating a pipeline of selecting, transforming, filtering, sorting, and so on. You can write sophisticated text- and data-processing programs based on composing a handful of well-designed commands that each *does one thing, and does it well*.

### Single purpose vs. single responsibility {#single-purpose}

At first glance this looks like the Single Responsibility Principle (SRP), and for certain interpretations of SRP there is some overlap. But "doing one thing well" is an outside-in perspective; it is the property of having a specific, well-defined, and comprehensive purpose. SRP is an inside-out perspective: it is about the organisation of code.

The SRP, in the words of Robert C. Martin, who coined the term, is that [code] "[should have one, and only one, reason to change](https://en.wikipedia.org/wiki/Single-responsibility_principle)." The example in the Wikipedia article is a module that produces a report, in which you should consider the content and format of the report as separate concerns which should live in separate classes, or even separate modules. As I [said elsewhere](/2021/03/16/cupid-the-back-story/#single-responsibility-principle), in my experience, this creates artificial seams, and the most common case is where the content and format of the data change together; a new field, for instance, or a change to the source of some data that impacts both its content and the way you want to display it.

Another common scenario is a "UI component" where SRP mandates that you separate the rendering and business logic of the component. As a developer, having these living in different places leads to an administrative chore of chaining identical fields together. The greater risk is that this may be a premature optimisation preventing a more natural separation of concerns emerging as the codebase grows, and as components emerge that "do one thing well" and that are [better suited to the domain model](#domain-based-structure) of the problem space. As any codebase grows, the time will come to separate it into sensible subcomponents, but the properties of Composability and [Domain-based structure](#domain-based-structure) will be a better indicator of when and how to make these structural changes.

---

## Predictable

Code should do what it looks like it does, consistently and reliably, with no unpleasant surprises. It should be not only possible but easy to confirm this. In this sense, predictability is a generalisation of testability.

Predictable code should *behave as expected*, and should be *deterministic* and *observable*.

### Behaves as expected

The first of Kent Beck's [four rules of simple design](https://www.martinfowler.com/bliki/BeckDesignRules.html) is that the code "passes all the tests". This should be true even when there are no tests! The intended behaviour of predictable code should be obvious from its structure and naming. If there are no automated tests to exercise this, it should be easy to write some. Michael Feathers calls these [characterisation tests](https://michaelfeathers.silvrback.com/characterization-testing). In his words:

> "When a system goes into production, in a way, it becomes its own specification."---Michael Feathers

This is not necessary, and I find that some people think of test-driven development as a religion rather than as a tool. I once worked on a complex algorithmic trading application that had around 7% "test coverage". These tests were not evenly distributed! Much of the code had no automated tests at all, and some had crazy amounts of sophisticated tests, checking for subtle bugs and edge cases. I was confident making changes to most of the codebase, because each of the components did one thing, and its behaviour was straightforward and predictable, so the change was usually obvious.

### Deterministic

Software should do the same thing every time. Even code designed to be non-deterministic---say a random number generator or a dynamic calculation---will have operational or functional bounds that you can define. You should be able to predict memory, network, storage, or processing boundaries, time boundaries, and expectations on other dependencies.

Determinism is a broad topic. For the purposes of predictabliity, deterministic code should be *robust*, *reliable*, and *resilient*.

- **Robustness** is the *breadth or completeness* of situations that we cover. Limitations and edge cases should be obvious.
- **Reliability** is *acting as expected* in situations that we cover. We should get the same results every time.
- **Resilience** is how well we handle situations that we do not cover; *unexpected perturbations* in inputs or operating environment.

### Observable

Code should be observable in the [control theory sense](https://en.wikipedia.org/wiki/Observability): we can infer its internal state from its outputs. This is only possible when we design it in. As soon as several components are interacting, especially asynchronously, there will be emergent behaviour and non-linear consequences.

Instrumenting code from the outset means we can gain valuable data to understand its runtime characteristics. I describe a four-stage model---with two bonus stages!---like this:

1. **Instrumentation** is your software saying what it is doing.
2. **Telemetry** is making that information available, whether by pull---something asking---or push---sending messages; "measurement at a distance".
3. **Monitoring** is receiving instrumentation and making it visible.
4. **Alerting** is reacting to the monitored data, or patterns in the data.

    Bonus:

5. **Predicting** is using this data to anticipate events before they happen.
6. **Adapting** is changing the system dynamically, either to preempt or recover from a predicted perturbation.

Most software does not even get past step 1. There are tools that will intercept or mutate running systems to add a level of insight, but these are never as good as deliberate instrumentation designed into an application.

---

## Idiomatic

Everyone has their own coding style. Whether it be spaces vs. tabs, size of indentation, variable naming conventions, placement of curly braces or parentheses, layout of code in a source file, or myriad other possibilities. Onto this we can layer the choices of libraries, toolchain, path to live, even version control comment style or commit granularity. (You do use version control, don't you?)

This can add significant [extraneous cognitive load](https://en.wikipedia.org/wiki/Cognitive_load) to working with unfamiliar code. As well as understanding the problem domain and the solution space, you have to interpret what someone else meant, and whether their decisions were deliberate and contextual, or arbitrary and habitual.

The greatest programming trait is empathy; empathy for your users; empathy for support folks; empathy for future developers; any of whom may be future you. Writing "code that humans can understand" means writing code for *someone else*. This is what idiomatic code means.

In this context, your target audience is:

- familar with the language, its libraries, its toolchain, and its ecosystem
- an experienced programmer who understands software development
- trying to get work done!

### Language idioms

Code should conform to the idioms of the language. Some languages have strong opinions about how code should look, which makes it easy to assess how idiomatic your code is. Others are less opinionated, which puts the onus on you to "choose a style" and then stick to it. Go and Python are two examples of an opinionated language.

Python programmers use the term "pythonic" to describe idiomatic code. There is a wonderful [Easter egg](https://en.wikipedia.org/wiki/Easter_egg_(media)) that appears if you `import this` from the Python REPL, or run `python -m this` from a shell. It prints a list of programming aphorisms called "The Zen of Python", which includes this line, capturing the spirit of idiomatic code: "There should be one---and preferably only one---obvious way to do it."

The Go language ships with a code formatter called `gofmt` which makes all source code look the same. This eliminates at a stroke any disagreements about indentation, braces placement, or other syntactic quirks. It means that any code examples you see in the library docs or tutorials look consistent. They even have a document called [Effective Go](https://go.dev/doc/effective_go) that showcases idiomatic Go, beyond the language definition.

At the other end of the spectrum are languages like Scala, Ruby[^ruby], JavaScript, and the venerable Perl. These languages are deliberately multi-paradigm; Perl coined the acronym TIMTOWTDI---"there is more than one way to do it"---pronounced "Tim Toady". You can write functional, procedural, or object-oriented code in most of them, which creates a shallow learning curve from whichever language you know.

For something as simple as processing a sequence of values, most of these languages let you:

- use an iterator
- use an indexed for-loop
- use a conditional while-loop
- use a function pipeline with a collector ("map-reduce")
- write a tail-recursive function

This means that in any non-trivial size of code, you will likely find examples of each of these, often in combination with each other. Again, this all adds cognitive load, impacting your capacity to think about the problem at hand, increasing uncertainty, and reducing joy.

Code idioms occur at all levels of granularity: naming functions, types, parameters, modules; layout of code; structure of modules; choice of tools; choice of dependencies; how you manage dependencies; and so on.

Wherever your technology stack lies on the spectrum of opinionatedness, the code you write will be more empathic and joyful if you take the time to learn the idioms of the language, its ecosystem, its community, and its preferred style.

Your learning curve for a technology will likely be shorter-lived than any code you write in it, so it is important to resist the urge to write code that reads well *to you right now*, because that person will not be around for long! The only way to be confident that you are writing idiomatic code is to take the time to learn the idioms.

### Local idioms

When a language has no consensus around idiomatic style, or several alternatives, it is up to you and your team to decide what "good" looks like, and to introduce constraints and guidelines to encourage consistency. These constraints can be as simple as shared code formatting rules in your IDE, "build cop" tools that [lint](https://en.wikipedia.org/wiki/Lint_(software)) and critique code, and agreement on a standard toolchain.

Architecture Decision Records[^adr], or ADRs, are a great way to document your choices about style and idioms. These are no less "significant technical decisions" than any other architectural discussion.

---

## Domain-based

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

The likelihood is that any non-trivial change to patient record management will involve code scattered all over the codebase. The SOLID principle of Single Responsibility says that view code should be separate from controller code, and frameworks like Rails interpret this to mean having them in completely different places. This increases cognitive load, reduces cohesion, and adds to the effort of making product changes. As I [discussed earlier](#single-purpose), this ideological constraint can make the work harder, and the codebase less joyful.

We still need artefacts like models, views, and controllers, whichever way we lay out the code, but grouping them by type should not form the primary structure. Instead, the top level of the codebase should show the primary use cases of hospital management; maybe `patient_history`, `appointments`, `staffing`, and `compliance`.

Taking a domain-based approach to the code structure makes it easy to understand what the code is there for, and easy to navigate to wherever you need to be for anything more complicated than "make that button light blue".

### Domain-based boundaries

When we structure the code the way we want, and name it the way we want, module boundaries become domain boundaries, and deployment becomes straightforward. Everything we need to deploy a component as a single artefact is together, so we can align domain boundaries with deployment boundaries and deploy cohesive business components and services. Whether you package your products or services as a single monolith, many small microservices, or anywhere between, this alignment reduces the complexity of your path to live, and makes it less likely that you will forget something, or include artefacts from a different environment or a different subsystem.

This does not limit us to a single, flat, top level of code structure. Domains can contain subdomains; components can contain subcomponents; deployments can happen at whatever level of granularity makes sense for your change and risk profile. Aligning the code boundaries with the domain boundaries makes all these options easier to reason about and easier to manage.

---

## Concluding thoughts

I believe code that possesses more of these properties---of composability, Unix philosophy, predictability, or being idiomatic or domain-based---is more pleasing to work with than code that does not. While I value each characteristic independently, I find they are mutually reinforcing.

Code that is both composable and comprehensive---doing one thing well---is like a reliable friend. Idiomatic code feels familiar even though you have never seen it before. Predictable code gives you spare cycles to concentrate on surprises elsewhere. Domain-based code minimises the cognitive distance from need to solution. Moving code towards the "centre" of any of these properties leaves it better than you found it.

Because CUPID is a [backronym](https://en.wikipedia.org/wiki/Backronym), I had several candidates for each letter. I chose these five because they feel "foundational" somehow; we can derive all the other candidate properties from these. Future articles will explore some of the shortlist properties that did not make the cut, and look at how they are natural consequences of writing CUPID software.

I am keen to hear of people's adventures with CUPID. I am already hearing about teams using these properties to assess their code, and to develop strategies to clean up legacy codebases, and I cannot wait to hear experience reports and case studies. In the meantime I want to go deeper with CUPID, exploring each of the properties in turn, to see what else has been hiding in plain sight.

[^gabriel]: I recommend anyone involved in software development, not just programmers, read this short essay. It is a profound and beautiful piece of writing.

[^hiebert]: In the 1970s, Paul G. Hiebert, the anthropologist and Christian missiologist (observer of missionaries), used the mathematical notion of bounded and centred sets to contrast "bounded" communities, who define themselves by rules of who is in and who is out, with "centred" communities, who define themselves by a set of core values that people are nearer to or further from, but never "outside".

[^srp]: The definition of a Single Responsibility is that code should have "one and only one reason to change", the idea being that you should, for example,  separate UI code from business logic. Not only is this constraint trivially easy to refute---on the basis that even a single line of code may need to change for reasons of security, compliance, upstream or downstream dependencies, operational characteristics etc., but I see it as an arbitrary constraint that is often a premature segregation with negative consequences.

[^unix]: Beyond this, there is an elegant simplicity in the design of the Unix operating system: everything is a file; everything is either text or not text; we build entire programs by processing text through a series of transformations.

[^ruby]: Ruby may be an outlier here, in that there is definitely a "Ruby aesthetic" and various people have written about "[idiomatic Ruby](https://www.freecodecamp.org/news/idiomatic-ruby-writing-beautiful-code-6845c830c664/)", but this is still individuals sharing their preferred programming style rather than anything intrinsic to the community.

[^adr]: Architecture Decision Records were [first proposed](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions) by Michael Nygard in 2011, and have [been evolving](https://adr.github.io) ever since.
[^rails]: There is a whole other discussion about how much scaffolding and generated boilerplate a framework should impose on the developer for a "pristine" project, which is beyond the scope of this article.
