deps_config := \
	/Users/tirajetw/esp/esp-idf/components/app_trace/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/aws_iot/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/bt/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/driver/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/efuse/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/esp32/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/esp_event/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/esp_http_client/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/esp_http_server/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/esp_https_ota/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/espcoredump/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/ethernet/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/fatfs/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/freemodbus/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/freertos/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/heap/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/libsodium/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/log/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/lwip/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/mbedtls/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/mdns/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/mqtt/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/nvs_flash/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/openssl/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/pthread/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/spi_flash/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/spiffs/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/unity/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/vfs/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/wear_levelling/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/wifi_provisioning/Kconfig \
	/Users/tirajetw/esp/esp-idf/components/app_update/Kconfig.projbuild \
	/Users/tirajetw/esp/esp-adf/components/audio_board/Kconfig.projbuild \
	/Users/tirajetw/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/Users/tirajetw/esp/esp-adf/components/esp-adf-libs/Kconfig.projbuild \
	/Users/tirajetw/esp/esp-adf/components/esp-sr/Kconfig.projbuild \
	/Users/tirajetw/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/Users/tirajetw/esp/esp-adf/examples/recorder/pipeline_raw_http/main/Kconfig.projbuild \
	/Users/tirajetw/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/Users/tirajetw/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_TARGET)" "esp32"
include/config/auto.conf: FORCE
endif
ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
