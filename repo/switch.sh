# echo enter number 1:
# read a
# echo enter number 2:
# read b
# echo "enter 1 for sum"
# echo "enter 2 for sub"
# echo "enter 3 for multi"
# echo "enter 4 for div"
# read choice
# case $choice in
# 1)
# sum= expr $a + $b 
# echo $sum
# ;;
# 2)
# sub= expr $a - $b
# echo $sub
# ;;
# 3)
# multi= expr $a \* $b
# echo $multi
# ;;
# 4)
# div= expr $a / $b
# echo $div
# ;;
# esac

echo "enter a number"
read n
case $n in
1) echo "Sunday" ;;
2) echo "Monday" ;;
3) echo "Tuesday" ;;
4) echo "Wednesday" ;;
5) echo "Thursday" ;;
6) echo "Friday" ;;
7) echo "Saturday" ;;
*) echo "enter value between 1 to 7" ;;
esac