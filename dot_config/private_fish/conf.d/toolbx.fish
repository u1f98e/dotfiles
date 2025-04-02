if test -f "/run/.toolboxenv"
    set TOOLBOX_NAME $(cat /run/.containerenv | grep -E '^name="' | cut -d \" -f 2)
end
