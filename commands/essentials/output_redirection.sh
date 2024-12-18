stdin  # standard input: receives input (usually from the keyboard or a file)
stdout # standard output: sends normal output (usually to the screen)
stderr # standard error: sends error messages (usually to the screen)

< file                              # redirect input from "file"

> file                              # create/overwrite a file
1> file                             # redirect standard output (stdout) to "file" (overwrite)

>> file                             # create/append to a file instead of overwriting
1>> file                            # redirect stdout and append to "file"

2> errors.txt                       # redirects stderr (error messages) to "errors.txt"
2>&1                                # redirect stderr to same place as stdout
|                                   # 'pipe' - use output of the previous command as input in the next one

# /dev/null is often used to get rid of unnecessary output
grep -r 'pattern' /etc/ 2>/dev/null  # display normal output, suppress errors
grep -r 'pattern' /etc/ > /dev/null  # display errors, suppress normal output
grep -r 'pattern' /etc/ &> /dev/null # suppress both normal and error messages


## REDIRECTING INPUT
# from file (using <)
sendemail someone@example.com < emailcontent.txt  # sends the content of "emailcontent.txt" as input.

# from heredoc - sort the input
sort <<EOF
apple
banana
cherry
EOF

# from heredoc - put input into a file
cat <<EOF > message.txt
This is a message
that spans multiple lines.
EOF

grep -r 'The' /etc/ > output.txt 2>&1                # redirects both stdout and stderr to "output.txt"
grep -r 'The' /etc/ 1> output.txt 2>&1               # equivalent to the above
grep -r 'pattern' /etc/ 1> results.txt 2> errors.txt # separate normal output and errors into different files

# tee command is used to split output so that it can be both displayed on the screen and saved to a file
ls | tee file_list.txt                 # writes the output of "ls" to the screen and "file_list.txt"
ls | tee -a file_list.txt              # appends to "file_list.txt" instead of overwriting

# Example: Filter specific lines and redirect to a file
grep -r 'The' /etc/ | sort | uniq > sorted_unique.txt
