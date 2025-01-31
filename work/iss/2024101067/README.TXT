Q1.sh (first question)
    1) I asumed that the number which is given input is made of digits, ans the size of the number is less than 4
    2) if there all the digits are same it prints The number consists of identical digits and cannot reach Kaprekar's constant.
    3) it prints the count of iteration in the end

Q2.sh (second question)
    1) asumed that the acc number is didn't start with zero
    2) taken the two prime is between 10 and 99
    
Q3.sh (third question)
    1) s for stop, g for go
    2) if players got (s,s) or (g,g) then not nash equilibrium
    3) if players got (s,g) or (g,s) then nash equilibrium
    4) if player got g while other got s , the player with g wins
        both s then no wins
        both g then accident

LLM
1)  syntax of grep and sort, tr combining to give the sorting function
        Combining grep and sort

When filtering and sorting data together, use grep to filter lines and pipe (|) the result to sort for sorting.
Syntax:

grep [options] 'pattern' [file] | sort [options]

Examples of Combined Usage

    Filter lines containing "error" and sort alphabetically:

grep "error" file.txt | sort

Search for "error" and sort numerically by the second field:

grep "error" file.txt | sort -k2 -n

Exclude lines containing "warning", then sort in reverse order:

grep -v "warning" file.txt | sort -r

Search for "pattern" in all files and sort by a specific field (e.g., 3rd field):

grep "pattern" *.txt | sort -k3

Filter lines containing "status: 404", then sort by the timestamp (assuming it's the second column):

grep "status: 404" logs.txt | sort -k2
    to sort in reverse order use sort -r
    and tr -d to delete the character
2)  usage of shuf in finding the random number, and give syntax
        shuf -i START-END [OPTIONS]
        The shuf command in Linux/Unix is used to generate random permutations of lines from a file or input. It can also be used to generate random numbers within a specified range.
Syntax of shuf

shuf [OPTIONS] [FILE]

Or, to generate random numbers:

shuf -i START-END [OPTIONS]

Options for shuf

    -i START-END: Specify a range of integers (inclusive).
    -n COUNT: Output a specific number of lines or numbers.
    -r: Allow repeated values (sampling with replacement).
    -o FILE: Write the output to a specified file.
    how to take two digits
        first_two=${str:0:2}
    and asked some syntax to know how to work
3)  and to select 1 from the random two obejects
        $(shuf -e ITEM1 ITEM2 -n 1)
        Syntax

$(shuf -e ITEM1 ITEM2 -n 1)

Explanation of the Components:

    shuf:
        The command for generating random selections.
    -e:
        Specifies the items directly (e.g., s, g).
    -n 1:
        Limits the output to a single random selection.
    $(...):
        Executes the shuf command inside the parentheses and substitutes its output.

Example with s and g

$(shuf -e s g -n 1)

    This will randomly return either s or g.