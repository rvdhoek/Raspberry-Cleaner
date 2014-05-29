Raspberry Cleaner
=================

-Raspberry SD card cleaner.

-Updates Raspberry Pi

## Installation
- Clone cleanup.sh into the folder where you keep your housekeeping scripts.
- Make executable. ```chmod +x cleanup.sh```
- Update crontab to run each it each night.

___Example___

Update /etc/crontab to run backup.sh as root every night at 3am

```01 3    * * *   root    /home/pi/scripts/cleanup.sh```

