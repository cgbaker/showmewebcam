################################################################################
#
# python-pi-mqtt-gpio
#
################################################################################

PYTHON_PI_MQTT_GPIO_VERSION = 3543b9c88b3f0255bcb985ec90f347805c5ce721
PYTHON_PI_MQTT_GPIO_SOURCE = paho-mqtt-$(PYTHON_PI_MQTT_GPIO_VERSION).tar.gz
PYTHON_PI_MQTT_GPIO_SITE = $(call github,hpeyerl,pi-mqtt-gpio,v$(PYTHON_PI_MQTT_GPIO_VERSION))
PYTHON_PI_MQTT_GPIO_LICENSE = MIT
PYTHON_PI_MQTT_GPIO_SETUP_TYPE = setuptools

$(eval $(python-package))
