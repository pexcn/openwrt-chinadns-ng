# ChinaDNS-NG for OpenWrt

## 简介

本项目是 [chinadns-ng][UPSTREAM_PROJECT] 在 OpenWrt 上的移植。

## 编译

- 从 OpenWrt 的 [SDK][OPENWRT_SDK] 编译

    ```bash
    # 以 ar71xx 平台为例
    tar xf openwrt-sdk-18.06.4-ar71xx-generic_gcc-7.3.0_musl.Linux-x86_64.tar.xz
    cd openwrt-sdk-*
    
    # 获取源码
    git clone https://github.com/pexcn/openwrt-chinadns-ng.git package/chinadns-ng
    
    # 选中要编译的包 Network -> chinadns-ng
    make menuconfig
    
    # 开始编译
    make package/chinadns-ng/{clean,compile} V=s
    ```

## 更新数据列表

```bash
# IPv4 路由表
wget https://pexcn.me/daily/chnroute/chnroute.txt -O /etc/chinadns-ng/chnroute.txt
# IPv6 路由表
wget https://pexcn.me/daily/chnroute/chnroute-v6.txt -O /etc/chinadns-ng/chnroute6.txt
# 域名黑名单
wget https://pexcn.me/daily/gfwlist/gfwlist.txt -O /etc/chinadns-ng/gfwlist.txt
# 域名白名单
wget https://pexcn.me/daily/chinalist/chinalist.txt -O /etc/chinadns-ng/chinalist.txt

# 重启程序以触发更新 ipset
/etc/init.d/chinadns-ng restart
```

## Credits

- [@zfl9/chinadns-ng](https://github.com/zfl9/chinadns-ng)
- [@aa65535/openwrt-chinadns](https://github.com/aa65535/openwrt-chinadns)

## 许可证

```
Copyright (C) 2019, pexcn <i@pexcn.me>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
```

[UPSTREAM_PROJECT]: https://github.com/zfl9/chinadns-ng
[OPENWRT_SDK]: https://openwrt.org/docs/guide-developer/obtain.firmware.sdk
