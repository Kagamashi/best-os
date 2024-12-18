
ssh         # log into remote text environment
w/who       # shows who is logged in/what they are doing
man         # displays manual or help page for a command
apropos     # searches manual pages for commands related to a keyword
whatis      # provides brief description of a command (one-line)
which       # shows full path of executable for a command
type        # tells how command will be interpreted by the shell (as alias, function, execuable..)
echo   
date        # display or set the system date and time
history     # show command history
alias       # create a shortcut to another command
clear       # clear the terminal screen
hostname    # shows name of the host
hostnamectl # change statis hostname of our Linux system


ssh -X                # remote graphical environment
ssh -V
ssh -v alex@localhost # show more status messages and help debug why connection is failing (v for verbose)

man [command]
man ls

apropos [keyword]
apropos copy        # this lists commands whose descriptions match the keyword "copy"

whatis [command]
whatis ls
whereis python | tr " " '\n' # nice format

which [command]
which python        # displays path to python executable currently in use

echo "Hello, World!"                   # print "Hello, World!" to the terminal
echo "Current date and time: $(date)"  # print current date and time

date                                   # show the current date and time
date "+%Y-%m-%d %H:%M:%S"              # display date in a custom format
date -s "2024-01-01 12:00:00"          # set the system date and time (requires sudo)
data +%Z                               # show current timezone

history                                # show the command history list
history | grep <search_term>           # search the command history for a specific term
history -c                             # clear the command history

alias ll='ls -la'                      # create an alias for 'ls -la'
alias rm='rm -i'                       # create an alias for 'rm' to prompt before deleting

clear                                  # clear the terminal screen
