; ModuleID = '/llk/IR/drivers/bluetooth/btbcm.c_pt.bc'
source_filename = "../drivers/bluetooth/btbcm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btbcm_check_bdaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22btbcm_check_bdaddr\22\09\09\09\09\09"
module asm "__kstrtabns_btbcm_check_bdaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btbcm_set_bdaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22btbcm_set_bdaddr\22\09\09\09\09\09"
module asm "__kstrtabns_btbcm_set_bdaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btbcm_read_pcm_int_params:\09\09\09\09\09"
module asm "\09.asciz \09\22btbcm_read_pcm_int_params\22\09\09\09\09\09"
module asm "__kstrtabns_btbcm_read_pcm_int_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btbcm_write_pcm_int_params:\09\09\09\09\09"
module asm "\09.asciz \09\22btbcm_write_pcm_int_params\22\09\09\09\09\09"
module asm "__kstrtabns_btbcm_write_pcm_int_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btbcm_patchram:\09\09\09\09\09"
module asm "\09.asciz \09\22btbcm_patchram\22\09\09\09\09\09"
module asm "__kstrtabns_btbcm_patchram:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btbcm_initialize:\09\09\09\09\09"
module asm "\09.asciz \09\22btbcm_initialize\22\09\09\09\09\09"
module asm "__kstrtabns_btbcm_initialize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btbcm_finalize:\09\09\09\09\09"
module asm "\09.asciz \09\22btbcm_finalize\22\09\09\09\09\09"
module asm "__kstrtabns_btbcm_finalize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btbcm_setup_patchram:\09\09\09\09\09"
module asm "\09.asciz \09\22btbcm_setup_patchram\22\09\09\09\09\09"
module asm "__kstrtabns_btbcm_setup_patchram:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_btbcm_setup_apple:\09\09\09\09\09"
module asm "\09.asciz \09\22btbcm_setup_apple\22\09\09\09\09\09"
module asm "__kstrtabns_btbcm_setup_apple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bcm_subver_table = type { i16, ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.bdaddr_t = type { [6 x i8] }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.sk_buff_head = type { %union.anon.0, i32, %struct.spinlock }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.1, %union.anon.98, %union.anon.99, [48 x i8], %union.anon.100, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.102, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { i64 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i32, ptr }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.104, i32, i32, i32, i16, i16, %union.anon.106, %union.anon.107, %union.anon.108, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.104 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i16 }
%struct.hci_rp_read_bd_addr = type { i8, %struct.bdaddr_t }
%struct.firmware = type { i32, ptr, ptr }
%struct.hci_command_hdr = type <{ i16, i8 }>
%struct.hci_rp_read_local_version = type <{ i8, i8, i16, i8, i16, i16 }>

@.str = private unnamed_addr constant [45 x i8] c"%s: BCM: Reading device address failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: BCM: Device address length mismatch\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: BCM: Using default device address (%pMR)\0A\00", align 1
@__kstrtab_btbcm_check_bdaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_btbcm_check_bdaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_btbcm_check_bdaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btbcm_check_bdaddr to i32), ptr @__kstrtab_btbcm_check_bdaddr, ptr @__kstrtabns_btbcm_check_bdaddr }, section "___ksymtab_gpl+btbcm_check_bdaddr", align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"%s: BCM: Change address command failed (%d)\0A\00", align 1
@__kstrtab_btbcm_set_bdaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_btbcm_set_bdaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_btbcm_set_bdaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btbcm_set_bdaddr to i32), ptr @__kstrtab_btbcm_set_bdaddr, ptr @__kstrtabns_btbcm_set_bdaddr }, section "___ksymtab_gpl+btbcm_set_bdaddr", align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"%s: BCM: Read PCM int params failed (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"%s: BCM: Read PCM int params length mismatch\0A\00", align 1
@__kstrtab_btbcm_read_pcm_int_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_btbcm_read_pcm_int_params = external dso_local constant [0 x i8], align 1
@__ksymtab_btbcm_read_pcm_int_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btbcm_read_pcm_int_params to i32), ptr @__kstrtab_btbcm_read_pcm_int_params, ptr @__kstrtabns_btbcm_read_pcm_int_params }, section "___ksymtab_gpl+btbcm_read_pcm_int_params", align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"%s: BCM: Write PCM int params failed (%d)\0A\00", align 1
@__kstrtab_btbcm_write_pcm_int_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_btbcm_write_pcm_int_params = external dso_local constant [0 x i8], align 1
@__ksymtab_btbcm_write_pcm_int_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btbcm_write_pcm_int_params to i32), ptr @__kstrtab_btbcm_write_pcm_int_params, ptr @__kstrtabns_btbcm_write_pcm_int_params }, section "___ksymtab_gpl+btbcm_write_pcm_int_params", align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"%s: BCM: Download Minidrv command failed (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"%s: BCM: Patch is corrupted\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"%s: BCM: Patch command %04x failed (%d)\0A\00", align 1
@__kstrtab_btbcm_patchram = external dso_local constant [0 x i8], align 1
@__kstrtabns_btbcm_patchram = external dso_local constant [0 x i8], align 1
@__ksymtab_btbcm_patchram = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btbcm_patchram to i32), ptr @__kstrtab_btbcm_patchram, ptr @__kstrtabns_btbcm_patchram }, section "___ksymtab+btbcm_patchram", align 4
@bcm_usb_subver_table = internal unnamed_addr constant [13 x %struct.bcm_subver_table] [%struct.bcm_subver_table { i16 8453, ptr @.str.27 }, %struct.bcm_subver_table { i16 8459, ptr @.str.28 }, %struct.bcm_subver_table { i16 8466, ptr @.str.29 }, %struct.bcm_subver_table { i16 8472, ptr @.str.30 }, %struct.bcm_subver_table { i16 8486, ptr @.str.31 }, %struct.bcm_subver_table { i16 8718, ptr @.str.32 }, %struct.bcm_subver_table { i16 8975, ptr @.str.33 }, %struct.bcm_subver_table { i16 16646, ptr @.str.34 }, %struct.bcm_subver_table { i16 16654, ptr @.str.35 }, %struct.bcm_subver_table { i16 24841, ptr @.str.36 }, %struct.bcm_subver_table { i16 24844, ptr @.str.37 }, %struct.bcm_subver_table { i16 26119, ptr @.str.38 }, %struct.bcm_subver_table zeroinitializer], align 4
@bcm_uart_subver_table = internal unnamed_addr constant [20 x %struct.bcm_subver_table] [%struct.bcm_subver_table { i16 4369, ptr @.str.39 }, %struct.bcm_subver_table { i16 16643, ptr @.str.40 }, %struct.bcm_subver_table { i16 16653, ptr @.str.41 }, %struct.bcm_subver_table { i16 16654, ptr @.str.42 }, %struct.bcm_subver_table { i16 16900, ptr @.str.43 }, %struct.bcm_subver_table { i16 17414, ptr @.str.44 }, %struct.bcm_subver_table { i16 17926, ptr @.str.45 }, %struct.bcm_subver_table { i16 24841, ptr @.str.36 }, %struct.bcm_subver_table { i16 24844, ptr @.str.37 }, %struct.bcm_subver_table { i16 8482, ptr @.str.46 }, %struct.bcm_subver_table { i16 8713, ptr @.str.47 }, %struct.bcm_subver_table { i16 24857, ptr @.str.48 }, %struct.bcm_subver_table { i16 26118, ptr @.str.49 }, %struct.bcm_subver_table { i16 8975, ptr @.str.33 }, %struct.bcm_subver_table { i16 8718, ptr @.str.32 }, %struct.bcm_subver_table { i16 16919, ptr @.str.50 }, %struct.bcm_subver_table { i16 24838, ptr @.str.51 }, %struct.bcm_subver_table { i16 16646, ptr @.str.31 }, %struct.bcm_subver_table { i16 16652, ptr @.str.52 }, %struct.bcm_subver_table zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"%s: %s (%3.3u.%3.3u.%3.3u) build %4.4u\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"BCM\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"-%4.4x-%4.4x\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"brcm/%s%s.hcd\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"brcm/BCM%s.hcd\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"%s: %s '%s' Patch\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"%s: BCM: Patch failed (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"%s: BCM: firmware Patch file not found, tried:\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"%s: BCM: '%s'\0A\00", align 1
@__kstrtab_btbcm_initialize = external dso_local constant [0 x i8], align 1
@__kstrtabns_btbcm_initialize = external dso_local constant [0 x i8], align 1
@__ksymtab_btbcm_initialize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btbcm_initialize to i32), ptr @__kstrtab_btbcm_initialize, ptr @__kstrtabns_btbcm_initialize }, section "___ksymtab_gpl+btbcm_initialize", align 4
@__kstrtab_btbcm_finalize = external dso_local constant [0 x i8], align 1
@__kstrtabns_btbcm_finalize = external dso_local constant [0 x i8], align 1
@__ksymtab_btbcm_finalize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btbcm_finalize to i32), ptr @__kstrtab_btbcm_finalize, ptr @__kstrtabns_btbcm_finalize }, section "___ksymtab_gpl+btbcm_finalize", align 4
@__kstrtab_btbcm_setup_patchram = external dso_local constant [0 x i8], align 1
@__kstrtabns_btbcm_setup_patchram = external dso_local constant [0 x i8], align 1
@__ksymtab_btbcm_setup_patchram = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btbcm_setup_patchram to i32), ptr @__kstrtab_btbcm_setup_patchram, ptr @__kstrtabns_btbcm_setup_patchram }, section "___ksymtab_gpl+btbcm_setup_patchram", align 4
@.str.19 = private unnamed_addr constant [33 x i8] c"%s: BCM: chip id %u build %4.4u\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"%s: BCM: product %4.4x:%4.4x\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"%s: BCM: features 0x%2.2x\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@__kstrtab_btbcm_setup_apple = external dso_local constant [0 x i8], align 1
@__kstrtabns_btbcm_setup_apple = external dso_local constant [0 x i8], align 1
@__ksymtab_btbcm_setup_apple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @btbcm_setup_apple to i32), ptr @__kstrtab_btbcm_setup_apple, ptr @__kstrtabns_btbcm_setup_apple }, section "___ksymtab_gpl+btbcm_setup_apple", align 4
@__UNIQUE_ID_author432 = internal constant [45 x i8] c"author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description433 = internal constant [59 x i8] c"description=Bluetooth support for Broadcom devices ver 0.1\00", section ".modinfo", align 1
@__UNIQUE_ID_version434 = internal constant [12 x i8] c"version=0.1\00", section ".modinfo", align 1
@__UNIQUE_ID_license435 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"%s: BCM: Reset failed (%d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"%s: BCM: Reading local version info failed (%ld)\0A\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"%s: BCM: Local version length mismatch\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"%s: BCM: chip id %u\0A\00", align 1
@disable_broken_read_transmit_power = internal constant [8 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro16,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro16,2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookPro16,4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookAir8,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"MacBookAir8,2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"iMac20,1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 13, [79 x i8] c"Apple Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"iMac20,2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 4
@.str.27 = private unnamed_addr constant [11 x i8] c"BCM20703A1\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"BCM43142A0\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"BCM4314A0\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"BCM20702A0\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"BCM4335A0\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"BCM20702A1\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"BCM4356A2\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"BCM4335B0\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"BCM20702B0\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"BCM4335C0\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"BCM4354\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"BCM4350C5\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"BCM4362A2\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"BCM4330B1\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"BCM4334B0\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"BCM43341B0\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"BCM2076B1\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"BCM4324B3\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"BCM4324B5\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"BCM4343A0\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"BCM43430A1\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"BCM4345C0\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"BCM4345C5\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"BCM4329B1\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"BCM4359C0\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"BCM43430B0\00", align 1
@.str.53 = private unnamed_addr constant [45 x i8] c"%s: BCM: Read USB product info failed (%ld)\0A\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"%s: BCM: USB product length mismatch\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.55 = private unnamed_addr constant [48 x i8] c"%s: BCM: Read verbose config info failed (%ld)\0A\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"%s: BCM: Verbose config length mismatch\0A\00", align 1
@.str.57 = private unnamed_addr constant [48 x i8] c"%s: BCM: Read controller features failed (%ld)\0A\00", align 1
@.str.58 = private unnamed_addr constant [46 x i8] c"%s: BCM: Controller features length mismatch\0A\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"%s: BCM: Reading local name failed (%ld)\0A\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"%s: BCM: Local name length mismatch\0A\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author432, ptr @__UNIQUE_ID_description433, ptr @__UNIQUE_ID_license435, ptr @__UNIQUE_ID_version434, ptr @__ksymtab_btbcm_check_bdaddr, ptr @__ksymtab_btbcm_finalize, ptr @__ksymtab_btbcm_initialize, ptr @__ksymtab_btbcm_patchram, ptr @__ksymtab_btbcm_read_pcm_int_params, ptr @__ksymtab_btbcm_set_bdaddr, ptr @__ksymtab_btbcm_setup_apple, ptr @__ksymtab_btbcm_setup_patchram, ptr @__ksymtab_btbcm_write_pcm_int_params], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btbcm_check_bdaddr(ptr noundef %0) #0 {
  %2 = alloca %struct.bdaddr_t, align 1
  %3 = alloca %struct.bdaddr_t, align 1
  %4 = alloca %struct.bdaddr_t, align 1
  %5 = alloca %struct.bdaddr_t, align 1
  %6 = alloca %struct.bdaddr_t, align 1
  %7 = alloca %struct.bdaddr_t, align 1
  %8 = alloca %struct.bdaddr_t, align 1
  %9 = alloca %struct.bdaddr_t, align 1
  %10 = alloca %struct.bdaddr_t, align 1
  %11 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext 4105, i32 noundef 0, ptr noundef null, i32 noundef 1000) #8
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = ptrtoint ptr %11 to i32
  %15 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str, ptr noundef %15, i32 noundef %14) #8
  br label %101

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 7
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.1, ptr noundef %21) #8
  tail call void @kfree_skb_reason(ptr noundef %11, i32 noundef 0) #8
  br label %101

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.hci_rp_read_bd_addr, ptr %24, i32 0, i32 1
  store i8 0, ptr %2, align 1
  %26 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 -96, ptr %26, align 1
  %27 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 2, ptr %27, align 1
  %28 = getelementptr inbounds i8, ptr %2, i32 3
  store i8 112, ptr %28, align 1
  %29 = getelementptr inbounds i8, ptr %2, i32 4
  store i8 32, ptr %29, align 1
  %30 = getelementptr inbounds i8, ptr %2, i32 5
  store i8 0, ptr %30, align 1
  %31 = call i32 @bcmp(ptr noundef dereferenceable(6) %25, ptr noundef nonnull dereferenceable(6) %2, i32 6)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %97, label %33

33:                                               ; preds = %22
  store i8 0, ptr %3, align 1
  %34 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %34, align 1
  %35 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 -96, ptr %35, align 1
  %36 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 2, ptr %36, align 1
  %37 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 112, ptr %37, align 1
  %38 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 32, ptr %38, align 1
  %39 = call i32 @bcmp(ptr noundef dereferenceable(6) %25, ptr noundef nonnull dereferenceable(6) %3, i32 6)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %97, label %41

41:                                               ; preds = %33
  store i8 121, ptr %4, align 1
  %42 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 86, ptr %42, align 1
  %43 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 0, ptr %43, align 1
  %44 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 -96, ptr %44, align 1
  %45 = getelementptr inbounds i8, ptr %4, i32 4
  store i8 118, ptr %45, align 1
  %46 = getelementptr inbounds i8, ptr %4, i32 5
  store i8 32, ptr %46, align 1
  %47 = call i32 @bcmp(ptr noundef dereferenceable(6) %25, ptr noundef nonnull dereferenceable(6) %4, i32 6)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %97, label %49

49:                                               ; preds = %41
  store i8 0, ptr %5, align 1
  %50 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %50, align 1
  %51 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 0, ptr %51, align 1
  %52 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 -77, ptr %52, align 1
  %53 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 36, ptr %53, align 1
  %54 = getelementptr inbounds i8, ptr %5, i32 5
  store i8 67, ptr %54, align 1
  %55 = call i32 @bcmp(ptr noundef dereferenceable(6) %25, ptr noundef nonnull dereferenceable(6) %5, i32 6)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %97, label %57

57:                                               ; preds = %49
  store i8 0, ptr %6, align 1
  %58 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %58, align 1
  %59 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 0, ptr %59, align 1
  %60 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 -79, ptr %60, align 1
  %61 = getelementptr inbounds i8, ptr %6, i32 4
  store i8 48, ptr %61, align 1
  %62 = getelementptr inbounds i8, ptr %6, i32 5
  store i8 67, ptr %62, align 1
  %63 = call i32 @bcmp(ptr noundef dereferenceable(6) %25, ptr noundef nonnull dereferenceable(6) %6, i32 6)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %97, label %65

65:                                               ; preds = %57
  store i8 0, ptr %7, align 1
  %66 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 0, ptr %66, align 1
  %67 = getelementptr inbounds i8, ptr %7, i32 2
  store i8 0, ptr %67, align 1
  %68 = getelementptr inbounds i8, ptr %7, i32 3
  store i8 -80, ptr %68, align 1
  %69 = getelementptr inbounds i8, ptr %7, i32 4
  store i8 52, ptr %69, align 1
  %70 = getelementptr inbounds i8, ptr %7, i32 5
  store i8 67, ptr %70, align 1
  %71 = call i32 @bcmp(ptr noundef dereferenceable(6) %25, ptr noundef nonnull dereferenceable(6) %7, i32 6)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %97, label %73

73:                                               ; preds = %65
  store i8 -84, ptr %8, align 1
  %74 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 31, ptr %74, align 1
  %75 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 0, ptr %75, align 1
  %76 = getelementptr inbounds i8, ptr %8, i32 3
  store i8 -59, ptr %76, align 1
  %77 = getelementptr inbounds i8, ptr %8, i32 4
  store i8 69, ptr %77, align 1
  %78 = getelementptr inbounds i8, ptr %8, i32 5
  store i8 67, ptr %78, align 1
  %79 = call i32 @bcmp(ptr noundef dereferenceable(6) %25, ptr noundef nonnull dereferenceable(6) %8, i32 6)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %73
  store i8 -84, ptr %9, align 1
  %82 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 31, ptr %82, align 1
  %83 = getelementptr inbounds i8, ptr %9, i32 2
  store i8 18, ptr %83, align 1
  %84 = getelementptr inbounds i8, ptr %9, i32 3
  store i8 -96, ptr %84, align 1
  %85 = getelementptr inbounds i8, ptr %9, i32 4
  store i8 67, ptr %85, align 1
  %86 = getelementptr inbounds i8, ptr %9, i32 5
  store i8 67, ptr %86, align 1
  %87 = call i32 @bcmp(ptr noundef dereferenceable(6) %25, ptr noundef nonnull dereferenceable(6) %9, i32 6)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %81
  store i8 -84, ptr %10, align 1
  %90 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 31, ptr %90, align 1
  %91 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 0, ptr %91, align 1
  %92 = getelementptr inbounds i8, ptr %10, i32 3
  store i8 27, ptr %92, align 1
  %93 = getelementptr inbounds i8, ptr %10, i32 4
  store i8 52, ptr %93, align 1
  %94 = getelementptr inbounds i8, ptr %10, i32 5
  store i8 67, ptr %94, align 1
  %95 = call i32 @bcmp(ptr noundef dereferenceable(6) %25, ptr noundef nonnull dereferenceable(6) %10, i32 6)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %89, %81, %73, %65, %57, %49, %41, %33, %22
  %98 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.2, ptr noundef %98, ptr noundef %25) #8
  %99 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 7, ptr noundef %99) #8
  br label %100

100:                                              ; preds = %97, %89
  tail call void @kfree_skb_reason(ptr noundef %11, i32 noundef 0) #8
  br label %101

101:                                              ; preds = %100, %20, %13
  %102 = phi i32 [ %14, %13 ], [ -5, %20 ], [ 0, %100 ]
  ret i32 %102
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btbcm_set_bdaddr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext -1023, i32 noundef 6, ptr noundef %1, i32 noundef 1000) #8
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.3, ptr noundef %7, i32 noundef %6) #8
  br label %9

8:                                                ; preds = %2
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #8
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i32 [ %6, %5 ], [ 0, %8 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btbcm_read_pcm_int_params(ptr noundef %0, ptr noundef writeonly %1) #0 {
  %3 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext -995, i32 noundef 0, ptr noundef null, i32 noundef 1000) #8
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.4, ptr noundef %7, i32 noundef %6) #8
  br label %24

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %8
  %18 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5, ptr noundef %18) #8
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #8
  br label %24

19:                                               ; preds = %12
  %20 = icmp eq ptr %1, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %14, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %1, ptr noundef align 1 dereferenceable(5) %22, i32 5, i1 false)
  br label %23

23:                                               ; preds = %21, %19
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #8
  br label %24

24:                                               ; preds = %23, %17, %5
  %25 = phi i32 [ %6, %5 ], [ -5, %17 ], [ 0, %23 ]
  ret i32 %25
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btbcm_write_pcm_int_params(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext -996, i32 noundef 5, ptr noundef %1, i32 noundef 1000) #8
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.6, ptr noundef %7, i32 noundef %6) #8
  br label %9

8:                                                ; preds = %2
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #8
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i32 [ %6, %5 ], [ 0, %8 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btbcm_patchram(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext -978, i32 noundef 0, ptr noundef null, i32 noundef 1000) #8
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  %7 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.7, ptr noundef %7, i32 noundef %6) #8
  br label %38

8:                                                ; preds = %2
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 50) #8
  %9 = load i32, ptr %1, align 4
  %10 = icmp ugt i32 %9, 2
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %33, %11
  %15 = phi i32 [ %34, %33 ], [ %9, %11 ]
  %16 = phi ptr [ %35, %33 ], [ %13, %11 ]
  %17 = add i32 %15, -3
  %18 = getelementptr inbounds %struct.hci_command_hdr, ptr %16, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.8, ptr noundef %23) #8
  br label %38

24:                                               ; preds = %14
  %25 = getelementptr i8, ptr %16, i32 3
  %26 = load i16, ptr %16, align 1
  %27 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext %26, i32 noundef %20, ptr noundef %25, i32 noundef 1000) #8
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = ptrtoint ptr %27 to i32
  %31 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %32 = zext i16 %26 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.9, ptr noundef %31, i32 noundef %32, i32 noundef %30) #8
  br label %38

33:                                               ; preds = %24
  %34 = sub i32 %17, %20
  %35 = getelementptr i8, ptr %25, i32 %20
  tail call void @kfree_skb_reason(ptr noundef %27, i32 noundef 0) #8
  %36 = icmp ugt i32 %34, 2
  br i1 %36, label %14, label %37

37:                                               ; preds = %33, %8
  tail call void @msleep(i32 noundef 250) #8
  br label %38

38:                                               ; preds = %37, %29, %22, %5
  %39 = phi i32 [ %6, %5 ], [ 0, %37 ], [ %30, %29 ], [ -22, %22 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btbcm_initialize(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [16 x i8], align 1
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext 3075, i32 noundef 0, ptr noundef null, i32 noundef 1000) #8
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 100) #8
  %8 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext 4097, i32 noundef 0, ptr noundef null, i32 noundef 1000) #8
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %13, label %16

10:                                               ; preds = %2
  %11 = ptrtoint ptr %5 to i32
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.23, ptr noundef %12, i32 noundef %11) #8
  br label %176

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %15 = ptrtoint ptr %8 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24, ptr noundef %14, i32 noundef %15) #8
  br label %22

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.25, ptr noundef %21) #8
  tail call void @kfree_skb_reason(ptr noundef %8, i32 noundef 0) #8
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi ptr [ inttoptr (i32 -5 to ptr), %20 ], [ %8, %13 ]
  %24 = ptrtoint ptr %23 to i32
  br label %176

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %27, i32 0, i32 2
  %29 = load i16, ptr %28, align 1
  %30 = getelementptr inbounds %struct.hci_rp_read_local_version, ptr %27, i32 0, i32 5
  %31 = load i16, ptr %30, align 1
  tail call void @kfree_skb_reason(ptr noundef %8, i32 noundef 0) #8
  %32 = load i8, ptr %1, align 1, !range !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %25
  %35 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext -903, i32 noundef 0, ptr noundef null, i32 noundef 1000) #8
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %39 = ptrtoint ptr %35 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.55, ptr noundef %38, i32 noundef %39) #8
  br label %71

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 5
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 7
  %44 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  br i1 %43, label %46, label %45

45:                                               ; preds = %40
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.56, ptr noundef %44) #8
  tail call void @kfree_skb_reason(ptr noundef %35, i32 noundef 0) #8
  br label %71

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 17
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.26, ptr noundef %44, i32 noundef %51) #8
  tail call void @kfree_skb_reason(ptr noundef %35, i32 noundef 0) #8
  %52 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext -914, i32 noundef 0, ptr noundef null, i32 noundef 1000) #8
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = ptrtoint ptr %52 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.57, ptr noundef %44, i32 noundef %55) #8
  br label %71

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 5
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, 9
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.58, ptr noundef %44) #8
  tail call void @kfree_skb_reason(ptr noundef %52, i32 noundef 0) #8
  br label %71

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 17
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 1
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.21, ptr noundef %44, i32 noundef %66) #8
  tail call void @kfree_skb_reason(ptr noundef %52, i32 noundef 0) #8
  %67 = tail call ptr @dmi_first_match(ptr noundef nonnull @disable_broken_read_transmit_power) #8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 17, ptr noundef %70) #8
  br label %74

71:                                               ; preds = %60, %54, %45, %37
  %72 = phi ptr [ inttoptr (i32 -5 to ptr), %45 ], [ %35, %37 ], [ inttoptr (i32 -5 to ptr), %60 ], [ %52, %54 ]
  %73 = ptrtoint ptr %72 to i32
  br label %176

74:                                               ; preds = %69, %61, %25
  %75 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext 3092, i32 noundef 0, ptr noundef null, i32 noundef 1000) #8
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %79 = ptrtoint ptr %75 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.59, ptr noundef %78, i32 noundef %79) #8
  br label %97

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 5
  %82 = load i32, ptr %81, align 8
  %83 = icmp eq i32 %82, 249
  %84 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  br i1 %83, label %86, label %85

85:                                               ; preds = %80
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.60, ptr noundef %84) #8
  tail call void @kfree_skb_reason(ptr noundef %75, i32 noundef 0) #8
  br label %97

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 17
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 1
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.22, ptr noundef %84, ptr noundef %89) #8
  tail call void @kfree_skb_reason(ptr noundef %75, i32 noundef 0) #8
  %90 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 5
  %91 = load i8, ptr %90, align 2
  %92 = icmp eq i8 %91, 1
  %93 = select i1 %92, ptr @bcm_usb_subver_table, ptr @bcm_uart_subver_table
  %94 = select i1 %92, ptr @.str.27, ptr @.str.39
  %95 = load i16, ptr %93, align 4
  %96 = icmp eq i16 %31, %95
  br i1 %96, label %110, label %100

97:                                               ; preds = %85, %77
  %98 = phi ptr [ inttoptr (i32 -5 to ptr), %85 ], [ %75, %77 ]
  %99 = ptrtoint ptr %98 to i32
  br label %176

100:                                              ; preds = %106, %86
  %101 = phi i32 [ %102, %106 ], [ 0, %86 ]
  %102 = add i32 %101, 1
  %103 = getelementptr %struct.bcm_subver_table, ptr %93, i32 %102, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = getelementptr %struct.bcm_subver_table, ptr %93, i32 %102
  %108 = load i16, ptr %107, align 4
  %109 = icmp eq i16 %31, %108
  br i1 %109, label %110, label %100

110:                                              ; preds = %106, %100, %86
  %111 = phi ptr [ %94, %86 ], [ %104, %106 ], [ null, %100 ]
  %112 = icmp eq ptr %111, null
  %113 = select i1 %112, ptr @.str.11, ptr %111
  %114 = zext i16 %31 to i32
  %115 = lshr i32 %114, 13
  %116 = lshr i32 %114, 8
  %117 = and i32 %116, 31
  %118 = and i32 %114, 255
  %119 = and i16 %29, 4095
  %120 = zext i16 %119 to i32
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.10, ptr noundef %84, ptr noundef %113, i32 noundef %115, i32 noundef %117, i32 noundef %118, i32 noundef %120) #8
  %121 = load i8, ptr %1, align 1, !range !9
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %176

123:                                              ; preds = %110
  %124 = load i8, ptr %90, align 2
  %125 = icmp eq i8 %124, 1
  br i1 %125, label %126, label %141

126:                                              ; preds = %123
  %127 = tail call fastcc ptr @btbcm_read_usb_product(ptr noundef %0)
  %128 = icmp ugt ptr %127, inttoptr (i32 -4096 to ptr)
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = ptrtoint ptr %127 to i32
  br label %176

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.sk_buff, ptr %127, i32 0, i32 17
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr i8, ptr %133, i32 1
  %135 = load i16, ptr %134, align 1
  %136 = getelementptr i8, ptr %133, i32 3
  %137 = load i16, ptr %136, align 1
  tail call void @kfree_skb_reason(ptr noundef %127, i32 noundef 0) #8
  %138 = zext i16 %135 to i32
  %139 = zext i16 %137 to i32
  %140 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 16, ptr noundef nonnull @.str.12, i32 noundef %138, i32 noundef %139)
  br label %141

141:                                              ; preds = %131, %123
  %142 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %143 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %142, i32 noundef 3264, i32 noundef 128) #9
  %144 = icmp eq ptr %143, null
  br i1 %144, label %176, label %145

145:                                              ; preds = %141
  br i1 %112, label %148, label %146

146:                                              ; preds = %145
  %147 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %143, i32 noundef 64, ptr noundef nonnull @.str.13, ptr noundef nonnull %111, ptr noundef nonnull %3)
  br label %148

148:                                              ; preds = %146, %145
  %149 = phi i32 [ 1, %146 ], [ 0, %145 ]
  %150 = getelementptr [64 x i8], ptr %143, i32 %149
  %151 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %150, i32 noundef 64, ptr noundef nonnull @.str.14, ptr noundef nonnull %3)
  %152 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 204
  %153 = call i32 @firmware_request_nowarn(ptr noundef nonnull %4, ptr noundef nonnull %143, ptr noundef %152) #8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %148
  br i1 %112, label %162, label %156

156:                                              ; preds = %155
  %157 = getelementptr [64 x i8], ptr %143, i32 1
  %158 = call i32 @firmware_request_nowarn(ptr noundef nonnull %4, ptr noundef %157, ptr noundef %152) #8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %156, %148
  %161 = phi ptr [ %143, %148 ], [ %157, %156 ]
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.15, ptr noundef %84, ptr noundef %113, ptr noundef %161) #8
  store i8 1, ptr %1, align 1
  br label %165

162:                                              ; preds = %156, %155
  %163 = load i8, ptr %1, align 1
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %162, %160
  %166 = load ptr, ptr %4, align 4
  %167 = call i32 @btbcm_patchram(ptr noundef %0, ptr noundef %166)
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.16, ptr noundef %84, i32 noundef %167) #8
  br label %170

170:                                              ; preds = %169, %165
  %171 = load ptr, ptr %4, align 4
  call void @release_firmware(ptr noundef %171) #8
  br label %175

172:                                              ; preds = %162
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.17, ptr noundef %84) #8
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18, ptr noundef %84, ptr noundef nonnull %143) #8
  br i1 %112, label %175, label %173

173:                                              ; preds = %172
  %174 = getelementptr [64 x i8], ptr %143, i32 1
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.18, ptr noundef %84, ptr noundef %174) #8
  br label %175

175:                                              ; preds = %173, %172, %170
  call void @kfree(ptr noundef nonnull %143) #8
  br label %176

176:                                              ; preds = %175, %141, %129, %110, %97, %71, %22, %10
  %177 = phi i32 [ %24, %22 ], [ %130, %129 ], [ 0, %175 ], [ %11, %10 ], [ %73, %71 ], [ %99, %97 ], [ 0, %110 ], [ -12, %141 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i32 %177
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @btbcm_read_usb_product(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext -934, i32 noundef 0, ptr noundef null, i32 noundef 1000) #8
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %6 = ptrtoint ptr %2 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.53, ptr noundef %5, i32 noundef %6) #8
  br label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.54, ptr noundef %12) #8
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #8
  br label %13

13:                                               ; preds = %11, %7, %4
  %14 = phi ptr [ %2, %4 ], [ inttoptr (i32 -5 to ptr), %11 ], [ %2, %7 ]
  ret ptr %14
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btbcm_finalize(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load i8, ptr %1, align 1, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @btbcm_initialize(ptr noundef %0, ptr noundef %1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5, %2
  %9 = tail call i32 @btbcm_check_bdaddr(ptr noundef %0)
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 9, ptr noundef %10) #8
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i32 [ 0, %8 ], [ %6, %5 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btbcm_setup_patchram(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1
  %3 = call i32 @btbcm_initialize(ptr noundef %0, ptr noundef nonnull %2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i8, ptr %2, align 1, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = call i32 @btbcm_initialize(ptr noundef %0, ptr noundef nonnull %2) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %5
  %12 = tail call i32 @btbcm_check_bdaddr(ptr noundef %0) #8
  %13 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 9, ptr noundef %13) #8
  br label %14

14:                                               ; preds = %11, %8, %1
  %15 = phi i32 [ %3, %1 ], [ 0, %11 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @btbcm_setup_apple(ptr noundef %0) #0 {
  %2 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext 3075, i32 noundef 0, ptr noundef null, i32 noundef 1000) #8
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 100) #8
  %5 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext -903, i32 noundef 0, ptr noundef null, i32 noundef 1000) #8
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %10, label %13

7:                                                ; preds = %1
  %8 = ptrtoint ptr %2 to i32
  %9 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.23, ptr noundef %9, i32 noundef %8) #8
  br label %85

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %12 = ptrtoint ptr %5 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.55, ptr noundef %11, i32 noundef %12) #8
  br label %28

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 7
  %17 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  br i1 %16, label %19, label %18

18:                                               ; preds = %13
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.56, ptr noundef %17) #8
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #8
  br label %28

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr i8, ptr %21, i32 5
  %26 = load i16, ptr %25, align 1
  %27 = zext i16 %26 to i32
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.19, ptr noundef %17, i32 noundef %24, i32 noundef %27) #8
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #8
  br label %28

28:                                               ; preds = %19, %18, %10
  %29 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext -934, i32 noundef 0, ptr noundef null, i32 noundef 1000) #8
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %33 = ptrtoint ptr %29 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.53, ptr noundef %32, i32 noundef %33) #8
  br label %49

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 5
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 5
  %38 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  br i1 %37, label %40, label %39

39:                                               ; preds = %34
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.54, ptr noundef %38) #8
  tail call void @kfree_skb_reason(ptr noundef %29, i32 noundef 0) #8
  br label %49

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 17
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 1
  %44 = load i16, ptr %43, align 1
  %45 = zext i16 %44 to i32
  %46 = getelementptr i8, ptr %42, i32 3
  %47 = load i16, ptr %46, align 1
  %48 = zext i16 %47 to i32
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.20, ptr noundef %38, i32 noundef %45, i32 noundef %48) #8
  tail call void @kfree_skb_reason(ptr noundef %29, i32 noundef 0) #8
  br label %49

49:                                               ; preds = %40, %39, %31
  %50 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext -914, i32 noundef 0, ptr noundef null, i32 noundef 1000) #8
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %54 = ptrtoint ptr %50 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.57, ptr noundef %53, i32 noundef %54) #8
  br label %67

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 5
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %57, 9
  %59 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  br i1 %58, label %61, label %60

60:                                               ; preds = %55
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.58, ptr noundef %59) #8
  tail call void @kfree_skb_reason(ptr noundef %50, i32 noundef 0) #8
  br label %67

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.sk_buff, ptr %50, i32 0, i32 17
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 1
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.21, ptr noundef %59, i32 noundef %66) #8
  tail call void @kfree_skb_reason(ptr noundef %50, i32 noundef 0) #8
  br label %67

67:                                               ; preds = %61, %60, %52
  %68 = tail call ptr @__hci_cmd_sync(ptr noundef %0, i16 noundef zeroext 3092, i32 noundef 0, ptr noundef null, i32 noundef 1000) #8
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %72 = ptrtoint ptr %68 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.59, ptr noundef %71, i32 noundef %72) #8
  br label %83

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.sk_buff, ptr %68, i32 0, i32 5
  %75 = load i32, ptr %74, align 8
  %76 = icmp eq i32 %75, 249
  %77 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  br i1 %76, label %79, label %78

78:                                               ; preds = %73
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.60, ptr noundef %77) #8
  tail call void @kfree_skb_reason(ptr noundef %68, i32 noundef 0) #8
  br label %83

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.sk_buff, ptr %68, i32 0, i32 17
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 1
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.22, ptr noundef %77, ptr noundef %82) #8
  tail call void @kfree_skb_reason(ptr noundef %68, i32 noundef 0) #8
  br label %83

83:                                               ; preds = %79, %78, %70
  %84 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 118
  tail call void @_set_bit(i32 noundef 9, ptr noundef %84) #8
  br label %85

85:                                               ; preds = %83, %7
  %86 = phi i32 [ 0, %83 ], [ %8, %7 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmi_first_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
