# Powerline requires PATH to include the Python 'bin' directory.
# Paths are set in ~/.profile so call before any references to
# powerline binaries.
source ~/.profile

# Supress warning message when default shell
# is changed from zsh to bash. Applies to any
# Max OSX release starting with Catalina.
export BASH_SILENCE_DEPRECATION_WARNING=1

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  # Use python site packages directory to build path
  # to the powerline.sh file. Shell script must be run
  # before prompt is visible.
  . `pip3 show powerline-status | grep Location | cut -d':' -f2 | awk '{$1=$1;print}'`/powerline/bindings/bash/powerline.sh
fi

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
