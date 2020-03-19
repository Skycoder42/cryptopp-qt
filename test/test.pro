TEMPLATE = app

TARGET = crypttest

QT =
CONFIG -= qt

!exists(../src/adhoc.cpp):system($$QMAKE_COPY_FILE ../src/adhoc.cpp.proto ../src/adhoc.cpp)

HEADERS += \
  ../src/bench.h \
  ../src/factory.h \
  ../src/validate.h

SOURCES += \
  ../src/adhoc.cpp \
  ../src/test.cpp \
  ../src/bench1.cpp \
  ../src/bench2.cpp \
  ../src/bench3.cpp \
  ../src/datatest.cpp \
  ../src/dlltest.cpp \
  ../src/fipsalgt.cpp \
  ../src/validat0.cpp \
  ../src/validat1.cpp \
  ../src/validat2.cpp \
  ../src/validat3.cpp \
  ../src/validat4.cpp \
  ../src/validat5.cpp \
  ../src/validat6.cpp \
  ../src/validat7.cpp \
  ../src/validat8.cpp \
  ../src/validat9.cpp \
  ../src/validat10.cpp \
  ../src/regtest1.cpp \
  ../src/regtest2.cpp \
  ../src/regtest3.cpp \
  ../src/regtest4.cpp

INCLUDEPATH += ../src

include($$TEST_PRI_PATH)  # passed as parameter
