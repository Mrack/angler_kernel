MODULE_NAME := lkm_android

ifneq ($(KERNELRELEASE),)
	obj-m := lkm_android.o

else
	CROSS_COMPILE := /home/mrack/aosp8.1/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-

	PWD	:=$(shell pwd)
	KDIR := /home/mrack/kernel/548fb8529f7f/out

modules:
	make  -o out -C $(KDIR)  \
	CROSS_COMPILE=$(CROSS_COMPILE) \
	CFLAGS_MODULE=-fno-pic \
	ARCH=arm64 \
	M=$(PWD) modules
	

clean:
	rm -rf *.*.tmp *.*.d *.o *.order *.symvers *.ko *.mod* .*.cmd .*.*.cmd .*.*.*.cmd	
endif
