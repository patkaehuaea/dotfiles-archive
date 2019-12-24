#eval "$(chef shell-init bash)"

# Powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1

# Use python site packages directory to build path
# to the powerline.sh file. Shell script must be run
# before prompt is visible.
# Try `unset POWERLINE_CONFIG_COMMAND` if powerline-config is unable
# to find directories.
source `pip3 show powerline-status | grep Location | cut -d':' -f2 | awk '{$1=$1;print}'`/powerline/bindings/bash/powerline.sh

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
source ~/.profile
