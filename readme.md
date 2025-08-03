# Reblock

Reblocks sites that are commented out in the hosts file. 
MacOS ONLY! 

Can use hosts file to block sites: 

0.0.0.0		example.com
::		example.com

But if you want to temporarily unblock it you can comment them out with adding two hashtags (##) before the line to comment it out. Unfortunately, you have to unblock it as well by removing those, manually.
Reblock helps you automate this reblocking process. 

### Installation

Download hostsreset.scpt and place it in /usr/local/etc/

Run ~~sudo crontab -e~~ and enter:

~~*/15 * * * * osascript /usr/local/etc/hostsreset.scpt > /dev/null~~

