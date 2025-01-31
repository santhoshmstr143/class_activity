#!/bin/bash

generatenumber(){
    # gnerated a random 11 digit number , without starting with zero
    acc_num=$(shuf -i 10000000000-99999999999 -n 1)
    echo "$acc_num"
}

no_4zeros() {
    while true; do
        number=$(shuf -i 10000000000-99999999999 -n 1)
        # generated a function to check if the number has no 4 consecticutive zeros
        if [[ ! $number =~ 0000 ]]; then
            echo "$number"
            return
        fi
    done
}

find_two_digit_primes(){
    acc_num="$1"
    prime=""
    # find 2 digits and check it is prime or not
    for ((i=0; i<${#acc_num}-1; i++)); do
        local two_digit="${acc_num:i:2}"
        
        two_digit=$(echo "$two_digit" | sed 's/^0*//')
        if (( two_digit < 10 || two_digit > 99 )); then
            continue
        fi

        local is_prime="true"
        for ((j=2; j<two_digit; j++)); do
            if (( two_digit % j == 0 )); then
                is_prime="false" 
                break
            fi
        done
        
        if [[ "$is_prime" == "true" ]]; then
            prime+="$two_digit "
        fi
    done
    
    if [ -z "$prime" ]; then
        echo "no prime numbers found."
    else
        echo "two-digit prime numbers: $prime"
    fi

}

find_5digit_div_by_7(){
    acc_num="$1"
    div_num=""
    for ((i=0; i<${#acc_num}-4; i++)); do
        local five_digit="${acc_num:i:5}"
        
        five_digit=$(echo "$five_digit" | sed 's/^0*//')
        
        if (( five_digit % 7 == 0 )); then
            div_num+="$five_digit "
        fi
    done
    # finded 5 digit number that is divisible by 7
    if [ -z "$div_num" ]; then
        echo "no five-digit numbers divisible by 7."
    else
        echo "five-digit numbers divisible by 7: $div_num"
    fi
}

echo "generating random 11-digit bank account number:"
acc_num=$(generatenumber)
echo "$acc_num"
echo 

echo "generating 11-digit number without four zeros:"
number=$(no_4zeros)
echo "Generated number: $number"
echo 

echo "finding two-digit prime numbers in $acc_num:"
find_two_digit_primes "$acc_num"
echo 

echo "finding five-digit numbers divisible by 7 in $acc_num:"
find_5digit_div_by_7 "$acc_num"
