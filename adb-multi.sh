#!/bin/bash
#
#     Copyright (C) 2018 KreAch3R
#
#     Licensed under the Apache License, Version 2.0 (the "License");
#     you may not use this file except in compliance with the License.
#     You may obtain a copy of the License at
#
#          http://www.apache.org/licenses/LICENSE-2.0
#
#     Unless required by applicable law or agreed to in writing, software
#     distributed under the License is distributed on an "AS IS" BASIS,
#     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#     See the License for the specific language governing permissions and
#     limitations under the License.

# Version: 0.5

# Variables for color output
green=`tput setaf 2`
cyan=`tput setaf 6`
red=`tput setaf 1`
yellow=`tput setaf 3`
reset=`tput sgr0`

# Device ID (passed as 1st argument)
id="$1"

# shift passed arguments one place right
shift 1

model=$(adb -s $id shell getprop ro.product.model)
manufacturer=$(adb -s $id shell getprop ro.product.manufacturer)

echo "Connected to ${green}$manufacturer $model!${reset}"

adb -s $id $@
