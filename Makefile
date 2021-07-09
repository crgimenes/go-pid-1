@all:
	GOARCH=amd64 GOOS=linux go build -o init
	echo init | cpio -o -H newc | gzip > rootfs.cpio.gz

run:
	qemu-system-x86_64 -kernel ./kernel/bzImage -initrd rootfs.cpio.gz \
    -m 4G \
    -vga virtio \
    -usb \
    -device usb-tablet \
    -display default,show-cursor=on

clean:
	rm -f rootfs.cpio.gz init 
