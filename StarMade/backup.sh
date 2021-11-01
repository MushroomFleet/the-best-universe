##!/bin/bash
echo "Backup Started"
tmux send-keys -t MF1 "/server_message_broadcast warning AUTOSAVE_DELAYED" ENTER
tmux send-keys -t MF1 "/delay 120" ENTER
tmux send-keys -t MF1 "/server_message_broadcast warning BEST_SAVE_NOW" ENTER
tmux send-keys -t MF1 "/force_save" ENTER
sleep 30
tmux send-keys -t MF1 "/server_message_broadcast warning BIG_BACKUP_BEGIN" ENTER
sudo rsync -av --progress --delete --log-file=/home/ubuntu/backups/$(date +%Y%m%d)rsync.log /home/ubuntu/starmade/StarMade /home/ubuntu/backups/SMBackup$(date +%Y%m%d_%T)
tmux send-keys -t MF1 "/server_message_broadcast warning BIG_BACKUP_DONE" ENTER
echo "Backup Complete Maybe"

