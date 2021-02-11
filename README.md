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

## 配置

配置文件位于 `/etc/config/chinadns-ng`, 详细的解释见: [命令选项](https://github.com/zfl9/chinadns-ng#%E5%91%BD%E4%BB%A4%E9%80%89%E9%A1%B9)

选项             | 数据类型 | 说明
-----------------|---------|------------------------------------------
`enable`         | 布尔值   | 开启 chinadns-ng
`bind_addr`      | 字符串   | 本地绑定的 IP
`bind_port`      | 整数值   | 本地绑定的端口
`china_dns`      | 字符串   | 中国大陆上游 DNS 服务器
`trust_dns`      | 字符串   | 可信上游 DNS 服务器
`ipset_name4`    | 字符串   | 存储中国大陆 IPv4 地址的 ipset 名称
`ipset_name6`    | 字符串   | 存储中国大陆 IPv6 地址的 ipset 名称
`gfwlist_file`   | 字符串   | 黑名单域名列表
`chnlist_file`   | 字符串   | 白名单域名列表
`timeout_sec`    | 整数值   | 上游 DNS 超时
`repeat_times`   | 整数值   | 同一时间向可信 DNS 发送多少个 DNS 查询包
`chnlist_first`  | 布尔值   | 优先匹配白名单域名列表
`no_ipv6`        | 布尔值   | 禁用 IPv6 地址查询
`fair_mode`      | 布尔值   | 启用 "公平模式" 代替 "抢答模式"
`reuse_port`     | 布尔值   | 启用多进程负载均衡
`noip_as_chnip`  | 布尔值   | 接受 QTYPE 为 A/AAAA 但没有 IP 的 reply

## 鸣谢

- [@zfl9/chinadns-ng](https://github.com/zfl9/chinadns-ng)
- [@aa65535/openwrt-chinadns](https://github.com/aa65535/openwrt-chinadns)

## 许可证

```
Copyright (C) 2019-2021, pexcn <i@pexcn.me>

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
