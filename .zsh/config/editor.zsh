export VISUAL=vim
export EDITOR=$VISUAL

alias code=codium

alias zrc="vim ~/salt/user-zsh/.zsh/ && salt-packets highstate -p user-zsh && source ~/.zshrc"
