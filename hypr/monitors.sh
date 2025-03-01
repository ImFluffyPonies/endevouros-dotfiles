#!/bin/bash

if lspci | grep -i nvidia; then
	echo "monitor = eDP-1, disable" > ~/.config/hypr/monitors.conf
	echo "monitor = HDMI-A-1, 2560x1440@144.00hz, auto, 1" >> ~/.config/hypr/monitors.conf
	echo "env = AQ_DRM_DEVICES, /dev/dri/card1:/dev/dri/card2" > ~/.config/hypr/gpu.conf
else 
	echo "monitor = eDP-1, 1920x1080@144.00hz, auto, 1" > ~/.config/hypr/monitors.conf
	echo "env = AQ_DRM_DEVICES, /dev/dri/card1" > ~/.config/hypr/gpu.conf
fi
