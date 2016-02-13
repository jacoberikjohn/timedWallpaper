timedWallpaper is a simple script that automatically changes your wallpaper depending on the time of day.  The idea is that the wallpaper sets the mood of the user and subconsciously aligns your body clock even inside a building.
Author: Erik John Jacob.
Copyright (C) 2016  Erik John Jacob

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

---------------------------------------------------------------
## SETUP ##

Step 1. Place my directory(timedWallpaper) anywhere in your PC and make sure timedWallpaper.sh is executable.

Step 2. Edit crontab to add our script
$ crontab -e

Step 3. Insert this line.  This will change the wallpapers every 1 minute, change as necessary.
*/1 * * * * DISPLAY=:0 /path/to/the/script/timedWallpaper/timedWallpaper.sh

Step 4. Reboot




















