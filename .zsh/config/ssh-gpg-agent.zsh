export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket &>/dev/null)
gpgconf --launch gpg-agent &>/dev/null
