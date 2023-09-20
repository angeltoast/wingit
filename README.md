# Wingit

I'm a solo programmer (a hobbyist, really) but I share my work, so I try to do things 'right', to the best of my ability. I have several projects on Github, some unfinished (because I suffered a bit of a breakdown), but some that I'm rather proud of.

Anyway, I use Git in a small way, just to keep track of changes and to upload to Github when I'm ready. Not enough to make it worth running GitKraken or any of the other GUI clients (I'm sure they are great for teams and busy environments), but I thought it would be nice to have a really simple script that works for me.

**Wingit** is just that, a simple Bash script that automates the repetitious part of commiting to Github.

<u>Application</u>

Drop a copy of wingit.sh into any directories that contain Git-managed projects. If you want to use the 'wingit-reminders' file to store, well, reminders (like, maybe, your Github PAT?) then write whatever it is in it, and pop it into the .git directory, so it doesn't get committed with your other stuff.

Then run ./wingit.sh instead of git status

**Wingit** is kept as basic as possible - you're a programmer, you know what to do.

The program described herein is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details. A copy of the GNU General Public License is available from:
The Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

Wingit is free software; you can redistribute it and/or modify it under the terms of the
GNU General Public License as published by the Free Software Foundation; either version 2 of
the License, or (at your option) any later version.

Elizabeth Mills 20230920
