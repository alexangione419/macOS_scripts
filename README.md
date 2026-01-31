# macOS Scripts
A collection of scripts I've written for my mac and how to use them yourself, currently one entry strong

### Mouse Automation
This is a script that runs a background watcher that detects when a mouse is connected or disconnected and triggers one of two scripts in response.

I prefer the "Natural scrolling" setting turned on when a mouse is plugged in, but turned off when I use the trackpad. 
Instead of the current solution of manually switching the setting, I decided to automate the process of switching the setting instead.

#### Setup
1. Configure the LaunchAgent
   
    The file "com.alex.mousewatcher.plist" contains hardcoded paths (and my name).
    - Rename the file to reflect your name, or whatever you'd like
    - Update the Label key to match the new file name (without .plist)
    - Update the Program Arguments key to refer to /Users/YOUR_USERNAME/bin/mouse-watcher.sh (absolute path is required by launchd)
3. Update the "install.sh" file
    - Update LAUNCH_AGENT to reflect the Label you gave the lauch agent earlier
4. Run the install.sh file
    - If it isn't working, check the error logs at /tmp/mousewatcher.err

Note: The mouse-watcher.sh script assumes you have a USB Logitech mouse. You'll need to change that script if you don't

