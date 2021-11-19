##!/bin/bash
echo "henlo StarMade"
pgrep -f StarMade

if [ $? -eq 0 ] 
then 
  echo "Henlo Success - Server is up!" 
  cd /home/ubuntu/starmade/StarMade
  tmux send-keys -t MF1 "/server_message_broadcast info Discord.io/mushroomfleet" ENTER
else
  echo "Henlo Failed - restart triggered!" 
  sh /home/ubuntu/starmade/StarMade/probe-restart.sh 
  echo "Recovery complete" >&2 

fi
