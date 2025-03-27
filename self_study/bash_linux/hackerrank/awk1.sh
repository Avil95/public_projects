#!/bin/bash
# usage:

# awk '/regex-pattern/ {command} 
#       /regex-pattern/ {command1 ; command2}' file

# empty regex matches every line and does the action on every line
# $n ~/regex/ for ~ meaning matches
# $n ><num> for > meaning greater than

# commands within {} curly braces (separated by ';' semicolon):
#
# ' ' no braces means default "print" action
# {} empty braces means do nothing
# print prints the full line
# $N is variable for field within a line (e.g. $1 is first field, $2 is second, ... , $0 is whole line, $NF is number of fields, $NR is number of records/rows, ',' to separate with space between, '.' to separate with no chars)

# BEGIN {actions} # executed before reading lines from input file
# {action} # executed on every line of the file
# END {actions} # exected after completing the processing of every line of the file
#  
# can be used to create header and footer
# can be used to initialize a variable (like count):
#   var=N;
#   var++;
#   var1=$x{+-*/}var2 # no spaces between operators and args or equals sign, variables don't need $ but positional args do

# {command} can contain if:
# { if ($X == smthing || $Y >= num && $Z != num)
#       do some action
#   else if ( $W%num != 0)
#       some other action
#   else    
#       something else

# ternary operator:
# var=cond?tval:fval
# no spaces needed between fields, ?=if, tval=value if cond is true, fval=value if cond is false, : is sep between t and f vals
# cond is normal conditional statement

# Awk built-in variables:
# 1. FS = field separator (default space ' ') for input field separator
# 2. OFS = output field separator (default space ' ') for output field separation printing
# 3. RS = record separator (default newline \n) for input record/row separator
# 4. ORS = output record separator (default newline \n) for output record separator while printing
# 5. NR = current line number in middle action block, number of records in file in END {} block
# 6. NF = number of fields in current record
# 7. FILENAME = self explanatory
# 8. FNR = field number relative to the specific current file (useful for multiple file inputs)

# problem for a file with [id letter][eng score][math score][sci score] print when lines are missing a score:
awk '{ if (NF!=4) print "Not all scores are available for", $1 }'
