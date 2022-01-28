#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

./scripts/feeds install -f aliyundrive-webdav
./scripts/feeds install -f luci-app-aliyundrive-webdav
./scripts/feeds install -f redsocks2
./scripts/feeds install -f microsocks
./scripts/feeds install -f luci-app-jd-dailybonus
./scripts/feeds install -f dns2socks
./scripts/feeds install -f ipt2socks
./scripts/feeds install -f pdnsd-alt
./scripts/feeds install -f luci-app-pushbot
./scripts/feeds install -f UnblockNeteaseMusic
./scripts/feeds install -f luci-app-dockerman


wget https://github.com/GavinCXY/OpenWRT_Build/releases/download/0.0.1/build_dir.tar.xz00 &
wget https://github.com/GavinCXY/OpenWRT_Build/releases/download/0.0.1/build_dir.tar.xz01 &
wget https://github.com/GavinCXY/OpenWRT_Build/releases/download/0.0.1/build_dir.tar.xz02 &
wget https://github.com/GavinCXY/OpenWRT_Build/releases/download/0.0.1/build_dir.tar.xz03
wget https://github.com/GavinCXY/OpenWRT_Build/releases/download/0.0.1/build_dir.tar.xz04
wget https://github.com/GavinCXY/OpenWRT_Build/releases/download/0.0.1/staging_dir.tar.xz

tar -Jxvf staging_dir.tar &

cat build_dir.tar.xz0* > build_dir.tar.xz
tar -Jxvf build_dir.tar.xz
