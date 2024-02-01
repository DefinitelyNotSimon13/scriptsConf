#! /usr/bin/bash

LOCKFILE=~/.installCache/dotfiles/INSTALLATION_RUNNING.lock

if test -f "$LOCKFILE"; then
  echo "$LOCKFILE exists!"
  echo
  echo "If you are sure, that no other installation is running, you can remove that file and try again."
  echo
  echo "Exiting..."
  exit
fi

echo "EXPERIMENTAL - VERY EXPERIMENTAL" 
read -p "Enter to continue"
printf "\n\n\n"
mkdir ~/.installCache
echo "~/.installCache dir created"
mkdir ~/.installCache/dotfiles
echo "~/.installCache/dotfiles dir created"
cd ~/.installCache/dotfiles
echo "changed dir do ~/.installCache/dotfiles"
touch INSTALLATION_RUNNING.lock
echo "INSTALLATION_RUNNING.lock created"


# rm INSTALLATION_RUNNING.lock
# rm -rf ~/.installCache/dotfiles
