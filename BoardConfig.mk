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

# inherit from common msm8976-common
-include device/lenovo/msm8976-common/BoardConfigCommon.mk

DEVICE_PATH := device/lenovo/YTX703F

# Assert
TARGET_OTA_ASSERT_DEVICE := YT-X703F

# Kernel
TARGET_KERNEL_CONFIG := YTX703F_defconfig

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/lenovo/YTX703F/BoardConfigVendor.mk