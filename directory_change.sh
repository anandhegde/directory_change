DIR_TO_CHECK='/home/anihegde/learn'




OLD_STAT_FILE='/home/anihegde/old_stat.txt'

while true    
do
	if [ -e $OLD_STAT_FILE ]
	then
	        OLD_STAT=`cat $OLD_STAT_FILE`
	else
	        OLD_STAT="nothing"
	fi

	NEW_STAT=`stat -t $DIR_TO_CHECK`

	if [ "$OLD_STAT" != "$NEW_STAT" ]
	then
		/bin/bash /home/anihegde/learn/shell/git_push.sh
	        echo 'Directory has changed. Do something! sholud'
	        # do whatever you want to do with the directory.
	        # update the OLD_STAT_FILE
	        echo $NEW_STAT > $OLD_STAT_FILE
	fi
	sleep 5
done