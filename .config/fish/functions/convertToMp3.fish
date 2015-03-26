function convertToMp3 
	for flacFile in *.flac;
		set mp3File (echo $flacFile | sed -e "s@\([^\.]*\)\..*@\1.mp3@g");
  		ffmpeg -i "$flacFile" -qscale:a 0 "$mp3File"
	end
end