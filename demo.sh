if [ -d $1 ]
then
    echo 'error: dir exists'
    exit 1
else
    cp -r $(cd `dirname $0`; cd template; pwd) ./$1
    echo 'success'
    exit 0
fi