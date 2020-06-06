---
title: sed
---


# sed

sed is the stream editor. It can be used to manipulate files from the command
line. One of the simplest tasks of sed is to substitute a pattern on a per line
basis. The substitute command works basically the same as in vim.

The basic case for sed is to read in a stream (can be a file) and outputs a
stream. To edit the file itself, we have to give it the -i flag.

In the following I will go through some tutorial videos on sed, and
compile a list of usefull commands.


## Using `sed` and Regular Expressions (Unix/Linux command line)

This [video](https://www.youtube.com/watch?v=QaGhpqRll_k) is by Luke Smith. He
has a very nice channel where he explains how he does stuff in a minimal linux
way.

```bash
sed "s/\s*#.*//g; /^$/ d; s/\s*$//g" <file>
```
This command will cleanup a file:

- remove all comments from the file
- remove all trailing spaces from the file
- remove empty lines

## Understanding how sed works

This [video](https://www.youtube.com/watch?v=l0mKlIswojA) is a part of a series
by nixcast. He is a streamer who uses linux very basically for better workflow
stuff. He explains how sed works very nicely. sed reads is line by line of a
file. Per line that sed reads in, it searches for the pattern space. Then
executes a command on the pattern space. If the command is finished, the
content gets deleted out of the pattern space, and per default it will be
printed to stdout.
