flowetch

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.local/bin

# completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

#aliases
source $HOME/dots/zsh/.zsh_aliases

#plugins
#pull from git repos. update with git pull.
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/zsh-you-should-use/you-should-use.plugin.zsh

#locale
export LANG=en_US.UTF-8

#Compilation flags
export ARCHFLAGS="-arch x86_64"
export MAKEFLAGS="-j8"

#fzf opts
export FZF_DEFAULT_OPTS='--height 40% --color=light --layout=reverse'

#wal
(cat ~/.cache/wal/sequences &)

#shell options
#tell zsh to expand commands, etc in prompt 
setopt PROMPT_SUBST

#funny lil prompt bc idk why the default one didn't appear when i installed
current_git_branch() {
  local BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [[ -n ${BRANCH} ]] ; then
    echo " ${BRANCH}"
  fi
}

PS1='%B%n@%m%b [%0~$(current_git_branch)]
✿ '

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh
