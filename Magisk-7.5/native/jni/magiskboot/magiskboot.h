#pragma once

#include <sys/types.h>

#define HEADER_FILE     "header"
#define KERNEL_FILE     "kernel"
#define RAMDISK_FILE    "ramdisk.cpio"
#define SECOND_FILE     "second"
#define EXTRA_FILE      "extra"
#define KER_DTB_FILE    "kernel_dtb"
#define RECV_DTBO_FILE  "recovery_dtbo"
#define DTB_FILE        "dtb"
#define NEW_BOOT        "new-boot.img"

int unpack(const char *image, bool nodecomp = false, bool hdr = false);
void repack(const char* src_img, const char* out_img, bool nocomp = false);
int hexpatch(const char *image, const char *from, const char *to);
int cpio_commands(int argc, char *argv[]);
int dtb_commands(int argc, char *argv[]);

char *patch_verity(const void *buf, uint32_t &size, bool inplace = false);
void patch_encryption(void *buf, uint32_t &size);
bool check_env(const char *name);
