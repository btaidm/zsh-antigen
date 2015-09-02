ZSHA_BASE=$HOME/.zsh-antigen
source $ZSHA_BASE/antigen/antigen.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh

autoload -U compinit
compinit


antigen-use oh-my-zsh

antigen-bundle git
antigen bundle git-extras
antigen bundle archlinux
antigen-bundle zsh-users/zsh-syntax-highlighting
antigen-bundle zsh-users/zsh-history-substring-search
antigen-bundle tarruda/zsh-autosuggestions

antigen bundle mollifier/cd-gitroot

antigen-bundle nojhan/liquidprompt
antigen-bundle Tarrasch/zsh-bd
antigen-bundle Tarrasch/zsh-functional
antigen-bundle ascii-soup/zsh-url-highlighter
antigen bundle knu/zsh-manydots-magic
antigen-apply

#zsh autosuggestions
AUTOSUGGESTION_ACCEPT_RIGHT_ARROW=1
# Enable autosuggestions automatically.
zle-line-init() {
	zle autosuggest-start
}
zle -N zle-line-init

alias cdu='cd-gitroot'

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
setopt completealiases
alias ssh='TERM=xterm-256color ssh'

