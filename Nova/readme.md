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

Run Quasar for the first time to set up the basic config file

````
quasar
````

In order for the various daemons to start automatically you also need to edit the file _/home/adhd/.config/nova/config/NOVAConfig.txt_. 
Add the following lines to the end of the file. 

```
COMMAND_START_NOVAD sudo start novad
COMMAND_STOP_NOVAD sudo stop novad
COMMAND_START_HAYSTACK sudo start haystack
COMMAND_STO_PAYSTACK sudo stop haystack
```

Although *not* required this will allow you to use scripts within Nova. The default permissions don't allow this to occur. 

````
chgrp nogroup /home/adhd/.config/
```

