# function add()
# {
#     sum=$(( $1 + $2 ))
#     echo addition is:$sum
# }
# a=$1
# b=$2
# add $a $b

# function sub()
# {
#     sub=$(( $1 - $2 ))
#     echo sub is:$sub
# }
# a=$1
# b=$2
# sub $a $b


# function multi()
# {
#     multi=$(( $1 * $2 ))
#     echo multi is:$multi
# }
# a=$1
# b=$2
# multi $a $b

function div()
{
    div=$(( $1 / $2 ))
    echo div is:$div
}
a=$1
b=$2
div $1 $2
