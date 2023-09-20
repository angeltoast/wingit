#!/bin/bash

#############################################################
#                 Wingit - Simple Git script                #
#  Developed by Elizabeth Mills - Version 0.00 2023/09/20   #
# Place a copy of wingit.sh into each Git-managed directory #
#  And a copy of wingit-reminders into the .git directory   #
#############################################################

function Main {
   local response pushremote pushmain name
   local currentpath=$(pwd)
   reminder="$currentpath/.git/wingit-reminders"

   clear
   echo "========================================================"
   echo
   echo "Current Git Status For This Project"
   echo "-----------------------------------"          

   # Display git status and initialise variables
   git status
   name=$(cat .git/config | grep url | cut -d'/' -f4 )
   pushremote=$(cat .git/config | grep "remote =" | cut -d'=' -f2 | xargs)
   pushmain=$(cat .git/config | grep merge | cut -d'/' -f3 )
   echo "========================================================"
   echo
   # add
   read -p "Stage all new files for commit? y/n (default = y) :" response
   if [ ! $response ]; then response="y"; fi
   if [ $response = "y" ]; then
      git add .
   else
      read -p "Ok, exit then? y/n :" response
      if [ $response = "y" ]; then exit;fi
   fi
   echo "========================================================"
   echo
   # Commit
   read -p "Commit? y/n (default = y) :" response
   if [ ! $response ]; then response="y"; fi
   if [ $response = "y" ]; then
      git commit -a
   else
      read -p "Ok, exit then? y/n :" response
      if [ $response = "y" ]; then exit;fi
   fi   
   echo "========================================================"
   echo
   # push
   read -p "Push? y/n (default = y) :" response
  if [ ! $response ]; then response="y"; fi
   if [ $response = "y" ]; then
      echo "You may need this ..."
      echo "$name"
      if [ -f "$reminder" ]; then cat "$reminder";fi
      git push $pushremote $pushmain
   else
      read -p "Ok, exit then? y/n :" response
      if [ $response = "y" ]; then exit;fi
   fi
   
} # End Main

function Debug {   # Insert at any point ...
   # Debug "$BASH_SOURCE" "$FUNCNAME" "$LINENO" " any variables "
   echo
   read -p "In file: $1, function:$2, at line:$3 > $4"
   return 0
} # End Debug

Main
