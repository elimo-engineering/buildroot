Intro
=====

This directory contains a buildroot configuration for building an image for 
the Beechat board.

How to build it
===============

Provide the OpenJDK
-------------------
run get_JDK.sh from this directory
   
   $ ./get_JDK.sh

Configure Buildroot
-------------------

  $ make elimo_beechat_defconfig

Build the rootfs
----------------

Note: you will need to have access to the network, since Buildroot will 
download the packages' sources.

You may now build your rootfs with:

  $ make

(This may take a while, consider getting yourself a coffee ;-) )

Result of the build
-------------------

After building, you should obtain this tree:

    output/images/
    +-- boot.scr
    +-- boot.vfat
    +-- rootfs.ext2
    +-- rootfs.ext4 -> rootfs.ext2
    +-- rootfs.tar
    +-- sdcard.img
    +-- sun8i-v3s-licheepi-zero-dock.dtb
    +-- sun8i-v3s-licheepi-zero.dtb
    +-- u-boot.bin
    +-- u-boot-sunxi-with-spl.bin
    `-- zImage

How to write the SD card
========================

Once the build process is finished you will have an image called
"sdcard.img" in the output/images/ directory.

Copy the bootable "sdcard.img" onto an SD card with "dd":

  $ sudo dd if=output/images/sdcard.img of=/dev/sdX

Alternatively, you can use the Etcher graphical tool to burn the image
to the SD card safely and on any platform:

https://etcher.io/

Once the SD card is burned, insert it into your Beechat board,
and power it up. Your new system should come up now and start a
console on the UART0 serial port.
