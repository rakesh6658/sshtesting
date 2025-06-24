#!/bin/bash

threshold=1

disk_usage=$(df -hT | grep -vE 'tmpfs|Filesystem|Root')

echo "$disk_usage"