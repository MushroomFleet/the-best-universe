##!/bin/bash

echo "starting server"
sleep 2
cd /home/ubuntu/starmade/StarMade
sleep 2
tmux send-keys -t MF1 "./StarMade-dedicated-server-linux.sh" ENTER


