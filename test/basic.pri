INCLUDEPATH += $$PWD/../src

win32:!win32-g++:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../release -lcryptopp
else:win32:!win32-g++:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../debug -lcryptopp
else: LIBS += -L$$OUT_PWD/.. -lcryptopp

DEFINES += CRYPTOPP_DISABLE_ASM NO_OS_DEPENDENCE

dynamic: DEFINES += CRYPTOPP_IMPORTS
