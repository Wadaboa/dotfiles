#!/usr/bin/env bash

# BitBar CPU and RAM loads

ncpu=$(sysctl -n hw.logicalcpu)
total=$(ps -Ao %cpu= | paste -sd+ - | bc)
cpu_usage=$(echo "scale = 2; $total / $ncpu" | bc)
mem_usage=$(ps -A -o %mem | awk '{ mem += $1 } END { print mem }')

printf "[ ﬙  %0.1f%%,   %0.1f%% ]\n" $cpu_usage $mem_usage
echo "---"
echo "Refresh | refresh=true"