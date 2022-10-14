#!/bin/bash
if [ -z $1 ] || [ -z $2 ]
then
	echo "Invalid input"
	exit 0
fi


n=$1
m=$2


if [ $n -le 0 ] || [ $m -le 0 ]
then
        while [ $n -le 0 ] || [ $m -le 0 ]
                do
                echo "Input must be greater than 0"    
                read n m
                done
fi

i=1

while [ $i -le $n ]
do
        x=1
                while [ $x -le $m ]
                do
                res=`expr $x \* $i`
                printf "$i*$x=$res\t"
                x=`expr $x + 1`
                done
        echo ""
        i=`expr $i + 1`

done

exit 0
