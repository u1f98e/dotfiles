function container_prompt
    if test -n "$TOOLBOX_NAME"
        set_color --bold purple
        echo -e "[🛠 $TOOLBOX_NAME] "
    end
end
set _self_container_prompt $(container_prompt)

function fish_prompt --description Hydro
    echo -e "$_hydro_color_start$hydro_symbol_start$_self_container_prompt$hydro_color_normal$_hydro_color_pwd$_hydro_pwd$hydro_color_normal $_hydro_color_git$$_hydro_git$hydro_color_normal$_hydro_color_duration$_hydro_cmd_duration$hydro_color_normal$_hydro_status$hydro_color_normal "
end
