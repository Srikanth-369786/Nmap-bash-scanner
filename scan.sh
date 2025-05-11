#!/bin/bash

echo "Welcome to Nmap Bash Scanner"
read -p "Enter the target IP or domain: " target

# Setup output filename and directory
filename="results/${target}_scan.txt"
mkdir -p results

echo "Scanning host: $target"
echo "Results will be saved in $filename"

# Ping Scan
echo "Running Ping Scan..." | tee -a "$filename"
nmap -sn "$target" | tee -a "$filename"

# Fast Port + Service + OS Scan
echo -e "\nRunning Scan (Top 1000 Ports)..." | tee -a "$filename"
nmap -T4 -A "$target" | tee -a "$filename"

echo -e "\nScan completed. Check the file: $filename"
