function guess {

local count=$(find . -maxdepth 1 -type f | wc -w) 
local condition=1
local answ=0

while [[ $condition -eq 1 ]]
do
	echo "how many files in this directory?"
	read answ
	if [[ $answ -eq $count ]]
		
		then condition=0
		echo "Congratulations! Your guess is correct!"
	elif [[ $answ -lt $count ]]
		then
		echo "Your guess is too low. Please try again."
	else
		echo "Your guess is too high. Please try again."
	fi
done


}

guess
