#<<<<<<<<<<<_______boolean operator________>>>>>>>>>>

# a=10
# b=20
# if [ $a != $b ]
# then
# echo "$a != $b: a is not equal to b"
# else
# echo "$a != $b: a is equal to b"
# fi

# a=10
# b=20
# if [ $a != $b ]
# then
# echo "$a != $b: a is not equal to b"
# else
# echo "$a != $b: a is equal to b"
# fi


#  ________and (-a operator)
# a=10
# b=20
# if [ $a -lt 5 -a $b -gt 15 ]
# then
# echo "$a != $b: true"
# else
# echo "$a != $b: false"
# fi

#  ________or (-o operator)

a=10
b=20
if [ $a -lt 5 -o $b -gt 15 ]
then
echo "$a != $b: true"
else
echo "$a != $b: false"
fi





