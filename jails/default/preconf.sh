#!/bin/sh
## Used by jailconf, this script is run on the host system before the
## jail has been created and started. It's run before {jailtype}/conf.
## The default/preconf file is run for all new jails, and before any
## type-specific {jailtype}/preconf script is run.
## Available environmental vars: JAIL_NAME, JAIL_IP, JAIL_TYPE, JAIL_USER, JAIL_CONF_DIR

# set jail to host time
cp /etc/localtime "/usr/jails/$JAIL_NAME/etc/"

# copy to the base jail so we can overwrite with our jail-specific config
cp -R /usr/share/skel/*  /usr/jails/basejail/usr/share/skel/

# default to using host networking
cp /etc/hosts "/usr/jails/$JAIL_NAME/etc/"
cp /etc/resolv.conf "/usr/jails/$JAIL_NAME/etc/"
