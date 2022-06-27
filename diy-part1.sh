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
echo 'src-git packages https://git.lede-project.org/feed/packages.git^cd5c448758f30868770b9ebf8b656c1a4211a240' > feeds.conf.default
echo 'src-git luci https://git.lede-project.org/project/luci.git^d3f0685d63c1291359dc5dd089c82fa1e150e0c6' >> feeds.conf.default
echo 'src-git routing https://git.lede-project.org/feed/routing.git^d11075cd40a88602bf4ba2b275f72100ddcb4767' >> feeds.conf.default
echo 'src-git telephony https://git.lede-project.org/feed/telephony.git^ac6415e61f147a6892fd2785337aec93ddc68fa9' >> feeds.conf.default


# other-plugins
#svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/n2n_v2 package/lean/n2n_v2
#svn co https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-n2n_v2 extra/luci/applications/luci-app-n2n_v2
#svn co https://github.com/coolsnowwolf/packages/trunk/net/vlmcsd feeds/packages/net/vlmcsd
#svn co https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-vlmcsd extra/luci/applications/luci-app-vlmcsd
#svn co https://github.com/Lienol/openwrt-packages/branches/19.07/net/bonding feeds/packages/net/bonding
#svn co https://github.com/coolsnowwolf/luci/trunk/protocols/luci-proto-bonding extra/luci/protocols/luci-proto-bonding
#./scripts/feeds update -a
#./scripts/feeds install -a
