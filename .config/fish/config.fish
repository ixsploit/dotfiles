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

function password
    set length 30
    set num_passwords 1

    if test (count $argv) -ge 1
        set length $argv[1]
    end

    if test (count $argv) -ge 2
        set num_passwords $argv[2]
    end

    for i in (seq $num_passwords)
        LC_ALL=C tr -dc 'A-Za-z0-9!@#$%^&*()_+{}|:<>?' </dev/urandom | head -c $length
        echo ""
    end
end
alias k="kubectl"
alias tf='terraform'
alias z='zoxide'
fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.nix-profile/bin
fish_add_path /nix/var/nix/profiles/default/bin
set -gx EDITOR hx
set -x GPG_TTY (tty)
