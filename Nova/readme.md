# sudo chmod u+s `which novad`
## When installing with version .5 of ADHD there is a problem in the permissions on the nova daemon. This fixes it.
# Copy the contents of the 'Init' directory to /etc/init. 
## This will automatically start the nova daemon (as well as the Quasar web interface) on system boot. 
# Copy 20-nova.conf to /etc/rsyslog.d/ and change the destination name to your alienvault server. 

