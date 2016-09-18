function npm2
	docker run --rm -it -w /opt -v (pwd):/opt node:4 npm -q $argv
end

