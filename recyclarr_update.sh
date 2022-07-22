 #!/bin/bash
# Author : Grasfer
# download latest release.
# 1. chmod a+x recyclarr
# 2. copy my_config.yml to /root/.config/recyclarr/recyclarr.yml
# Updating Sonarr
# Updating Radarr


### Change variables.
recyclarr_location="/mnt/user/king_backup/devices/recyclarr"
my_config_location="/mnt/user/king_backup/devices/recyclarr"
my_config_name"my_config.yml"
config_location="/root/.config/recyclarr"
config_name="recyclarr"

### End of variables.

### Downloads latest Recyclarr x64 Linux version.
#wget --quiet -O /tmp/recyclarr.zip "https://github.com/recyclarr/recyclarr/releases/latest/download/recyclarr-linux-x64.zip"
echo Downloading with WGET
wget -O /tmp/recyclarr.zip https://github.com/recyclarr/recyclarr/releases/latest/download/recyclarr-linux-x64.zip
echo Download complete.
echo Unzipping
unzip -o /tmp/recyclarr.zip -d $recyclarr_location
echo Unzip done.
echo Removing recyclarr.zip from /tmp/
rm /tmp/recyclarr.zip
echo Done removing recyclarr.zip.
echo Changing file permissions.
chmod a+x $recyclarr_location/recyclarr
echo Done with file permission.
echo Showing Recyclarr version.
$recyclarr_location/recyclarr --version

### Copying recyclarr config.
echo Copying config over.
cp -v /mnt/user/king_backup/devices/recyclarr/my_config.yml /root/.config/recyclarr/recyclarr.yml
echo Config copy done.


### Updating Sonarr.
echo Updating Sonarr.
$recyclarr_location/recyclarr sonarr
echo Done updating Sonarr.

### Updaring Radarr.
echo Updating Sonarr
$recyclarr_location/recyclarr radarr
echo Done updating Radarr.
