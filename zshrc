ZSHA_BASE=$HOME/.zsh-antigen
source $ZSHA_BASE/antigen/antigen.zsh

autoload -U compinit
compinit
setopt completealiases

antigen-use oh-my-zsh

antigen-bundle git
antigen bundle git-extras
antigen bundle archlinux
antigen bundle command-not-found
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

source $ZSHA_BASE/zkbd

#zsh autosuggestions
AUTOSUGGESTION_ACCEPT_RIGHT_ARROW=1
# Enable autosuggestions automatically.
zle-line-init() {
	zle autosuggest-start
}
zle -N zle-line-init

alias cdu='cd-gitroot'

alias ssh='TERM=xterm-256color ssh'
if type lesspipe.sh > /dev/null; then
	LESSOPENLOC=`which lesspipe.sh`
	LESSOPEN="|$LESSOPENLOC %s"; export LESSOPEN
fi

if type keychain > /dev/null; then
	eval `keychain --eval`
fi

if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_osc7
fi

[ -f $HOME/.playground/bin/playground ] && export PATH=$HOME/.playground/bin:$PATH

