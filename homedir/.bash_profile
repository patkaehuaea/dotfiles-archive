# Supress warning message when default shell
# is changed from zsh to bash. Applies to any
# Max OSX release starting with Catalina.
export BASH_SILENCE_DEPRECATION_WARNING=1

# Solves issue where powerline.sh is unable to find the powerline-config
# binary due to some path issue.
# ref problem: https://github.com/powerline/powerline/issues/1960
# ref solution: https://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin/953875#953875
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
source ~/.profile
