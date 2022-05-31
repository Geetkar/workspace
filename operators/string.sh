#string operater

# = operator is check is string len is equal or not.....

# a="sudhir ijardar"
# b="sudhir"
# if [ $a = $b ]
# then
# echo "$a != $b: string are same"
# else
# echo "$a != $b: string are not same"
# fi

# !=

# a="sudhir ijardar"
# b="sudhir"
# if [ $a == $b ]
# then
# echo "$a != $b: string are equal"
# else
# echo "$a != $b: string are not equal"
# fi

# (-z) it will check string len is zero or not.

# a="sudhir"
# if [ -z $a ]
# then 
# echo "$a : len is zero "
# else
# echo "$a : len is not zero"
# fi

#<<<<<<<<<<<<<<< argument pass in bash script_____>>>>>>>>>>>

#echo $1 $2 $3 '> echo $1 $2 $3'

#echo $0 $1 $2 $3 '> echo $1 $2 $3'

# a={"$@"}
# echo ${a[0]} ${a[1]} ${a[3]} ${a[4]}

# a={"$@"}
# echo ${a[0]} ${a[1]} ${a[2]} ${a[3]} ${a[4]}
# echo $@
# echo $#

# add 2 number on command line.......




# a=20
# b=10
# sum=$(( $a + $b ))
# echo sum is=$sum

# a=$1
# b=$2
# if [[ $3 == add ]]
# then
# add=$(( a + b ))
# echo add is=$add
# fi


# a=$1
# b=$2
# if [[ "$3" == "add" ]]
# then
# add=$(( a + b ))
# echo "addition is :$add"
# fi











