function fish_prompt
    # Just calculate this once, to save a few cycles when displaying the prompt
    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
    end

    if not set -q __git_cb
        set __git_cb " | "(set_color brown)(git branch ^/dev/null | grep \* | sed 's/* //')(set_color normal)""
    end

    echo -n -s (set_color --bold green) "$__fish_prompt_hostname" ":" (set_color --bold grey) (prompt_pwd) (set_color --bold cyan) " " (whoami) (set_color normal) "$__git_cb" ' $ '
end
