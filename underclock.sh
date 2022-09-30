tmin=70
tmed=80
tmax=87

while true; do

tact=$(sensors | grep -oP 'Core 0.*?\+\K[0-9]+')
echo "$tact"

	while [ $tact -lt $tmin -o $tact -eq $tmin ]; do
		echo 2133000 | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
		echo 2133000 | sudo tee /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
		sleep 1
		tact=$(sensors | grep -oP 'Core 0.*?\+\K[0-9]+')
	done
	while [ $tact -gt $tmin -a $tact -lt $tmed ]; do
		echo 1733000 | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
		echo 1733000 | sudo tee /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
		sleep 1
		tact=$(sensors | grep -oP 'Core 0.*?\+\K[0-9]+')
	done
	while [ $tact -gt $tmed -a $tact -lt $tmax ]; do
		echo 1300000 | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
		echo 1300000 | sudo tee /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
		sleep 1	0
		tact=$(sensors | grep -oP 'Core 0.*?\+\K[0-9]+')
	done
	while [ $tact -eq $tmax -o $tact -gt $tmax ]; do
		echo 800000 | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
		echo 800000 | sudo tee /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
		sleep 1	0
		tact=$(sensors | grep -oP 'Core 0.*?\+\K[0-9]+')
	done
done
