#!/system/bin/sh
export PATH=/system/bin:$PATH

if [ -d /data/data/com.youku.phone ]; then
	chmod 0000 /data/data/com.youku.phone/files/bundleBaseline
fi

if [ -d /data/data/com.taobao.taobao ]; then
	chmod 0000 /data/data/com.taobao.taobao/files/bundleBaseline
fi

if [ -d /data/data/com.jingdong.app.mall ]; then
	chmod -R 0000 /data/data/com.jingdong.app.mall/tinker	
	chmod -R 0000 /data/data/com.jingdong.app.mall/tinker_temp
fi

if [ -d /data/data/com.UCMobile ]; then
	chmod -R 0000 /data/app/com.UCMobile-*/oat/arm
fi


