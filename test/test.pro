TEMPLATE = app

TARGET = crypttest

QT =
CONFIG += console
CONFIG -= qt app_bundle

!exists(../src/adhoc.cpp): \
	!system($$QMAKE_COPY_FILE $$system_path(../src/adhoc.cpp.proto ) $$system_path(../src/adhoc.cpp)): \
	error("Failed to create adhoc.cpp")

precompile_header {
	PRECOMPILED_HEADER = $$CRYPTOPP_SRC_DIR/pch.h
	DEFINES *= USE_PRECOMPILED_HEADERS
}

HEADERS += \
  ../src/bench.h \
  ../src/factory.h \
  ../src/validate.h \
  ../src/fips140.h

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
  ../src/regtest4.cpp \
  ../src/fipstest.cpp

include($$TEST_PRI_PATH)  # passed as parameter

debug_and_release:!ReleaseBuild:!DebugBuild {
	runtarget.target = run-tests
	runtarget.CONFIG = recursive
	CONFIG(debug, debug|release): runtarget.recurse = Debug
	CONFIG(release, debug|release): runtarget.recurse = Release
	runtarget.recurse_target = run-tests
	QMAKE_EXTRA_TARGETS += runtarget
} else {
	oneshell.target = .ONESHELL
	QMAKE_EXTRA_TARGETS += oneshell

	win32:!win32-g++ {
		CONFIG(debug, debug|release): outdir_helper = debug
		CONFIG(release, debug|release): outdir_helper = release
		runtarget.target = run-tests
		runtarget.depends += $(DESTDIR_TARGET)
		runtarget.commands += cd $$shell_path($$PWD/../src)
		runtarget.commands += $$escape_expand(\\n\\t)set PATH=$$shell_path($$OUT_PWD/../$$outdir_helper);$(PATH)
		runtarget.commands += $$escape_expand(\\n\\t)$$shell_path($$OUT_PWD/)$(DESTDIR_TARGET) v ^|^| exit 1
		runtarget.commands += $$escape_expand(\\n\\t)$$shell_path($$OUT_PWD/)$(DESTDIR_TARGET) tv all ^|^| exit 1
		QMAKE_EXTRA_TARGETS += runtarget
	} else {
		runtarget.target = run-tests
		runtarget.commands += cd $$PWD/../src

		win32-g++ {
			runtarget.commands += $$escape_expand(\\n\\t)export PATH=\"$$shell_path($$OUT_PWD/..):$(PATH)\"
		} else:linux {
			runtarget.commands += $$escape_expand(\\n\\t)export LD_LIBRARY_PATH=\"$$OUT_PWD/..:$(LD_LIBRARY_PATH)\"
		} else:mac {
			runtarget.commands += $$escape_expand(\\n\\t)export DYLD_LIBRARY_PATH=\"$$OUT_PWD/..:$(DYLD_LIBRARY_PATH)\"
		}

		win32-g++ {
			runtarget.depends += $(DESTDIR_TARGET)
			runtarget.commands += $$escape_expand(\\n\\t)$$OUT_PWD/$(DESTDIR_TARGET) v
			runtarget.commands += $$escape_expand(\\n\\t)$$OUT_PWD/$(DESTDIR_TARGET) tv all
		} else {
			runtarget.depends += $(TARGET)
			runtarget.commands += $$escape_expand(\\n\\t)$$OUT_PWD/$(TARGET) v
			runtarget.commands += $$escape_expand(\\n\\t)$$OUT_PWD/$(TARGET) tv all
		}
		QMAKE_EXTRA_TARGETS += runtarget
	}
}
