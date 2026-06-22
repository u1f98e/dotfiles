if status is-interactive
    if type -q motd
        # set fish_greeting "$(motd)" # Commands to run in interactive sessions can go here
        function fish_greeting
            motd
        end
    end

    if type -q zoxide
        zoxide init fish | source
    end

    if type -q fzf
        fzf --fish | source
    end
end

function fish_user_key_bindings
    fish_vi_key_bindings

    # Ctrl-Backspace
    bind --user -M insert ctrl-backspace backward-kill-word

    bind --user ctrl-n down-or-search
    bind --user -M normal ctrl-n down-or-search
    bind --user -M insert ctrl-n down-or-search
    bind --user ctrl-p up-or-search
    bind --user -M normal ctrl-p up-or-search
    bind --user -M insert ctrl-p up-or-search

    # bind --user ctrl-l forward-word
    # bind --user -M normal ctrl-l forward-word
    # bind --user -M insert ctrl-l forward-word
    bind --user ctrl-f accept-autosuggestion
    bind --user -M insert ctrl-f accept-autosuggestion
    bind --user ctrl-h backward-word
    bind --user -M insert ctrl-h backward-word
end

function fish_mode_prompt
    switch $fish_bind_mode
        case default
            set_color ffffff --bold -b brblue
            echo " N "
            set_color normal
            echo " "
        case insert
        case replace_one
            set_color --bold -b green
            echo " R "
            set_color normal
            echo " "
        case visual
            set_color --bold -b brmagenta
            echo " V "
            set_color normal
            echo " "
        case '*'
            set_color --bold red
            echo ' ? '
            set_color normal
            echo " "
    end
end

# Env
set -x EDITOR hx
set -x COLORTERM truecolor

# Bullshit
set -x DOTNET_CLI_TELEMETRY_OPTOUT true

# Aliases
alias gits="git status"

fish_add_path -a $HOME/.local/bin

# SSH Agent server
set -x SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME
set -gx PATH $HOME/.cabal/bin $PATH /home/u1f98e/.ghcup/bin # ghcup-env
