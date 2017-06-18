set fish_greeting ""

# Set PATH : 
set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH ./node_modules/.bin/

# Autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# DirEnv 
eval (direnv hook fish)