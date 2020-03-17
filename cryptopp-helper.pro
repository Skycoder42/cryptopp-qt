TEMPLATE = lib

TARGET = qtcryptopp
VERSION = 8.2.0

include($$PWD/cryptopp-common.pri)

MODULE_DEFINES += $$QT_CRYPTOPP_DEFINES
MODULE_INCLUDEPATH += $$CRYPTOPP_SRC_DIR

load(qt_helper_lib)
