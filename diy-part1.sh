#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings  #设置密码为空

sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
#sed -i '$a src-git helloworld https://github.com/OpenWrt-Actions/helloworld' feeds.conf.default
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#git clone https://github.com/maxlicheng/luci-app-ssr-plus.git
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
git clone https://github.com/vernesong/OpenClash package/luci-app-openclash
#git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
#git clone https://github.com/garypang13/luci-app-bypass package/luci-app-bypass
#git clone https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb
#git clone https://github.com/garypang13/smartdns-le package/smartdns-le
git clone https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr

git clone -b 18.06 https://github.com/garypang13/luci-theme-edge package/luci-theme-edge  #主题-edge-动态登陆界面
git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash  #openclash出国软件
git clone https://github.com/frainzy1477/luci-app-clash package/luci-app-clash  #clash出国软件
#git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan  #微信推送
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns  #smartdns DNS加速

#passwall出国软件
#svn co https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-passwall package/luci-app-passwall
#svn co https://github.com/Lienol/openwrt-package/trunk/package/brook package/brook
#svn co https://github.com/Lienol/openwrt-package/trunk/package/chinadns-ng package/chinadns-ng
#svn co https://github.com/Lienol/openwrt-package/trunk/package/tcping package/tcping
#svn co https://github.com/Lienol/openwrt-package/trunk/package/trojan-go package/trojan-go
#svn co https://github.com/Lienol/openwrt-package/trunk/package/trojan-plus package/trojan-plus
#svn co https://github.com/Lienol/openwrt-package/trunk/package/syncthing package/syncthing

