This module provides the customizations to be applied to Alienvault to take Nova as a data source. 

To use this module:

sudo ossim-db < nova.sql
sudo cp nova.cfg /etc/ossim/agent/plugins
sudo cp 40-nova.conf /etc/rsyslog.d
sudo /etc/init.d/rsyslog restart

sudo alienvault-reconfig


You'll also need to set up the new 'Nova' sensor definition. This can be done with 'sudo alienvault-setup' or via the GUI. 

