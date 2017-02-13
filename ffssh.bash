if [ "$1" != '' ]; then
  if [ "$2" == 'v' ]; then
    echo ssh root@`grep $1 $ffhome/$site/ipv6.lst`
  fi
  ssh root@`grep $1 $ffhome/$site/ipv6.lst`
  export nodeid=$1
elif [ "$nodeid" != '' ]; then
  if [ "$2" == 'v' ]; then
    echo ssh root@`grep $nodeid $ffhome/$site/ipv6.lst`
  fi
  ssh root@`grep $nodeid $ffhome/$site/ipv6.lst`
else
  echo "Neither nodeid nor \$1 were set to a value"
fi

