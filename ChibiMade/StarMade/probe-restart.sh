##!/bin/bash
echo "Fast Shutdown Signal Sent"
sleep 2
cd /home/ubuntu/starmade/StarMade
sleep 2
tmux send-keys -t MF1 "/server_message_broadcast error RECOVERY" ENTER
sleep 2
tmux send-keys -t MF1 "/shutdown 10" ENTER
sleep 20
lsof -ti tcp:4242 | xargs kill
sleep 2
tmux send-keys -t MF1 "./StarMade-dedicated-server-linux.sh" ENTER
echo "Fast Recovery Complete Maybe"
