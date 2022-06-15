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
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' > feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default
echo 'src-git packages https://github.com/Lienol/openwrt-packages.git;19.07' >> feeds.conf.default
echo 'src-link luci ../extra/luci' >> feeds.conf.default
echo 'src-git routing https://github.com/openwrt/routing.git;openwrt-19.07' >> feeds.conf.default
echo 'src-git telephony https://github.com/openwrt/telephony.git;openwrt-19.07' >> feeds.conf.default
echo 'src-git freifunk https://github.com/freifunk/openwrt-packages.git;openwrt-19.07' >> feeds.conf.default

# other-plugins
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/n2n_v2 package/lean/n2n_v2
svn co https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-n2n_v2 extra/luci/applications/luci-app-n2n_v2
./scripts/feeds install -a
