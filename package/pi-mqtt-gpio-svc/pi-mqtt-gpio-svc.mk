################################################################################
#
# pi-mqtt-gpio-svc
#
################################################################################

PI_MQTT_GPIO_SVC_DEST_DIR = /opt/pi-mqtt-gpio-svc
PI_MQTT_GPIO_SVC_INIT_SYSTEMD_TARGET = basic.target.wants

define PIWEBCAM_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)$(PI_MQTT_GPIO_SVC_DEST_DIR)
	$(INSTALL) -D -m 0755 $(PIWEBCAM_PKGDIR)/start-pimqtt-gpio.sh $(TARGET_DIR)$(PIWEBCAM_DEST_DIR)
endef

define PI_MQTT_GPIO_SVC_INSTALL_INIT_SYSTEMD
	mkdir -p $(TARGET_DIR)/etc/systemd/system/$(PI_MQTT_GPIO_SVC_INIT_SYSTEMD_TARGET)
	$(INSTALL) -D -m 644 $(PI_MQTT_GPIO_SVC_PKGDIR)/pi-mqtt-gpio.service $(TARGET_DIR)/usr/lib/systemd/system/pi-mqtt-gpio.service
	ln -sf /usr/lib/systemd/system/pi-mqtt-gpio.service $(TARGET_DIR)/etc/systemd/system/$(PI_MQTT_GPIO_SVC_INIT_SYSTEMD_TARGET)
endef

$(eval $(generic-package))