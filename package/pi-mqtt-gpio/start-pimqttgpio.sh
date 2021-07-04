#!/bin/sh

CONFIG_FILE="/boot/mqtt-gpio.yaml"
LOGGER_TAG="pi-mqtt-gpio"

python -m pi_mqtt_gpio.server "$CONFIG_FILE"