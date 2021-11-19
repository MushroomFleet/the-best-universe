#!/bin/bash
cd "$(dirname "$0")"
nice -n -20 java -d64 -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSIncrementalPacing -XX:ParallelGCThreads=2 -XX:+AggressiveOpts -Xms4G -Xmx16G -Xincgc -server -jar StarMade.jar -server
