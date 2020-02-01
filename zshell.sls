$USER:
  user.present:
    - shell: $SHELL

# Apps
direnv: pkg.installed
autojump: pkg.installed

htop: pkg.installed
tmux: pkg.installed
jq: pkg.installed


$HOME/.zshrc:
  file.managed:
    - makedirs: true
    - source: salt://$PROJECT/.zshrc
    - user: $UID
    - group: $UID

$HOME/.zsh:
  file.recurse:
    - source: salt://$PROJECT/.zsh
    - user: $UID
    - group: $UID