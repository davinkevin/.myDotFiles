function fish_prompt
    # Just calculate this once, to save a few cycles when displaying the prompt
    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
    end

    echo -n (set_color --bold green)"$__fish_prompt_hostname"":"(set_color --bold white)(prompt_pwd) (set_color --bold cyan)(whoami)(set_color normal)' $ '
end
