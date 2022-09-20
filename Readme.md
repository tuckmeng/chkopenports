# Check Open Ports in a Host

These scripts check the open ports of the host. Put all  scripts in the same directory. Wrap this in another script to do automated open port checks on specific machines

Syntax: ./chkopenports.sh hostname

The scripts are meant to be run in a linux machine or if you only have windows, to be run under Windows Subsystem for Linux (https://learn.microsoft.com/en-us/windows/wsl/install). You can run it under Cygwin64 (https://www.cygwin.com/) or MSys2 (https://www.msys2.org/) if you're security conscious and want to minimise the binaries installed under Windows.

## Pre-requisites

Install nmap and gawk if it isn't there via the command sudo apt install nmap gawk

## Rules in checks

Currently only 2 rules, 1 to disallow http ports on port 80 and another to disallow ports above port number 1023

Sample output:

	./chkopenports.sh www.google.com
	Scanning www.google.com
	Analysing ports:
	PORT    STATE SERVICE
	80/tcp  open  http
	443/tcp open  https
	Error: Port 80 not allowed to be open
	2 ports open in www.google.com
