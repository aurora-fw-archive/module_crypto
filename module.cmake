# ┌─┐┬ ┬┬─┐┌─┐┬─┐┌─┐  ┌─┐┬─┐┌─┐┌┬┐┌─┐┬ ┬┌─┐┬─┐┬┌─
# ├─┤│ │├┬┘│ │├┬┘├─┤  ├┤ ├┬┘├─┤│││├┤ ││││ │├┬┘├┴┐
# ┴ ┴└─┘┴└─└─┘┴└─┴ ┴  └  ┴└─┴ ┴┴ ┴└─┘└┴┘└─┘┴└─┴ ┴
# A Powerful General Purpose Framework
# More information in: https://aurora-fw.github.io/
#
# Copyright (C) 2017 Aurora Framework, All rights reserved.
#
# This file is part of the Aurora Framework. This framework is free
# software; you can redistribute it and/or modify it under the terms of
# the GNU Lesser General Public License version 3 as published by the
# Free Software Foundation and appearing in the file LICENSE included in
# the packaging of this file. Please review the following information to
# ensure the GNU Lesser General Public License version 3 requirements
# will be met: https://www.gnu.org/licenses/lgpl-3.0.html.

message(STATUS "Loading crypto module...")

if (NOT CONFIGURED_ONCE)
	set(AURORAFW_MODULE_CRYPTO_SOURCE_DIR ${AURORAFW_MODULE_CRYPTO_DIR}/src)
endif()

include_directories(${AURORAFW_MODULE_CRYPTO_DIR}/include)

add_library (aurorafw-crypto SHARED ${AURORAFW_MODULE_CRYPTO_SOURCE_DIR}/AES.cpp)
aurorafw_add_library_target(aurorafw-crypto SHARED)

target_link_libraries(aurorafw-crypto aurorafw-cli)

set_target_properties(aurorafw-crypto PROPERTIES OUTPUT_NAME aurorafw-crypto)
