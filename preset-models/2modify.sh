#!/bin/sh
#修改登录IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
#修改主机名
sed -i 's/OpenWrt/Newifi-D2/g' package/base-files/files/bin/config_generate
#添加仓库
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

