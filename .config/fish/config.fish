if status is-interactive
    # Commands to run in interactive sessions can go here
end
function deltfjson
    fd -I -g "*.tf.json" . -x rm -v {}
end
function fish_greeting
    echo Welcome back, commander!
end
if test -f ~/.config/fish/secrets.fish
    source ~/.config/fish/secrets.fish
end
if type -q gpgconf
    set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
    gpgconf --launch gpg-agent
end
alias k="kubectl"
alias tf='terraform'
fish_add_path /opt/homebrew/bin
fish_add_path /Users/usteiger/.nix-profile/bin
fish_add_path /nix/var/nix/profiles/default/bin
set -gx EDITOR hx
set -x KUBECONFIG /Users/usteiger/.kube/config:/Users/usteiger/.kube/eksconfig
set -x GPG_TTY (tty)
