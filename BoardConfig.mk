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
# See te License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8976-common
-include device/lenovo/msm8976-common/BoardConfigCommon.mk

DEVICE_PATH := device/lenovo/YTX703L

# Assert
TARGET_OTA_ASSERT_DEVICE := yt_x703l

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# SELinux Policies
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Radio
TARGET_RIL_VARIANT := caf

# inherit from the proprietary version
-include vendor/lenovo/YTX703L/BoardConfigVendor.mk
