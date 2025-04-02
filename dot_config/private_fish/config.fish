if status is-interactive
    set fish_greeting "$(motd)" # Commands to run in interactive sessions can go here

    fish_vi_key_bindings

    if type -q zoxide
        zoxide init fish | source
    end
end

function fish_mode_prompt
    switch $fish_bind_mode
        case default
            set_color --bold white -b 55c7fc
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

set EDITOR hx

alias la eza

fish_add_path -a $HOME/.local/bin
fish_add_path -a $HOME/Software/codeql
