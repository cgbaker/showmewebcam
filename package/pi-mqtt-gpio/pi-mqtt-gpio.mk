################################################################################
#
# pi-mqtt-gpio
#
################################################################################

PIMQTTGPIO_VERSION = 3543b9c88b3f0255bcb985ec90f347805c5ce721
PIMQTTGPIO_SITE = git://github.com/hpeyerl/pi-mqtt-gpio
PIMQTTGPIO_LICENSE = MIT
PIMQTTGPIO_LICENSE_FILES = LICENSE
PIMQTTGPIO_DEST_DIR = /opt/pi-mqtt-io
PIMQTTGPIO_SITE_METHOD = git
PIMQTTGPIO_INIT_SYSTEMD_TARGET = basic.target.wants
PIMQTTGPIO_SETUP_TYPE=distutils

$(eval $(python-package))

