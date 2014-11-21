#!/bin/bash
clear

if [ $# = 0 ]
then
	echo "choose [t]cp or [u]dp"
	read protocol
else
	protocol=$1
fi

if [ "$protocol" = "tcp" -o "$protocol" = "t" ]; then
	echo "you chose tcp"
	protocol=tcp
elif [ "$protocol" = "udp" -o "$protocol" = "u" ]; then
	echo "you chose udp"
	protocol=udp
else
	echo "invalid protocol"
fi


VARBL=0


FILES="/root/scripts/conf_files/$protocol/*"

echo "Choose server"
for f in $FILES
do
	VARBL=`expr 1 + $VARBL`
	filename="${f##*/}"
	echo "$VARBL. $filename"
done

read selection

echo "You chose $selection"
thechosenfile=none
VARBL=0
for f in $FILES
do
	

	VARBL=`expr 1 + $VARBL`
	if [ "$selection" == "$VARBL" ]
	then
		thechosenfile=$f
	fi
	#filename="${f##*/}"
	#echo "$VARBL. $filename"
done

echo "$thechosenfile"

cp "$thechosenfile" /tmp
mv /tmp/"${thechosenfile##*/}" /etc/openvpn/client.conf
echo "auth-user-pass usernamepass.txt" >> /etc/openvpn/client.conf

/etc/init.d/openvpn restart


for (( i = 0; i <= 15; i++ ))
do
	echo ". "
	sleep 1
done

