#!/bin/sh 
while(true); do
	for ff in $(find /work -type f -iname '*.scss' -newer ~/.lastrender); do
		f='/work/main.scss'
		fn=$(echo $f | sed 's/.scss/.css/g' | sed 's/\/work\//\/output\//g')
		
		echo Rendering file: $f to $fn
		dart /app/compile-sass.dart $f $fn

		touch ~/.lastrender
	done

	if [ ! -f ~/.lastrender ]; then
		touch ~/.lastrender
	fi

	date
	sleep 1
done
