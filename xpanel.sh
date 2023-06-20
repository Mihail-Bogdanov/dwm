while true; do

	
	TIME=$(echo " : `echo $(date +"%a %d %B at %R")`")
	BATTERYLINE=$(echo : "`cat /sys/class/power_supply/BAT0/capacity`%")		
	KERNEL=$(echo " : `echo $(uname -r)`")
	UPDATES=$(echo " : `echo $(checkupdates | wc -l)`")
	UPTIME=$(echo "`echo $(uptime -p)`  ")
	WIFILINE=$(echo " : `echo $(systemctl is-active --quiet NetworkManager && echo Connected)`")

	xsetroot -name "  $TIME  |  $KERNEL  |  $UPDATES  |  $WIFILINE  |  $UPTIME "

	sleep 1	

done 

