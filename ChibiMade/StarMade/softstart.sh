##!/bin/bash

echo "Shutdown Signal Sent"
sleep 2
cd /home/ubuntu/starmade/StarMade
sleep 2
tmux send-keys -t MF1 "/server_message_broadcast info RESTART" ENTER
tmux send-keys -t MF1 "/shutdown 300" ENTER
sleep 60
tmux send-keys -t MF1 "/server_message_broadcast warning 4mins" ENTER
sleep 60
tmux send-keys -t MF1 "/server_message_broadcast warning 3mins" ENTER
sleep 60
tmux send-keys -t MF1 "/server_message_broadcast warning 2mins" ENTER
sleep 60
tmux send-keys -t MF1 "/server_message_broadcast warning 60secs" ENTER
sleep 30
tmux send-keys -t MF1 "/server_message_broadcast warning 30secs" ENTER



