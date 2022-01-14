#!/bin/bash
# doco alias script
# Author Matthieu Drouian <matthieudrouian@gmail.com>

case $SHELL in
  /usr/bin/zsh)
    shell="zsh"
    conf_file=~/.zshrc
    ;;

  /bin/zsh)
    shell="zsh"
    conf_file=~/.zshrc
    ;;

  /bin/bash)
    shell="bash"
    conf_file=~/.bashrc
    ;;

  *)
    shell="unsupported"
    ;;
esac

if [ $shell = "unsupported" ]
then
  echo "Unsupported shell. This script is compatible with bash and zsh."
  exit
fi

read -p "You are using $shell shell is it ok ? Y/n " yn
case $yn in
    [Nn]* )
      echo "Bye."
      exit
      ;;
    * )
      ;;
esac

read -p "Are you using docker-compose (1) or docker compose (2) ? 1 or 2 (default) " vcompose
case $vcompose in
  1)
    doco_alias=$(echo "alias doco=\"docker-compose\"")
    ;;
  *)
    doco_alias=$(echo "alias doco=\"docker compose\"")
    ;;
esac

echo $doco_alias >> $conf_file

echo "doco alias added in $conf_file"

