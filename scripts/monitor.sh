#!/bin/bash

LOG_DIR=../logs
LOG_FILE=$LOG_DIR/system.log

mkdir -p $LOG_DIR

echo "==== $(date) ====" >> $LOG_FILE
echo "CPU:" >> $LOG_FILE
top -bn1 | grep "Cpu(s)" >> $LOG_FILE

echo "MEMORY: " >> $LOG_FILE
free -h >> $LOG_FILE

echo "" >> $LOG_FILE















