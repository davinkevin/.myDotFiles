set fish_greeting ""

# JAVA_HOME
set -gx JAVA_HOME (/usr/libexec/java_home -v '1.8*')

# Set PATH :
set -gx PATH $JAVA_HOME/bin/ /usr/local/opt/coreutils/libexec/gnubin $PATH ./node_modules/.bin/

# Autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

# iTerm2
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# DirEnv 
eval (direnv hook fish)

# SimpleHttp2Server
alias http-server="simplehttp2server"

# Kubernetes: 
# * kubectl
alias kub="kubectl"
