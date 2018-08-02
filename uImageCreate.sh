#!/usr/bin/env bash

# source ./uImageCreate.sh

source ~/Workspace/scripts/xilinx-env-setup.sh

# 删除配置文件.config
# make distclean

# 将内核恢复为zynq的默认配置！(`linux-xlnx-xilinx-v2017.4/arch/arm/configs/xilinx_zynq_defconfig`)
# 配置将写入到.config
# make ARCH=arm xilinx_zynq_defconfig

# 配置内核
# 配置将写入到.config
# make ARCH=arm menuconfig

# 编译、生成内核镜像
make ARCH=arm UIMAGE_LOADADDR=0x8000 uImage
