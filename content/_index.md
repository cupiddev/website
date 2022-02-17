---
title: CUPID - for joyful coding
draft: false
---

What started as lighthearted iconoclasm, poking at the bear of SOLID, has developed into something more concrete and tangible. If I do not think the SOLID principles are useful these days, then what would I replace them with? Can any set of principles hold for all software? What do we even mean by principles?

I believe that there are properties or characteristics of software that make it a joy to work with. The more your code has these qualities, the more joyful it is to work with; but everything is a tradeoff so you should always consider your context.

There are likely many of these properties, overlapping and interrelating, and there are many ways to describe them. I have chosen five that underpin much of what I care about in code. There is a diminishing return; five are enough to make a handy acronym, and few enough to remember.

I will expand on each property in future articles so that this one does not get any longer, so please forgive me for not being more comprehensive.

The five CUPID properties are:

**[Composable](/composable):** plays well with others

**[Unix philosophy](/unix-philosophy):** does one thing well

**[Predictable](/predictable):** does what you expect

**[Idiomatic](/idiomatic):** feels natural

**[Domain-based](/domain-based):** the solution domain models the problem domain in language and structure

{{% aside %}}

## Preamble: a long time ago

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

[fowler1]: https://martinfowler.com/books/refactoring.html "Refactoring: Improving the Design of Existing Code"

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
