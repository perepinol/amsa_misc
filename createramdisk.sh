dev=/dev/ramdisk
mountpoint=/tmp/ramdisk
c=$((2048*16))
bs=1024


if [ ! -d "$mountpoint" ]; then
	mkdir "$mountpoint"
fi

dd if=/dev/zero of=$dev count=$c bs=$bs
mkfs.ext4 $dev
mount $dev $mountpoint
chmod 777 $mountpoint
