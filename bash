echo hello bash

create executable file

touch questionnaire.sh 'create file'

"run file with shell"
sh <filename>


"run file with 'bash' bourne_again shell"
bash <filename>

"find out where bash is located"
which bash 

"Add shebang to your file"
first line #!/bin/bash

"Run script with default bash"
./<filename>
" if you do not have permission you can no t run it"
list permissions ls-l

structure of permission 

r for read
w for write
x for execute 

-rw-r--r-- => This means it can not be executed

"To give permission to execute"
chmod +x <filename>

"you can put terminal commands in the file that later are going to be executed when you run your program"

"create variable inside the file"
VARIABLE_NAME=VALUE (Value must be between double quotes if it has spaces)

"print variable, from the FILE  using $ before the name"
echo $VARIABLE_NAME

"READ A VARIABLE ENTER BY USER"
read VARIABLE_NAME

"PRINT THE VARIABLE READ"

echo hello $NAME

echo --help (get help with the instrution) or man instruction

"get a new line when printing"

echo -e "\n~~ Questionnaire ~~\n"

"Stop the program"
^C

"Print a new line before the test"
echo -e "\nHello $NAME from $LOCATION. I learned that your favorite coding website is $WEBSITE!"

Finale CODE QUESTIONNAIRE

---------------------------------------------------------------------------------------------------------
#!/bin/bash
QUESTION1="What's your name?"
QUESTION2="Where are you from?"
QUESTION3="What's your favorite coding website?"
echo -e "\n~~ Questionnaire ~~\n"
echo $QUESTION1
read NAME
echo $QUESTION2
read LOCATION
echo $QUESTION3
read WEBSITE




echo -e "\nHello $NAME from $LOCATION. I learned that your favorite coding website is $WEBSITE!"

------------------------------------------------------------------------------------------------------------------


Countdown

"Comments"
#<comment>

"Print all arguments passed to a file"
echo $*

"Add arguments to my script"
./<filename> arg1 arg2 arg3

"Access arguments in the script"

echo $<number of arg>


"if statement "
if [[ $1 == arg1 ]]
 then echo true
  fi

"if else statement"
if [[ $1 == arg1 ]]
 then 
 echo true
 else 
 echo false
  fi
  
  
  Boolean operators
  
  -eq equal
  -ne not equal
  -lt less than
  -le less than or equal
  -gt greater than
  -ge greater than or equal
  
  example 
  if [[ $1 -lt 5 ]]
 then 
 echo true
 else 
 echo false
  fi
  
 "To evaluate execute the program and change the arg1 for the value you want to evaluate" 
 
 ./countdown.sh 4
 
  ( EXPRESSION )    Returns the value of EXPRESSION
      ! EXPRESSION              True if EXPRESSION is false; else false
      EXPR1 && EXPR2    True if both EXPR1 and EXPR2 are true; else false
      EXPR1 || EXPR2    True if either EXPR1 or EXPR2 is true; else false
      
       When the `==' and `!=' operators are used, the string to the right of
    the operator is used as a pattern and pattern matching is performed.
    When the `=~' operator is used, the string to the right of the operator
    is matched as a regular expression.
    
    The && and || operators do not evaluate EXPR2 if EXPR1 is sufficient to
    determine the expression's value.
    
    
    File operators:
    
      -a FILE        True if file exists.
      -b FILE        True if file is block special.
      -c FILE        True if file is character special.
      -d FILE        True if file is a directory.
      -e FILE        True if file exists.
      -f FILE        True if file exists and is a regular file.
      -g FILE        True if file is set-group-id.
      -h FILE        True if file is a symbolic link.
      -L FILE        True if file is a symbolic link.
      -k FILE        True if file has its `sticky' bit set.
      -p FILE        True if file is a named pipe.
      -r FILE        True if file is readable by you.
      -s FILE        True if file exists and is not empty.
      -S FILE        True if file is a socket.
      -t FD          True if FD is opened on a terminal.
      -u FILE        True if the file is set-user-id.
      -w FILE        True if the file is writable by you.
      -x FILE        True if the file is executable by you.
      -O FILE        True if the file is effectively owned by you.
      -G FILE        True if the file is effectively owned by your group.
      -N FILE        True if the file has been modified since it was last read.
    
      FILE1 -nt FILE2  True if file1 is newer than file2 (according to
                       modification date).
    
      FILE1 -ot FILE2  True if file1 is older than file2.
    
      FILE1 -ef FILE2  True if file1 is a hard link to file2.
    
    All file operators except -h and -L are acting on the target of a symbolic
    link, not on the symlink itself, if FILE is a symbolic link.
    
    
    String operators:
    
      -z STRING      True if string is empty.
    
      -n STRING
         STRING      True if string is not empty.
    
      STRING1 = STRING2
                     True if the strings are equal.
      STRING1 != STRING2
                     True if the strings are not equal.
      STRING1 < STRING2
                     True if STRING1 sorts before STRING2 lexicographically.
      STRING1 > STRING2
                     True if STRING1 sorts after STRING2 lexicographically.
    
    Other operators:
    
      -o OPTION      True if the shell option OPTION is enabled.
      -v VAR         True if the shell variable VAR is set.
      -R VAR         True if the shell variable VAR is set and is a name
                     reference.
      ! EXPR         True if expr is false.
      EXPR1 -a EXPR2 True if both expr1 AND expr2 are true.
      EXPR1 -o EXPR2 True if either expr1 OR expr2 is true.
    
      arg1 OP arg2   Arithmetic tests.  OP is one of -eq, -ne,
                     -lt, -le, -gt, or -ge.
                     
         
         
         --verify exit status of last command  ' echo $?'
         
         --separate commands and put threm in the same line  "[[ 4 -ge 5 ]]; echo $?"
         
         "Enter bad command to know the exit status of an error"
         "Anything that is not zero is an error"
         
         bad_command; echo $?
bash: bad_command: command not found
127

ls; echo $?
countdown.sh  learn-bash-scripting-by-building-five-programs  questionnaire.sh
0


ls -y; echo $?
ls: invalid option -- 'y'
Try 'ls --help' for more information.
2

File operators 
[[ -a countdown.sh ]]; echo $?    "-a exits"
0

[[ -x countdown.sh ]]; echo $?   "-x is executable by the user"
0


Using the AND operator &&

[[ -x countdown.sh && 5 -le 4 ]]; echo $?
1

using the OR  operator ||
[[ -x countdown.sh || 5 -le 4 ]]; echo $?
0


LOOPS

FOR LOOP FOR COUNTDOWN
$1 variable to start countdown
for (( i = $1; i > 0; i-- ))
do
  echo $i
done

         
  "Help only bring build in commands to see others use ls /   "

ls /bin shows other commands in the folder bin.

"Command sleep delays execution of code"

sleep 3 => delay 3 seconds execution
for (( i = $1; i > 0; i-- ))
do
  echo $i
  sleep 1
done

Countdown to zero

for (( i = $1; i >= 0; i-- ))
do
  echo $i
  sleep 1
done

COMMENT MULTIPLE LINES

: '
for (( i = $1; i >= 0; i-- ))
do
  echo $i
  sleep 1
done
'


WHILE LOOP

I=$1

while [[ $I -ge 0 ]]
do
echo $I
done

WHILE LOOP FOR COUNTDOWN

I=$1

while [[ $I -ge 0 ]]
do
echo $I
((I--))
sleep 1
done

FINAL CODE COUNTDOWN BASH FILE
----------------------------------------------------------------------------------------------------
#!/bin/bash
#Program that counts down to zero from a given argument
echo -e "\n~~ Countdown Timer ~~\n"
if [[ $1 -gt 0 ]]
 then 
I=$1

while [[ $I -ge 0 ]]
do
echo $I
((I--))
sleep 1
done

: '
for (( i = $1; i >= 0; i-- ))
do
  echo $i
  sleep 1
done
'
 else 
 echo Include a positive integer as the first argument.
  fi
----------------------------------------------------------------------------------------------------------------------------

  Environment variables
  "See them"
  printenv
  
  print LANG VARIABLE
  echo $LANG
  
  VIEW ALL VARIABLES IN THE SHELL
  
  declare -p
  
  RANDOM NUMBER USE VARIABLE 
  $RANDOM
  

  
 
 
 OPERATOR DOUBLE PARENTHESIS
  
  ((I++))
  
((I+=10))

echo $((I+4))

J=$(( I - 6))

echo $(( J*5+25))



SEE SHELL VARIABLES

declare -p <variable name>

PRINT RANDOM BETWEEN A RANGE IN THE  TERMINAL
echo $((RANDOM % 75)) VALUE BETWEEN 0 AND 74

echo $((RANDOM % 75+1)) TOGET A VALUE BETWEEN 1 AND 75

PRINT RANDOM BETWEEN A RANGE IN THE BASH FILE

echo -e "\n~~ Bingo Number Generator ~~\n"

NUMBER=$((RANDOM % 75 + 1))
echo $NUMBER



TEXT VARIABLE
TEXT="The next number is, "


                  conditional operator
        =, *=, /=, %=,
        +=, -=, <<=, >>=,
        &=, ^=, |=      assignment


COMPARE WITH PARENTHESIS
if ((NUMBER <= 15 ))
then 
echo $TEXT B:$NUMBER
fi


ELIF CONDITIONAL

if ((NUMBER <= 15 ))
then 
echo $TEXT B:$NUMBER
elif [[ $NUMBER -le 30 ]]
then 
echo $TEXT I:$NUMBER
fi

MULTIPLE ELIF EX.


if ((NUMBER <= 15 ))
then 
echo $TEXT B:$NUMBER
elif [[ $NUMBER -le 30 ]]
then 
echo $TEXT I:$NUMBER
elif ((NUMBER < 46))
then 
echo $TEXT N:$NUMBER
elif [[ $NUMBER -lt 61 ]]
then 
echo $TEXT G:$NUMBER
else
echo $TEXT O:$NUMBER
fi

BINGO NUMBERS GENERATOR
-------------------------------------------------------------------------------------------------------
#!/bin/bash
# Bingo Number Generator
echo -e "\n~~ Bingo Number Generator ~~\n"
TEXT="The next number is, "
NUMBER=$((RANDOM % 75 + 1))


if ((NUMBER <= 15 ))
then 
echo $TEXT B:$NUMBER
elif [[ $NUMBER -le 30 ]]
then 
echo $TEXT I:$NUMBER
elif ((NUMBER < 46))
then 
echo $TEXT N:$NUMBER
elif [[ $NUMBER -lt 61 ]]
then 
echo $TEXT G:$NUMBER
else
echo $TEXT O:$NUMBER

fi
---------------------------------------------------------------------------------------------------------------------------

FORTUNE TELLER

CREATE AN ARRAY

ARR=("a" "b" "c")

print and specific position

echo ${ARR[1]}

PRINT ALL ARR echo $* or echo $@

echo ${ARR[*]}
echo ${ARR[@]}

PRINT VARIABLE POSITION INSIDE ARRAY

echo ${RESPONSES[$N]}

FUNCTIONS

GET_FORTUNE() {
echo  Ask a yes or no question:
}

CALL THE FUNCTION BY PUTING THE NAME AFTER THE FUNCTION

GET_FORTUNE() {
echo  Ask a yes or no question:
}

GET_FORTUNE

--loop to verify it is a question

--verify value string

GET_FORTUNE() {
echo  Ask a yes or no question:
read QUESTION

}

until [[  $QUESTION == "test?" ]]
do
  GET_FORTUNE
done

 
 compare patterns between strings
 
 [[ "hello world"  =~ "lo wor" ]]; echo $?

--verify string start wih letter 'h'

[[ "hello world"  =~ ^h ]]; echo $?

--verify start and ending

[[ "hello world"  =~ ^h.+d$ ]]; echo $?

--compare variable in terminal

[[ $VAR == "hello world" ]]; echo $?

--Verify ending in the bash file

until [[  $QUESTION =~ \?$ ]]
do
  GET_FORTUNE
done

FINAL CODE FORTUNE
--------------------------------------------------------------------------------------------------------------------------

#!/bin/bash

# Program to tell a persons fortune

echo -e "\n~~ Fortune Teller ~~\n"

RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM % 6 ))

function GET_FORTUNE() {
  if [[ ! $1 ]]
  then
    echo Ask a yes or no question:
  else
    echo Try again. Make sure it ends with a question mark:
  fi

  read QUESTION
}

GET_FORTUNE

until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE again
done

echo -e "\n${RESPONSES[$N]}"

--------------------------------------------------------------------------------------------------------------------------

FIVE 

--run other programs

--verify type of command

type echo

type if












