#!/bin/sh

# enable shared memory for postgres jail
sh -e "$APP_ROOT/src/confkey.sh" -f "$EZJAIL_CONF" \
	 -k "export jail_${JAIL_NAME}_parameters" -v '"allow.sysvipc=1"'
