---
title: Notes
---

## Notes

This repository is for organizing and taking all of my notes. The notes are
written in Markdown and converted with Pandoc into HTML or PDF, depending on
the use case.

## Building notes

There are two building systems in the Makefile. One builds an html out of all
the notes. The other one builds a pdf out of every single note and then
combines them all into a single pdf file. If you want to build a specific note
as pdf, just use `make build/pdf/notes/<name-of-your-note>.pdf`.
