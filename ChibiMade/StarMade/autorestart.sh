#!/bin/bash
echo soft shutdown
sleep 10;
sh /home/ubuntu/starmade/StarMade/softstart.sh
sleep 90;
echo killing zombies
sh /home/ubuntu/starmade/StarMade/kill.sh
sleep 10;
sh /home/ubuntu/starmade/StarMade/start.sh
echo SUCCESS MAYBE





