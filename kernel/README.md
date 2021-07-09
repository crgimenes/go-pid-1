# How to compile the kernel

```console
git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
cd linux
git checkout v5.13
make mrproper
make defconfig
make menuconfig
make -j"$(nproc)"
cp arch/x86/boot/bzImage ../
```

We just need the bzImage file.

