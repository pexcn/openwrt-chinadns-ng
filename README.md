# ChinaDNS Next Generation for OpenWrt

## 简介

本项目是 [chinadns-ng](https://github.com/zfl9/chinadns-ng) 在 OpenWrt 上的移植。

## 编译

从 OpenWrt 的 [SDK](https://openwrt.org/docs/guide-developer/obtain.firmware.sdk) 编译
```bash
cd openwrt-sdk

# 获取源码
git clone https://github.com/pexcn/openwrt-chinadns-ng.git package/chinadns-ng

# 选中 Network -> chinadns-ng
make menuconfig

# 编译 chinadns-ng
make package/chinadns-ng/{clean,compile} V=s
```

## 鸣谢

- [@zfl9/chinadns-ng](https://github.com/zfl9/chinadns-ng)
- [@aa65535/openwrt-chinadns](https://github.com/aa65535/openwrt-chinadns)

## 许可证

```
Copyright (C) 2019 - 2020, pexcn <i@pexcn.me>

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
