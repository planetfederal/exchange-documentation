Installation and Configuration
==============================
Installation and Configuration On a Fresh CentOS Instance

(Source: https://docs.google.com/document/d/1SOX8pldVskbnngXNLEfxFPlWkgC93lr8j3AE5mgmC_8/edit)
 
If you want to install geoshape on an existing machine, you will need one with CentOS or Redhat 6.* or 7.* already installed. SSH to the existing machine and then execute the following::
	
	sudo su -
	cd /etc/yum.repos.d/
	wget http://yum.boundlessps.com/geoshape.repo
	yum -y install geoshape geoshape-geoserver elasticsearch postgis-postgresql95 rabbitmq-server-3.6.1
	geoshape-config init <fully qualified domain name or ip>
 
You can now launch chrome and browse to what you entered for <fully qualified domain name or ip>. 
 
If the <fully qualified domain name or ip> changes, you can rerun geoshape-config init <fully qualified domain name or ip> to reset the configuration.  That same command also allows you to change the administrator password for GeoShape.