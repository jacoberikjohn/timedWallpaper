#!/bin/bash

# Author: Erik John Jacob
# Date: February 14, 2016
#
# This script changes the desktop and screensaver wallpaper in Gnome 3.  
# The wallpaper is dependent on the time of day, just place your desired wallpapers in each folder.  The folder names represent the hour of day in a 24 hour setting.

# Use the detect-directory or statically set your script's directory (for performance conscious people like me)
#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR="/home/lost/Apps/erikTimedWallpaper"

function getTimedWallpaper(){
	myHour=`date +"%H"`

	# Uncomment the line below to test for any time of the day.
	# myHour=$RANDOM

	
	let "myHour %= 24"
	if [ $((myHour%2)) -gt 0 ];
	then
	    let "myHour = myHour -1"
	fi

	files=($DIR/wallpapers/$myHour/*)
	myImage=$(printf "%s\n" "${files[RANDOM % ${#files[@]}]}")

	echo $myImage
}

desktopWallpaper=$(getTimedWallpaper)
loginWallpaper=$(getTimedWallpaper)

gsettings set org.gnome.desktop.background picture-uri file://$desktopWallpaper
gsettings set org.gnome.desktop.screensaver picture-uri file://$loginWallpaper

# Uncomment to see/log the wallpaper applied
#echo "["$(date)"]" >> $DIR/log.txt
#echo "Desktop:" $desktopWallpaper >> $DIR/log.txt
#echo "LogIn  :" $loginWallpaper >> $DIR/log.txt
#

# BONUS - To change the login wallpaper
#
# Edit /usr/share/gnome-shell/theme/gnome-shell.css
# and search for "lockDialogGroup" and replace it with the following, don't forget to change the YOURWALLPAPER.png to your wallpaper image.
# What I did was copy my wallpaper to the same directory("/usr/share/gnome-shell/theme/")
#	#lockDialogGroup {
#	    background: #000000 url(YOURWALLPAPER.png);
#	    background-repeat: no-repeat;
#	}
# Then restart your PC to have the changes take effect.

