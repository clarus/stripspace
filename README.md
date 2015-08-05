# StripSpace
Remove all unnecessary whitespaces in a Git project.

    curl -L https://raw.githubusercontent.com/clarus/stripspace/master/stripspace.rb |ruby

Applies the command [`git stripspace`](https://www.kernel.org/pub/software/scm/git/docs/git-stripspace.html) on each file of a Git repository. In particular, this:

* removes trailing whitespaces;
* adds missing `\n` at the end of the files.
