while true
do
    ps -ef | grep "xmrig" | grep -v "grep"
    if [ "$?" -eq 1 ]
        then
        ./xmrig
        echo "process has been restarted!"
    else
        echo "process already started!"
    fi
    sleep 10
done