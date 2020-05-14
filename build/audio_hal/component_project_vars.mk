# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += /Users/tirajetw/esp/esp-adf/components/audio_hal/include /Users/tirajetw/esp/esp-adf/components/audio_hal/driver/include /Users/tirajetw/esp/esp-adf/components/audio_hal/driver/es8388 /Users/tirajetw/esp/esp-adf/components/audio_hal/driver/es8374 /Users/tirajetw/esp/esp-adf/components/audio_hal/driver/es8311 /Users/tirajetw/esp/esp-adf/components/audio_hal/driver/es7243 /Users/tirajetw/esp/esp-adf/components/audio_hal/driver/zl38063 /Users/tirajetw/esp/esp-adf/components/audio_hal/driver/zl38063/api_lib /Users/tirajetw/esp/esp-adf/components/audio_hal/driver/zl38063/example_apps /Users/tirajetw/esp/esp-adf/components/audio_hal/driver/zl38063/firmware /Users/tirajetw/esp/esp-adf/components/audio_hal/driver/tas5805m /Users/tirajetw/esp/esp-adf/components/audio_hal/driver/es7148 /Users/tirajetw/esp/esp-adf/components/audio_hal/driver/ac101
COMPONENT_LDFLAGS += -L$(BUILD_DIR_BASE)/audio_hal -laudio_hal -L/Users/tirajetw/esp/esp-adf/components/audio_hal/driver/zl38063/firmware -lfirmware
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += audio_hal
COMPONENT_LDFRAGMENTS += 
component-audio_hal-build: 
