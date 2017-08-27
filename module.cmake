message(STATUS "Loading crypto module...")

if (NOT CONFIGURED_ONCE)
	set(MODULE_CRYPTO_SOURCE_DIR ${MODULE_CRYPTO_DIR}/src)
endif()

include_directories(${MODULE_CRYPTO_DIR}/include)

add_library (aurora-crypto SHARED ${MODULE_CRYPTO_SOURCE_DIR}/AES.cpp)

set_target_properties(aurora-crypto PROPERTIES OUTPUT_NAME aurora-crypto)
