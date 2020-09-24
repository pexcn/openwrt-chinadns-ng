include $(TOPDIR)/rules.mk
PKG_VERSION:=1.0
PKG_RELEASE:=4

LUCI_TITLE:=LuCI support for chinadns-ng
LUCI_DEPENDS:=+chinadns-ng

PKG_MAINTAINER:==pexcn <i@pexcn.me>
PKG_LICENSE:=GPL-3.0-or-later

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature