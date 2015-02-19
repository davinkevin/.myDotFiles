function fish_prompt
        #set_color --bold 97D455
        set_color --bold green
        echo -n (hostname -s)":";
        set_color --bold white
        echo -n (echo $PWD | sed -e "s|^$HOME|~|" -e 's|^/private||')
        #set_color --bold 92E7E8
        set_color --bold cyan
        echo -n " "
        echo -n (whoami)
        set_color normal
        echo -n ' $ '
  end