#!/bin/bash

echo "Welcome to the Bash Scripting Practice!"

echo "Please enter your name: "

read username

current_date=$(date +"%Y-%m-%d %H:%M:%S")

echo "Hello $username! Welcome to the world of Bash scripting. The current date and time is: $current_date"