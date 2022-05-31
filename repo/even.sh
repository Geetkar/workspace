# echo enter any number
# read number
# if [ `expr $number % 2` == 0 ]
# then
# echo its even no
# else
# echo its odd no
# fi

echo enter number
read number
if [ $(( number % 2 )) == 0 ]
then
echo even
else
echo odd
fi