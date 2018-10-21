#
#             LUFA Library
#     Copyright (C) Dean Camera, 2014.
#
#  dean [at] fourwalledcubicle [dot] com
#           www.lufa-lib.org
#
# --------------------------------------
#         LUFA Project Makefile.
# --------------------------------------

# Run "make help" for target help.

MCU          = at90usb1286
ARCH         = AVR8
F_CPU        = 16000000
F_USB        = $(F_CPU)
OPTIMIZATION = s
TARGET       = Joystick
SRC          = $(TARGET).c Descriptors.c $(LUFA_SRC_USB) uart/uart.c
LUFA_PATH    = ../LUFA/LUFA
CC_FLAGS     = -DUSE_LUFA_CONFIG_HEADER -IConfig/ -Iuart/ -L/nix/store/sqxw9adr1njd6lhpklblz32kcvli8iks-avr-libc-2.0.0/avr/lib/avr51 -B/nix/store/sqxw9adr1njd6lhpklblz32kcvli8iks-avr-libc-2.0.0/avr/lib/avr51 -I/nix/store/sqxw9adr1njd6lhpklblz32kcvli8iks-avr-libc-2.0.0/avr/include
CPP_STANDARD = gnu++11
LD_FLAGS     = -L/nix/store/sqxw9adr1njd6lhpklblz32kcvli8iks-avr-libc-2.0.0/avr/lib/avr51 -B/nix/store/sqxw9adr1njd6lhpklblz32kcvli8iks-avr-libc-2.0.0/avr/lib/avr51

# Default target
all:

# Include LUFA build script makefiles
include $(LUFA_PATH)/Build/lufa_core.mk
include $(LUFA_PATH)/Build/lufa_sources.mk
include $(LUFA_PATH)/Build/lufa_build.mk
include $(LUFA_PATH)/Build/lufa_cppcheck.mk
include $(LUFA_PATH)/Build/lufa_doxygen.mk
include $(LUFA_PATH)/Build/lufa_dfu.mk
include $(LUFA_PATH)/Build/lufa_hid.mk
include $(LUFA_PATH)/Build/lufa_avrdude.mk
include $(LUFA_PATH)/Build/lufa_atprogram.mk
