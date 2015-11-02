#!/system/bin/sh
PATH=/system/bin
TAG="scritch007"

product_model=`getprop ro.product.model`
fsg_id=`getprop ro.boot.fsg-id`

if [ "XT1526" = $product_model ]; then
	log -t$TAG "Applying LTE fix for $fsg_id"
	if [ "" = $fsg_id ]; then
		#Force to boost for compatibility issues
		fsg_id=boost
	fi
	cp /system/etc/cdma/$fsg_id/eri.xml /data/eri.xml
	chmod 644 /data/eri.xml
	cp /system/etc/cdma/$fsg_id/apns-conf.xml /system/etc/apns-conf.xml
	chmod 644 /system/etc/apns-conf.xml
fi

