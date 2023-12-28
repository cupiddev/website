---
title: Unix Philosophy
date: 2022-02-23
weight: 200
---

Unix and I are about the same age; we both started in 1969, and Unix has become the most prevalent OS on the planet. During the 1990s, every serious computer hardware manufacturer had its own Unix, until the key open source variants, Linux and FreeBSD, became ubiquitous. These days, it runs almost all business servers, both cloud and on-premise, in the form of Linux; it runs in embedded systems and network devices; it underpins the macOS and Android operating systems; it even comes as an optional subsystem with Microsoft Windows!

## A simple, consistent model

So how does a niche operating system that started in a telecoms research lab get copied as a hobby project by a college student and end up as the biggest operating system in the world? There are, no doubt, commercial and legal reasons for its success in an era when OS vendors were as famous for their lawsuits against one another as their technology, but its enduring technical appeal is in its simple and consistent [design philosophy](https://en.wikipedia.org/wiki/Unix_philosophy).

The Unix philosophy says to write components that work together well---which we describe in the [Composable](../composable/) property---and that *do one thing and do it well*.[^unix] For instance, the `ls` command lists details about files and directories, but it does not *know anything* about files or directories! There is a system command called `stat` that provides the information; `ls` is just a tool for presenting that information as text.

Likewise, the `cat` command prints (con*cat*enates) the contents of one or more files, `grep` selects text that matches a given pattern, `sed` replaces text patterns, and so on. The Unix command line has the powerful concept of "pipes" that attach the output of one command as the input to the next, creating a pipeline of selecting, transforming, filtering, sorting, and so on. You can write sophisticated text- and data-processing programs based on composing a handful of well-designed commands that each *does one thing, and does it well*.

## Single purpose vs. single responsibility {#single-purpose}

At first glance this looks like the Single Responsibility Principle (SRP), and for certain interpretations of SRP there is some overlap. But "doing one thing well" is an outside-in perspective; it is the property of having a specific, well-defined, and comprehensive purpose. SRP is an inside-out perspective: it is about the organisation of code.

The SRP, in the words of Robert C. Martin, who coined the term, is that code "[should have one, and only one, reason to change](https://en.wikipedia.org/wiki/Single-responsibility_principle)." The example in the Wikipedia article is a module that produces a report, in which you should consider the content and format of the report as separate concerns which should live in separate classes, or even separate modules. As I [said elsewhere](https://dannorth.net/2021/03/16/cupid-the-back-story/#single-responsibility-principle), in my experience, this creates artificial seams, and the most common case is where the content and format of the data change together: a new field, for instance, or a change to the source of some data that impacts both its content and the way you want to display it.

Another common scenario is a "UI component" where SRP mandates that you separate the rendering and business logic of the component. As a developer, having these live in different places leads to an administrative chore of chaining identical fields together. The greater risk is that this may be a premature optimisation preventing a more natural separation of concerns from emerging as the codebase grows as components emerge that "do one thing well" and that are [better suited to the domain model](../domain-based/#domain-based-structure) of the problem space. As any codebase grows, the time will come to separate it into sensible subcomponents, but the properties of Composability and Domain-based structure will be a better indicator of when and how to make these structural changes.

[^unix]: Beyond this, there is an elegant simplicity in the design of the Unix operating system: everything is a file; everything is either text or not text; we build entire programs by processing text through a series of transformations.
