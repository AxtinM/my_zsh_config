if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git sudo z zsh-autosuggestions zsh-syntax-highlighting autojump)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
PATH=/home/mortal/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games

# autojump
[[ -s /home/mortal/.autojump/etc/profile.d/autojump.sh ]] && source /home/mortal/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u

unsetopt BG_NICE

export XDG_RUNTIME_DIR=$HOME/.XDG_DIR
fpath=(~/.zsh/completion /home/mortal/.zsh/completion /home/mortal/.autojump/functions /home/mortal/.autojump/functions /home/mortal/.oh-my-zsh/plugins/autojump /home/mortal/.oh-my-zsh/custom/plugins/zsh-autosuggestions /home/mortal/.oh-my-zsh/plugins/z /home/mortal/.oh-my-zsh/plugins/sudo /home/mortal/.oh-my-zsh/plugins/git /home/mortal/.oh-my-zsh/functions /home/mortal/.oh-my-zsh/completions /home/mortal/.oh-my-zsh/cache/completions /usr/local/share/zsh/site-functions /usr/share/zsh/vendor-functions /usr/share/zsh/vendor-completions /usr/share/zsh/functions/Calendar /usr/share/zsh/functions/Chpwd /usr/share/zsh/functions/Completion /usr/share/zsh/functions/Completion/AIX /usr/share/zsh/functions/Completion/BSD /usr/share/zsh/functions/Completion/Base /usr/share/zsh/functions/Completion/Cygwin /usr/share/zsh/functions/Completion/Darwin /usr/share/zsh/functions/Completion/Debian /usr/share/zsh/functions/Completion/Linux /usr/share/zsh/functions/Completion/Mandriva /usr/share/zsh/functions/Completion/Redhat /usr/share/zsh/functions/Completion/Solaris /usr/share/zsh/functions/Completion/Unix /usr/share/zsh/functions/Completion/X /usr/share/zsh/functions/Completion/Zsh /usr/share/zsh/functions/Completion/openSUSE /usr/share/zsh/functions/Exceptions /usr/share/zsh/functions/MIME /usr/share/zsh/functions/Math /usr/share/zsh/functions/Misc /usr/share/zsh/functions/Newuser /usr/share/zsh/functions/Prompts /usr/share/zsh/functions/TCP /usr/share/zsh/functions/VCS_Info /usr/share/zsh/functions/VCS_Info/Backends /usr/share/zsh/functions/Zftp /usr/share/zsh/functions/Zle)


# Load Angular CLI autocompletion.
source <(ng completion script)

#aliases

if [ -x "$(command -v nvim)" ]; then
  alias nv='nvim'
fi

if [ -x "$(command -v exa)" ]; then
  alias ls="exa --long --icons --header"
  alias la="exa --long --icons --all --group"
fi



