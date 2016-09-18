function npm2
	docker run --rm -it -w /tmp -v (pwd):/tmp node:4 npm $argv
end

