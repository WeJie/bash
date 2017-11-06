#! /bin/bash

greeting () {
	if [[ -n $1 ]]; then
		echo "Hello, $1"
	else
		echo "Hello, unknown!"
	fi
	return 0
}

#greeting World
#greeting

get_even () {
	local start=$1
	local stop=$2
	local space=' '
	while (( $start < $stop )); do
		if [[ $(( $start % 2 )) == 0 ]]; then
			echo "$space$start"
			space+=' ' 
		fi
		start=$(( $start + 1 ))
	done

	return 0
}

main () {
	echo "$FUNCNAME"
	get_even $@

	return 0
}

main $@


