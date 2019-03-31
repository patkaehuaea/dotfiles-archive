#eval "$(chef shell-init bash)"
source ~/.profile
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Powerline
BINDINGS=$(pip3 show powerline-status | grep Location | cut -d ' ' -f2)/powerline/bindings/bash/powerline.sh
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source $BINDINGS
