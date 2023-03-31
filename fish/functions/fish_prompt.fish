function fish_prompt
    if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end

    echo -n "du är " 

    set_color yellow
    printf '%s' $USER
    set_color normal

    echo -n " och clockan är" (date +%H:%M)  
    


    # Line 2
    echo
    if test -n "$VIRTUAL_ENV"
        printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)
    end
    set_color green
    printf '> '
    set_color normal
end
