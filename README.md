# How to install this project in LXC/LXD

## Clone this Project

```
git clone https://github.com/jack9603301/vyos-on-lxd
```

## Download the latest ISO

```
mkdir vyos && cd vyos
wget https://downloads.vyos.io/release/1.1.8/vyos-1.1.8-amd64.iso
```

## Mount the ISOs file system

```
mkdir rootfs
sudo mount -o loop vyos-1.1.8-amd64.iso rootfs
```

## extract filesystem.squashfs

```
cp rootfs/live/filesystem.squashfs ../vyos-on-lxd/vyos.squashfs
cd ../vyos-on-lxd/
```

## install dependencies

Please choose the appropriate method for your operating system to install the following dependencies:

- squashfs-tools

## Execute LXC/LXD build

### with LXC

```
make pack-lxc
```

## with LXD

```
make pack-lxd
```
