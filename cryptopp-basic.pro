TEMPLATE = lib
CONFIG += static

win32: CONFIG += skip_target_version_ext

TARGET = cryptopp
VERSION = 8.2.0

CONFIG += cryptopp_disable_asm cryptopp_no_os_dependence

include($$PWD/cryptopp-base.pri)
