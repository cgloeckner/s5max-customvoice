# s5max-customvoice

Setup custom audio directory on the robot:

```[root@rockrobo ]#```
```sh
mkdir -p /mnt/data/audio_custom/sounds
mount --bind /mnt/data/audio_custom /mnt/resources/audio_custom
```
NOTE: The mount is discarded on reboot (FIXME)

Place all `ogg`-files on the local machine's cwd and run `upload.sh`.
