TEMPLATE = app

TARGET = crypttest

QT =
CONFIG += console
CONFIG -= qt app_bundle

!exists(../src/adhoc.cpp): \
	!system($$QMAKE_COPY_FILE $$system_path(../src/adhoc.cpp.proto ) $$system_path(../src/adhoc.cpp)): \
	error("Failed to create adhoc.cpp")

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
		runtarget.commands += set PATH=$$shell_path($$OUT_PWD/../$$outdir_helper);$$shell_path($$[QT_INSTALL_BINS]);$(PATH)
		runtarget.commands += $$escape_expand(\\n\\t)if exist $${outdir_helper}\\fail del $${outdir_helper}\\fail
		runtarget.commands += $$escape_expand(\\n\\t)cd $$shell_path($$PWD/../src)
		runtarget.commands += $$escape_expand(\\n\\t)start /w call $$shell_path($$OUT_PWD/)$(DESTDIR_TARGET) v ^>^> $${outdir_helper}\\test.log ^|^| echo FAIL ^> $${outdir_helper}\\fail ^& exit 0
		runtarget.commands += $$escape_expand(\\n\\t)start /w call $$shell_path($$OUT_PWD/)$(DESTDIR_TARGET) tv all ^>^> $${outdir_helper}\\test.log ^|^| echo FAIL ^> $${outdir_helper}\\fail ^& exit 0
		runtarget.commands += $$escape_expand(\\n\\t)type $${outdir_helper}\\test.log
		runtarget.commands += $$escape_expand(\\n\\t)if exist $${outdir_helper}\\fail exit 42
		QMAKE_EXTRA_TARGETS += runtarget
	} else {
		win32-g++: QMAKE_DIRLIST_SEP = ";"
		runtarget.commands += export PATH=\"$$shell_path($$OUT_PWD/..):$$shell_path($$[QT_INSTALL_BINS]):$${LITERAL_DOLLAR}$${LITERAL_DOLLAR}PATH\"
		win32-g++: QMAKE_DIRLIST_SEP = ":"

		linux|win32-g++ {
			runtarget.commands += $$escape_expand(\\n\\t)export LD_LIBRARY_PATH=\"$$OUT_PWD/..$${QMAKE_DIRLIST_SEP}$$[QT_INSTALL_LIBS]$${QMAKE_DIRLIST_SEP}$(LD_LIBRARY_PATH)\"
			runtarget.commands += $$escape_expand(\\n\\t)export QT_QPA_PLATFORM=minimal
		} else:mac {
			runtarget.commands += $$escape_expand(\\n\\t)export DYLD_LIBRARY_PATH=\"$$OUT_PWD/..:$$[QT_INSTALL_LIBS]:$(DYLD_LIBRARY_PATH)\"
			runtarget.commands += $$escape_expand(\\n\\t)export DYLD_FRAMEWORK_PATH=\"$$OUT_PWD/..:$$[QT_INSTALL_LIBS]:$(DYLD_FRAMEWORK_PATH)\"
		}

		runtarget.target = run-tests
		runtarget.commands += $$escape_expand(\\n\\t)cd $$PWD/../src
		win32-g++ {
			!compat_test: runtarget.depends += $(DESTDIR_TARGET)
			runtarget.commands += $$escape_expand(\\n\\t)$$OUT_PWD/$(DESTDIR_TARGET) v
			runtarget.commands += $$escape_expand(\\n\\t)$$OUT_PWD/$(DESTDIR_TARGET) tv all
		} else {
			!compat_test: runtarget.depends += $(TARGET)
			runtarget.commands += $$escape_expand(\\n\\t)$$OUT_PWD/$(TARGET) v
			runtarget.commands += $$escape_expand(\\n\\t)$$OUT_PWD/$(TARGET) tv all
		}
		QMAKE_EXTRA_TARGETS += runtarget
	}
}
