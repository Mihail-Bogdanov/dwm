while true; do

	
	TIME=$(echo " : `echo $(date +"%a %d %B at %R")`")
	BATTERYLINE=$(echo : "`cat /sys/class/power_supply/BAT0/capacity`%")		
	KERNEL=$(echo " : `echo $(uname -r)`")
	UPDATES=$(echo " : `echo $(checkupdates | wc -l)`")
	UPTIME=$(echo "`echo $(uptime -p)`  ")
	WIFILINE=$(echo " : `echo $(iw dev wlan0 info | grep ssid | awk '{print $2}')`")

	xsetroot -name "  $BATTERYLINE  |  $TIME  |  $KERNEL  |  $UPDATES  |  $WIFILINE  |  $UPTIME "

	sleep 1	

done 

