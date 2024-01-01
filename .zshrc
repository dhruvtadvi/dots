# ~/.zshrc
eval "$(starship init zsh)"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt share_history

# general use aliases 
alias ls='exa --icons' # just replace ls by exa and allow all other exa arguments
alias l='ls -lbF' #   list, size, type
alias ll='ls -la' # long, all
alias llm='ll --sort=modified' # list, long, sort by modification date
alias la='ls -lbhHigUmuSa' # all list
alias lx='ls -lbhHigUmuSa@' # all list and extended
alias tree='exa --tree' # tree view
alias lS='exa -1' # one column by just names

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
