load(qt_build_config)
CONFIG += simd warning_clean

win32:win32-g++: CONFIG += avx2

win32:!win32-g++ {
	DEFINES -= UNICODE _UNICODE
	DEFINES += _MBCS

	contains(QT_ARCH, x86_64)|contains(QT_ARCH, i386): CONFIG += masm
	else {
		warning("Disabeling assembler on non x86 windows")
			CONFIG += cryptopp_disable_asm
			CONFIG -= simd
	}
	cross_compile {
		warning("Disabeling os dependence on winrt")
		CONFIG += cryptopp_no_os_dependence
	}
}

equals(ANDROID_TARGET_ARCH, x86)|equals(ANDROID_TARGET_ARCH, x86_64) {
	# Do this for Android x86 builds for now as the NDK is broken
	warning("Disabeling assembler on x86 android")
	CONFIG += cryptopp_disable_asm
	CONFIG -= simd
}

darwin {
	warning("Disabeling mixed assembler on darwin")
	CONFIG += cryptopp_disable_mixed_asm
}

ios {
	warning("Disabeling assembler for ios")
	CONFIG += cryptopp_disable_asm
}

clang: QMAKE_CXXFLAGS += -Wno-keyword-macro -Wno-unused-const-variable -Wno-unused-private-field
else:gcc: QMAKE_CXXFLAGS += -Wno-class-memaccess -Wno-unknown-pragmas
else:win32:msvc: QMAKE_CXXFLAGS += -wd4231 -wd4251 -wd4275 -wd4355 -wd4505

include($$PWD/cryptopp-base.pri)
