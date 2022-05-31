a=$1
b=$2
if [[ "$3" == "add" ]]
then
add=$(( a + b ))
echo "addition is :$add"
fi

if [[ "$3" == "sub" ]]
then
sum=$(( a - b ))
echo "sub is :$sum"
fi

if [[ $3 == "multi" ]]
then
multi=$(( a * b ))
echo "multi is= $multi"
fi


if [[ $3 == div ]]
then
div=$(( a / b ))
echo "div is=$div"
fi










