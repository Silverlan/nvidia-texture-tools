
INCLUDE(${NV_CMAKE_DIR}/DetermineProcessor.cmake)

# Set optimal options for gcc:
IF(CMAKE_COMPILER_IS_GNUCXX)

	IF(NV_SYSTEM_PROCESSOR STREQUAL "i586")
		SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=i586")
	ENDIF(NV_SYSTEM_PROCESSOR STREQUAL "i586")

	IF(NV_SYSTEM_PROCESSOR STREQUAL "i686")
		SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=i686")
		#SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mfpmath=sse -mtune=i686 -msse3")
		#SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=pentium4")
	ENDIF(NV_SYSTEM_PROCESSOR STREQUAL "i686")

	IF(NV_SYSTEM_PROCESSOR STREQUAL "x86_64")
		SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=athlon64")
		#SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=athlon64 -msse3")
	ENDIF(NV_SYSTEM_PROCESSOR STREQUAL "x86_64")

	IF(NV_SYSTEM_PROCESSOR STREQUAL "powerpc")
		SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mcpu=powerpc -maltivec -mabi=altivec -mpowerpc-gfxopt")
		
		# ibook G4:
		#SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mcpu=7450 -mtune=7450 -maltivec -mabi=altivec -mpowerpc-gfxopt")
	ENDIF(NV_SYSTEM_PROCESSOR STREQUAL "powerpc")

ENDIF(CMAKE_COMPILER_IS_GNUCXX)

