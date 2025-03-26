#!/bin/bash

# sed 's/day/night/' old > new
# '' quotes to help deal with special characters
# s command swaps the first item ('day') in the sep ('/' above) brackets with the 2nd item ('night' above)
# executes line by line, standard 's' swap command replaces the first instance in each line
# /../../ is delimiter, can use _ underscore or : colon or | pipe character instead if your input uses a lot of that separator so you don't have to escape the delimiter token too often
# 's/[pattern]/$$ -> $/  $ refers to whatever was matched and can be placed multiple times as shown
# sed -r option allows extended regex arguments like + to avoid [pat][pat]* and just do [pat]+ instead
# \([pattern]\) with escaped parentheses \(\) get stored into up to 9 parameter variables accessed by \1 to \9 (parentheses don't need escape with -r option), these variables can be used in both sides of the swap (like to detect duplicated words)
# '/pat/p' the p option prints lines matching pat
# '/^pat$/' the caret ^ stands for start of line, and $ for the end of line
# 's/[^ ]*/smthing/g  the g option for swap will swap globally and '^' in brackets is not, so not space ' ' here
# 's/x/y/2g' the 2 specifies the 2nd occurrence of x, the g says everything 2nd or after (the number option can be 1-512)
# 's/x/y/w outfile' the w option tells it to write to an output file (exactly 1 space between w and outfile name, w must be the last option specified)
# '/x/I p' I option ignores case and the space between I and p tells it to do the p second
# piping one sed into another for multiple edits works but wastes resources
# sed -e 's///' -e 's///' infile > outfile does two expresions onto each line without starting extra processes
# sed '/pat/ p' with space between pattern and option for legibility
# sed -f cmds file > ofile where cmds is a text file containing all the commands that would typically be separated by multiple -e options
# for multiple commands in a shell script can break up using -e and \ for newline
# '/pat/ s/opat/swap/cmd' the /pat/ can be used to specify the lines to apply the swap to
#       '\_pat_ ...' the backslash \ changes the escape character for the first section to _
#       '\pat\ ...' pat can be a regex
#       '1,100 s/A/a' selects only lines 1-100 
#       '111,$ s/A/a' selects 111 to the end of the file
# sed '/start/,/stop/ s///' will do the swap on the range between /start/ regex pattern and /stop/ regex pattern (inclusive)
# other commands:
# d to delete lines (works with ranges)
# ! to invert the selection of a range
# q to quit editing after some condition is reached
# {} curly braces after selecting a range of addresses can be used to group multiple commands (s/d/p/etc.) on multiple lines
# r for read a file to the location in the infile
# a for append after the matching line
# i for insert before the matching line
# c for change the matched line to something else
#   a/i/c will insert any leading whitespace, use \ at the start of the line to tell it to ignore that leading whitespace
#   end each line to be added with \ to add additional lines
#   r/a/i cannot be used with ranges, only c can
# sed -n '/pat/ =' file the = command prints the line number (must use curly braces { = \n d } to print a range of line nums
# y command for transform 'y/abcdef/ABCDEF/' swaps lowercase with uppercase

# problem: for each line swap "the" with "this" and should be strictly case sensitive
sed 's/\bthe\b/this/'
#or 
# sed 's/\<the\>/this/'
