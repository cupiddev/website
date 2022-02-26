---
date: 2022-02-23
---

# CUPID - for joyful coding

*This website is based on [an article by Daniel Terhorst-North](https://dannorth.net/2022/02/10/cupid-for-joyful-coding/), describing properties of joyful code.*

I believe that there are properties or characteristics of software that make it a joy to work with. The more your code has these qualities, the more joyful it is to work with; but everything is a tradeoff so you should always consider your context.

There are likely many of these properties, overlapping and interrelating, and there are many ways to describe them. I have chosen five that underpin much of what I care about in code. There is a diminishing return; five are enough to make a handy acronym, and few enough to remember.

The five CUPID properties are:

- **[Composable](properties/composable/):** plays well with others
- **[Unix philosophy](properties/unix-philosophy/):** does one thing well
- **[Predictable](properties/predictable/):** does what you expect
- **[Idiomatic](properties/idiomatic/):** feels natural
- **[Domain-based](properties/domain-based/):** the code models the problem domain in language and structure

{{% aside %}}

## Preamble: a long time ago&hellip;

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

## Where next?

I believe code that possesses more of these properties---of composability, Unix philosophy, predictability, or being idiomatic or domain-based---is more pleasing to work with than code that does not. While I value each characteristic independently, I find they are mutually reinforcing.

Code that is both composable and comprehensive---doing one thing well---is like a reliable friend. Idiomatic code feels familiar even though you have never seen it before. Predictable code gives you spare cycles to concentrate on surprises elsewhere. Domain-based code minimises the cognitive distance from need to solution. Moving code towards the "centre" of any of these properties leaves it better than you found it.

Because CUPID is a [backronym](https://en.wikipedia.org/wiki/Backronym), I had several candidates for each letter. I chose these five because they feel "foundational" somehow; we can derive all the other candidate properties from these. Future articles will explore some of the shortlist properties that did not make the cut, and look at how they are natural consequences of writing CUPID software.

I am keen to hear of people's adventures with CUPID. I am already hearing about teams using these properties to assess their code, and to develop strategies to clean up legacy codebases, and I cannot wait to hear experience reports and case studies. In the meantime I want to go deeper with CUPID, exploring each of the properties in turn, to see what else has been hiding in plain sight.

[^gabriel]: I recommend anyone involved in software development, not just programmers, read this short essay. It is a profound and beautiful piece of writing.
