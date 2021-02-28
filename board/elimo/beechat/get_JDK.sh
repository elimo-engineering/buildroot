#!/bin/bash

wget https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.9.1%2B1/OpenJDK11U-jdk_arm_linux_hotspot_11.0.9.1_1.tar.gz

tar xzvf ./OpenJDK11U-jdk_arm_linux_hotspot_11.0.9.1_1.tar.gz -C rootfs_overlay/opt
