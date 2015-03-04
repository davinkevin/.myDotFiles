function psa
	ps aux | grep -v 'grep' | grep --color $argv
end

