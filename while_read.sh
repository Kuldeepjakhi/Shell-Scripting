while read inpt
do
ping -c 3 $inpt
if [ $? = 0 ]
then
echo "The server $inpt is pinging"
else
echo "Unable to ping server $inpt"
fi
done < server.txt
