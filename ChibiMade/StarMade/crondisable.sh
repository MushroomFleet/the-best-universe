##!/bin/bash
crontab -l > cron_backup.txt
crontab -r
