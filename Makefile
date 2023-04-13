all: unpack addon pack-lxd

unpack:
	unsquashfs -f -d source/ vyos.squashfs

addon:
	mkdir source/config
	cp source/opt/vyatta/etc/config.boot.default source/config/config.boot
	cp data/fstab source/etc/fstab
	chown 0:102 -R source/config

pack-lxd:
	distrobuilder pack-lxd --type unified vyos.yaml source
