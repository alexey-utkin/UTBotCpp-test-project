# This file is automatically generated by UnitTestBot. For further information seehttps://unittestbot.org

# This file is automatically generated by UnitTestBot. For further information seehttps://unittestbot.org

export PROJECT_DIR_RELATIVE_TO_MAKEFILE = ../..
export MAKEFILE_DIR = $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
export PROJECT_DIR = $(MAKEFILE_DIR)/$(PROJECT_DIR_RELATIVE_TO_MAKEFILE)
export BUILD_RELATIVE = build/utbot_build
export BUILD_DIR = $(PROJECT_DIR)/$(BUILD_RELATIVE)
# This file is automatically generated by UnitTestBot. For further information seehttps://unittestbot.org

ifndef UTBOT_ALL
    export UTBOT_ALL = $(PROJECT_DIR)/utbot-release-2022.7.2/utbot_distr
endif
export UTBOT_INSTALL = $(UTBOT_ALL)/install
export ACCESS_PRIVATE_LIB = $(UTBOT_ALL)/access_private/include
export UTBOT_DEBS_INSTALL_DIR = $(UTBOT_ALL)/debs-install
export ASAN_LIB = $(UTBOT_DEBS_INSTALL_DIR)/usr/lib/x86_64-linux-gnu/libasan.so.5.0.0
ifneq ("$(wildcard $(UTBOT_INSTALL)/bin/clang-10)\", "")
    export CLANG = $(UTBOT_INSTALL)/bin/clang-10
endif
ifneq ("$(wildcard $(UTBOT_INSTALL)/bin/clang++)\", "")
    export CLANGXX = $(UTBOT_INSTALL)/bin/clang++
endif
export GCC = gcc
export GXX = g++
ifndef AR
    export AR = $(UTBOT_DEBS_INSTALL_DIR)/usr/bin/x86_64-linux-gnu-ar
endif
ifndef LD_GOLD
    export LD_GOLD = $(UTBOT_DEBS_INSTALL_DIR)/usr/bin/x86_64-linux-gnu-ld.gold
endif
ifndef LD
    export LD = $(UTBOT_DEBS_INSTALL_DIR)/usr/bin/x86_64-linux-gnu-ld.bfd
endif
ifneq ("$(wildcard $(UTBOT_ALL)/gtest)\", "")
    export GTEST = $(UTBOT_ALL)/gtest
endif
.FORCE : 
	
bin : .FORCE
	$(MAKE) -f $(PROJECT_DIR)/tests/lib/__libfunc_shared.mk bin
build : .FORCE
	$(MAKE) -f $(PROJECT_DIR)/tests/lib/__libfunc_shared.mk build || $(MAKE) -f $(PROJECT_DIR)/tests/lib/__libfunc_obj.mk build
run : .FORCE
	$(MAKE) -f $(PROJECT_DIR)/tests/lib/__libfunc_shared.mk build && { $(MAKE) -f $(PROJECT_DIR)/tests/lib/__libfunc_shared.mk run; exit $$?; } || { $(MAKE) -f $(PROJECT_DIR)/tests/lib/__libfunc_obj.mk build && { $(MAKE) -f $(PROJECT_DIR)/tests/lib/__libfunc_obj.mk run; exit $$?; } }
clean : .FORCE
	$(MAKE) -f $(PROJECT_DIR)/tests/lib/__libfunc_shared.mk clean
	$(MAKE) -f $(PROJECT_DIR)/tests/lib/__libfunc_obj.mk clean
