#!/bin/sh
# chkconfig: 123456 90 10
# TTS Server for Speech Synthesis
# https://wolfpaulus.com/journal/software/pythonlauncher/
#
workdir='/pypelyne/PyPELyNE'


# Wait for Network to be available.
# https://smartcoding.wordpress.com/2010/11/14/linux-shell-scripting-wait-for-network-to-be-available/
while true
do
    ping -c 1 8.8.8.8
    if [[ $? == 0 ]];
    then
        echo 'Network available.'
        break;
    else
        echo 'Network is not available, waiting..'
        sleep 5
    fi
done
echo 'If you see this message, then Network was successfully loaded.'


 
start() {
    cd $workdir
    /usr/bin/python ${workdir}/pypelyne-server.py >> /pypelyne/log/pypelyne-server.log 2>&1 &
    echo "Server started."
}
 
stop() {
    pid=`ps -ef | grep '[p]ython ${workdir}/pypelyne-server.py' | awk '{ print $2 }'`
    echo $pid
    kill $pid
    sleep 2
    echo "Server killed."
}
 
case "$1" in
  start)
    start
    ;;
  stop)
    stop   
    ;;
  restart)
    stop
    start
    ;;
  *)
    echo "Usage: /etc/init.d/pypelyne-server {start|stop|restart}"
    exit 1
esac
exit 0