The following procedure will get Nova working and forwarding to your Alienvault server. 

````
sudo chmod u+s /usr/bin/novad
* When installing with version .5 of ADHD there is a problem in the permissions on the nova daemon. This fixes it.
sudo cp Init/* /etc/init. 
* This will automatically start the nova daemon (as well as the Quasar web interface) on system boot. 
nano 20-nova.conf
* change the destination to your Alienvault server. 
sudo cp 20-nova.conf  /etc/rsyslog.d/ 
````