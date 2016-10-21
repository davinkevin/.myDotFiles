function changejvm
	 set new_jvm (/usr/libexec/java_home -v $argv)
	 set -gx PATH $new_jvm/bin $PATH[2..(count $PATH)]
end
