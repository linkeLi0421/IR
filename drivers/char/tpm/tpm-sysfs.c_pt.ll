; ModuleID = '/llk/IR/drivers/char/tpm/tpm-sysfs.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm-sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.tpm_pcr_attr = type { i32, i32, %struct.device_attribute }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tpm_bank_info = type { i16, i16, i16 }
%struct.tpm_buf = type { i32, ptr }
%struct.tpm_header = type <{ i16, i32, %union.anon.65 }>
%union.anon.65 = type { i32 }
%union.cap_t = type { %struct.timeout_t, [8 x i8] }
%struct.timeout_t = type { i32, i32, i32, i32 }
%struct.permanent_flags_t = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.stclear_flags_t = type <{ i16, i8, i8, i8, i8, i8 }>
%struct.tpm1_version2 = type { i16, %struct.tpm1_version }
%struct.tpm1_version = type { i8, i8, i8, i8 }
%struct.tpm_class_ops = type { i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tpm_digest = type { i16, [64 x i8] }

@.str = private unnamed_addr constant [29 x i8] c"drivers/char/tpm/tpm-sysfs.c\00", align 1
@tpm2_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tpm2_dev_attrs, ptr null }, align 4
@tpm1_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tpm1_dev_attrs, ptr null }, align 4
@pcr_group_sha1 = internal global %struct.attribute_group { ptr @.str.39, ptr null, ptr null, ptr @pcr_group_attrs_sha1, ptr null }, align 4
@pcr_group_sha256 = internal global %struct.attribute_group { ptr @.str.63, ptr null, ptr null, ptr @pcr_group_attrs_sha256, ptr null }, align 4
@pcr_group_sha384 = internal global %struct.attribute_group { ptr @.str.64, ptr null, ptr null, ptr @pcr_group_attrs_sha384, ptr null }, align 4
@pcr_group_sha512 = internal global %struct.attribute_group { ptr @.str.65, ptr null, ptr null, ptr @pcr_group_attrs_sha512, ptr null }, align 4
@pcr_group_sm3 = internal global %struct.attribute_group { ptr @.str.66, ptr null, ptr null, ptr @pcr_group_attrs_sm3, ptr null }, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"TPM with unsupported bank algorithm 0x%04x\00", align 1
@tpm2_dev_attrs = internal global [2 x ptr] [ptr @dev_attr_tpm_version_major, ptr null], align 4
@dev_attr_tpm_version_major = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @tpm_version_major_show, ptr null }, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"tpm_version_major\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@tpm1_dev_attrs = internal global [12 x ptr] [ptr @dev_attr_pubek, ptr @dev_attr_pcrs, ptr @dev_attr_enabled, ptr @dev_attr_active, ptr @dev_attr_owned, ptr @dev_attr_temp_deactivated, ptr @dev_attr_caps, ptr @dev_attr_cancel, ptr @dev_attr_durations, ptr @dev_attr_timeouts, ptr @dev_attr_tpm_version_major, ptr null], align 4
@dev_attr_pubek = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @pubek_show, ptr null }, align 4
@dev_attr_pcrs = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @pcrs_show, ptr null }, align 4
@dev_attr_enabled = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @enabled_show, ptr null }, align 4
@dev_attr_active = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @active_show, ptr null }, align 4
@dev_attr_owned = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @owned_show, ptr null }, align 4
@dev_attr_temp_deactivated = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @temp_deactivated_show, ptr null }, align 4
@dev_attr_caps = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @caps_show, ptr null }, align 4
@dev_attr_cancel = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 128 }, ptr null, ptr @cancel_store }, align 4
@dev_attr_durations = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292 }, ptr @durations_show, ptr null }, align 4
@dev_attr_timeouts = internal global %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292 }, ptr @timeouts_show, ptr null }, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"pubek\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"attempting to read the PUBEK\00", align 1
@.str.8 = private unnamed_addr constant [95 x i8] c"Algorithm: %4ph\0AEncscheme: %2ph\0ASigscheme: %2ph\0AParameters: %12ph\0AModulus length: %d\0AModulus:\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%16ph\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"include/linux/tpm.h\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"tpm_buf: overflow\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"pcrs\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"attempting to determine the number of PCRS\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"PCR-%02d: \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"attempting to determine the permanent enabled state\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.21 = private unnamed_addr constant [51 x i8] c"attempting to determine the permanent active state\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"owned\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"attempting to determine the owner state\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"temp_deactivated\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"attempting to determine the temporary state\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"caps\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"attempting to determine the manufacturer\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Manufacturer: 0x%x\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"attempting to determine the 1.2 version\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"attempting to determine the 1.1 version\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"TCG version: %d.%d\0AFirmware version: %d.%d\0A\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"cancel\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"durations\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"%d %d %d [%s]\0A\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"adjusted\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"original\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"timeouts\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"%d %d %d %d [%s]\0A\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"pcr-sha1\00", align 1
@pcr_group_attrs_sha1 = internal global [25 x ptr] [ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_0, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_1, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_2, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_3, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_4, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_5, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_6, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_7, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_8, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_9, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_10, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_11, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_12, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_13, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_14, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_15, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_16, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_17, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_18, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_19, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_20, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_21, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_22, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_23, i64 8), ptr null], align 4
@dev_attr_pcr_sha1_0 = internal global %struct.tpm_pcr_attr { i32 4, i32 0, %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_1 = internal global %struct.tpm_pcr_attr { i32 4, i32 1, %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_2 = internal global %struct.tpm_pcr_attr { i32 4, i32 2, %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_3 = internal global %struct.tpm_pcr_attr { i32 4, i32 3, %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_4 = internal global %struct.tpm_pcr_attr { i32 4, i32 4, %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_5 = internal global %struct.tpm_pcr_attr { i32 4, i32 5, %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_6 = internal global %struct.tpm_pcr_attr { i32 4, i32 6, %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_7 = internal global %struct.tpm_pcr_attr { i32 4, i32 7, %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_8 = internal global %struct.tpm_pcr_attr { i32 4, i32 8, %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_9 = internal global %struct.tpm_pcr_attr { i32 4, i32 9, %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_10 = internal global %struct.tpm_pcr_attr { i32 4, i32 10, %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_11 = internal global %struct.tpm_pcr_attr { i32 4, i32 11, %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_12 = internal global %struct.tpm_pcr_attr { i32 4, i32 12, %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_13 = internal global %struct.tpm_pcr_attr { i32 4, i32 13, %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_14 = internal global %struct.tpm_pcr_attr { i32 4, i32 14, %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_15 = internal global %struct.tpm_pcr_attr { i32 4, i32 15, %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_16 = internal global %struct.tpm_pcr_attr { i32 4, i32 16, %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_17 = internal global %struct.tpm_pcr_attr { i32 4, i32 17, %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_18 = internal global %struct.tpm_pcr_attr { i32 4, i32 18, %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_19 = internal global %struct.tpm_pcr_attr { i32 4, i32 19, %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_20 = internal global %struct.tpm_pcr_attr { i32 4, i32 20, %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_21 = internal global %struct.tpm_pcr_attr { i32 4, i32 21, %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_22 = internal global %struct.tpm_pcr_attr { i32 4, i32 22, %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha1_23 = internal global %struct.tpm_pcr_attr { i32 4, i32 23, %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@.str.40 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"11\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"13\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"14\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"16\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"17\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"18\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"19\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"21\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"23\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"pcr-sha256\00", align 1
@pcr_group_attrs_sha256 = internal global [25 x ptr] [ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_0, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_1, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_2, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_3, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_4, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_5, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_6, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_7, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_8, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_9, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_10, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_11, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_12, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_13, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_14, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_15, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_16, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_17, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_18, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_19, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_20, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_21, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_22, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_23, i64 8), ptr null], align 4
@dev_attr_pcr_sha256_0 = internal global %struct.tpm_pcr_attr { i32 11, i32 0, %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_1 = internal global %struct.tpm_pcr_attr { i32 11, i32 1, %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_2 = internal global %struct.tpm_pcr_attr { i32 11, i32 2, %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_3 = internal global %struct.tpm_pcr_attr { i32 11, i32 3, %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_4 = internal global %struct.tpm_pcr_attr { i32 11, i32 4, %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_5 = internal global %struct.tpm_pcr_attr { i32 11, i32 5, %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_6 = internal global %struct.tpm_pcr_attr { i32 11, i32 6, %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_7 = internal global %struct.tpm_pcr_attr { i32 11, i32 7, %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_8 = internal global %struct.tpm_pcr_attr { i32 11, i32 8, %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_9 = internal global %struct.tpm_pcr_attr { i32 11, i32 9, %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_10 = internal global %struct.tpm_pcr_attr { i32 11, i32 10, %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_11 = internal global %struct.tpm_pcr_attr { i32 11, i32 11, %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_12 = internal global %struct.tpm_pcr_attr { i32 11, i32 12, %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_13 = internal global %struct.tpm_pcr_attr { i32 11, i32 13, %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_14 = internal global %struct.tpm_pcr_attr { i32 11, i32 14, %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_15 = internal global %struct.tpm_pcr_attr { i32 11, i32 15, %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_16 = internal global %struct.tpm_pcr_attr { i32 11, i32 16, %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_17 = internal global %struct.tpm_pcr_attr { i32 11, i32 17, %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_18 = internal global %struct.tpm_pcr_attr { i32 11, i32 18, %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_19 = internal global %struct.tpm_pcr_attr { i32 11, i32 19, %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_20 = internal global %struct.tpm_pcr_attr { i32 11, i32 20, %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_21 = internal global %struct.tpm_pcr_attr { i32 11, i32 21, %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_22 = internal global %struct.tpm_pcr_attr { i32 11, i32 22, %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha256_23 = internal global %struct.tpm_pcr_attr { i32 11, i32 23, %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@.str.64 = private unnamed_addr constant [11 x i8] c"pcr-sha384\00", align 1
@pcr_group_attrs_sha384 = internal global [25 x ptr] [ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_0, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_1, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_2, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_3, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_4, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_5, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_6, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_7, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_8, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_9, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_10, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_11, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_12, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_13, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_14, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_15, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_16, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_17, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_18, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_19, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_20, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_21, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_22, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_23, i64 8), ptr null], align 4
@dev_attr_pcr_sha384_0 = internal global %struct.tpm_pcr_attr { i32 12, i32 0, %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_1 = internal global %struct.tpm_pcr_attr { i32 12, i32 1, %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_2 = internal global %struct.tpm_pcr_attr { i32 12, i32 2, %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_3 = internal global %struct.tpm_pcr_attr { i32 12, i32 3, %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_4 = internal global %struct.tpm_pcr_attr { i32 12, i32 4, %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_5 = internal global %struct.tpm_pcr_attr { i32 12, i32 5, %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_6 = internal global %struct.tpm_pcr_attr { i32 12, i32 6, %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_7 = internal global %struct.tpm_pcr_attr { i32 12, i32 7, %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_8 = internal global %struct.tpm_pcr_attr { i32 12, i32 8, %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_9 = internal global %struct.tpm_pcr_attr { i32 12, i32 9, %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_10 = internal global %struct.tpm_pcr_attr { i32 12, i32 10, %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_11 = internal global %struct.tpm_pcr_attr { i32 12, i32 11, %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_12 = internal global %struct.tpm_pcr_attr { i32 12, i32 12, %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_13 = internal global %struct.tpm_pcr_attr { i32 12, i32 13, %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_14 = internal global %struct.tpm_pcr_attr { i32 12, i32 14, %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_15 = internal global %struct.tpm_pcr_attr { i32 12, i32 15, %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_16 = internal global %struct.tpm_pcr_attr { i32 12, i32 16, %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_17 = internal global %struct.tpm_pcr_attr { i32 12, i32 17, %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_18 = internal global %struct.tpm_pcr_attr { i32 12, i32 18, %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_19 = internal global %struct.tpm_pcr_attr { i32 12, i32 19, %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_20 = internal global %struct.tpm_pcr_attr { i32 12, i32 20, %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_21 = internal global %struct.tpm_pcr_attr { i32 12, i32 21, %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_22 = internal global %struct.tpm_pcr_attr { i32 12, i32 22, %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha384_23 = internal global %struct.tpm_pcr_attr { i32 12, i32 23, %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@.str.65 = private unnamed_addr constant [11 x i8] c"pcr-sha512\00", align 1
@pcr_group_attrs_sha512 = internal global [25 x ptr] [ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_0, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_1, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_2, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_3, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_4, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_5, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_6, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_7, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_8, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_9, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_10, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_11, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_12, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_13, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_14, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_15, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_16, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_17, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_18, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_19, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_20, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_21, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_22, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_23, i64 8), ptr null], align 4
@dev_attr_pcr_sha512_0 = internal global %struct.tpm_pcr_attr { i32 13, i32 0, %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_1 = internal global %struct.tpm_pcr_attr { i32 13, i32 1, %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_2 = internal global %struct.tpm_pcr_attr { i32 13, i32 2, %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_3 = internal global %struct.tpm_pcr_attr { i32 13, i32 3, %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_4 = internal global %struct.tpm_pcr_attr { i32 13, i32 4, %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_5 = internal global %struct.tpm_pcr_attr { i32 13, i32 5, %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_6 = internal global %struct.tpm_pcr_attr { i32 13, i32 6, %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_7 = internal global %struct.tpm_pcr_attr { i32 13, i32 7, %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_8 = internal global %struct.tpm_pcr_attr { i32 13, i32 8, %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_9 = internal global %struct.tpm_pcr_attr { i32 13, i32 9, %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_10 = internal global %struct.tpm_pcr_attr { i32 13, i32 10, %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_11 = internal global %struct.tpm_pcr_attr { i32 13, i32 11, %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_12 = internal global %struct.tpm_pcr_attr { i32 13, i32 12, %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_13 = internal global %struct.tpm_pcr_attr { i32 13, i32 13, %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_14 = internal global %struct.tpm_pcr_attr { i32 13, i32 14, %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_15 = internal global %struct.tpm_pcr_attr { i32 13, i32 15, %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_16 = internal global %struct.tpm_pcr_attr { i32 13, i32 16, %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_17 = internal global %struct.tpm_pcr_attr { i32 13, i32 17, %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_18 = internal global %struct.tpm_pcr_attr { i32 13, i32 18, %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_19 = internal global %struct.tpm_pcr_attr { i32 13, i32 19, %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_20 = internal global %struct.tpm_pcr_attr { i32 13, i32 20, %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_21 = internal global %struct.tpm_pcr_attr { i32 13, i32 21, %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_22 = internal global %struct.tpm_pcr_attr { i32 13, i32 22, %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sha512_23 = internal global %struct.tpm_pcr_attr { i32 13, i32 23, %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@.str.66 = private unnamed_addr constant [8 x i8] c"pcr-sm3\00", align 1
@pcr_group_attrs_sm3 = internal global [25 x ptr] [ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_0, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_1, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_2, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_3, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_4, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_5, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_6, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_7, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_8, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_9, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_10, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_11, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_12, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_13, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_14, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_15, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_16, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_17, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_18, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_19, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_20, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_21, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_22, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_23, i64 8), ptr null], align 4
@dev_attr_pcr_sm3_0 = internal global %struct.tpm_pcr_attr { i32 18, i32 0, %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_1 = internal global %struct.tpm_pcr_attr { i32 18, i32 1, %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_2 = internal global %struct.tpm_pcr_attr { i32 18, i32 2, %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_3 = internal global %struct.tpm_pcr_attr { i32 18, i32 3, %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_4 = internal global %struct.tpm_pcr_attr { i32 18, i32 4, %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_5 = internal global %struct.tpm_pcr_attr { i32 18, i32 5, %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_6 = internal global %struct.tpm_pcr_attr { i32 18, i32 6, %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_7 = internal global %struct.tpm_pcr_attr { i32 18, i32 7, %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_8 = internal global %struct.tpm_pcr_attr { i32 18, i32 8, %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_9 = internal global %struct.tpm_pcr_attr { i32 18, i32 9, %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_10 = internal global %struct.tpm_pcr_attr { i32 18, i32 10, %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_11 = internal global %struct.tpm_pcr_attr { i32 18, i32 11, %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_12 = internal global %struct.tpm_pcr_attr { i32 18, i32 12, %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_13 = internal global %struct.tpm_pcr_attr { i32 18, i32 13, %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_14 = internal global %struct.tpm_pcr_attr { i32 18, i32 14, %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_15 = internal global %struct.tpm_pcr_attr { i32 18, i32 15, %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_16 = internal global %struct.tpm_pcr_attr { i32 18, i32 16, %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_17 = internal global %struct.tpm_pcr_attr { i32 18, i32 17, %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_18 = internal global %struct.tpm_pcr_attr { i32 18, i32 18, %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_19 = internal global %struct.tpm_pcr_attr { i32 18, i32 19, %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_20 = internal global %struct.tpm_pcr_attr { i32 18, i32 20, %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_21 = internal global %struct.tpm_pcr_attr { i32 18, i32 21, %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_22 = internal global %struct.tpm_pcr_attr { i32 18, i32 22, %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4
@dev_attr_pcr_sm3_23 = internal global %struct.tpm_pcr_attr { i32 18, i32 23, %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292 }, ptr @pcr_value_show, ptr null } }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tpm_sysfs_add_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 24
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 481, i32 noundef 9, ptr noundef null) #8
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %6
  %12 = and i32 %8, 2
  %13 = icmp eq i32 %12, 0
  %14 = load i32, ptr %2, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %2, align 4
  %16 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 23, i32 %14
  %17 = select i1 %13, ptr @tpm1_dev_group, ptr @tpm2_dev_group
  store ptr %17, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 25
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 26
  br label %23

23:                                               ; preds = %50, %21
  %24 = phi i32 [ 0, %21 ], [ %51, %50 ]
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr %struct.tpm_bank_info, ptr %25, i32 %24
  %27 = load i16, ptr %26, align 2
  switch i16 %27, label %48 [
    i16 4, label %28
    i16 11, label %32
    i16 12, label %36
    i16 13, label %40
    i16 18, label %44
  ]

28:                                               ; preds = %23
  %29 = load i32, ptr %2, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %2, align 4
  %31 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 23, i32 %29
  store ptr @pcr_group_sha1, ptr %31, align 4
  br label %50

32:                                               ; preds = %23
  %33 = load i32, ptr %2, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %2, align 4
  %35 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 23, i32 %33
  store ptr @pcr_group_sha256, ptr %35, align 4
  br label %50

36:                                               ; preds = %23
  %37 = load i32, ptr %2, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %2, align 4
  %39 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 23, i32 %37
  store ptr @pcr_group_sha384, ptr %39, align 4
  br label %50

40:                                               ; preds = %23
  %41 = load i32, ptr %2, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %2, align 4
  %43 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 23, i32 %41
  store ptr @pcr_group_sha512, ptr %43, align 4
  br label %50

44:                                               ; preds = %23
  %45 = load i32, ptr %2, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %2, align 4
  %47 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 23, i32 %45
  store ptr @pcr_group_sm3, ptr %47, align 4
  br label %50

48:                                               ; preds = %23
  %49 = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %49) #9
  br label %50

50:                                               ; preds = %48, %44, %40, %36, %32, %28
  %51 = add nuw i32 %24, 1
  %52 = load i32, ptr %18, align 8
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %23, label %54

54:                                               ; preds = %50, %11
  %55 = load i32, ptr %2, align 4
  %56 = icmp ugt i32 %55, 6
  br i1 %56, label %57, label %58, !prof !9

57:                                               ; preds = %54
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 528, i32 noundef 9, ptr noundef null) #8
  br label %58

58:                                               ; preds = %57, %54, %6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpm_version_major_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, ptr @.str.5, ptr @.str.4
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pubek_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca %struct.tpm_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !10
  %5 = tail call i32 @tpm_try_get_ops(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %101

7:                                                ; preds = %3
  %8 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.tpm_buf, ptr %4, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %96, label %12

12:                                               ; preds = %7
  store i32 0, ptr %4, align 8
  store i16 -16128, ptr %9, align 1
  %13 = getelementptr inbounds %struct.tpm_header, ptr %9, i32 0, i32 1
  store i32 167772160, ptr %13, align 1
  %14 = getelementptr inbounds %struct.tpm_header, ptr %9, i32 0, i32 2
  store i32 2080374784, ptr %14, align 1
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr inbounds %struct.tpm_header, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %19 = load i32, ptr %4, align 8
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %12
  %23 = add i32 %18, 20
  %24 = icmp ugt i32 %23, 4096
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  %26 = or i32 %19, 1
  store i32 %26, ptr %4, align 8
  br label %30

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %15, i32 %18
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %28, i8 0, i32 20, i1 false)
  %29 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  store i32 %29, ptr %16, align 1
  br label %30

30:                                               ; preds = %27, %25, %12
  %31 = call i32 @tpm_transmit_cmd(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 284, ptr noundef nonnull @.str.7) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %92

33:                                               ; preds = %30
  %34 = load ptr, ptr %10, align 4
  %35 = getelementptr i8, ptr %34, i32 10
  %36 = getelementptr i8, ptr %34, i32 14
  %37 = getelementptr i8, ptr %34, i32 16
  %38 = getelementptr i8, ptr %34, i32 22
  %39 = getelementptr i8, ptr %34, i32 34
  %40 = load i32, ptr %39, align 1
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %42 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38, i32 noundef %41)
  %43 = getelementptr i8, ptr %2, i32 %42
  %44 = getelementptr i8, ptr %34, i32 38
  %45 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %43, ptr noundef nonnull @.str.9, ptr noundef %44)
  %46 = getelementptr i8, ptr %43, i32 %45
  %47 = getelementptr i8, ptr %34, i32 54
  %48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %46, ptr noundef nonnull @.str.9, ptr noundef %47)
  %49 = getelementptr i8, ptr %46, i32 %48
  %50 = getelementptr i8, ptr %34, i32 70
  %51 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %49, ptr noundef nonnull @.str.9, ptr noundef %50)
  %52 = getelementptr i8, ptr %49, i32 %51
  %53 = getelementptr i8, ptr %34, i32 86
  %54 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %52, ptr noundef nonnull @.str.9, ptr noundef %53)
  %55 = getelementptr i8, ptr %52, i32 %54
  %56 = getelementptr i8, ptr %34, i32 102
  %57 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %55, ptr noundef nonnull @.str.9, ptr noundef %56)
  %58 = getelementptr i8, ptr %55, i32 %57
  %59 = getelementptr i8, ptr %34, i32 118
  %60 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %58, ptr noundef nonnull @.str.9, ptr noundef %59)
  %61 = getelementptr i8, ptr %58, i32 %60
  %62 = getelementptr i8, ptr %34, i32 134
  %63 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %61, ptr noundef nonnull @.str.9, ptr noundef %62)
  %64 = getelementptr i8, ptr %61, i32 %63
  %65 = getelementptr i8, ptr %34, i32 150
  %66 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %64, ptr noundef nonnull @.str.9, ptr noundef %65)
  %67 = getelementptr i8, ptr %64, i32 %66
  %68 = getelementptr i8, ptr %34, i32 166
  %69 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %67, ptr noundef nonnull @.str.9, ptr noundef %68)
  %70 = getelementptr i8, ptr %67, i32 %69
  %71 = getelementptr i8, ptr %34, i32 182
  %72 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %70, ptr noundef nonnull @.str.9, ptr noundef %71)
  %73 = getelementptr i8, ptr %70, i32 %72
  %74 = getelementptr i8, ptr %34, i32 198
  %75 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %73, ptr noundef nonnull @.str.9, ptr noundef %74)
  %76 = getelementptr i8, ptr %73, i32 %75
  %77 = getelementptr i8, ptr %34, i32 214
  %78 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %76, ptr noundef nonnull @.str.9, ptr noundef %77)
  %79 = getelementptr i8, ptr %76, i32 %78
  %80 = getelementptr i8, ptr %34, i32 230
  %81 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %79, ptr noundef nonnull @.str.9, ptr noundef %80)
  %82 = getelementptr i8, ptr %79, i32 %81
  %83 = getelementptr i8, ptr %34, i32 246
  %84 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %82, ptr noundef nonnull @.str.9, ptr noundef %83)
  %85 = getelementptr i8, ptr %82, i32 %84
  %86 = getelementptr i8, ptr %34, i32 262
  %87 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %85, ptr noundef nonnull @.str.9, ptr noundef %86)
  %88 = getelementptr i8, ptr %85, i32 %87
  %89 = getelementptr i8, ptr %34, i32 278
  %90 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %88, ptr noundef nonnull @.str.9, ptr noundef %89)
  %91 = getelementptr i8, ptr %88, i32 %90
  br label %92

92:                                               ; preds = %33, %30
  %93 = phi ptr [ %2, %30 ], [ %91, %33 ]
  %94 = load ptr, ptr %10, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @free_pages(i32 noundef %95, i32 noundef 0) #8
  br label %96

96:                                               ; preds = %92, %7
  %97 = phi ptr [ %93, %92 ], [ %2, %7 ]
  call void @tpm_put_ops(ptr noundef %0) #8
  %98 = ptrtoint ptr %97 to i32
  %99 = ptrtoint ptr %2 to i32
  %100 = sub i32 %98, %99
  br label %101

101:                                              ; preds = %96, %3
  %102 = phi i32 [ %100, %96 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %102
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_try_get_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_transmit_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_put_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcrs_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca %union.cap_t, align 4
  %5 = alloca [20 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !10
  %6 = tail call i32 @tpm_try_get_ops(ptr noundef %0) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %133

8:                                                ; preds = %3
  %9 = call i32 @tpm1_getcap(ptr noundef %0, i32 noundef 257, ptr noundef nonnull %4, ptr noundef nonnull @.str.13, i32 noundef 4) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  call void @tpm_put_ops(ptr noundef %0) #8
  br label %133

12:                                               ; preds = %8
  %13 = load i32, ptr %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %128, label %15

15:                                               ; preds = %12
  %16 = call i32 @llvm.bswap.i32(i32 %13)
  %17 = call i32 @llvm.umax.i32(i32 %16, i32 1)
  %18 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 1
  %19 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 2
  %20 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 3
  %21 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 4
  %22 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 5
  %23 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 6
  %24 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 7
  %25 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 8
  %26 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 9
  %27 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 10
  %28 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 11
  %29 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 12
  %30 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 13
  %31 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 14
  %32 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 15
  %33 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 16
  %34 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 17
  %35 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 18
  %36 = getelementptr inbounds [20 x i8], ptr %5, i32 0, i32 19
  br label %37

37:                                               ; preds = %42, %15
  %38 = phi i32 [ %126, %42 ], [ 0, %15 ]
  %39 = phi ptr [ %125, %42 ], [ %2, %15 ]
  %40 = call i32 @tpm1_pcr_read(ptr noundef %0, i32 noundef %38, ptr noundef nonnull %5) #8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %128

42:                                               ; preds = %37
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %39, ptr noundef nonnull @.str.14, i32 noundef %38)
  %44 = getelementptr i8, ptr %39, i32 %43
  %45 = load i8, ptr %5, align 1
  %46 = zext i8 %45 to i32
  %47 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %44, ptr noundef nonnull @.str.15, i32 noundef %46)
  %48 = getelementptr i8, ptr %44, i32 %47
  %49 = load i8, ptr %18, align 1
  %50 = zext i8 %49 to i32
  %51 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %48, ptr noundef nonnull @.str.15, i32 noundef %50)
  %52 = getelementptr i8, ptr %48, i32 %51
  %53 = load i8, ptr %19, align 1
  %54 = zext i8 %53 to i32
  %55 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %52, ptr noundef nonnull @.str.15, i32 noundef %54)
  %56 = getelementptr i8, ptr %52, i32 %55
  %57 = load i8, ptr %20, align 1
  %58 = zext i8 %57 to i32
  %59 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %56, ptr noundef nonnull @.str.15, i32 noundef %58)
  %60 = getelementptr i8, ptr %56, i32 %59
  %61 = load i8, ptr %21, align 1
  %62 = zext i8 %61 to i32
  %63 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %60, ptr noundef nonnull @.str.15, i32 noundef %62)
  %64 = getelementptr i8, ptr %60, i32 %63
  %65 = load i8, ptr %22, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %64, ptr noundef nonnull @.str.15, i32 noundef %66)
  %68 = getelementptr i8, ptr %64, i32 %67
  %69 = load i8, ptr %23, align 1
  %70 = zext i8 %69 to i32
  %71 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %68, ptr noundef nonnull @.str.15, i32 noundef %70)
  %72 = getelementptr i8, ptr %68, i32 %71
  %73 = load i8, ptr %24, align 1
  %74 = zext i8 %73 to i32
  %75 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %72, ptr noundef nonnull @.str.15, i32 noundef %74)
  %76 = getelementptr i8, ptr %72, i32 %75
  %77 = load i8, ptr %25, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %76, ptr noundef nonnull @.str.15, i32 noundef %78)
  %80 = getelementptr i8, ptr %76, i32 %79
  %81 = load i8, ptr %26, align 1
  %82 = zext i8 %81 to i32
  %83 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %80, ptr noundef nonnull @.str.15, i32 noundef %82)
  %84 = getelementptr i8, ptr %80, i32 %83
  %85 = load i8, ptr %27, align 1
  %86 = zext i8 %85 to i32
  %87 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %84, ptr noundef nonnull @.str.15, i32 noundef %86)
  %88 = getelementptr i8, ptr %84, i32 %87
  %89 = load i8, ptr %28, align 1
  %90 = zext i8 %89 to i32
  %91 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %88, ptr noundef nonnull @.str.15, i32 noundef %90)
  %92 = getelementptr i8, ptr %88, i32 %91
  %93 = load i8, ptr %29, align 1
  %94 = zext i8 %93 to i32
  %95 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %92, ptr noundef nonnull @.str.15, i32 noundef %94)
  %96 = getelementptr i8, ptr %92, i32 %95
  %97 = load i8, ptr %30, align 1
  %98 = zext i8 %97 to i32
  %99 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %96, ptr noundef nonnull @.str.15, i32 noundef %98)
  %100 = getelementptr i8, ptr %96, i32 %99
  %101 = load i8, ptr %31, align 1
  %102 = zext i8 %101 to i32
  %103 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %100, ptr noundef nonnull @.str.15, i32 noundef %102)
  %104 = getelementptr i8, ptr %100, i32 %103
  %105 = load i8, ptr %32, align 1
  %106 = zext i8 %105 to i32
  %107 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %104, ptr noundef nonnull @.str.15, i32 noundef %106)
  %108 = getelementptr i8, ptr %104, i32 %107
  %109 = load i8, ptr %33, align 1
  %110 = zext i8 %109 to i32
  %111 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %108, ptr noundef nonnull @.str.15, i32 noundef %110)
  %112 = getelementptr i8, ptr %108, i32 %111
  %113 = load i8, ptr %34, align 1
  %114 = zext i8 %113 to i32
  %115 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %112, ptr noundef nonnull @.str.15, i32 noundef %114)
  %116 = getelementptr i8, ptr %112, i32 %115
  %117 = load i8, ptr %35, align 1
  %118 = zext i8 %117 to i32
  %119 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %116, ptr noundef nonnull @.str.15, i32 noundef %118)
  %120 = getelementptr i8, ptr %116, i32 %119
  %121 = load i8, ptr %36, align 1
  %122 = zext i8 %121 to i32
  %123 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %120, ptr noundef nonnull @.str.15, i32 noundef %122)
  %124 = getelementptr i8, ptr %120, i32 %123
  store i16 10, ptr %124, align 1
  %125 = getelementptr i8, ptr %124, i32 1
  %126 = add nuw i32 %38, 1
  %127 = icmp eq i32 %126, %17
  br i1 %127, label %128, label %37

128:                                              ; preds = %42, %37, %12
  %129 = phi ptr [ %2, %12 ], [ %2, %37 ], [ %125, %42 ]
  call void @tpm_put_ops(ptr noundef %0) #8
  %130 = ptrtoint ptr %129 to i32
  %131 = ptrtoint ptr %2 to i32
  %132 = sub i32 %130, %131
  br label %133

133:                                              ; preds = %128, %11, %3
  %134 = phi i32 [ 0, %11 ], [ %132, %128 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm1_getcap(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm1_pcr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @enabled_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %union.cap_t, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !10
  %5 = tail call i32 @tpm_try_get_ops(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = call i32 @tpm1_getcap(ptr noundef %0, i32 noundef 264, ptr noundef nonnull %4, ptr noundef nonnull @.str.18, i32 noundef 22) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.permanent_flags_t, ptr %4, i32 0, i32 1
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %14)
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i32 [ 0, %7 ], [ %15, %10 ]
  call void @tpm_put_ops(ptr noundef %0) #8
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi i32 [ %17, %16 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @active_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %union.cap_t, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !10
  %5 = tail call i32 @tpm_try_get_ops(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = call i32 @tpm1_getcap(ptr noundef %0, i32 noundef 264, ptr noundef nonnull %4, ptr noundef nonnull @.str.21, i32 noundef 22) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.permanent_flags_t, ptr %4, i32 0, i32 3
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %14)
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i32 [ 0, %7 ], [ %15, %10 ]
  call void @tpm_put_ops(ptr noundef %0) #8
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi i32 [ %17, %16 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owned_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %union.cap_t, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !10
  %5 = tail call i32 @tpm_try_get_ops(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = call i32 @tpm1_getcap(ptr noundef %0, i32 noundef 273, ptr noundef nonnull %4, ptr noundef nonnull @.str.23, i32 noundef 1) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i8, ptr %4, align 4
  %12 = zext i8 %11 to i32
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %12)
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ 0, %7 ], [ %13, %10 ]
  call void @tpm_put_ops(ptr noundef %0) #8
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i32 [ %15, %14 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @temp_deactivated_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %union.cap_t, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !10
  %5 = tail call i32 @tpm_try_get_ops(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = call i32 @tpm1_getcap(ptr noundef %0, i32 noundef 265, ptr noundef nonnull %4, ptr noundef nonnull @.str.25, i32 noundef 7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.stclear_flags_t, ptr %4, i32 0, i32 1
  %12 = load i8, ptr %11, align 2
  %13 = zext i8 %12 to i32
  %14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %13)
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i32 [ 0, %7 ], [ %14, %10 ]
  call void @tpm_put_ops(ptr noundef %0) #8
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi i32 [ %16, %15 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @caps_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca %union.cap_t, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !10
  %5 = tail call i32 @tpm_try_get_ops(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = call i32 @tpm1_getcap(ptr noundef %0, i32 noundef 259, ptr noundef nonnull %4, ptr noundef nonnull @.str.27, i32 noundef 4) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  %11 = load i32, ptr %4, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef %12)
  %14 = getelementptr i8, ptr %2, i32 %13
  %15 = call i32 @tpm1_getcap(ptr noundef %0, i32 noundef 26, ptr noundef nonnull %4, ptr noundef nonnull @.str.29, i32 noundef 6) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.tpm1_version2, ptr %4, i32 0, i32 1
  br label %22

19:                                               ; preds = %10
  %20 = call i32 @tpm1_getcap(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %4, ptr noundef nonnull @.str.30, i32 noundef 4) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19, %17
  %23 = phi ptr [ %18, %17 ], [ %4, %19 ]
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.tpm1_version, ptr %23, i32 0, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.tpm1_version, ptr %23, i32 0, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.tpm1_version, ptr %23, i32 0, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %14, ptr noundef nonnull @.str.31, i32 noundef %25, i32 noundef %28, i32 noundef %31, i32 noundef %34)
  %36 = getelementptr i8, ptr %14, i32 %35
  %37 = ptrtoint ptr %36 to i32
  %38 = ptrtoint ptr %2 to i32
  %39 = sub i32 %37, %38
  br label %40

40:                                               ; preds = %22, %19, %7
  %41 = phi i32 [ 0, %7 ], [ 0, %19 ], [ %39, %22 ]
  call void @tpm_put_ops(ptr noundef %0) #8
  br label %42

42:                                               ; preds = %40, %3
  %43 = phi i32 [ %41, %40 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cancel_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = tail call i32 @tpm_try_get_ops(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.tpm_class_ops, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %0) #8
  tail call void @tpm_put_ops(ptr noundef %0) #8
  br label %12

12:                                               ; preds = %7, %4
  %13 = phi i32 [ %3, %7 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @durations_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 20, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @jiffies_to_usecs(i32 noundef %9) #8
  %11 = getelementptr %struct.tpm_chip, ptr %0, i32 0, i32 20, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @jiffies_to_usecs(i32 noundef %12) #8
  %14 = load i32, ptr %4, align 4
  %15 = tail call i32 @jiffies_to_usecs(i32 noundef %14) #8
  %16 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 21
  %17 = load i8, ptr %16, align 4, !range !11
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, ptr @.str.36, ptr @.str.35
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef %10, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %19)
  br label %21

21:                                               ; preds = %7, %3
  %22 = phi i32 [ %20, %7 ], [ 0, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timeouts_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @jiffies_to_usecs(i32 noundef %5) #8
  %7 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @jiffies_to_usecs(i32 noundef %8) #8
  %10 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 17
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 @jiffies_to_usecs(i32 noundef %11) #8
  %13 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 18
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @jiffies_to_usecs(i32 noundef %14) #8
  %16 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 19
  %17 = load i8, ptr %16, align 8, !range !11
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, ptr @.str.36, ptr @.str.35
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.38, i32 noundef %6, i32 noundef %9, i32 noundef %12, i32 noundef %15, ptr noundef nonnull %19)
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcr_value_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.tpm_digest, align 2
  %5 = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %4) #8
  %6 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(66) %6, i8 0, i32 64, i1 false), !annotation !10
  %7 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 25
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 26
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %25, %10
  %15 = phi i32 [ 0, %10 ], [ %26, %25 ]
  %16 = phi i32 [ 0, %10 ], [ %27, %25 ]
  %17 = getelementptr %struct.tpm_bank_info, ptr %13, i32 %16
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp eq i32 %11, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = getelementptr %struct.tpm_bank_info, ptr %13, i32 %16, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  br label %25

25:                                               ; preds = %21, %14
  %26 = phi i32 [ %24, %21 ], [ %15, %14 ]
  %27 = add nuw i32 %16, 1
  %28 = icmp eq i32 %27, %8
  br i1 %28, label %29, label %14

29:                                               ; preds = %25
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %5, align 4
  %33 = trunc i32 %32 to i16
  store i16 %33, ptr %4, align 2
  %34 = getelementptr i8, ptr %1, i32 -4
  %35 = load i32, ptr %34, align 4
  %36 = call i32 @tpm_pcr_read(ptr noundef %0, i32 noundef %35, ptr noundef nonnull %4) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %31
  %39 = icmp sgt i32 %26, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %40, %38
  %41 = phi ptr [ %47, %40 ], [ %2, %38 ]
  %42 = phi i32 [ %48, %40 ], [ 0, %38 ]
  %43 = getelementptr %struct.tpm_digest, ptr %4, i32 0, i32 1, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %41, ptr noundef nonnull @.str.41, i32 noundef %45)
  %47 = getelementptr i8, ptr %41, i32 %46
  %48 = add nuw nsw i32 %42, 1
  %49 = icmp eq i32 %48, %26
  br i1 %49, label %50, label %40

50:                                               ; preds = %40, %38
  %51 = phi ptr [ %2, %38 ], [ %47, %40 ]
  store i16 10, ptr %51, align 1
  %52 = getelementptr i8, ptr %51, i32 1
  %53 = ptrtoint ptr %52 to i32
  %54 = ptrtoint ptr %2 to i32
  %55 = sub i32 %53, %54
  br label %56

56:                                               ; preds = %50, %31, %29, %3
  %57 = phi i32 [ %55, %50 ], [ -22, %29 ], [ %36, %31 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %4) #8
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pcr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
