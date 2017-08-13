#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# call the proprietary setup
$(call inherit-product-if-exists, vendor/lenovo/YTX703L/YTX703L-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit from msm8976-common
$(call inherit-product, device/lenovo/msm8976-common/msm8976.mk)

# RIL
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    librmnetctl \
    libxml2 \
    libqsap_sdk \
    telephony-ext \
    libminui \
    libnfnetlink \
    libnetfilter_conntrack

# Ramdisk: extra init scripts
PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.qcom.syspart_fixup.sh \
    init.qcom.wifi.sh \
    init.class_main.sh

# Qualcomm RIL-specific configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dsi_config.xml:system/etc/data/dsi_config.xml \
    $(LOCAL_PATH)/configs/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/qmi_config.xml:system/etc/data/qmi_config.xml \
    $(LOCAL_PATH)/configs/qcril.db:system/vendor/qcril.db \
    $(LOCAL_PATH)/configs/default.prop:system/vendor/default.prop \
    $(LOCAL_PATH)/configs/IPACM_cfg.xml:system/etc/IPACM_cfg.xml \
    $(LOCAL_PATH)/configs/ConnectivityExt.xml:system/etc/permissions/ConnectivityExt.xml

