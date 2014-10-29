* GOALS:
1. Think about a new structure for emacs configurations. The idea of profiles and starting an instance with a specific goal in mind.




** 1. Emacs configuration structure

Ex:
I could have a simple bash script that could even be binded to a hotkey in X or tmux that runs

emacs -q -l /path/to/jmacs/profiles/<profile.el>

so for notetaking I could have a separate profile:

> cat notebook.sh
#!/usr/bin/env bash

emacs -q -l /home/jz/jmacs/profiles/notebook.el
