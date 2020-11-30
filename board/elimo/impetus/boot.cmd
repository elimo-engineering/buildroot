setenv bootargs console=ttyS0,115200 panic=5 console=tty0 rootwait root=/dev/mmcblk0p2 earlyprintk rw

# Example kernel cmdline to enable:
# - brcmfmac debugging
# - dyndbg for sdio_io.c (dyndbg must be enabled in the kernel config)
#setenv bootargs console=ttyS0,115200 panic=5 console=tty0 rootwait root=/dev/mmcblk0p2 earlyprintk rw brcmfmac.debug=0x00100006 ignore_loglevel dyndbg='\"file sdio_io.c +pfl\"'

load mmc 0:1 0x41000000 zImage
load mmc 0:1 0x41800000 sun8i-s3-elimo-initium.dtb
bootz 0x41000000 - 0x41800000
