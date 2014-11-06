# Custom Theme for Zsh/Oh-My-Zsh

## Overview
 This is a repository to track changes to my custom zsh theme. It is based on the doubleend theme created by another enthusiast. It also borrows inspiration from a post about modding zsh posted on Tuts+.


## How it works
The prompt is actually **multi-line**. I use decided to use *three* lines - one for information about my enviroment, and one for issuing commands:

1. The first line
	- is a newline, added for readability. It really helps discern commands from one another, and any output.
2. The second line
	- tells Hostname (for networking purposes), in cyan.
	- gives the pwd (present working directory) in gold.
	- tells whether or not your pwd is a Git repo, what branch you are in if so, and tells you the statuswith color cues. Red is dirty, green is clean. A white "Not in Git" message is the default placeholder.
	- has a graphical battery indicator, courtesy of _x_'s batcharge.py
3. The third line
	- is where all the magic happens. Here is where one would enter commands to manipulate the file system.

## What's included?

## References
1. [Tuts+: How to Customize Your Command Prompt](http://code.tutsplus.com/tutorials/how-to-customize-your-command-prompt--net-24083) by Andrew Burgess
2. Andrew's doubleend.zsh-theme on [GitHub](https://github.com/andrew8088/oh-my-zsh/blob/master/themes/doubleend.zsh-theme)
3. Steve Losh's [blog post](http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/#my-right-prompt-battery-capacity) about editing his zsh prompt - specifically with source for batcharge.py.

### Disclaimer
The posting of my zsh-theme configuration is hosted here on GitHub *for sharing purposes **only***. 

It must be known that this release is provided as-is, without any guarantee of support, or liability in the event of damage to your computer. Please be aware that if you install this you are acknowledging that you have considered these consequences.

With that said, I am open to friendly questions and comments. I hope to inspire others to embrace the terminal and explore/tinker with their chosen login shell, be it zsh, ksh, bash, etc.

**\*The included batcharge.py only works on Mac OS X computers**