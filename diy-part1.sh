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
#echo 'src-git helloworld https://github.com/fw876/helloworld' >> feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default
#echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
#echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default


# other-plugins
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/n2n package/lean/n2n
#svn co https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-n2n extra/luci/applications/luci-app-n2n
#svn co https://github.com/Lienol/openwrt-packages/branches/19.07/net/bonding feeds/packages/net/bonding
#svn co https://github.com/coolsnowwolf/luci/trunk/protocols/luci-proto-bonding extra/luci/protocols/luci-proto-bonding
#svn co https://github.com/Lienol/openwrt-packages/branches/19.07/utils/parted feeds/packages/utils/parted
#./scripts/feeds update -a
#./scripts/feeds install -a
