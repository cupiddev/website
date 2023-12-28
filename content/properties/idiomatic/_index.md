---
title: Idiomatic
date: 2022-02-23
weight: 400
---

Everyone has their own coding style. Whether it be spaces vs. tabs, size of indentation, variable naming conventions, placement of curly braces or parentheses, layout of code in a source file, or myriad other possibilities. Onto this we can layer the choices of libraries, toolchain, path to live, even version control comment style or commit granularity. (You do use version control, don't you?)

This can add significant [extraneous cognitive load](https://en.wikipedia.org/wiki/Cognitive_load) to working with unfamiliar code. As well as understanding the problem domain and the solution space, you have to interpret what someone else meant, and whether their decisions were deliberate and contextual, or arbitrary and habitual.

The greatest programming trait is empathy; empathy for your users; empathy for support folks; empathy for future developers; any of whom may be future you. Writing "code that humans can understand" means writing code for *someone else*. This is what idiomatic code means.

In this context, your target audience is:

- familar with the language, its libraries, its toolchain, and its ecosystem
- an experienced programmer who understands software development
- trying to get work done!

## Language idioms

Code should conform to the idioms of the language. Some languages have strong opinions about how code should look, which makes it easy to assess how idiomatic your code is. Others are less opinionated, which puts the onus on you to "choose a style" and then stick to it. Go and Python are two examples of an opinionated language.

Python programmers use the term "pythonic" to describe idiomatic code. There is a wonderful [Easter egg](https://en.wikipedia.org/wiki/Easter_egg_(media)) that appears if you `import this` from the Python REPL, or run `python -m this` from a shell. It prints a list of programming aphorisms called "The Zen of Python," which includes this line, capturing the spirit of idiomatic code: "There should be one---and preferably only one---obvious way to do it."

The Go language ships with a code formatter called `gofmt` which makes all source code look the same. This eliminates at a stroke any disagreements about indentation, braces placement, or other syntactic quirks. It means that any code examples you see in the library docs or tutorials look consistent. They even have a document called [Effective Go](https://go.dev/doc/effective_go) that showcases idiomatic Go, beyond the language definition.

At the other end of the spectrum are languages like Scala, Ruby[^ruby], JavaScript, and the venerable Perl. These languages are deliberately multi-paradigm; Perl coined the acronym TIMTOWTDI---"there is more than one way to do it"---pronounced "Tim Toady." You can write functional, procedural, or object-oriented code in most of them, which creates a shallow learning curve from whichever language you know.

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

## Local idioms

When a language has no consensus around idiomatic style, or several alternatives, it is up to you and your team to decide what "good" looks like, and to introduce constraints and guidelines to encourage consistency. These constraints can be as simple as shared code formatting rules in your IDE, "build cop" tools that [lint](https://en.wikipedia.org/wiki/Lint_(software)) and critique code, and agreement on a standard toolchain.

Architecture Decision Records[^adr], or ADRs, are a great way to document your choices about style and idioms. These are no less "significant technical decisions" than any other architectural discussion.

[^ruby]: Ruby may be an outlier here, in that there is definitely a "Ruby aesthetic" and various people have written about "[idiomatic Ruby](https://www.freecodecamp.org/news/idiomatic-ruby-writing-beautiful-code-6845c830c664/)," but this is still individuals sharing their preferred programming style rather than anything intrinsic to the community.

[^adr]: Architecture Decision Records were [first proposed](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions) by Michael Nygard in 2011, and have [been evolving](https://adr.github.io) ever since.
