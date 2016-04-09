#!/bin/bash

cd ~/Downloads

wc -l Hominidae.csv
cut -f 17-18 Hominidae.csv > step1.txt
gtail -n +2 step1.txt > step2.txt
gsort -R step2.txt | uniq > step3.txt
head -n 5000 step3.txt > step4.txt
awk '{ print $2 "\t" $1}' step4.txt > step5.txt
./finish.R
