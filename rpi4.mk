#
# Copyright 2020 Android-RPi Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_PACKAGE_OVERLAYS += device/generic/car/common/overlay
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, device/arpi/rpi4/android_rpi4.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/generic/car/common/car.mk)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    android.car.number_pre_created_users=1 \
    android.car.number_pre_created_guests=1 \
    android.car.user_hal_enabled=true
DEVICE_PACKAGE_OVERLAYS += device/arpi/rpi4/overlay device/generic/car/car_x86_64/overlay
 
PRODUCT_NAME := rpi4
PRODUCT_DEVICE := rpi4
PRODUCT_BRAND := arpi
PRODUCT_MODEL := Raspberry Pi 4
PRODUCT_MANUFACTURER := mlorenzati ARPi Auto
