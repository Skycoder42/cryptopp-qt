INCLUDEPATH += $$PWD/../src

win32:!win32-g++:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../release -lcryptopp
else:win32:!win32-g++:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../debug -lcryptopp
else: LIBS += -L$$OUT_PWD/.. -lcryptopp

win32:!win32-g++ {
	!contains(QT_ARCH, x86_64):!contains(QT_ARCH, i386): DEFINES += CRYPTOPP_DISABLE_ASM
	cross_compile: DEFINES += NO_OS_DEPENDENCE
}

equals(ANDROID_TARGET_ARCH, x86)|equals(ANDROID_TARGET_ARCH, x86_64): DEFINES += CRYPTOPP_DISABLE_ASM

ios: DEFINES += CRYPTOPP_DISABLE_ASM
else: darwin: DEFINES += CRYPTOPP_DISABLE_MIXED_ASM
