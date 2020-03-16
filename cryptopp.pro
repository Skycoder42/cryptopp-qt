TEMPLATE = lib

load(qt_build_config)
CONFIG += simd warning_clean exceptions c++14

QT =
CONFIG -= qt

TARGET = qtcryptopp
VERSION = 8.2.0

isEmpty(CRYPTOPP_SRC_DIR): CRYPTOPP_SRC_DIR = src

QMAKEFEATURES = $$PWD/mkspecs/features

# Input
HEADERS += \
	$$CRYPTOPP_SRC_DIR/3way.h \
	$$CRYPTOPP_SRC_DIR/adler32.h \
	$$CRYPTOPP_SRC_DIR/adv_simd.h \
	$$CRYPTOPP_SRC_DIR/aes.h \
	$$CRYPTOPP_SRC_DIR/aes_armv4.h \
	$$CRYPTOPP_SRC_DIR/algebra.h \
	$$CRYPTOPP_SRC_DIR/algparam.h \
	$$CRYPTOPP_SRC_DIR/arc4.h \
	$$CRYPTOPP_SRC_DIR/argnames.h \
	$$CRYPTOPP_SRC_DIR/aria.h \
	$$CRYPTOPP_SRC_DIR/asn.h \
	$$CRYPTOPP_SRC_DIR/authenc.h \
	$$CRYPTOPP_SRC_DIR/base32.h \
	$$CRYPTOPP_SRC_DIR/base64.h \
	$$CRYPTOPP_SRC_DIR/basecode.h \
	$$CRYPTOPP_SRC_DIR/bench.h \
	$$CRYPTOPP_SRC_DIR/blake2.h \
	$$CRYPTOPP_SRC_DIR/blowfish.h \
	$$CRYPTOPP_SRC_DIR/blumshub.h \
	$$CRYPTOPP_SRC_DIR/camellia.h \
	$$CRYPTOPP_SRC_DIR/cast.h \
	$$CRYPTOPP_SRC_DIR/cbcmac.h \
	$$CRYPTOPP_SRC_DIR/ccm.h \
	$$CRYPTOPP_SRC_DIR/chacha.h \
	$$CRYPTOPP_SRC_DIR/chachapoly.h \
	$$CRYPTOPP_SRC_DIR/cham.h \
	$$CRYPTOPP_SRC_DIR/channels.h \
	$$CRYPTOPP_SRC_DIR/cmac.h \
	$$CRYPTOPP_SRC_DIR/config.h \
	$$CRYPTOPP_SRC_DIR/cpu.h \
	$$CRYPTOPP_SRC_DIR/crc.h \
	$$CRYPTOPP_SRC_DIR/cryptlib.h \
	$$CRYPTOPP_SRC_DIR/darn.h \
	$$CRYPTOPP_SRC_DIR/default.h \
	$$CRYPTOPP_SRC_DIR/des.h \
	$$CRYPTOPP_SRC_DIR/dh.h \
	$$CRYPTOPP_SRC_DIR/dh2.h \
	$$CRYPTOPP_SRC_DIR/dll.h \
	$$CRYPTOPP_SRC_DIR/dmac.h \
	$$CRYPTOPP_SRC_DIR/donna.h \
	$$CRYPTOPP_SRC_DIR/donna_32.h \
	$$CRYPTOPP_SRC_DIR/donna_64.h \
	$$CRYPTOPP_SRC_DIR/donna_sse.h \
	$$CRYPTOPP_SRC_DIR/drbg.h \
	$$CRYPTOPP_SRC_DIR/dsa.h \
	$$CRYPTOPP_SRC_DIR/eax.h \
	$$CRYPTOPP_SRC_DIR/ec2n.h \
	$$CRYPTOPP_SRC_DIR/eccrypto.h \
	$$CRYPTOPP_SRC_DIR/ecp.h \
	$$CRYPTOPP_SRC_DIR/ecpoint.h \
	$$CRYPTOPP_SRC_DIR/elgamal.h \
	$$CRYPTOPP_SRC_DIR/emsa2.h \
	$$CRYPTOPP_SRC_DIR/eprecomp.h \
	$$CRYPTOPP_SRC_DIR/esign.h \
	$$CRYPTOPP_SRC_DIR/factory.h \
	$$CRYPTOPP_SRC_DIR/fhmqv.h \
	$$CRYPTOPP_SRC_DIR/files.h \
	$$CRYPTOPP_SRC_DIR/filters.h \
	$$CRYPTOPP_SRC_DIR/fips140.h \
	$$CRYPTOPP_SRC_DIR/fltrimpl.h \
	$$CRYPTOPP_SRC_DIR/gcm.h \
	$$CRYPTOPP_SRC_DIR/gf256.h \
	$$CRYPTOPP_SRC_DIR/gf2_32.h \
	$$CRYPTOPP_SRC_DIR/gf2n.h \
	$$CRYPTOPP_SRC_DIR/gfpcrypt.h \
	$$CRYPTOPP_SRC_DIR/gost.h \
	$$CRYPTOPP_SRC_DIR/gzip.h \
	$$CRYPTOPP_SRC_DIR/hashfwd.h \
	$$CRYPTOPP_SRC_DIR/hc128.h \
	$$CRYPTOPP_SRC_DIR/hc256.h \
	$$CRYPTOPP_SRC_DIR/hex.h \
	$$CRYPTOPP_SRC_DIR/hight.h \
	$$CRYPTOPP_SRC_DIR/hkdf.h \
	$$CRYPTOPP_SRC_DIR/hmac.h \
	$$CRYPTOPP_SRC_DIR/hmqv.h \
	$$CRYPTOPP_SRC_DIR/hrtimer.h \
	$$CRYPTOPP_SRC_DIR/ida.h \
	$$CRYPTOPP_SRC_DIR/idea.h \
	$$CRYPTOPP_SRC_DIR/integer.h \
	$$CRYPTOPP_SRC_DIR/iterhash.h \
	$$CRYPTOPP_SRC_DIR/kalyna.h \
	$$CRYPTOPP_SRC_DIR/keccak.h \
	$$CRYPTOPP_SRC_DIR/lea.h \
	$$CRYPTOPP_SRC_DIR/lubyrack.h \
	$$CRYPTOPP_SRC_DIR/luc.h \
	$$CRYPTOPP_SRC_DIR/mars.h \
	$$CRYPTOPP_SRC_DIR/md2.h \
	$$CRYPTOPP_SRC_DIR/md4.h \
	$$CRYPTOPP_SRC_DIR/md5.h \
	$$CRYPTOPP_SRC_DIR/mdc.h \
	$$CRYPTOPP_SRC_DIR/mersenne.h \
	$$CRYPTOPP_SRC_DIR/misc.h \
	$$CRYPTOPP_SRC_DIR/modarith.h \
	$$CRYPTOPP_SRC_DIR/modes.h \
	$$CRYPTOPP_SRC_DIR/modexppc.h \
	$$CRYPTOPP_SRC_DIR/mqueue.h \
	$$CRYPTOPP_SRC_DIR/mqv.h \
	$$CRYPTOPP_SRC_DIR/naclite.h \
	$$CRYPTOPP_SRC_DIR/nbtheory.h \
	$$CRYPTOPP_SRC_DIR/nr.h \
	$$CRYPTOPP_SRC_DIR/oaep.h \
	$$CRYPTOPP_SRC_DIR/oids.h \
	$$CRYPTOPP_SRC_DIR/osrng.h \
	$$CRYPTOPP_SRC_DIR/ossig.h \
	$$CRYPTOPP_SRC_DIR/padlkrng.h \
	$$CRYPTOPP_SRC_DIR/panama.h \
	$$CRYPTOPP_SRC_DIR/pch.h \
	$$CRYPTOPP_SRC_DIR/pkcspad.h \
	$$CRYPTOPP_SRC_DIR/poly1305.h \
	$$CRYPTOPP_SRC_DIR/polynomi.h \
	$$CRYPTOPP_SRC_DIR/ppc_simd.h \
	$$CRYPTOPP_SRC_DIR/pssr.h \
	$$CRYPTOPP_SRC_DIR/pubkey.h \
	$$CRYPTOPP_SRC_DIR/pwdbased.h \
	$$CRYPTOPP_SRC_DIR/queue.h \
	$$CRYPTOPP_SRC_DIR/rabbit.h \
	$$CRYPTOPP_SRC_DIR/rabin.h \
	$$CRYPTOPP_SRC_DIR/randpool.h \
	$$CRYPTOPP_SRC_DIR/rc2.h \
	$$CRYPTOPP_SRC_DIR/rc5.h \
	$$CRYPTOPP_SRC_DIR/rc6.h \
	$$CRYPTOPP_SRC_DIR/rdrand.h \
	$$CRYPTOPP_SRC_DIR/resource.h \
	$$CRYPTOPP_SRC_DIR/rijndael.h \
	$$CRYPTOPP_SRC_DIR/ripemd.h \
	$$CRYPTOPP_SRC_DIR/rng.h \
	$$CRYPTOPP_SRC_DIR/rsa.h \
	$$CRYPTOPP_SRC_DIR/rw.h \
	$$CRYPTOPP_SRC_DIR/safer.h \
	$$CRYPTOPP_SRC_DIR/salsa.h \
	$$CRYPTOPP_SRC_DIR/scrypt.h \
	$$CRYPTOPP_SRC_DIR/seal.h \
	$$CRYPTOPP_SRC_DIR/secblock.h \
	$$CRYPTOPP_SRC_DIR/seckey.h \
	$$CRYPTOPP_SRC_DIR/seed.h \
	$$CRYPTOPP_SRC_DIR/serpent.h \
	$$CRYPTOPP_SRC_DIR/serpentp.h \
	$$CRYPTOPP_SRC_DIR/sha.h \
	$$CRYPTOPP_SRC_DIR/sha3.h \
	$$CRYPTOPP_SRC_DIR/shacal2.h \
	$$CRYPTOPP_SRC_DIR/shake.h \
	$$CRYPTOPP_SRC_DIR/shark.h \
	$$CRYPTOPP_SRC_DIR/simeck.h \
	$$CRYPTOPP_SRC_DIR/simon.h \
	$$CRYPTOPP_SRC_DIR/simple.h \
	$$CRYPTOPP_SRC_DIR/siphash.h \
	$$CRYPTOPP_SRC_DIR/skipjack.h \
	$$CRYPTOPP_SRC_DIR/sm3.h \
	$$CRYPTOPP_SRC_DIR/sm4.h \
	$$CRYPTOPP_SRC_DIR/smartptr.h \
	$$CRYPTOPP_SRC_DIR/sosemanuk.h \
	$$CRYPTOPP_SRC_DIR/speck.h \
	$$CRYPTOPP_SRC_DIR/square.h \
	$$CRYPTOPP_SRC_DIR/stdcpp.h \
	$$CRYPTOPP_SRC_DIR/strciphr.h \
	$$CRYPTOPP_SRC_DIR/tea.h \
	$$CRYPTOPP_SRC_DIR/threefish.h \
	$$CRYPTOPP_SRC_DIR/tiger.h \
	$$CRYPTOPP_SRC_DIR/trap.h \
	$$CRYPTOPP_SRC_DIR/trunhash.h \
	$$CRYPTOPP_SRC_DIR/ttmac.h \
	$$CRYPTOPP_SRC_DIR/tweetnacl.h \
	$$CRYPTOPP_SRC_DIR/twofish.h \
	$$CRYPTOPP_SRC_DIR/validate.h \
	$$CRYPTOPP_SRC_DIR/vmac.h \
	$$CRYPTOPP_SRC_DIR/wake.h \
	$$CRYPTOPP_SRC_DIR/whrlpool.h \
	$$CRYPTOPP_SRC_DIR/words.h \
	$$CRYPTOPP_SRC_DIR/xed25519.h \
	$$CRYPTOPP_SRC_DIR/xtr.h \
	$$CRYPTOPP_SRC_DIR/xtrcrypt.h \
	$$CRYPTOPP_SRC_DIR/zdeflate.h \
	$$CRYPTOPP_SRC_DIR/zinflate.h \
	$$CRYPTOPP_SRC_DIR/zlib.h

SOURCES += \
	$$CRYPTOPP_SRC_DIR/3way.cpp \
	$$CRYPTOPP_SRC_DIR/adler32.cpp \
	$$CRYPTOPP_SRC_DIR/algebra.cpp \
	$$CRYPTOPP_SRC_DIR/algparam.cpp \
	$$CRYPTOPP_SRC_DIR/arc4.cpp \
	$$CRYPTOPP_SRC_DIR/aria.cpp \
	$$CRYPTOPP_SRC_DIR/ariatab.cpp \
	$$CRYPTOPP_SRC_DIR/asn.cpp \
	$$CRYPTOPP_SRC_DIR/authenc.cpp \
	$$CRYPTOPP_SRC_DIR/base32.cpp \
	$$CRYPTOPP_SRC_DIR/base64.cpp \
	$$CRYPTOPP_SRC_DIR/basecode.cpp \
	$$CRYPTOPP_SRC_DIR/bfinit.cpp \
	$$CRYPTOPP_SRC_DIR/blake2.cpp \
	$$CRYPTOPP_SRC_DIR/blowfish.cpp \
	$$CRYPTOPP_SRC_DIR/blumshub.cpp \
	$$CRYPTOPP_SRC_DIR/camellia.cpp \
	$$CRYPTOPP_SRC_DIR/cast.cpp \
	$$CRYPTOPP_SRC_DIR/casts.cpp \
	$$CRYPTOPP_SRC_DIR/cbcmac.cpp \
	$$CRYPTOPP_SRC_DIR/ccm.cpp \
	$$CRYPTOPP_SRC_DIR/chacha.cpp \
	$$CRYPTOPP_SRC_DIR/chachapoly.cpp \
	$$CRYPTOPP_SRC_DIR/cham.cpp \
	$$CRYPTOPP_SRC_DIR/channels.cpp \
	$$CRYPTOPP_SRC_DIR/cmac.cpp \
	$$CRYPTOPP_SRC_DIR/cpu.cpp \
	$$CRYPTOPP_SRC_DIR/crc.cpp \
	$$CRYPTOPP_SRC_DIR/cryptlib.cpp \
	$$CRYPTOPP_SRC_DIR/darn.cpp \
	$$CRYPTOPP_SRC_DIR/default.cpp \
	$$CRYPTOPP_SRC_DIR/des.cpp \
	$$CRYPTOPP_SRC_DIR/dessp.cpp \
	$$CRYPTOPP_SRC_DIR/dh.cpp \
	$$CRYPTOPP_SRC_DIR/dh2.cpp \
	$$CRYPTOPP_SRC_DIR/dll.cpp \
	$$CRYPTOPP_SRC_DIR/donna_32.cpp \
	$$CRYPTOPP_SRC_DIR/donna_64.cpp \
	$$CRYPTOPP_SRC_DIR/dsa.cpp \
	$$CRYPTOPP_SRC_DIR/eax.cpp \
	$$CRYPTOPP_SRC_DIR/ec2n.cpp \
	$$CRYPTOPP_SRC_DIR/eccrypto.cpp \
	$$CRYPTOPP_SRC_DIR/ecp.cpp \
	$$CRYPTOPP_SRC_DIR/elgamal.cpp \
	$$CRYPTOPP_SRC_DIR/emsa2.cpp \
	$$CRYPTOPP_SRC_DIR/eprecomp.cpp \
	$$CRYPTOPP_SRC_DIR/esign.cpp \
	$$CRYPTOPP_SRC_DIR/files.cpp \
	$$CRYPTOPP_SRC_DIR/filters.cpp \
	$$CRYPTOPP_SRC_DIR/fips140.cpp \
	$$CRYPTOPP_SRC_DIR/gcm.cpp \
	$$CRYPTOPP_SRC_DIR/gf256.cpp \
	$$CRYPTOPP_SRC_DIR/gf2_32.cpp \
	$$CRYPTOPP_SRC_DIR/gf2n.cpp \
	$$CRYPTOPP_SRC_DIR/gfpcrypt.cpp \
	$$CRYPTOPP_SRC_DIR/gost.cpp \
	$$CRYPTOPP_SRC_DIR/gzip.cpp \
	$$CRYPTOPP_SRC_DIR/hc128.cpp \
	$$CRYPTOPP_SRC_DIR/hc256.cpp \
	$$CRYPTOPP_SRC_DIR/hex.cpp \
	$$CRYPTOPP_SRC_DIR/hight.cpp \
	$$CRYPTOPP_SRC_DIR/hmac.cpp \
	$$CRYPTOPP_SRC_DIR/hrtimer.cpp \
	$$CRYPTOPP_SRC_DIR/ida.cpp \
	$$CRYPTOPP_SRC_DIR/idea.cpp \
	$$CRYPTOPP_SRC_DIR/integer.cpp \
	$$CRYPTOPP_SRC_DIR/iterhash.cpp \
	$$CRYPTOPP_SRC_DIR/kalyna.cpp \
	$$CRYPTOPP_SRC_DIR/kalynatab.cpp \
	$$CRYPTOPP_SRC_DIR/keccak.cpp \
	$$CRYPTOPP_SRC_DIR/keccak_core.cpp \
	$$CRYPTOPP_SRC_DIR/lea.cpp \
	$$CRYPTOPP_SRC_DIR/luc.cpp \
	$$CRYPTOPP_SRC_DIR/mars.cpp \
	$$CRYPTOPP_SRC_DIR/marss.cpp \
	$$CRYPTOPP_SRC_DIR/md2.cpp \
	$$CRYPTOPP_SRC_DIR/md4.cpp \
	$$CRYPTOPP_SRC_DIR/md5.cpp \
	$$CRYPTOPP_SRC_DIR/misc.cpp \
	$$CRYPTOPP_SRC_DIR/modes.cpp \
	$$CRYPTOPP_SRC_DIR/mqueue.cpp \
	$$CRYPTOPP_SRC_DIR/mqv.cpp \
	$$CRYPTOPP_SRC_DIR/nbtheory.cpp \
	$$CRYPTOPP_SRC_DIR/oaep.cpp \
	$$CRYPTOPP_SRC_DIR/osrng.cpp \
	$$CRYPTOPP_SRC_DIR/padlkrng.cpp \
	$$CRYPTOPP_SRC_DIR/panama.cpp \
	$$CRYPTOPP_SRC_DIR/pkcspad.cpp \
	$$CRYPTOPP_SRC_DIR/poly1305.cpp \
	$$CRYPTOPP_SRC_DIR/polynomi.cpp \
	$$CRYPTOPP_SRC_DIR/pssr.cpp \
	$$CRYPTOPP_SRC_DIR/pubkey.cpp \
	$$CRYPTOPP_SRC_DIR/queue.cpp \
	$$CRYPTOPP_SRC_DIR/rabbit.cpp \
	$$CRYPTOPP_SRC_DIR/rabin.cpp \
	$$CRYPTOPP_SRC_DIR/randpool.cpp \
	$$CRYPTOPP_SRC_DIR/rc2.cpp \
	$$CRYPTOPP_SRC_DIR/rc5.cpp \
	$$CRYPTOPP_SRC_DIR/rc6.cpp \
	$$CRYPTOPP_SRC_DIR/rdrand.cpp \
	$$CRYPTOPP_SRC_DIR/rdtables.cpp \
	$$CRYPTOPP_SRC_DIR/rijndael.cpp \
	$$CRYPTOPP_SRC_DIR/ripemd.cpp \
	$$CRYPTOPP_SRC_DIR/rng.cpp \
	$$CRYPTOPP_SRC_DIR/rsa.cpp \
	$$CRYPTOPP_SRC_DIR/rw.cpp \
	$$CRYPTOPP_SRC_DIR/safer.cpp \
	$$CRYPTOPP_SRC_DIR/salsa.cpp \
	$$CRYPTOPP_SRC_DIR/scrypt.cpp \
	$$CRYPTOPP_SRC_DIR/seal.cpp \
	$$CRYPTOPP_SRC_DIR/seed.cpp \
	$$CRYPTOPP_SRC_DIR/serpent.cpp \
	$$CRYPTOPP_SRC_DIR/sha.cpp \
	$$CRYPTOPP_SRC_DIR/sha3.cpp \
	$$CRYPTOPP_SRC_DIR/shacal2.cpp \
	$$CRYPTOPP_SRC_DIR/shake.cpp \
	$$CRYPTOPP_SRC_DIR/shark.cpp \
	$$CRYPTOPP_SRC_DIR/sharkbox.cpp \
	$$CRYPTOPP_SRC_DIR/simeck.cpp \
	$$CRYPTOPP_SRC_DIR/simon.cpp \
	$$CRYPTOPP_SRC_DIR/simple.cpp \
	$$CRYPTOPP_SRC_DIR/skipjack.cpp \
	$$CRYPTOPP_SRC_DIR/sm3.cpp \
	$$CRYPTOPP_SRC_DIR/sm4.cpp \
	$$CRYPTOPP_SRC_DIR/sosemanuk.cpp \
	$$CRYPTOPP_SRC_DIR/speck.cpp \
	$$CRYPTOPP_SRC_DIR/square.cpp \
	$$CRYPTOPP_SRC_DIR/squaretb.cpp \
	$$CRYPTOPP_SRC_DIR/strciphr.cpp \
	$$CRYPTOPP_SRC_DIR/tea.cpp \
	$$CRYPTOPP_SRC_DIR/tftables.cpp \
	$$CRYPTOPP_SRC_DIR/threefish.cpp \
	$$CRYPTOPP_SRC_DIR/tiger.cpp \
	$$CRYPTOPP_SRC_DIR/tigertab.cpp \
	$$CRYPTOPP_SRC_DIR/ttmac.cpp \
	$$CRYPTOPP_SRC_DIR/tweetnacl.cpp \
	$$CRYPTOPP_SRC_DIR/twofish.cpp \
	$$CRYPTOPP_SRC_DIR/vmac.cpp \
	$$CRYPTOPP_SRC_DIR/wake.cpp \
	$$CRYPTOPP_SRC_DIR/whrlpool.cpp \
	$$CRYPTOPP_SRC_DIR/xed25519.cpp \
	$$CRYPTOPP_SRC_DIR/xtr.cpp \
	$$CRYPTOPP_SRC_DIR/xtrcrypt.cpp \
	$$CRYPTOPP_SRC_DIR/zdeflate.cpp \
	$$CRYPTOPP_SRC_DIR/zinflate.cpp \
	$$CRYPTOPP_SRC_DIR/zlib.cpp

SSE2_SOURCES += \
	$$CRYPTOPP_SRC_DIR/chacha_simd.cpp \
	$$CRYPTOPP_SRC_DIR/donna_sse.cpp \
	$$CRYPTOPP_SRC_DIR/sse_simd.cpp

SSSE3_SOURCES += \
	$$CRYPTOPP_SRC_DIR/aria_simd.cpp \
	$$CRYPTOPP_SRC_DIR/cham_simd.cpp \
	$$CRYPTOPP_SRC_DIR/gcm_simd.cpp \
	$$CRYPTOPP_SRC_DIR/gf2n_simd.cpp \
	$$CRYPTOPP_SRC_DIR/keccak_simd.cpp \
	$$CRYPTOPP_SRC_DIR/lea_simd.cpp \
	$$CRYPTOPP_SRC_DIR/simeck_simd.cpp \
	$$CRYPTOPP_SRC_DIR/simon128_simd.cpp \
	$$CRYPTOPP_SRC_DIR/speck128_simd.cpp

SSE4_1_SOURCES += \
	$$CRYPTOPP_SRC_DIR/blake2s_simd.cpp \
	$$CRYPTOPP_SRC_DIR/blake2b_simd.cpp \
	$$CRYPTOPP_SRC_DIR/simon64_simd.cpp \
	$$CRYPTOPP_SRC_DIR/speck64_simd.cpp

SSE4_2_SOURCES += \
	$$CRYPTOPP_SRC_DIR/crc_simd.cpp

AVX2_SOURCES += \
	$$CRYPTOPP_SRC_DIR/chacha_avx.cpp

NEON_SOURCES += \
	$$CRYPTOPP_SRC_DIR/aria_simd.cpp \
	$$CRYPTOPP_SRC_DIR/blake2s_simd.cpp \
	$$CRYPTOPP_SRC_DIR/blake2b_simd.cpp \
	$$CRYPTOPP_SRC_DIR/chacha_simd.cpp \
	$$CRYPTOPP_SRC_DIR/lea_simd.cpp \
	$$CRYPTOPP_SRC_DIR/neon_simd.cpp \
	$$CRYPTOPP_SRC_DIR/simeck_simd.cpp \
	$$CRYPTOPP_SRC_DIR/simon64_simd.cpp \
	$$CRYPTOPP_SRC_DIR/simon128_simd.cpp \
	$$CRYPTOPP_SRC_DIR/speck64_simd.cpp \
	$$CRYPTOPP_SRC_DIR/speck128_simd.cpp

ARMABI_HEADERS += \
	$$CRYPTOPP_SRC_DIR/arm_simd.h

ARMABI_SOURCES +=  \
	$$CRYPTOPP_SRC_DIR/crc_simd.cpp \
	$$CRYPTOPP_SRC_DIR/gcm_simd.cpp \
	$$CRYPTOPP_SRC_DIR/gf2n_simd.cpp \
	$$CRYPTOPP_SRC_DIR/rijndael_simd.cpp \
	$$CRYPTOPP_SRC_DIR/sha_simd.cpp \
	$$CRYPTOPP_SRC_DIR/shacal2_simd.cpp
	
sse2: message("using sse2")

ssse3 {
	message("using ssse3")
	QMAKE_CFLAGS_AESNI += $$QMAKE_CFLAGS_SSSE3
	AESNI_SOURCES += $$CRYPTOPP_SRC_DIR/sm4_simd.cpp
}

sse4_1 {
	message("using sse4.1")
	QMAKE_CFLAGS_AESNI += $$QMAKE_CFLAGS_SSE4_1
	AESNI_SOURCES += $$CRYPTOPP_SRC_DIR/rijndael_simd.cpp
}

sse4_2 {
	message("using sse4.2")
	QMAKE_CFLAGS_SHANI += $$QMAKE_CFLAGS_SSE4_2
	SHANI_SOURCES += \
		$$CRYPTOPP_SRC_DIR/sha_simd.cpp \
		$$CRYPTOPP_SRC_DIR/shacal2_simd.cpp
}

win32:!win32-g++ {
	CONFIG += masm

	contains(QT_ARCH, x86_64) {
		MASM_SOURCES += \
			$$CRYPTOPP_SRC_DIR/rdrand.asm \
			$$CRYPTOPP_SRC_DIR/x64masm.asm \
			$$CRYPTOPP_SRC_DIR/x64dll.asm
	} else:contains(QT_ARCH, i386) {
		MASM_SOURCES += \
			$$CRYPTOPP_SRC_DIR/rdrand.asm
	} else {
		QT_CRYPTOPP_DEFINES += CRYPTOPP_DISABLE_ASM
		CONFIG -= simd masm
	}

	cross_compile: QT_CRYPTOPP_DEFINES += NO_OS_DEPENDENCE
} else:!isEmpty(ANDROID_TARGET_ARCH) {
	INCLUDEPATH += $$(ANDROID_NDK_ROOT)/sources/android/cpufeatures
	SOURCES += $$(ANDROID_NDK_ROOT)/sources/android/cpufeatures/cpu-features.c

	equals(ANDROID_TARGET_ARCH, arm64-v8a) {
		HEADERS += $$ARMABI_HEADERS
		SOURCES += $$ARMABI_SOURCES
	} else:equals(ANDROID_TARGET_ARCH, armeabi-v7a) {
		HEADERS += $$ARMABI_HEADERS
		SOURCES += $$ARMABI_SOURCES

		NEON_ASM += \
			$$CRYPTOPP_SRC_DIR/aes_armv4.S

		# Qt does not enable neon for armv7a
		QMAKE_CFLAGS -= -mfpu=vfp
		QMAKE_CFLAGS += -mfpu=neon
		QMAKE_CXXFLAGS -= -mfpu=vfp
		QMAKE_CXXFLAGS += -mfpu=neon
		CONFIG += neon
	} else:equals(ANDROID_TARGET_ARCH, x86) {
		# Do this for Android builds for now as the NDK is broken
		warning("Disabled x86 crypto ASM")

		QT_CRYPTOPP_DEFINES += CRYPTOPP_DISABLE_ASM
		CONFIG -= simd

		SOURCES +=  \
			$$CRYPTOPP_SRC_DIR/sse_simd.cpp
	}
} else:unix|win32-g++ {
	clang: QMAKE_CXXFLAGS += -Wno-keyword-macro -Wno-unused-const-variable -Wno-unused-private-field
	else:gcc: QMAKE_CXXFLAGS += -Wno-class-memaccess -Wno-unknown-pragmas

	contains(QT_CPU_FEATURES.$$QT_ARCH, ssse3): QMAKE_CXXFLAGS += -mpclmul
	QMAKE_CFLAGS_SSSE3 += -mpclmul

	linux:cryptopp_omp {
		QMAKE_CXXFLAGS += -fopenmp
		LIBS += -lgomp
	}

	darwin {
		warning("Disabeling mixed assembler")
		QT_CRYPTOPP_DEFINES += CRYPTOPP_DISABLE_MIXED_ASM
	}

	ios {
		warning("Disabeling assembler")
		QT_CRYPTOPP_DEFINES += CRYPTOPP_DISABLE_ASM
	}
}

DEFINES += $$QT_CRYPTOPP_DEFINES

message(Build config: $$CONFIG)
