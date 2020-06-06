# Minimal Setup

The goal of this little project is to create a minimal setup that I want to run
on my computers. I'm not very much against bloated software as long as it is
good and useful. The idea behind this is to get to know my system (what I use
on a daily basis) much better. E.g. as I saw today, oh-my-zsh is quite useful
as a beginner in zsh, but it is actually not needed at all. I can just install
the plugins I need by downloading them from the github repositories and source
them in my zshrc.
Another thing that I saw was that alacritty and solarized don't play well
together for vim highlighting. So I changed the colorscheme to gruvbox, and I
think I might be happy with it. Furthermore another program (powerline) made
some problems with nvim. I quite liked powerline, although it was always a pain
to setup and to configure it for different programs. It never really worked
well. So I want to get rid of it.
One other thing that I configured this week was email. I think I'm still far
from happy with mutt as my email client, but this is because I have to get to
know it properly and I didn't have the change yet to do so.


## Plan of attack

I create a new branch in my dotfiles repository and strip out all the things
that I don't need. In order to see what I need, I want to give a reason with a
use case for every program in my dotfiles. For all these programs I create a
list of dependencies, and from this I will create a list of programs that will
get installed initially on a new system. This list should also be used to find
out how bloated my current system is.


## Current setup

- ack
  This is a search tool on the command line. It is similar to grep and quite
  usefull. I don't think it will make it into my list of needed programs, since
  I can achieve the same with grep, which is installed by default on most linux
  systems.

- alacritty
  This is my new terminal emulator. It is easily configurable and available an
  most linux distributions as well as on windows. It is a quite minimal
  terminal emulator, but I can achieve tabbing and window splitting with tmux
  anyways, so there is no reason for a more bloated terminal emulator.

- bash
  This is the standard interpreter on most linux systems. I will not use or
  configure it in a minimal build, since I will use zsh instead of bash. Having
  two programs that do the same thing is quite bloated.

- bin
  This is a directory that hold binaries for the user. This should not be in
  the dotfiles. I think the original reason why this is here, is because there
  was no scripts directory, and I misused bin for this reason.

- ctags
  This is a program that creates tags for c-files. I'm not sure if this will
  make it in a minimal setup, since this is only needed to browse through
  larger C/C++ projects.

- env
  This file is absolutely needed! This hold all the environment variables that
  are set by the user. The idea behind this file is that it gets sourced by the
  x-server or by whatever terminal interpreter is used. This way these
  environment variables are always available in a system wide manor.
  There is also a local version of the env-file, which stores variables that
  are specific to this system or that need overriding.

- fzf
  This is a fuzzy finder. This is a very useful tool which I use much to less.
  I mostly use it for searches in zsh-history. But it can do other nice stuff.
  It is also used in vim.

- git
  This is absolutely needed. This holds the global configuration for my git and
  also my gitignore, which is very handy. It also stores my git aliases which I
  will need on different systems, since I go crazy when I have to type out
  status and commit.

- hg
  Same as for git, but I don't think this will make it onto the list of
  absolutely needed programs, since I don't use it privately and I no longer
  need it for work.

- i3
  This is my window manager. This is difficult to argue that it is absolutely
  needed, because you would not run a window manager on a server. But on
  systems with an x-server, I would say this is needed, since it is my window
  manager of choice.

- mutt
  This is an email client that can be used on the terminal. It is absolutely
  needed, because I want to make it to my new email client of choice. In the
  current setup that I'm using, there are two dependencies for mutt. isync and
  offlineimap. I think I will only use isync from here on, but offlineimap
  currently holds the configuration for my work email.

- oh-my-zsh
  This is a plugin manager for zsh. I will no longer use it, since it
  complicates setup and I don't have a real benefit from using it. E.g. the
  most useful plugins I use with zsh are not included in oh-my-zsh. So there is
  no benefit in using this plugin manager.

- powerline
  This program styles my prompts and my status bar quite nicely, but it often
  does not work as intended (for the status bar). It also makes problems with
  neovim, which I would like to switch to. Also I don't need the nice styling.
  I had it for quite some time now, and I never really looked at it on the
  prompt or in vim.

- python
  I honestly don't know what this is doing here!!!

- ranger
  This is my file manager of choice. I rarely use a file manager since I mostly
  work from the terminal, but I guess it is good to have one and also one that
  is working in the terminal, so I can also use it on headless servers.

- redshift
  This is a nice program that will add a redshift to my screen. I don't think
  this will make it on the list of really needed programs, but it might get
  added as a simple addition later on.

- rsync
  This is a very nice program that can be used to make backups and remote
  copies. I don't currently know what is configured in here, so I don't think
  this will make it on the list of needed programs. But it is likely to be
  added later on.

- scripts
  This is a directory where I collect all my custom scripts. This is absolutely
  needed on all systems, since some programs could depend on custom scripts.
  But not all scripts are needed or useful on all systems.

- ssh
  Hold my configuration for my ssh. This is absolutely needed on all systems,
  since I want to be able to use the same names to connect to a remote server.

- tmux
  This is a terminal multiplexer. This is absolutely needed on all systems. On
  the desktop systems this is needed to get tabs and splitting in the terminal.
  On remote systems it is also needed to but a running shell in the background
  and quit the connection but let the shell running.

- tmuxinator
  This is a nice startup script for tmux. But I don't think I will use this any
  longer. If I really have a layout that I need to run with tmux for a specific
  project, I will create a script that starts up this project. I had no use for
  tmuxinator in the last 3 years, so better get rid of it.

- urxvt
  This is a nice and fast terminal emulator. The configuration is a bit of a
  pain, since I have to do this over Xresources. This is not an absolutely
  needed program, because I replaced it with alacritty.

- vagrant
  This program allows to spin up virtual machines quick and easy from the
  command line. I did not use this in 4 years, and I think containerization is
  more useful that VMs, but this might make it back if I see the use for VMS
  again.

- vim
  This is my absolute favorite program. This is my editor of choice and needed
  on all systems to work efficiently. It needs a bit of a setup, but everything
  it nicely contained in my vimrc.

- X
  This holds settings for the X server. I'm not sure if this is really still
  needed. I think I currently use it to source my env-file on startup, so that
  all the critical environment variables are set, but I think this script could
  also go into the installation of env.

- xbacklight
  This is a nice little tool that allows to set the screen brightness on
  laptops. I don't think this will make it onto the list.

- zsh
  This is my shell of choice. I very much like zsh because of its completion
  and also because of its look. The configuration is quite bloated at the
  moment, but I will reduce this.


## Minimal Setup List

- alacritty
- env
- fzf
- git
- i3
  - compton
- isync
- mutt
  - isync
  - offlineimap
- ranger
- scripts
- ssh
- tmux
- vim
- (X)
- zsh


## List of workflows / use cases

- Reading and answering emails
  This is a common task that should be very simple and work the exact same way
  on all my systems (at least computers).
  - Receive emails with isync
  - Read and manage emails with mutt
  - Answer emails with mutt

  Dependencies:
  - alacritty
  - mutt
  - isync
  - vim

- Taking notes or writing something
  This is a common task to do on computers. I formalized it very generally here
  so it also covers note taking and programming.

  Dependencies:
  - vim
  - git
  - compilers
