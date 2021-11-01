##!/bin/bash
cd /home/ubuntu/starmade/StarMade
tmux send-keys -t MF1 "/server_message_broadcast info coldstart" ENTER
if [ $? -eq 0 ] 
then 
  echo "Server TMUX exists!!" 
else 
  echo "Server TMUX not Found, Creating" >&2 
  tmux new -s MF1
fi
