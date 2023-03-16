#!/bin/bash

# Install nepali font

if test -d /usr/share/fonts
then
  echo "Installing All 500 Nepali Font"
else
  echo -e "\e[31mSorry Fail\e[0m Becuase Font directory does not exist"
  echo "please create /usr/share/fonts"
  read -rp "Want to Create[y/n] ?"yn
  clear

  case "$yn" in
    y) sudo mkdir /usr/share/fonts && echo "Directory Craete!!"
    ;;
    n) exit
    ;;
    *) echo "Please type [y/n] only "
    ;;
  esac
fi
wait 5
clear

echo "Sudo password"
sudo cp -r $PWD/Nepali_font /usr/share/fonts/
clear
echo "Done complete"
