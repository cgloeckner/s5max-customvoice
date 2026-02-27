# s5max-customvoice

Setup custom audio directory on the robot:
```sh
[root@rockrobo ]# mkdir -p /mnt/data/audio_custom
[root@rockrobo ]# mount --bind /mnt/data/audio_custom /mnt/resources/audio_custom
```
NOTE: The mount is discarded on reboot (FIXME)

Place all `ogg`-files on the local machine's cwd and run `upload.sh`.
