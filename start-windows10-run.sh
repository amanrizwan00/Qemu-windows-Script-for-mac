qemu-system-x86_64 \
	-m 4g \
	-vga virtio \
	-display default,show-cursor=off,gl=off \
	-usb \
	-device usb-tablet \
	-smp 4 \
	-drive file=windows10.qcow2,if=virtio \
	-machine type=q35,accel=hvf \
	-nic user,model=virtio \
	-rtc base=localtime,clock=host \
	-cpu Nehalem,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time \
	-drive if=pflash,format=raw,readonly=on,file=/Users/alber-crossware/Downloads/usr/share/OVMF/OVMF_CODE.fd \
	-drive if=pflash,format=raw,readonly=on,file=/Users/alber-crossware/Downloads/usr/share/OVMF/OVMF_VARS.fd \
	-boot c
