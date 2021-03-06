# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export STEAM_FRAME_FORCE_CLOSE=1
# Initialization for FDK command line tools.Sun Aug  9 09:56:54 2015
FDK_EXE="/home/ryan/bin/FDK/Tools/linux"
PATH=${PATH}:"/home/ryan/bin/FDK/Tools/linux"
export PATH
export FDK_EXE
# add shellcheck (vim is checking here for $PATH): (Oct 29 2016)
PATH=${PATH}:"/home/ryan/.cabal/bin"
export PATH
