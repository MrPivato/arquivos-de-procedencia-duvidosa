#!/bin/bash

for n in *.mp3
do if [[ "$n" =~ -[-_0-9a-zA-Z]{11}.mp3$ ]]
   then echo "youtube ${n: -15: 11}" >> downloaded.txt
   fi
done

echo "Playlist Link:"
read url

youtube-dl --download-archive downloaded.txt --no-post-overwrites -ciwx --audio-format mp3 -o "%(title)s.%(ext)s" $url

rm downloaded.txt
rm *.webm
