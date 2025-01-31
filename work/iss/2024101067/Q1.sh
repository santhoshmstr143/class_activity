#!/bin/bash

read -p "enter numbers: " number

orginalNum="$number"

if ! [[ $number =~ ^[0-9]+$ ]]; then
    echo "only numeric values are allowed"
    exit 1
elif [ ${#number} -gt 4 ]; then
    echo "enter a number with max 4 digits"
    exit 1
fi

lol=$(echo "$number" | grep -o .)
unique=$(echo "$lol" | uniq)

if [[ $(echo "$unique" | wc -l) -eq 1 ]]; then
    echo "The number consists of identical digits and cannot reach Kaprekar's constant."
    exit 1
fi

while [ ${#number} -lt 4 ]; do
    number="0$number"
done

it=0
while [ "$number" != "6174" ]; do
    temp=$(echo "$number" | grep -o .)
    ds=$(echo "$temp" | sort -r)
    as=$(echo "$temp" | sort)

    dec=$(echo "$ds" | tr -d "\n")
    asc=$(echo "$as" | tr -d "\n")

    number=$((10$dec - 10$asc))
    echo "$dec - $asc = $number"

    while [ ${#number} -lt 4 ]; do
        number="0$number"
    done

    it=$((it + 1))

    if [ "$number" == "6174" ]; then
        break
    fi
done

echo "the number $orginalNum reached the kaprekar conatant $number in $it iterations"
