#!/bin/bash

nthread=24
echo yada
nice -20 ./yada/yada -a15 -i yada/inputs/ttimeu1000000.2 -1 $nthread -t$nthread > yada.txt
echo genome
nice -20 ./genome/genome -g16384 -s64 -n16777216 -1 $nthread -t$nthread > genome.txt
echo vacation
nice -20 ./vacation/vacation -n4 -q60 -u90 -r1048576 -t4194304 -1 $nthread -c$nthread > vacation.txt
echo labyrinth
nice -20./labyrinth/labyrinth -i labyrinth/inputs/random-x512-y512-z7-n512.txt -1 $nthread -t$nthread > labyrinth.txt

