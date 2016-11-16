MCU_SERIES = m4
MCU_VARIANT = NRF52
LD_FILE = boards/nrf52832_aa_s132.ld

SRC_C += \
	hal/hal_uarte.c \
	softdevice/modble.c \
	softdevice/softdevice.c

CFLAGS += -I./softdevice
CFLAGS += -I./softdevice/s132/headers
CFLAGS += -I./softdevice/s132/headers/nrf52
CFLAGS += -DBLUETOOTH_SD=132
CFLAGS += -DBLUETOOTH_SD_DEBUG=1
