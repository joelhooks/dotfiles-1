# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jodosha"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-completion git-flow brew gem npm osx rails3 redis-cli ruby rbenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export CFLAGS=s"-g -02"
export CC=/usr/bin/gcc-4.2
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export PATH="$HOME/bin:/usr/local/bin:$HOME/.rbenv/bin:$JAVA_HOME/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
export EDITOR="vim"
eval "$(rbenv init -)"