#!/bin/bash

if [ $? -ne 0 ]; then
        exit 1;
fi

while [[ $# -gt 0 ]]
do

find="$1"

case $find in
	--file)
		file="$2"
		shift 2
		;;
	--search)
		search="$2"
		shift 2
		;;
	*)
		echo "Unknown parameter: $1"
		exit 1
		;;
esac
done

if [ ! -f "$file" ]; then
	echo "File not found: $file"
	exit 1
fi

count=$(grep -c "$search" "$file")
if [ $count -eq 0 ]; then
	echo "Не найдено ни одного совпадения в файле $file"
else
	echo "Найдено $count совпадений в файле $file"
fi



