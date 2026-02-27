#!/bin/bash
PRIVATE_KEY=~/.ssh/s25max.id_rsa
ROBOT_IP=192.168.0.123

# converting ogg files
for fname in *.ogg; do
    ffmpeg -i $fname -ac 1 -ar 16000 -c:a libvorbis -b:a 48k sounds/$fname
done

# upload oggs
scp -i "$PRIVATE_KEY" sounds/*.ogg root@$ROBOT_IP:/mnt/data/audio_custom/sounds/
