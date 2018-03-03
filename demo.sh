if [ -d $1 ]
then
    echo 'error: dir exists'
    exit 1
elif [ -d $(cd `dirname $0`; cd templet; pwd) ]
then
    cp -r $(cd `dirname $0`; cd templet; pwd) ./$1
    echo 'success'
    exit 0
else
    echo 'error: template does not exist'
    exit 2
fi