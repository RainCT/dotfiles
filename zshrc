# Path to your oh-my-zsh installation.
export ZSH=$HOME/.dotfiles/zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/ (eg. robbyrussell, amuse, avit, ys)
# https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="rainct"

ENABLE_CORRECTION="true"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  autopep8                    # completion for pep8 tool
  command-not-found           # suggest package containing binary (Ubuntu)
  common-aliases              # l[,a,r,t,l,S], ../.../...., G/H/T/M, h/j/p
  compleat                    # syntax for easily defining completion for commands
  git                         # gd='git diff', etc.
  encode64                    # adds {encode,decode}64 command
  gpg-agent                   # auto-start gpg-agent (and setup environ)
  git-extras                  # completion for git-extras
  jsontools                   # pp_json, is_json (validate), url{encode,decode}_json
  vim-interaction             # "v <file>" for adding to running GVIM (+ v{h,j,k,l})
  wd                          # warp directory (wd {add,rm} <dir>, wd <dir>)
  zsh-syntax-highlighting     # (custom) fish-like syntax highlighting
)

source $ZSH/oh-my-zsh.sh

export PAGER=most

# override some aliases from common-aliases plugin
unalias rm cp mv  # don't set interactive mode
alias l='ls -p'
alias cp='nocorrect mv'
alias mv='nocorrect mv'

# zsh-syntax-highlighting configuration
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern root)
ZSH_HIGHLIGHT_PATTERNS+=(';' 'fg=white,bold')
ZSH_HIGHLIGHT_PATTERNS+=('rm -r' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_PATTERNS+=('rm -[a-z]*r' 'fg=white,bold,bg=red')
