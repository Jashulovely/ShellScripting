<<comment

echo hello
echo hello world


echo hello
echo hi



echo enter a single digit number
read num
i=0
while [ $i -lt $num ]
do
	echo $i
	i=$(expr $i + 1)
done
echo enter a single digit number
read n
j=0
until [ $j -gt $n ]
do
	echo $j
	j=$(expr $j + 1)
done



for ele in 10 20 30 40 50
do
	echo $ele
done


for ele in $(seq 1 1 5)
do
	echo $ele
done

for ele in {1..5}
do
	echo $ele
done

for ele in {1..10..2}
do
	echo $ele
done


a=(10 20 30 40 50)
for ele in ${a[@]}
do
	echo $ele
done


for((ele=0;ele<=5;ele++))
do
	echo $ele
done




echo enter a number
read num

if [ $num -gt 0 ]
then
	echo Positive Number
elif [ $num -lt 0 ]
then
	echo Negative Number
else
	echo It is a zero

fi




echo "enter value for a":
read a
echo "enter value for b":
read b
echo Enter 1 - Addition , 2 - substraction
read choice
case $choice in
1)
	echo Addition of $a and $b is $(expr $a + $b) ;;
2)
	echo Substraction of $a and $b is $(expr $a - $b) ;;
*)
	echo please enter a valid choice

esac



touch $1.txt $2.txt

echo "file creates"

echo "total no. of arguments passed are: $#"

echo "Value of each agrument: $*"


mv $1 $2
echo "file updated"


str1="jashu"
str2="kumar"
str3=$str1+$str2
str3+="is my name"
str4=$str1$str2
str4+=" is my name"
echo $str1 $str2
echo $str3
echo $str4




str1=jashu
str2=lovely
str3=$str1$str2
str3+=" is my name"
echo $str3
echo "$str3"
echo ${str3}
echo "${str3}"
echo "${#str3}"
echo "${str3^^}"
ustr=$(echo "$str3" | tr [a-z} [A-Z])
echo $ustr
lstr="${ustr,,}"
echo $lstr

newstr="${lstr/my/your}"
echo $newstr
echo "$lstr" | sed 's/your/my/'

x="shell scripting"
subx="${x:0:5}"
echo $subx
subx1="${x:0}"
echo $subx1



echo enter first number
read fnum
echo enter second number
read snum
sum=$(($fnum + $snum))
diff=$(expr $fnum - $snum)
echo $sum is the sum of given numbers
echo $diff is the difference of given numbers


function display()
{

	echo "this is the display function"


}

display


function show()
{

	echo "this is the show function"
	echo "no. of arguments are: $#"
	#echo "first parameter: $1"
	#echo "second parameter: $2"
	#echo "third parameter: $3"
	for ele in ${a[@]}
	do
		echo $ele
	done

}

a=(100 200 300 400)
#show 10 20 30 40
show a



function call()
{

	a=$1
	a=$(($a + 1))
	return $a


}

call 10
echo "updated value of a is: $?"


function new()
{
	a=$1
	b=$2
	a=$(($a + 1))
	b=$(($b + 1))

	a[5]=60

}

a=(10 20 30 40 50)

new a
echo value of a is ${a[@]}

a=10
b=20
echo before updation a=$a and b=$b

new $a $b

echo after updation a=$a and b=$b


echo enter the directory name
read dir
if test -a $dir
then
echo "Yes, file exists"
else
echo "File not exists"
fi


comment



echo "do something...."
sleep 3s &

echo $!



echo "again do something...."
sleep 3s &

echo $!

wait %1 %2
echo "hey, i am done....."
echo $!



























