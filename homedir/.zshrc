# Instruct internationalized programs to change the language to English
# and the console output ot UTF-8. Using LANG instead of LC_CTYPE because
# oh-my-zsh theme errors if LANG not set and setting both is not recommended.
# ref: https://bbs.archlinux.org/viewtopic.php?id=220463
# ref: https://stackoverflow.com/questions/30479607/explain-the-effects-of-export-lang-lc-ctype-lc-all
export LANG=en_US.UTF-8

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

#ref: https://github.com/denysdovhan/spaceship-prompt
export ZSH_THEME="spaceship-prompt/spaceship"

## if you want to use this, change your non-ascii font to Droid Sans Mono for Awesome
## POWERLEVEL9K_MODE='awesome-patched'
#export ZSH_THEME="powerlevel9k/powerlevel9k"
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

## Set DEFAULT_USER so context is only visible when
## not running as default
#DEFAULT_USER=$USER
#
## Default format is e.g. 28-12-19 (%D{%d.%m.%y}).
#POWERLEVEL9K_DATE_FORMAT=%D{%m.%d}
#
## https://github.com/bhilburn/powerlevel9k#customizing-prompt-segments
## https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir_writable context dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history date time)
## colorcode test
## for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
#POWERLEVEL9K_NVM_FOREGROUND='000'
#POWERLEVEL9K_NVM_BACKGROUND='072'
#POWERLEVEL9K_SHOW_CHANGESET=true

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(jira colorize compleat dirpersist autojump git gulp history cp)

source $ZSH/oh-my-zsh.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Customize to your needs...
unsetopt correct

# TODO: Remove as soon as I have an arch specific ~/.shellalias
# file and source appropriately.
#ref: https://superuser.com/questions/395820/how-to-properly-end-a-kde-session-from-shell-without-root-privileges
alias logout="qdbus org.kde.ksmserver /KSMServer logout 0 0 0"
alias afk="loginctl lock-session `loginctl show-user pat | grep Sessions | cut -d'=' -f2`"
