#/bin/sh

case "$1" in
    boot)
        echo "boot image with Qemu"
        qemu-system-x86_64 boot.bin
        ;;
	clean)
		echo "cleaning .bin files"
		rm *.bin
		;;
	*)
		echo "Compiling and building"
		# nasm for assembly compilation
		nasm boot.asm -f bin -o boot.bin
		;;
esac