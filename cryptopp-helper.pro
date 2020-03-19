TEMPLATE = lib

win32: CONFIG += skip_target_version_ext

TARGET = qtcryptopp
VERSION = 8.2.0

include($$PWD/cryptopp-common.pri)

MODULE_DEFINES += $$QT_CRYPTOPP_DEFINES
MODULE_INCLUDEPATH += $$CRYPTOPP_SRC_DIR

load(qt_helper_lib)

!no_helper_install {
  headers.path = $$[QT_INSTALL_HEADERS]/cryptopp
  headers.files = $$HEADERS
  INSTALLS += headers
}