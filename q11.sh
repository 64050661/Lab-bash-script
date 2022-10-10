# 64050661 วฤษณิ์ ทับทิม
for file in $(find . -type f -name "*.c")
do
    prog_name=`echo $file | cut -d'/' -f2 | cut -d'.' -f1`
    gcc -o $prog_name $file
    if [ ! -f $prog_name ] 
    then
        ans=5
    elif [ $(./$prog_name) = 20 ]
    then
        ans=10
    else
        ans=7
    fi
    echo $prog_name $ans
done