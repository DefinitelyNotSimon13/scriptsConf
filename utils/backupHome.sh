#! /bin/bash

printf "\e[33mStarting backup of home directory to backblaze\e[0m\n"

FODLER_NAME="Backup_$(date +%d-%m-%Y_%H-%M-%S)"

printf "\e[33mCreating folder: $FODLER_NAME\e[0m\n"
mkdir /home/simon/.remoteBackup/$FODLER_NAME

printf "\e[33mCopying files to folder: $FODLER_NAME\e[0m\n"
cp -r /home/simon/1_Coding /home/simon/.remoteBackup/"$FODLER_NAME"
cp -r /home/simon/2_Uni/ /home/simon/.remoteBackup/"$FODLER_NAME"
cp -r /home/simon/3_Other/ /home/simon/.remoteBackup/"$FODLER_NAME"
cp -r /home/simon/4_Notes/ /home/simon/.remoteBackup/"$FODLER_NAME"

cp -r /home/simon/dotfiles/ /home/simon/.remoteBackup/"$FODLER_NAME"
cp -r /home/simon/Downloads /home/simon/.remoteBackup/"$FODLER_NAME"
cp -r /home/simon/Documents/ /home/simon/.remoteBackup/"$FODLER_NAME"
cp -r /home/simon/backupHome.sh /home/simon/.remoteBackup/"$FODLER_NAME"

printf "\e[33mSyncing to backblaze\e[0m\n"
rclone sync /home/simon/.remoteBackup backblaze:ArchHomeBackup\
  --track-renames --progress --verbose --use-json-log \

printf "\e[33mZipping folder: $FODLER_NAME\e[0m\n"
zip -r /home/simon/.remoteBackupZip/"$FODLER_NAME".zip \
  /home/simon/.remoteBackup/"$FODLER_NAME"

printf "\e[33mSyncing zip to backblaze\e[0m\n"
rclone sync /home/simon/.remoteBackupZip backblaze:ArchHomeBackupZip\
  --track-renames --progress --verbose --use-json-log \

SUBDIRS="$(find /home/simon/.config/ -maxdepth 1 -type d -print| wc -l)"

if [ "$SUBDIRS" -gt 5 ]; then
  printf "\e[31mThere are more than 5 subdirectories in .config\e[0m\n"
  printf "\ePlease delete the oldest backups!\e[0m\n"
fi

printf "\e[33mBackup complete\e[0m\n"
