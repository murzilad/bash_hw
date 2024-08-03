#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "One argument must be passed"
	exit 1;
fi

number=$1

if [[ "$number" -le 0 ]]; then
	echo "Please enter number greater than 0"
	exit 1;
fi

if (( $number % 2 == 0 )); then
	middle=$(( number / 2 ))
	mult=1
	for (( i = 1; i <= middle; i++)); do
	mult=$(( mult * i ))
done
	sum=0
	for (( i = middle+1; i <= number; i++)); do
		sum=$(( sum + i ))
done

else
	middle=$(( (number + 1) / 2 ))

	mult=1
	for (( i = 1; i < middle; i++)); do
        mult=$(( mult * i ))
done
	sum=0
        for (( i = middle+1; i <= number; i++)); do
                sum=$(( sum + i ))
done

fi

echo "Product of numbers : $mult"
echo "Sum of numbers : $sum"
