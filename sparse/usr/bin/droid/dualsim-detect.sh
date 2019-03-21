#!/bin/bash

if [ -f /.dualsim-detect-done ] ; then
	exit 0
fi

model=$(getprop ro.cm.curef)

if [ "X$model" = "X6045K" ] ; then
	cp /etc/ofono/ril_subscription-6045K.conf \
	/etc/ofono/ril_subscription.conf

	cp /usr/share/csd/settings.d/hw-settings-6045K.ini.template \
	/usr/share/csd/settings.d/hw-settings.ini

	echo $model > /.dualsim-detect-done
fi

