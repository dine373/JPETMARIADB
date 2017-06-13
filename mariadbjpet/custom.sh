#! /bin/bash
sleep 100
mysql < /tmp/jpet.sql
mysql jpetstore </tmp/upgrade.sql
sleep 10
service tomcat start
sleep 5
cp /tmp/Jpet/*.war /var/lib/tomcat/webapps/
cp /tmp/Jpet/images /var/lib/tomcat/webapps/JPetStore/
