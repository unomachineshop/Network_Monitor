Source: https://samhobbs.co.uk/2013/11/fix-for-ethernet-connection-drop-on-raspberry-pi

1) Create a /bin folder within your user directory
	mkdir ~/bin

2) Git pull the network-monitor.sh file into the /bin directory just create

3) Add /bin to your $PATH variable
	vim ~/.bashrc

	Add this line to the end of the .bashrc file
	PATH=$PATH:~/bin

	Force this to take effect now. (As opposed to on reboot)
	source ~/.bashrc

4) Make the script executable
	chmod +x ~/bin/network-monitor.sh

5) Automating with CRON
	sudo vim /etc/crontab
	
	To run once every 5 minutes add this to end of file
	*/5 * * * * root bash /home/pi/bin/network-monitor.sh

