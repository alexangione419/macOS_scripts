# macOS Scripts
A collection of scripts I've written for my mac and how to use them yourself, currently one entry strong

### Mouse Automation
This is a script that triggers one of two scripts when I connect or disconnect my mouse, using a LaunchAgent.
For whatver reason, I prefer the "Natural scrolling" setting turned on when a mouse is plugged in, but turned off when I use the trackpad. 
Instead of the easy solution, which would be to change my muscle memory for one of the two, I decided to automate the process of switching the setting instead.

To use this yourself,
1. The file "com.alex.mousewatcher.plist" contains hardcoded paths (and my name).
    - change the name of the file to reflect your name, or whatever you'd like
    - change the Label key to match the new file name (minus .plist)
    - change the Program Arguments key so that the given path refers to your $HOME/bin/mouse-watcher.sh
2. In the "install.sh" file
    - change LAUNCH_AGENT to reflect the Label you gave the lauch agent earlier
3. Run the install.sh file
    - If it isn't working, check the error logs at /tmp/mousewatcher.err

Note: The mouse-watcher.sh script assumes you have a USB Logitech mouse. You'll need to change that script if you don't

