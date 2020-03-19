TEMPLATE = lib

win32: CONFIG += skip_target_version_ext

TARGET = cryptopp
VERSION = 8.2.0

include($$PWD/cryptopp-common.pri)
