; ModuleID = '/llk/IR/drivers/mtd/spi-nor/core.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_nor_restore:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_nor_restore\22\09\09\09\09\09"
module asm "__kstrtabns_spi_nor_restore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_nor_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_nor_scan\22\09\09\09\09\09"
module asm "__kstrtabns_spi_nor_scan:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.spi_mem_driver = type { %struct.spi_driver, ptr, ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_manufacturer = type { ptr, ptr, i32, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.anon.65 = type { i8, i8, i8, i16 }
%struct.spi_mem_op = type { %struct.anon.65, %struct.anon.66, %struct.anon.67, %struct.anon.68 }
%struct.anon.66 = type { i8, i8, i8, i64 }
%struct.anon.67 = type { i8, i8, i8 }
%struct.anon.68 = type { i8, i8, i32, i32, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.70, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.64 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.70 = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.spi_nor_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_flash_parameter = type { i64, i32, i32, i8, i8, %struct.spi_nor_hwcaps, [16 x %struct.spi_nor_read_command], [8 x %struct.spi_nor_pp_command], %struct.spi_nor_erase_map, %struct.spi_nor_otp, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_nor_hwcaps = type { i32 }
%struct.spi_nor_read_command = type { i8, i8, i8, i32 }
%struct.spi_nor_pp_command = type { i8, i32 }
%struct.spi_nor_erase_map = type { ptr, %struct.spi_nor_erase_region, [4 x %struct.spi_nor_erase_type], i8 }
%struct.spi_nor_erase_region = type { i64, i64 }
%struct.spi_nor_erase_type = type { i32, i32, i32, i8, i8 }
%struct.spi_nor_otp = type { ptr, ptr }
%struct.spi_nor_fixups = type { ptr, ptr, ptr, ptr }
%struct.flash_info = type { ptr, [6 x i8], i8, i32, i16, i16, i16, i8, i16, i8, i8, i8, %struct.spi_nor_otp_organization, ptr }
%struct.spi_nor_otp_organization = type { i32, i64, i64, i32 }
%struct.erase_info = type { i64, i64, i64 }
%struct.spi_nor_erase_command = type { %struct.list_head, i32, i32, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_mem_dirmap_info = type { %struct.spi_mem_op, i64, i64 }
%struct.spi_mem = type { ptr, ptr, ptr }
%struct.flash_platform_data = type { ptr, ptr, i32, ptr }

@spi_nor_convert_3to4_read.spi_nor_3to4_read = internal unnamed_addr constant [11 x [2 x i8]] [[2 x i8] c"\03\13", [2 x i8] c"\0B\0C", [2 x i8] c";<", [2 x i8] c"\BB\BC", [2 x i8] c"kl", [2 x i8] c"\EB\EC", [2 x i8] c"\8B|", [2 x i8] c"\CB\CC", [2 x i8] c"\0D\0E", [2 x i8] c"\BD\BE", [2 x i8] c"\ED\EE"], align 1
@spi_nor_hwcaps_read2cmd.hwcaps_read2cmd = internal unnamed_addr constant [16 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 4, i32 2], [2 x i32] [i32 8, i32 3], [2 x i32] [i32 16, i32 4], [2 x i32] [i32 32, i32 5], [2 x i32] [i32 64, i32 6], [2 x i32] [i32 128, i32 7], [2 x i32] [i32 256, i32 8], [2 x i32] [i32 512, i32 9], [2 x i32] [i32 1024, i32 10], [2 x i32] [i32 2048, i32 11], [2 x i32] [i32 4096, i32 12], [2 x i32] [i32 8192, i32 13], [2 x i32] [i32 16384, i32 14], [2 x i32] [i32 32768, i32 15]], align 4
@__kstrtab_spi_nor_restore = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_nor_restore = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_nor_restore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_nor_restore to i32), ptr @__kstrtab_spi_nor_restore, ptr @__kstrtabns_spi_nor_restore }, section "___ksymtab_gpl+spi_nor_restore", align 4
@spi_nor_scan.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [11 x i8] c"&nor->lock\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s (%lld Kbytes)\0A\00", align 1
@__kstrtab_spi_nor_scan = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_nor_scan = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_nor_scan = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_nor_scan to i32), ptr @__kstrtab_spi_nor_scan, ptr @__kstrtabns_spi_nor_scan }, section "___ksymtab_gpl+spi_nor_scan", align 4
@__initcall__kmod_spi_nor__232_3520_spi_nor_driver_init6 = internal global ptr @spi_nor_driver_init, section ".initcall6.init", align 4
@spi_nor_driver = internal global %struct.spi_mem_driver { %struct.spi_driver { ptr @spi_nor_dev_ids, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.20, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spi_nor_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spi_nor_sysfs_groups, ptr null, ptr null, ptr null } }, ptr @spi_nor_probe, ptr @spi_nor_remove, ptr @spi_nor_shutdown }, align 4
@__exitcall_spi_nor_driver_exit = internal global ptr @spi_nor_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [41 x i8] c"spi_nor.file=drivers/mtd/spi-nor/spi-nor\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [23 x i8] c"spi_nor.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [48 x i8] c"spi_nor.author=Huang Shijie <shijie8@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [29 x i8] c"spi_nor.author=Mike Lavender\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [42 x i8] c"spi_nor.description=framework for SPI NOR\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Unknown command extension type\0A\00", align 1
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.3 = private unnamed_addr constant [27 x i8] c"drivers/mtd/spi-nor/core.c\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Erase Error occurred\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Programming Error occurred\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Erase operation failed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Program operation failed.\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Attempted to modify a protected sector.\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Software reset failed: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"\013spi-nor: please fill all the necessary fields!\0A\00", align 1
@.str.11 = private unnamed_addr constant [90 x i8] c"nor->spimem and nor->controller_ops are mutually exclusive, please set just one of them.\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"found %s, expected %s\0A\00", align 1
@manufacturers = internal unnamed_addr constant [17 x ptr] [ptr @spi_nor_atmel, ptr @spi_nor_catalyst, ptr @spi_nor_eon, ptr @spi_nor_esmt, ptr @spi_nor_everspin, ptr @spi_nor_fujitsu, ptr @spi_nor_gigadevice, ptr @spi_nor_intel, ptr @spi_nor_issi, ptr @spi_nor_macronix, ptr @spi_nor_micron, ptr @spi_nor_st, ptr @spi_nor_spansion, ptr @spi_nor_sst, ptr @spi_nor_winbond, ptr @spi_nor_xilinx, ptr @spi_nor_xmc], align 4
@spi_nor_atmel = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_catalyst = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_eon = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_esmt = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_everspin = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_fujitsu = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_gigadevice = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_intel = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_issi = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_macronix = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_micron = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_st = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_spansion = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_sst = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_winbond = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_xilinx = external dso_local constant %struct.spi_nor_manufacturer, align 4
@spi_nor_xmc = external dso_local constant %struct.spi_nor_manufacturer, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"unrecognized JEDEC id bytes: %*ph\0A\00", align 1
@.str.14 = private unnamed_addr constant [87 x i8] c"BFPT parsing failed. Please consider using SPI_NOR_SKIP_SFDP when declaring the flash\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"m25p,fast-read\00", align 1
@spi_nor_hwcaps_pp2cmd.hwcaps_pp2cmd = internal unnamed_addr constant [8 x [2 x i32]] [[2 x i32] [i32 65536, i32 0], [2 x i32] [i32 131072, i32 1], [2 x i32] [i32 262144, i32 2], [2 x i32] [i32 524288, i32 3], [2 x i32] [i32 1048576, i32 4], [2 x i32] [i32 2097152, i32 5], [2 x i32] [i32 4194304, i32 6], [2 x i32] [i32 8388608, i32 7]], align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"broken-flash-reset\00", align 1
@spi_nor_convert_3to4_program.spi_nor_3to4_program = internal unnamed_addr constant [5 x [2 x i8]] [[2 x i8] c"\02\12", [2 x i8] c"24", [2 x i8] c"8>", [2 x i8] c"\82\84", [2 x i8] c"\C2\8E"], align 1
@spi_nor_convert_3to4_erase.spi_nor_3to4_erase = internal unnamed_addr constant [3 x [2 x i8]] [[2 x i8] c" !", [2 x i8] c"R\\", [2 x i8] c"\D8\DC"], align 1
@spi_nor_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"enabling reset hack; may not recover from unexpected reboots\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"suspend() failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"resume() failed\0A\00", align 1
@spi_nor_dev_ids = internal constant [54 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"spi-nor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"s25sl064a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25x16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25px64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"at25df321a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"at25df641\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"at26df081a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mx25l4005a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mx25l1606e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mx25l6405d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mx25l12805d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mx25l25635e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mx66l51235l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"n25q064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"n25q128a11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"n25q128a13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"n25q512a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"s25fl256s1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"s25fl512s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"s25sl12801\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"s25fl008k\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"s25fl064k\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"sst25vf040b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"sst25vf016b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"sst25vf032b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"sst25wf040\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25x80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25x32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25q32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25q32dw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25q80bl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25q128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"w25q256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p05-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p10-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p20-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p40-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p80-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p16-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p32-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p64-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"m25p128-nonjedec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mr25h128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mr25h256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mr25h10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mr25h40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"spi-nor\00", align 1
@spi_nor_of_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"jedec,spi-nor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@spi_nor_sysfs_groups = external dso_local global [0 x ptr], align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_spi_nor_driver_exit, ptr @__initcall__kmod_spi_nor__232_3520_spi_nor_driver_init6, ptr @__ksymtab_spi_nor_restore, ptr @__ksymtab_spi_nor_scan, ptr @spi_nor_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_nor_spimem_setup_op(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i32 %2, 16
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds %struct.anon.65, ptr %1, i32 0, i32 1
  store i8 %5, ptr %6, align 1
  %7 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = lshr i32 %2, 8
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 1
  store i8 %12, ptr %13, align 1
  br label %14

14:                                               ; preds = %10, %3
  %15 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2
  %16 = load i8, ptr %15, align 8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = lshr i32 %2, 8
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2, i32 1
  store i8 %20, ptr %21, align 1
  br label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3
  %28 = trunc i32 %2 to i8
  store i8 %28, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = and i32 %2, 16777216
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %69, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.anon.65, ptr %1, i32 0, i32 2
  %34 = load i8, ptr %33, align 2
  %35 = or i8 %34, 1
  store i8 %35, ptr %33, align 2
  %36 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 2
  %37 = load i8, ptr %36, align 2
  %38 = or i8 %37, 1
  store i8 %38, ptr %36, align 2
  %39 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2, i32 2
  %40 = load i8, ptr %39, align 2
  %41 = or i8 %40, 1
  store i8 %41, ptr %39, align 2
  %42 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = or i8 %43, 1
  store i8 %44, ptr %42, align 1
  %45 = shl i8 %16, 1
  store i8 %45, ptr %15, align 8
  %46 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %47 = load i32, ptr %46, align 8
  switch i32 %47, label %57 [
    i32 2, label %48
    i32 1, label %53
  ]

48:                                               ; preds = %32
  %49 = getelementptr inbounds %struct.anon.65, ptr %1, i32 0, i32 3
  %50 = load i16, ptr %49, align 4
  %51 = trunc i16 %50 to i8
  %52 = xor i8 %51, -1
  br label %62

53:                                               ; preds = %32
  %54 = getelementptr inbounds %struct.anon.65, ptr %1, i32 0, i32 3
  %55 = load i16, ptr %54, align 4
  %56 = trunc i16 %55 to i8
  br label %62

57:                                               ; preds = %32
  %58 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.2) #17
  %60 = getelementptr inbounds %struct.anon.65, ptr %1, i32 0, i32 3
  %61 = load i16, ptr %60, align 4
  br label %62

62:                                               ; preds = %57, %53, %48
  %63 = phi i16 [ %61, %57 ], [ %55, %53 ], [ %50, %48 ]
  %64 = phi i8 [ 0, %57 ], [ %56, %53 ], [ %52, %48 ]
  %65 = getelementptr inbounds %struct.anon.65, ptr %1, i32 0, i32 3
  %66 = shl i16 %63, 8
  %67 = zext i8 %64 to i16
  %68 = or i16 %66, %67
  store i16 %68, ptr %65, align 4
  store i8 2, ptr %1, align 8
  br label %69

69:                                               ; preds = %62, %29
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_read_data(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.spi_mem_op, align 8
  %6 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %143, label %9

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i32 48, i1 false) #18, !annotation !8
  store i8 1, ptr %5, align 8
  %10 = getelementptr inbounds %struct.anon.65, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.anon.65, ptr %5, i32 0, i32 2
  %12 = getelementptr inbounds %struct.anon.65, ptr %5, i32 0, i32 3
  %13 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 10
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %12, align 4
  %16 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1
  %17 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 8
  %18 = load i8, ptr %17, align 4
  store i8 %18, ptr %16, align 8
  %19 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1, i32 2
  %20 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1, i32 3
  store i64 %1, ptr %20, align 8
  %21 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 2
  %22 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 11
  %23 = load i8, ptr %22, align 1
  store i8 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 2, i32 1
  %25 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 2, i32 2
  %26 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3
  %27 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 1
  store i8 0, ptr %27, align 1
  %28 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 2
  store i32 1, ptr %28, align 8
  %29 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 3
  store i32 %2, ptr %29, align 4
  %30 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 4
  store ptr %3, ptr %30, align 8
  %31 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 13
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %32, 16
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr %10, align 1
  %35 = icmp eq i8 %18, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %9
  %37 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1, i32 1
  %38 = lshr i32 %32, 8
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %37, align 1
  br label %40

40:                                               ; preds = %36, %9
  %41 = icmp eq i8 %23, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = lshr i32 %32, 8
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %24, align 1
  br label %45

45:                                               ; preds = %42, %40
  %46 = phi i8 [ %44, %42 ], [ 0, %40 ]
  %47 = icmp eq i32 %2, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = trunc i32 %32 to i8
  store i8 %49, ptr %26, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = and i32 %32, 16777216
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = zext i8 %23 to i16
  %55 = zext i8 %46 to i16
  %56 = mul nuw i16 %55, %54
  %57 = lshr i16 %56, 3
  %58 = trunc i16 %57 to i8
  br label %85

59:                                               ; preds = %50
  store i8 1, ptr %11, align 2
  store i8 1, ptr %19, align 2
  store i8 1, ptr %25, align 2
  store i8 1, ptr %27, align 1
  %60 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %61 = load i32, ptr %60, align 8
  switch i32 %61, label %64 [
    i32 2, label %62
    i32 1, label %71
  ]

62:                                               ; preds = %59
  %63 = xor i8 %14, -1
  br label %71

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.2) #17
  %67 = load i8, ptr %22, align 1
  %68 = load i32, ptr %31, align 4
  %69 = and i32 %68, 16777216
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %64, %62, %59
  %72 = phi i1 [ true, %59 ], [ %70, %64 ], [ true, %62 ]
  %73 = phi i8 [ %23, %59 ], [ %67, %64 ], [ %23, %62 ]
  %74 = phi i8 [ %14, %59 ], [ 0, %64 ], [ %63, %62 ]
  %75 = shl nuw i16 %15, 8
  %76 = zext i8 %74 to i16
  %77 = or i16 %75, %76
  store i16 %77, ptr %12, align 4
  store i8 2, ptr %5, align 8
  %78 = zext i8 %73 to i16
  %79 = zext i8 %46 to i16
  %80 = mul nuw i16 %78, %79
  %81 = lshr i16 %80, 3
  %82 = trunc i16 %81 to i8
  %83 = zext i1 %72 to i8
  %84 = shl i8 %82, %83
  br label %85

85:                                               ; preds = %71, %53
  %86 = phi i8 [ %58, %53 ], [ %84, %71 ]
  store i8 %86, ptr %21, align 8
  %87 = tail call ptr @llvm.thread.pointer() #18
  %88 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = icmp ugt ptr %89, %3
  %91 = getelementptr i8, ptr %89, i32 8192
  %92 = icmp ule ptr %91, %3
  %93 = or i1 %90, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %85
  %95 = icmp ugt ptr %3, inttoptr (i32 -1073741825 to ptr)
  %96 = load ptr, ptr @high_memory, align 4
  %97 = icmp ugt ptr %96, %3
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = ptrtoint ptr %3 to i32
  %101 = add i32 %100, 1073741824
  %102 = lshr i32 %101, 12
  %103 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %104 = add i32 %103, %102
  %105 = tail call i32 @pfn_valid(i32 noundef %104) #18
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %99, %94, %85
  %108 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 5
  %109 = load i32, ptr %108, align 8
  %110 = icmp ult i32 %109, %2
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 %109, ptr %29, align 4
  br label %112

112:                                              ; preds = %111, %107
  %113 = phi i32 [ %109, %111 ], [ %2, %107 ]
  %114 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %115 = load ptr, ptr %114, align 4
  store ptr %115, ptr %30, align 8
  br label %116

116:                                              ; preds = %112, %99
  %117 = phi ptr [ %115, %112 ], [ %3, %99 ]
  %118 = phi i32 [ %113, %112 ], [ %2, %99 ]
  %119 = phi i1 [ true, %112 ], [ false, %99 ]
  %120 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 22
  %121 = load ptr, ptr %120, align 8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %116
  %124 = tail call i32 @spi_mem_dirmap_read(ptr noundef nonnull %121, i64 noundef %1, i32 noundef %118, ptr noundef %117) #18
  br label %135

125:                                              ; preds = %116
  %126 = load ptr, ptr %6, align 8
  %127 = call i32 @spi_mem_adjust_op_size(ptr noundef %126, ptr noundef nonnull %5) #18
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %125
  %130 = load ptr, ptr %6, align 8
  %131 = call i32 @spi_mem_exec_op(ptr noundef %130, ptr noundef nonnull %5) #18
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i32, ptr %29, align 4
  br label %135

135:                                              ; preds = %133, %123
  %136 = phi i32 [ %124, %123 ], [ %134, %133 ]
  %137 = icmp sgt i32 %136, 0
  %138 = select i1 %119, i1 %137, i1 false
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load ptr, ptr %30, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %140, i32 %136, i1 false) #18
  br label %141

141:                                              ; preds = %139, %135, %129, %125
  %142 = phi i32 [ %131, %129 ], [ %136, %139 ], [ %136, %135 ], [ %127, %125 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #18
  br label %149

143:                                              ; preds = %4
  %144 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %145 = load ptr, ptr %144, align 8
  %146 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %145, i32 0, i32 4
  %147 = load ptr, ptr %146, align 4
  %148 = tail call i32 %147(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #18
  br label %149

149:                                              ; preds = %143, %141
  %150 = phi i32 [ %142, %141 ], [ %148, %143 ]
  ret i32 %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_write_data(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.spi_mem_op, align 8
  %6 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %124, label %9

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i32 48, i1 false) #18, !annotation !8
  store i8 1, ptr %5, align 8
  %10 = getelementptr inbounds %struct.anon.65, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.anon.65, ptr %5, i32 0, i32 2
  %12 = getelementptr inbounds %struct.anon.65, ptr %5, i32 0, i32 3
  %13 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 12
  %14 = load i8, ptr %13, align 8
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %12, align 4
  %16 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1
  %17 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 8
  %18 = load i8, ptr %17, align 4
  store i8 %18, ptr %16, align 8
  %19 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1, i32 1
  %20 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1, i32 2
  %21 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1, i32 3
  store i64 %1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 2
  %23 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 2, i32 2
  %24 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3
  store i8 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 1
  %26 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 2
  store i32 2, ptr %26, align 8
  %27 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 3
  store i32 %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 4
  store ptr %3, ptr %28, align 8
  %29 = icmp eq i8 %14, -83
  br i1 %29, label %30, label %38

30:                                               ; preds = %9
  %31 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 16
  %32 = load i8, ptr %31, align 8, !range !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  store i8 0, ptr %16, align 8
  %35 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 14
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 16
  br label %46

38:                                               ; preds = %30, %9
  %39 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 14
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 16
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr %10, align 1
  %43 = icmp eq i8 %18, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = lshr i32 %40, 8
  br label %46

46:                                               ; preds = %44, %34
  %47 = phi i32 [ %45, %44 ], [ %37, %34 ]
  %48 = phi ptr [ %19, %44 ], [ %10, %34 ]
  %49 = phi i32 [ %40, %44 ], [ %36, %34 ]
  %50 = trunc i32 %47 to i8
  store i8 %50, ptr %48, align 1
  br label %51

51:                                               ; preds = %46, %38
  %52 = phi i32 [ %40, %38 ], [ %49, %46 ]
  %53 = icmp eq i32 %2, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = trunc i32 %52 to i8
  store i8 %55, ptr %24, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = and i32 %52, 16777216
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %56
  store i8 1, ptr %11, align 2
  store i8 1, ptr %20, align 2
  store i8 1, ptr %23, align 2
  store i8 1, ptr %25, align 1
  store i8 0, ptr %22, align 8
  %60 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %61 = load i32, ptr %60, align 8
  switch i32 %61, label %64 [
    i32 2, label %62
    i32 1, label %67
  ]

62:                                               ; preds = %59
  %63 = xor i8 %14, -1
  br label %67

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.2) #17
  br label %67

67:                                               ; preds = %64, %62, %59
  %68 = phi i8 [ 0, %64 ], [ %63, %62 ], [ %14, %59 ]
  %69 = shl nuw i16 %15, 8
  %70 = zext i8 %68 to i16
  %71 = or i16 %69, %70
  store i16 %71, ptr %12, align 4
  store i8 2, ptr %5, align 8
  br label %72

72:                                               ; preds = %67, %56
  %73 = tail call ptr @llvm.thread.pointer() #18
  %74 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp ugt ptr %75, %3
  %77 = getelementptr i8, ptr %75, i32 8192
  %78 = icmp ule ptr %77, %3
  %79 = or i1 %76, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %72
  %81 = icmp ugt ptr %3, inttoptr (i32 -1073741825 to ptr)
  %82 = load ptr, ptr @high_memory, align 4
  %83 = icmp ugt ptr %82, %3
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = ptrtoint ptr %3 to i32
  %87 = add i32 %86, 1073741824
  %88 = lshr i32 %87, 12
  %89 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %90 = add i32 %89, %88
  %91 = tail call i32 @pfn_valid(i32 noundef %90) #18
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %85, %80, %72
  %94 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 5
  %95 = load i32, ptr %94, align 8
  %96 = icmp ult i32 %95, %2
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 %95, ptr %27, align 4
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i32 [ %2, %93 ], [ %95, %97 ]
  %100 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  store ptr %101, ptr %28, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %101, ptr align 1 %3, i32 %99, i1 false) #18
  br label %102

102:                                              ; preds = %98, %85
  %103 = phi ptr [ %3, %85 ], [ %101, %98 ]
  %104 = phi i32 [ %2, %85 ], [ %99, %98 ]
  %105 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 22, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %102
  %109 = tail call i32 @spi_mem_dirmap_write(ptr noundef nonnull %106, i64 noundef %1, i32 noundef %104, ptr noundef %103) #18
  br label %122

110:                                              ; preds = %102
  %111 = load ptr, ptr %6, align 8
  %112 = call i32 @spi_mem_adjust_op_size(ptr noundef %111, ptr noundef nonnull %5) #18
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load ptr, ptr %6, align 8
  %116 = call i32 @spi_mem_exec_op(ptr noundef %115, ptr noundef nonnull %5) #18
  br label %117

117:                                              ; preds = %114, %110
  %118 = phi i32 [ %116, %114 ], [ %112, %110 ]
  %119 = icmp eq i32 %118, 0
  %120 = load i32, ptr %27, align 4
  %121 = select i1 %119, i32 %120, i32 %118
  br label %122

122:                                              ; preds = %117, %108
  %123 = phi i32 [ %109, %108 ], [ %121, %117 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #18
  br label %130

124:                                              ; preds = %4
  %125 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %126, i32 0, i32 5
  %128 = load ptr, ptr %127, align 4
  %129 = tail call i32 %128(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #18
  br label %130

130:                                              ; preds = %124, %122
  %131 = phi i32 [ %123, %122 ], [ %129, %124 ]
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_write_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.spi_mem_op, align 8
  %3 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i32 48, i1 false)
  store i8 1, ptr %2, align 8
  %7 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %2, i32 0, i32 4
  store i16 6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 16
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 1
  store i8 %11, ptr %12, align 1
  %13 = and i32 %9, 16777216
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 2
  store i8 1, ptr %16, align 2
  %17 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 1, i32 2
  store i8 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 2, i32 2
  store i8 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3, i32 1
  store i8 1, ptr %19, align 1
  %20 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %21 = load i32, ptr %20, align 8
  switch i32 %21, label %23 [
    i32 2, label %27
    i32 1, label %22
  ]

22:                                               ; preds = %15
  br label %27

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.2) #17
  %26 = load ptr, ptr %3, align 8
  br label %27

27:                                               ; preds = %23, %22, %15
  %28 = phi ptr [ %26, %23 ], [ %4, %22 ], [ %4, %15 ]
  %29 = phi i8 [ 0, %23 ], [ 6, %22 ], [ -7, %15 ]
  %30 = zext i8 %29 to i16
  %31 = or i16 %30, 1536
  store i16 %31, ptr %7, align 4
  store i8 2, ptr %2, align 8
  br label %32

32:                                               ; preds = %27, %6
  %33 = phi ptr [ %4, %6 ], [ %28, %27 ]
  %34 = call i32 @spi_mem_exec_op(ptr noundef %33, ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #18
  br label %46

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 16777216
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 %44(ptr noundef %0, i8 noundef zeroext 6, ptr noundef null, i32 noundef 0) #18
  br label %46

46:                                               ; preds = %40, %35, %32
  %47 = phi i32 [ %34, %32 ], [ %45, %40 ], [ -95, %35 ]
  ret i32 %47
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_exec_op(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_write_disable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.spi_mem_op, align 8
  %3 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i32 48, i1 false)
  store i8 1, ptr %2, align 8
  %7 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %2, i32 0, i32 4
  store i16 4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 16
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 1
  store i8 %11, ptr %12, align 1
  %13 = and i32 %9, 16777216
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 2
  store i8 1, ptr %16, align 2
  %17 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 1, i32 2
  store i8 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 2, i32 2
  store i8 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3, i32 1
  store i8 1, ptr %19, align 1
  %20 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %21 = load i32, ptr %20, align 8
  switch i32 %21, label %23 [
    i32 2, label %27
    i32 1, label %22
  ]

22:                                               ; preds = %15
  br label %27

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.2) #17
  %26 = load ptr, ptr %3, align 8
  br label %27

27:                                               ; preds = %23, %22, %15
  %28 = phi ptr [ %26, %23 ], [ %4, %22 ], [ %4, %15 ]
  %29 = phi i8 [ 0, %23 ], [ 4, %22 ], [ -5, %15 ]
  %30 = zext i8 %29 to i16
  %31 = or i16 %30, 1024
  store i16 %31, ptr %7, align 4
  store i8 2, ptr %2, align 8
  br label %32

32:                                               ; preds = %27, %6
  %33 = phi ptr [ %4, %6 ], [ %28, %27 ]
  %34 = call i32 @spi_mem_exec_op(ptr noundef %33, ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #18
  br label %46

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 16777216
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 %44(ptr noundef %0, i8 noundef zeroext 4, ptr noundef null, i32 noundef 0) #18
  br label %46

46:                                               ; preds = %40, %35, %32
  %47 = phi i32 [ %34, %32 ], [ %45, %40 ], [ -95, %35 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_read_sr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.spi_mem_op, align 8
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %70, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !8
  store i8 1, ptr %3, align 8
  %8 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 2
  %10 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 3
  store i16 5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 1
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 2
  %13 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 3
  %14 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2
  %15 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2, i32 1
  %16 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2, i32 2
  %17 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3
  store i8 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 1
  %19 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(11) %13, i8 0, i64 11, i1 false)
  store i32 1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 3
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 4
  store ptr %1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 17303560
  br i1 %24, label %25, label %47

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1
  %27 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %28, i32 0, i32 4
  %30 = load i8, ptr %29, align 1
  store i8 %30, ptr %26, align 8
  %31 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %28, i32 0, i32 3
  %32 = load i8, ptr %31, align 8
  store i32 2, ptr %20, align 4
  %33 = icmp eq i8 %30, 0
  %34 = lshr i32 %23, 16
  %35 = trunc i32 %34 to i8
  store i8 %35, ptr %8, align 1
  br i1 %33, label %39, label %36

36:                                               ; preds = %25
  %37 = lshr i32 %23, 8
  %38 = trunc i32 %37 to i8
  store i8 %38, ptr %11, align 1
  br label %39

39:                                               ; preds = %36, %25
  %40 = icmp eq i8 %32, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = lshr i32 %23, 8
  %43 = trunc i32 %42 to i8
  store i8 %43, ptr %15, align 1
  br label %44

44:                                               ; preds = %41, %39
  %45 = trunc i32 %23 to i8
  store i8 %45, ptr %17, align 4
  %46 = shl i8 %32, 1
  br label %53

47:                                               ; preds = %7
  %48 = lshr i32 %23, 16
  %49 = trunc i32 %48 to i8
  store i8 %49, ptr %8, align 1
  %50 = trunc i32 %23 to i8
  store i8 %50, ptr %17, align 4
  %51 = and i32 %23, 16777216
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %47, %44
  %54 = phi i8 [ %46, %44 ], [ 0, %47 ]
  store i8 1, ptr %9, align 2
  store i8 1, ptr %12, align 2
  store i8 1, ptr %16, align 2
  store i8 1, ptr %18, align 1
  store i8 %54, ptr %14, align 8
  %55 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %56 = load i32, ptr %55, align 8
  switch i32 %56, label %58 [
    i32 2, label %62
    i32 1, label %57
  ]

57:                                               ; preds = %53
  br label %62

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.2) #17
  %61 = load ptr, ptr %4, align 8
  br label %62

62:                                               ; preds = %58, %57, %53
  %63 = phi ptr [ %61, %58 ], [ %5, %57 ], [ %5, %53 ]
  %64 = phi i8 [ 0, %58 ], [ 5, %57 ], [ -6, %53 ]
  %65 = zext i8 %64 to i16
  %66 = or i16 %65, 1280
  store i16 %66, ptr %10, align 4
  store i8 2, ptr %3, align 8
  br label %67

67:                                               ; preds = %62, %47
  %68 = phi ptr [ %5, %47 ], [ %63, %62 ]
  %69 = call i32 @spi_mem_exec_op(ptr noundef %68, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #18
  br label %81

70:                                               ; preds = %2
  %71 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 16777216
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 %79(ptr noundef %0, i8 noundef zeroext 5, ptr noundef %1, i32 noundef 1) #18
  br label %81

81:                                               ; preds = %75, %70, %67
  %82 = phi i32 [ %69, %67 ], [ %80, %75 ], [ -95, %70 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_read_cr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.spi_mem_op, align 8
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !8
  store i8 1, ptr %3, align 8
  %8 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 2
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 3
  store i16 53, ptr %10, align 4
  %11 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 1
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 3
  %13 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3
  %14 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 1
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(11) %12, i8 0, i64 11, i1 false)
  store i32 1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 3
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 4
  store ptr %1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 16
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %8, align 1
  %22 = trunc i32 %19 to i8
  store i8 %22, ptr %13, align 4
  %23 = and i32 %19, 16777216
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2, i32 2
  %27 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 2
  store i8 1, ptr %9, align 2
  store i8 1, ptr %27, align 2
  store i8 1, ptr %26, align 2
  store i8 1, ptr %14, align 1
  %28 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %29 = load i32, ptr %28, align 8
  switch i32 %29, label %31 [
    i32 2, label %35
    i32 1, label %30
  ]

30:                                               ; preds = %25
  br label %35

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.2) #17
  %34 = load ptr, ptr %4, align 8
  br label %35

35:                                               ; preds = %31, %30, %25
  %36 = phi ptr [ %34, %31 ], [ %5, %30 ], [ %5, %25 ]
  %37 = phi i8 [ 0, %31 ], [ 53, %30 ], [ -54, %25 ]
  %38 = zext i8 %37 to i16
  %39 = or i16 %38, 13568
  store i16 %39, ptr %10, align 4
  store i8 2, ptr %3, align 8
  br label %40

40:                                               ; preds = %35, %7
  %41 = phi ptr [ %5, %7 ], [ %36, %35 ]
  %42 = call i32 @spi_mem_exec_op(ptr noundef %41, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #18
  br label %54

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 16777216
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 %52(ptr noundef %0, i8 noundef zeroext 53, ptr noundef %1, i32 noundef 1) #18
  br label %54

54:                                               ; preds = %48, %43, %40
  %55 = phi i32 [ %42, %40 ], [ %53, %48 ], [ -95, %43 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_set_4byte_addr_mode(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.spi_mem_op, align 8
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  store i8 1, ptr %3, align 8
  %8 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 3
  %9 = select i1 %1, i16 183, i16 233
  store i16 %9, ptr %8, align 4
  %10 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 16
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 1
  store i8 %13, ptr %14, align 1
  %15 = and i32 %11, 16777216
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 2
  store i8 1, ptr %18, align 2
  %19 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 2
  store i8 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2, i32 2
  store i8 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 1
  store i8 1, ptr %21, align 1
  %22 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %23 = load i32, ptr %22, align 8
  switch i32 %23, label %29 [
    i32 2, label %24
    i32 1, label %27
  ]

24:                                               ; preds = %17
  %25 = trunc i16 %9 to i8
  %26 = xor i8 %25, -1
  br label %33

27:                                               ; preds = %17
  %28 = trunc i16 %9 to i8
  br label %33

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.2) #17
  %32 = load ptr, ptr %4, align 8
  br label %33

33:                                               ; preds = %29, %27, %24
  %34 = phi ptr [ %32, %29 ], [ %5, %27 ], [ %5, %24 ]
  %35 = phi i8 [ 0, %29 ], [ %28, %27 ], [ %26, %24 ]
  %36 = shl nuw i16 %9, 8
  %37 = zext i8 %35 to i16
  %38 = or i16 %36, %37
  store i16 %38, ptr %8, align 4
  store i8 2, ptr %3, align 8
  br label %39

39:                                               ; preds = %33, %7
  %40 = phi ptr [ %5, %7 ], [ %34, %33 ]
  %41 = call i32 @spi_mem_exec_op(ptr noundef %40, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #18
  br label %54

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 16777216
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = select i1 %1, i8 -73, i8 -23
  %49 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 %52(ptr noundef %0, i8 noundef zeroext %48, ptr noundef null, i32 noundef 0) #18
  br label %54

54:                                               ; preds = %47, %42, %39
  %55 = phi i32 [ %41, %39 ], [ %53, %47 ], [ -95, %42 ]
  ret i32 %55
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_write_ear(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.spi_mem_op, align 8
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  store i8 %1, ptr %5, align 1
  %6 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !8
  store i8 1, ptr %3, align 8
  %10 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 1
  %11 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 2
  store i8 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 3
  store i16 197, ptr %12, align 4
  %13 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 1
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 3
  %15 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3
  %16 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 1
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(11) %14, i8 0, i64 11, i1 false)
  store i32 2, ptr %17, align 8
  %18 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 3
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 4
  %20 = load ptr, ptr %4, align 4
  store ptr %20, ptr %19, align 8
  %21 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 16
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %10, align 1
  %25 = trunc i32 %22 to i8
  store i8 %25, ptr %15, align 4
  %26 = and i32 %22, 16777216
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %9
  %29 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2, i32 2
  %30 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 2
  store i8 1, ptr %11, align 2
  store i8 1, ptr %30, align 2
  store i8 1, ptr %29, align 2
  store i8 1, ptr %16, align 1
  %31 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %32 = load i32, ptr %31, align 8
  switch i32 %32, label %34 [
    i32 2, label %38
    i32 1, label %33
  ]

33:                                               ; preds = %28
  br label %38

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.2) #17
  %37 = load ptr, ptr %6, align 8
  br label %38

38:                                               ; preds = %34, %33, %28
  %39 = phi ptr [ %37, %34 ], [ %7, %33 ], [ %7, %28 ]
  %40 = phi i8 [ 0, %34 ], [ -59, %33 ], [ 58, %28 ]
  %41 = zext i8 %40 to i16
  %42 = or i16 %41, -15104
  store i16 %42, ptr %12, align 4
  store i8 2, ptr %3, align 8
  br label %43

43:                                               ; preds = %38, %9
  %44 = phi ptr [ %7, %9 ], [ %39, %38 ]
  %45 = call i32 @spi_mem_exec_op(ptr noundef %44, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #18
  br label %58

46:                                               ; preds = %2
  %47 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 16777216
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load ptr, ptr %4, align 4
  %53 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %54, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 %56(ptr noundef %0, i8 noundef zeroext -59, ptr noundef %52, i32 noundef 1) #18
  br label %58

58:                                               ; preds = %51, %46, %43
  %59 = phi i32 [ %45, %43 ], [ %57, %51 ], [ -95, %46 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_xread_sr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.spi_mem_op, align 8
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !8
  store i8 1, ptr %3, align 8
  %8 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 2
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 3
  store i16 215, ptr %10, align 4
  %11 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 1
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 3
  %13 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3
  %14 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 1
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(11) %12, i8 0, i64 11, i1 false)
  store i32 1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 3
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 4
  store ptr %1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 16
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %8, align 1
  %22 = trunc i32 %19 to i8
  store i8 %22, ptr %13, align 4
  %23 = and i32 %19, 16777216
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2, i32 2
  %27 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 2
  store i8 1, ptr %9, align 2
  store i8 1, ptr %27, align 2
  store i8 1, ptr %26, align 2
  store i8 1, ptr %14, align 1
  %28 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %29 = load i32, ptr %28, align 8
  switch i32 %29, label %31 [
    i32 2, label %35
    i32 1, label %30
  ]

30:                                               ; preds = %25
  br label %35

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.2) #17
  %34 = load ptr, ptr %4, align 8
  br label %35

35:                                               ; preds = %31, %30, %25
  %36 = phi ptr [ %34, %31 ], [ %5, %30 ], [ %5, %25 ]
  %37 = phi i8 [ 0, %31 ], [ -41, %30 ], [ 40, %25 ]
  %38 = zext i8 %37 to i16
  %39 = or i16 %38, -10496
  store i16 %39, ptr %10, align 4
  store i8 2, ptr %3, align 8
  br label %40

40:                                               ; preds = %35, %7
  %41 = phi ptr [ %5, %7 ], [ %36, %35 ]
  %42 = call i32 @spi_mem_exec_op(ptr noundef %41, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #18
  br label %54

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 16777216
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 %52(ptr noundef %0, i8 noundef zeroext -41, ptr noundef %1, i32 noundef 1) #18
  br label %54

54:                                               ; preds = %48, %43, %40
  %55 = phi i32 [ %42, %40 ], [ %53, %48 ], [ -95, %43 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_wait_till_ready(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %0, i32 noundef 4000)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.spi_mem_op, align 8
  %4 = alloca %struct.spi_mem_op, align 8
  %5 = alloca %struct.spi_mem_op, align 8
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %8 = add i32 %6, %1
  %9 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %10 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %11 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %3, i32 0, i32 4
  %14 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 2
  %16 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 2
  %17 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2, i32 2
  %18 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 1
  %19 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %20 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %21 = getelementptr inbounds %struct.anon.65, ptr %5, i32 0, i32 1
  %22 = getelementptr inbounds %struct.anon.65, ptr %5, i32 0, i32 2
  %23 = getelementptr inbounds %struct.anon.65, ptr %5, i32 0, i32 3
  %24 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1, i32 1
  %25 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1, i32 2
  %26 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1, i32 3
  %27 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 2
  %28 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 2, i32 1
  %29 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 2, i32 2
  %30 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3
  %31 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 1
  %32 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 2
  %33 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 3
  %34 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 4
  %35 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1
  %36 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %37 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %4, i32 0, i32 4
  %38 = getelementptr inbounds %struct.anon.65, ptr %4, i32 0, i32 1
  %39 = getelementptr inbounds %struct.anon.65, ptr %4, i32 0, i32 2
  %40 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 1, i32 2
  %41 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 2, i32 2
  %42 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 3, i32 1
  br label %43

43:                                               ; preds = %238, %2
  %44 = load volatile i32, ptr @jiffies, align 64
  %45 = xor i32 %44, -1
  %46 = add i32 %8, %45
  %47 = load i32, ptr %9, align 4
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  %50 = load ptr, ptr %10, align 4
  br i1 %49, label %59, label %51

51:                                               ; preds = %43
  %52 = call i32 @spi_nor_xread_sr(ptr noundef %0, ptr noundef %50) #18
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %115

54:                                               ; preds = %51
  %55 = load ptr, ptr %10, align 4
  %56 = load i8, ptr %55, align 1
  %57 = lshr i8 %56, 7
  %58 = zext i8 %57 to i32
  br label %118

59:                                               ; preds = %43
  %60 = call i32 @spi_nor_read_sr(ptr noundef %0, ptr noundef %50) #18
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %59
  %63 = load i32, ptr %9, align 4
  %64 = and i32 %63, 16
  %65 = icmp eq i32 %64, 0
  %66 = load ptr, ptr %10, align 4
  %67 = load i8, ptr %66, align 1
  br i1 %65, label %111, label %68

68:                                               ; preds = %62
  %69 = zext i8 %67 to i32
  %70 = and i32 %69, 96
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %111, label %72

72:                                               ; preds = %68
  %73 = and i32 %69, 32
  %74 = icmp eq i32 %73, 0
  %75 = load ptr, ptr %11, align 4
  %76 = select i1 %74, ptr @.str.5, ptr @.str.4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull %76) #17
  %77 = load ptr, ptr %12, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %99, label %79

79:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i32 48, i1 false) #18
  store i8 1, ptr %3, align 8
  store i16 48, ptr %13, align 4
  %80 = load i32, ptr %7, align 4
  %81 = lshr i32 %80, 16
  %82 = trunc i32 %81 to i8
  store i8 %82, ptr %14, align 1
  %83 = and i32 %80, 16777216
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %79
  store i8 1, ptr %15, align 2
  store i8 1, ptr %16, align 2
  store i8 1, ptr %17, align 2
  store i8 1, ptr %18, align 1
  %86 = load i32, ptr %19, align 8
  switch i32 %86, label %88 [
    i32 2, label %91
    i32 1, label %87
  ]

87:                                               ; preds = %85
  br label %91

88:                                               ; preds = %85
  %89 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.2) #17
  %90 = load ptr, ptr %12, align 8
  br label %91

91:                                               ; preds = %88, %87, %85
  %92 = phi ptr [ %90, %88 ], [ %77, %87 ], [ %77, %85 ]
  %93 = phi i8 [ 0, %88 ], [ 48, %87 ], [ -49, %85 ]
  %94 = zext i8 %93 to i16
  %95 = or i16 %94, 12288
  store i16 %95, ptr %13, align 4
  store i8 2, ptr %3, align 8
  br label %96

96:                                               ; preds = %91, %79
  %97 = phi ptr [ %77, %79 ], [ %92, %91 ]
  %98 = call i32 @spi_mem_exec_op(ptr noundef %97, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #18
  br label %108

99:                                               ; preds = %72
  %100 = load i32, ptr %7, align 4
  %101 = and i32 %100, 16777216
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load ptr, ptr %20, align 8
  %105 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = call i32 %106(ptr noundef %0, i8 noundef zeroext 48, ptr noundef null, i32 noundef 0) #18
  br label %108

108:                                              ; preds = %103, %99, %96
  %109 = call i32 @spi_nor_write_disable(ptr noundef %0) #18
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %241, label %115

111:                                              ; preds = %68, %62
  %112 = and i8 %67, 1
  %113 = xor i8 %112, 1
  %114 = zext i8 %113 to i32
  br label %118

115:                                              ; preds = %108, %59, %51
  %116 = phi i32 [ %52, %51 ], [ %60, %59 ], [ %109, %108 ]
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %241, label %118

118:                                              ; preds = %115, %111, %54
  %119 = phi i32 [ %116, %115 ], [ %114, %111 ], [ %58, %54 ]
  %120 = load i32, ptr %9, align 4
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %233, label %123

123:                                              ; preds = %118
  %124 = load ptr, ptr %10, align 4
  %125 = load ptr, ptr %12, align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %164, label %127

127:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i32 48, i1 false) #18, !annotation !8
  store i8 1, ptr %5, align 8
  store i16 112, ptr %23, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(11) %26, i8 0, i64 11, i1 false) #18
  store i32 1, ptr %32, align 8
  store i32 1, ptr %33, align 4
  store ptr %124, ptr %34, align 8
  %128 = load i32, ptr %7, align 4
  %129 = icmp eq i32 %128, 17303560
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  %131 = load ptr, ptr %36, align 4
  %132 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %131, i32 0, i32 4
  %133 = load i8, ptr %132, align 1
  store i8 %133, ptr %35, align 8
  %134 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %131, i32 0, i32 3
  %135 = load i8, ptr %134, align 8
  store i32 2, ptr %33, align 4
  %136 = icmp eq i8 %133, 0
  store i8 8, ptr %21, align 1
  br i1 %136, label %138, label %137

137:                                              ; preds = %130
  store i8 8, ptr %24, align 1
  br label %138

138:                                              ; preds = %137, %130
  %139 = icmp eq i8 %135, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %138
  store i8 8, ptr %28, align 1
  br label %141

141:                                              ; preds = %140, %138
  store i8 8, ptr %30, align 4
  %142 = shl i8 %135, 1
  br label %149

143:                                              ; preds = %127
  %144 = lshr i32 %128, 16
  %145 = trunc i32 %144 to i8
  store i8 %145, ptr %21, align 1
  %146 = trunc i32 %128 to i8
  store i8 %146, ptr %30, align 4
  %147 = and i32 %128, 16777216
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %161, label %149

149:                                              ; preds = %143, %141
  %150 = phi i8 [ %142, %141 ], [ 0, %143 ]
  store i8 1, ptr %22, align 2
  store i8 1, ptr %25, align 2
  store i8 1, ptr %29, align 2
  store i8 1, ptr %31, align 1
  store i8 %150, ptr %27, align 8
  %151 = load i32, ptr %19, align 8
  switch i32 %151, label %153 [
    i32 2, label %156
    i32 1, label %152
  ]

152:                                              ; preds = %149
  br label %156

153:                                              ; preds = %149
  %154 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.2) #17
  %155 = load ptr, ptr %12, align 8
  br label %156

156:                                              ; preds = %153, %152, %149
  %157 = phi ptr [ %155, %153 ], [ %125, %152 ], [ %125, %149 ]
  %158 = phi i8 [ 0, %153 ], [ 112, %152 ], [ -113, %149 ]
  %159 = zext i8 %158 to i16
  %160 = or i16 %159, 28672
  store i16 %160, ptr %23, align 4
  store i8 2, ptr %5, align 8
  br label %161

161:                                              ; preds = %156, %143
  %162 = phi ptr [ %125, %143 ], [ %157, %156 ]
  %163 = call i32 @spi_mem_exec_op(ptr noundef %162, ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #18
  br label %173

164:                                              ; preds = %123
  %165 = load i32, ptr %7, align 4
  %166 = and i32 %165, 16777216
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %241

168:                                              ; preds = %164
  %169 = load ptr, ptr %20, align 8
  %170 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %169, i32 0, i32 2
  %171 = load ptr, ptr %170, align 4
  %172 = call i32 %171(ptr noundef %0, i8 noundef zeroext 112, ptr noundef %124, i32 noundef 1) #18
  br label %173

173:                                              ; preds = %168, %161
  %174 = phi i32 [ %163, %161 ], [ %172, %168 ]
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %230

176:                                              ; preds = %173
  %177 = load ptr, ptr %10, align 4
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = and i32 %179, 48
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %228, label %182

182:                                              ; preds = %176
  %183 = and i32 %179, 32
  %184 = icmp eq i32 %183, 0
  %185 = load ptr, ptr %11, align 4
  %186 = select i1 %184, ptr @.str.7, ptr @.str.6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %185, ptr noundef nonnull %186) #17
  %187 = load ptr, ptr %10, align 4
  %188 = load i8, ptr %187, align 1
  %189 = and i8 %188, 2
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %182
  %192 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull @.str.8) #17
  br label %193

193:                                              ; preds = %191, %182
  %194 = load ptr, ptr %12, align 8
  %195 = icmp eq ptr %194, null
  br i1 %195, label %216, label %196

196:                                              ; preds = %193
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i32 48, i1 false) #18
  store i8 1, ptr %4, align 8
  store i16 80, ptr %37, align 4
  %197 = load i32, ptr %7, align 4
  %198 = lshr i32 %197, 16
  %199 = trunc i32 %198 to i8
  store i8 %199, ptr %38, align 1
  %200 = and i32 %197, 16777216
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %213, label %202

202:                                              ; preds = %196
  store i8 1, ptr %39, align 2
  store i8 1, ptr %40, align 2
  store i8 1, ptr %41, align 2
  store i8 1, ptr %42, align 1
  %203 = load i32, ptr %19, align 8
  switch i32 %203, label %205 [
    i32 2, label %208
    i32 1, label %204
  ]

204:                                              ; preds = %202
  br label %208

205:                                              ; preds = %202
  %206 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %206, ptr noundef nonnull @.str.2) #17
  %207 = load ptr, ptr %12, align 8
  br label %208

208:                                              ; preds = %205, %204, %202
  %209 = phi ptr [ %207, %205 ], [ %194, %204 ], [ %194, %202 ]
  %210 = phi i8 [ 0, %205 ], [ 80, %204 ], [ -81, %202 ]
  %211 = zext i8 %210 to i16
  %212 = or i16 %211, 20480
  store i16 %212, ptr %37, align 4
  store i8 2, ptr %4, align 8
  br label %213

213:                                              ; preds = %208, %196
  %214 = phi ptr [ %194, %196 ], [ %209, %208 ]
  %215 = call i32 @spi_mem_exec_op(ptr noundef %214, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  br label %225

216:                                              ; preds = %193
  %217 = load i32, ptr %7, align 4
  %218 = and i32 %217, 16777216
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %216
  %221 = load ptr, ptr %20, align 8
  %222 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %221, i32 0, i32 3
  %223 = load ptr, ptr %222, align 4
  %224 = call i32 %223(ptr noundef %0, i8 noundef zeroext 80, ptr noundef null, i32 noundef 0) #18
  br label %225

225:                                              ; preds = %220, %216, %213
  %226 = call i32 @spi_nor_write_disable(ptr noundef %0) #18
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %241, label %230

228:                                              ; preds = %176
  %229 = lshr i32 %179, 7
  br label %233

230:                                              ; preds = %225, %173
  %231 = phi i32 [ %174, %173 ], [ %226, %225 ]
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %241, label %233

233:                                              ; preds = %230, %228, %118
  %234 = phi i32 [ %231, %230 ], [ %229, %228 ], [ 1, %118 ]
  %235 = icmp eq i32 %119, 0
  %236 = icmp eq i32 %234, 0
  %237 = select i1 %235, i1 true, i1 %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = call i32 @__cond_resched() #18
  %240 = icmp sgt i32 %46, -1
  br i1 %240, label %43, label %241

241:                                              ; preds = %238, %233, %230, %225, %164, %115, %108
  %242 = phi i32 [ 0, %233 ], [ -110, %238 ], [ -5, %225 ], [ -95, %164 ], [ -5, %108 ], [ %231, %230 ], [ %116, %115 ]
  ret i32 %242
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_global_block_unlock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.spi_mem_op, align 8
  %3 = tail call i32 @spi_nor_write_enable(ptr noundef %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %54

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i32 48, i1 false)
  store i8 1, ptr %2, align 8
  %10 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %2, i32 0, i32 4
  store i16 152, ptr %10, align 4
  %11 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 16
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 1
  store i8 %14, ptr %15, align 1
  %16 = and i32 %12, 16777216
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 2
  store i8 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 1, i32 2
  store i8 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 2, i32 2
  store i8 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3, i32 1
  store i8 1, ptr %22, align 1
  %23 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %24 = load i32, ptr %23, align 8
  switch i32 %24, label %26 [
    i32 2, label %30
    i32 1, label %25
  ]

25:                                               ; preds = %18
  br label %30

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.2) #17
  %29 = load ptr, ptr %6, align 8
  br label %30

30:                                               ; preds = %26, %25, %18
  %31 = phi ptr [ %29, %26 ], [ %7, %25 ], [ %7, %18 ]
  %32 = phi i8 [ 0, %26 ], [ -104, %25 ], [ 103, %18 ]
  %33 = zext i8 %32 to i16
  %34 = or i16 %33, -26624
  store i16 %34, ptr %10, align 4
  store i8 2, ptr %2, align 8
  br label %35

35:                                               ; preds = %30, %9
  %36 = phi ptr [ %7, %9 ], [ %31, %30 ]
  %37 = call i32 @spi_mem_exec_op(ptr noundef %36, ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #18
  br label %49

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 16777216
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 %47(ptr noundef %0, i8 noundef zeroext -104, ptr noundef null, i32 noundef 0) #18
  br label %49

49:                                               ; preds = %43, %35
  %50 = phi i32 [ %37, %35 ], [ %48, %43 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %0, i32 noundef 4000) #18
  br label %54

54:                                               ; preds = %52, %49, %38, %1
  %55 = phi i32 [ %53, %52 ], [ %3, %1 ], [ %50, %49 ], [ -95, %38 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_write_sr(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.spi_mem_op, align 8
  %5 = tail call i32 @spi_nor_write_enable(ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %67

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i32 48, i1 false), !annotation !8
  store i8 1, ptr %4, align 8
  %12 = getelementptr inbounds %struct.anon.65, ptr %4, i32 0, i32 1
  %13 = getelementptr inbounds %struct.anon.65, ptr %4, i32 0, i32 2
  store i8 0, ptr %13, align 2
  %14 = getelementptr inbounds %struct.anon.65, ptr %4, i32 0, i32 3
  store i16 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 1, i32 1
  store i8 0, ptr %15, align 1
  %16 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 1, i32 2
  %17 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 1, i32 3
  %18 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 2
  %19 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 2, i32 2
  %20 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 3
  store i8 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 3, i32 1
  %22 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(11) %17, i8 0, i64 11, i1 false)
  store i32 2, ptr %22, align 8
  %23 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 3, i32 3
  store i32 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 3, i32 4
  store ptr %1, ptr %24, align 8
  %25 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 16
  %28 = trunc i32 %27 to i8
  store i8 %28, ptr %12, align 1
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %11
  %31 = trunc i32 %26 to i8
  store i8 %31, ptr %20, align 4
  br label %32

32:                                               ; preds = %30, %11
  %33 = and i32 %26, 16777216
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  store i8 1, ptr %13, align 2
  store i8 1, ptr %16, align 2
  store i8 1, ptr %19, align 2
  store i8 1, ptr %21, align 1
  store i8 0, ptr %18, align 8
  %36 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %37 = load i32, ptr %36, align 8
  switch i32 %37, label %39 [
    i32 2, label %43
    i32 1, label %38
  ]

38:                                               ; preds = %35
  br label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.2) #17
  %42 = load ptr, ptr %8, align 8
  br label %43

43:                                               ; preds = %39, %38, %35
  %44 = phi ptr [ %42, %39 ], [ %9, %38 ], [ %9, %35 ]
  %45 = phi i8 [ 0, %39 ], [ 1, %38 ], [ -2, %35 ]
  %46 = zext i8 %45 to i16
  %47 = or i16 %46, 256
  store i16 %47, ptr %14, align 4
  store i8 2, ptr %4, align 8
  br label %48

48:                                               ; preds = %43, %32
  %49 = phi ptr [ %9, %32 ], [ %44, %43 ]
  %50 = call i32 @spi_mem_exec_op(ptr noundef %49, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  br label %62

51:                                               ; preds = %7
  %52 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 16777216
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %58, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 %60(ptr noundef %0, i8 noundef zeroext 1, ptr noundef %1, i32 noundef %2) #18
  br label %62

62:                                               ; preds = %56, %48
  %63 = phi i32 [ %50, %48 ], [ %61, %56 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %0, i32 noundef 4000) #18
  br label %67

67:                                               ; preds = %65, %62, %51, %3
  %68 = phi i32 [ %66, %65 ], [ %5, %3 ], [ %63, %62 ], [ -95, %51 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_write_16bit_cr_and_check(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @spi_nor_read_sr(ptr noundef %0, ptr noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %4, i32 1
  store i8 %1, ptr %8, align 1
  %9 = tail call i32 @spi_nor_write_sr(ptr noundef %0, ptr noundef %4, i32 noundef 2)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = load i8, ptr %4, align 1
  %13 = tail call i32 @spi_nor_read_sr(ptr noundef %0, ptr noundef %4)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load i8, ptr %4, align 1
  %17 = icmp eq i8 %12, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = tail call i32 @spi_nor_read_cr(ptr noundef %0, ptr noundef %8)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i8, ptr %8, align 1
  %28 = icmp eq i8 %27, %1
  %29 = select i1 %28, i32 0, i32 -5
  br label %30

30:                                               ; preds = %26, %23, %18, %15, %11, %7, %2
  %31 = phi i32 [ %5, %2 ], [ %9, %7 ], [ %13, %11 ], [ -5, %15 ], [ 0, %18 ], [ %24, %23 ], [ %29, %26 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_write_sr_and_check(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  br i1 %6, label %38, label %9

9:                                                ; preds = %2
  %10 = and i32 %4, 1024
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %8, i32 1
  %14 = tail call i32 @spi_nor_read_cr(ptr noundef %0, ptr noundef %13) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %54

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %18, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = getelementptr i8, ptr %8, i32 1
  %23 = select i1 %21, i8 0, i8 2
  store i8 %23, ptr %22, align 1
  br label %24

24:                                               ; preds = %16, %12
  store i8 %1, ptr %8, align 1
  %25 = tail call i32 @spi_nor_write_sr(ptr noundef %0, ptr noundef %8, i32 noundef 2) #18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %24
  %28 = load i32, ptr %3, align 4
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %8, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = tail call i32 @spi_nor_read_cr(ptr noundef %0, ptr noundef %32) #18
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load i8, ptr %32, align 1
  br label %49

38:                                               ; preds = %2
  store i8 %1, ptr %8, align 1
  %39 = load ptr, ptr %7, align 4
  %40 = tail call i32 @spi_nor_write_sr(ptr noundef %0, ptr noundef %39, i32 noundef 1) #18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load ptr, ptr %7, align 4
  %44 = tail call i32 @spi_nor_read_sr(ptr noundef %0, ptr noundef %43) #18
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load ptr, ptr %7, align 4
  %48 = load i8, ptr %47, align 1
  br label %49

49:                                               ; preds = %46, %36
  %50 = phi i8 [ %1, %46 ], [ %37, %36 ]
  %51 = phi i8 [ %48, %46 ], [ %33, %36 ]
  %52 = icmp eq i8 %51, %50
  %53 = select i1 %52, i32 0, i32 -5
  br label %54

54:                                               ; preds = %49, %42, %38, %31, %27, %24, %12
  %55 = phi i32 [ %14, %12 ], [ %25, %24 ], [ 0, %27 ], [ %34, %31 ], [ %40, %38 ], [ %44, %42 ], [ %53, %49 ]
  ret i32 %55
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local zeroext i8 @spi_nor_convert_3to4_read(i8 noundef zeroext %0) local_unnamed_addr #4 {
  switch i8 %0, label %16 [
    i8 3, label %12
    i8 11, label %2
    i8 59, label %3
    i8 -69, label %4
    i8 107, label %5
    i8 -21, label %6
    i8 -117, label %7
    i8 -53, label %8
    i8 13, label %9
    i8 -67, label %10
    i8 -19, label %11
  ]

2:                                                ; preds = %1
  br label %12

3:                                                ; preds = %1
  br label %12

4:                                                ; preds = %1
  br label %12

5:                                                ; preds = %1
  br label %12

6:                                                ; preds = %1
  br label %12

7:                                                ; preds = %1
  br label %12

8:                                                ; preds = %1
  br label %12

9:                                                ; preds = %1
  br label %12

10:                                               ; preds = %1
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1
  %13 = phi i32 [ 0, %1 ], [ 1, %2 ], [ 2, %3 ], [ 3, %4 ], [ 4, %5 ], [ 5, %6 ], [ 6, %7 ], [ 7, %8 ], [ 8, %9 ], [ 9, %10 ], [ 10, %11 ]
  %14 = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_read.spi_nor_3to4_read, i32 %13, i32 1
  %15 = load i8, ptr %14, align 1
  br label %16

16:                                               ; preds = %12, %1
  %17 = phi i8 [ %15, %12 ], [ %0, %1 ]
  ret i8 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_lock_and_prep(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %2) #18
  %3 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call i32 %7(ptr noundef %0) #18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @mutex_unlock(ptr noundef %2) #18
  br label %13

13:                                               ; preds = %12, %9, %6, %1
  %14 = phi i32 [ %10, %12 ], [ 0, %9 ], [ 0, %6 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_nor_unlock_and_unprep(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void %7(ptr noundef %0) #18
  br label %10

10:                                               ; preds = %9, %5, %1
  %11 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %11) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_erase_sector(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.spi_mem_op, align 8
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef %1) #18
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ %10, %9 ], [ %1, %2 ]
  %13 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %62, label %16

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  store i8 1, ptr %3, align 8
  %17 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 3
  %18 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 9
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %17, align 4
  %21 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1
  %22 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 8
  %23 = load i8, ptr %22, align 4
  store i8 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 3
  %25 = zext i32 %12 to i64
  store i64 %25, ptr %24, align 8
  %26 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 14
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 16
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 1
  store i8 %29, ptr %30, align 1
  %31 = icmp eq i8 %23, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %16
  %33 = lshr i32 %27, 8
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 1
  store i8 %34, ptr %35, align 1
  br label %36

36:                                               ; preds = %32, %16
  %37 = and i32 %27, 16777216
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2
  %41 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 2
  store i8 1, ptr %41, align 2
  %42 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 2
  store i8 1, ptr %42, align 2
  %43 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2, i32 2
  store i8 1, ptr %43, align 2
  %44 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 1
  store i8 1, ptr %44, align 1
  store i8 0, ptr %40, align 8
  %45 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %46 = load i32, ptr %45, align 8
  switch i32 %46, label %49 [
    i32 2, label %47
    i32 1, label %53
  ]

47:                                               ; preds = %39
  %48 = xor i8 %19, -1
  br label %53

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.2) #17
  %52 = load ptr, ptr %13, align 8
  br label %53

53:                                               ; preds = %49, %47, %39
  %54 = phi ptr [ %52, %49 ], [ %14, %47 ], [ %14, %39 ]
  %55 = phi i8 [ 0, %49 ], [ %48, %47 ], [ %19, %39 ]
  %56 = shl nuw i16 %20, 8
  %57 = zext i8 %55 to i16
  %58 = or i16 %56, %57
  store i16 %58, ptr %17, align 4
  store i8 2, ptr %3, align 8
  br label %59

59:                                               ; preds = %53, %36
  %60 = phi ptr [ %14, %36 ], [ %54, %53 ]
  %61 = call i32 @spi_mem_exec_op(ptr noundef %60, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #18
  br label %108

62:                                               ; preds = %11
  %63 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %64, i32 0, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 14
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 16777216
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %68
  %74 = zext i32 %12 to i64
  %75 = tail call i32 %66(ptr noundef %0, i64 noundef %74) #18
  br label %108

76:                                               ; preds = %62
  %77 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 8
  %78 = load i8, ptr %77, align 4
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %76
  %81 = zext i8 %78 to i32
  %82 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  br label %83

83:                                               ; preds = %83, %80
  %84 = phi i32 [ %81, %80 ], [ %86, %83 ]
  %85 = phi i32 [ %12, %80 ], [ %90, %83 ]
  %86 = add nsw i32 %84, -1
  %87 = trunc i32 %85 to i8
  %88 = load ptr, ptr %82, align 4
  %89 = getelementptr i8, ptr %88, i32 %86
  store i8 %87, ptr %89, align 1
  %90 = lshr i32 %85, 8
  %91 = icmp ugt i32 %84, 1
  br i1 %91, label %83, label %92

92:                                               ; preds = %83, %76
  %93 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, 16777216
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load i8, ptr %77, align 4
  %99 = zext i8 %98 to i32
  %100 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 9
  %103 = load i8, ptr %102, align 1
  %104 = load ptr, ptr %63, align 8
  %105 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = tail call i32 %106(ptr noundef %0, i8 noundef zeroext %103, ptr noundef %101, i32 noundef %99) #18
  br label %108

108:                                              ; preds = %97, %92, %73, %68, %59
  %109 = phi i32 [ %61, %59 ], [ %75, %73 ], [ -95, %68 ], [ %107, %97 ], [ -95, %92 ]
  ret i32 %109
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @spi_nor_region_next(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 16
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr %struct.spi_nor_erase_region, ptr %0, i32 1
  %6 = select i1 %4, ptr %5, ptr null
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_sr1_bit6_quad_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @spi_nor_read_sr(ptr noundef %0, ptr noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 64
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = or i8 %8, 64
  store i8 %12, ptr %7, align 1
  %13 = load ptr, ptr %2, align 4
  %14 = load i8, ptr %13, align 1
  %15 = tail call i32 @spi_nor_write_sr(ptr noundef %0, ptr noundef %13, i32 noundef 1) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load ptr, ptr %2, align 4
  %19 = tail call i32 @spi_nor_read_sr(ptr noundef %0, ptr noundef %18) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load ptr, ptr %2, align 4
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, %14
  %25 = select i1 %24, i32 0, i32 -5
  br label %26

26:                                               ; preds = %21, %17, %11, %6, %1
  %27 = phi i32 [ %4, %1 ], [ 0, %6 ], [ %15, %11 ], [ %19, %17 ], [ %25, %21 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_sr2_bit1_quad_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @spi_nor_read_cr(ptr noundef %0, ptr noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 4
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = or i8 %13, 2
  store i8 %17, ptr %12, align 1
  %18 = load ptr, ptr %7, align 4
  %19 = load i8, ptr %18, align 1
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi i8 [ %19, %16 ], [ 2, %1 ]
  %22 = tail call i32 @spi_nor_write_16bit_cr_and_check(ptr noundef %0, i8 noundef zeroext %21)
  br label %23

23:                                               ; preds = %20, %11, %6
  %24 = phi i32 [ %9, %6 ], [ 0, %11 ], [ %22, %20 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_sr2_bit7_quad_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.spi_mem_op, align 8
  %3 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @spi_nor_read_sr2(ptr noundef %0, ptr noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %78

7:                                                ; preds = %1
  %8 = load i8, ptr %4, align 1
  %9 = icmp sgt i8 %8, -1
  br i1 %9, label %10, label %78

10:                                               ; preds = %7
  %11 = or i8 %8, -128
  store i8 %11, ptr %4, align 1
  %12 = tail call i32 @spi_nor_write_enable(ptr noundef %0) #18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %78

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i32 48, i1 false) #18, !annotation !8
  store i8 1, ptr %2, align 8
  %19 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 1
  %20 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 3
  store i16 62, ptr %20, align 4
  %21 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 1, i32 3
  %22 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3
  %23 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3, i32 1
  store i8 0, ptr %23, align 1
  %24 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(11) %21, i8 0, i64 11, i1 false) #18
  store i32 2, ptr %24, align 8
  %25 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3, i32 3
  store i32 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3, i32 4
  store ptr %4, ptr %26, align 8
  %27 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 16
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %19, align 1
  %31 = trunc i32 %28 to i8
  store i8 %31, ptr %22, align 4
  %32 = and i32 %28, 16777216
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 2
  %36 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 2, i32 2
  %37 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 1, i32 2
  store i8 1, ptr %35, align 2
  store i8 1, ptr %37, align 2
  store i8 1, ptr %36, align 2
  store i8 1, ptr %23, align 1
  %38 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %39 = load i32, ptr %38, align 8
  switch i32 %39, label %41 [
    i32 2, label %45
    i32 1, label %40
  ]

40:                                               ; preds = %34
  br label %45

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.2) #17
  %44 = load ptr, ptr %15, align 8
  br label %45

45:                                               ; preds = %41, %40, %34
  %46 = phi ptr [ %44, %41 ], [ %16, %40 ], [ %16, %34 ]
  %47 = phi i8 [ 0, %41 ], [ 62, %40 ], [ -63, %34 ]
  %48 = zext i8 %47 to i16
  %49 = or i16 %48, 15872
  store i16 %49, ptr %20, align 4
  store i8 2, ptr %2, align 8
  br label %50

50:                                               ; preds = %45, %18
  %51 = phi ptr [ %16, %18 ], [ %46, %45 ]
  %52 = call i32 @spi_mem_exec_op(ptr noundef %51, ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #18
  br label %64

53:                                               ; preds = %14
  %54 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 16777216
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 %62(ptr noundef %0, i8 noundef zeroext 62, ptr noundef %4, i32 noundef 1) #18
  br label %64

64:                                               ; preds = %58, %50
  %65 = phi i32 [ %52, %50 ], [ %63, %58 ]
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %0, i32 noundef 4000) #18
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load i8, ptr %4, align 1
  %72 = call fastcc i32 @spi_nor_read_sr2(ptr noundef %0, ptr noundef %4)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i8, ptr %4, align 1
  %76 = icmp eq i8 %75, %71
  %77 = select i1 %76, i32 0, i32 -5
  br label %78

78:                                               ; preds = %74, %70, %67, %64, %53, %10, %7, %1
  %79 = phi i32 [ %5, %1 ], [ 0, %7 ], [ %68, %67 ], [ %72, %70 ], [ %77, %74 ], [ -95, %53 ], [ %65, %64 ], [ %12, %10 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_read_sr2(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.spi_mem_op, align 8
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !8
  store i8 1, ptr %3, align 8
  %8 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 2
  store i8 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 3
  store i16 63, ptr %10, align 4
  %11 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 1
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 3
  %13 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3
  %14 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 1
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(11) %12, i8 0, i64 11, i1 false)
  store i32 1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 3
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 4
  store ptr %1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 16
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %8, align 1
  %22 = trunc i32 %19 to i8
  store i8 %22, ptr %13, align 4
  %23 = and i32 %19, 16777216
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2, i32 2
  %27 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 2
  store i8 1, ptr %9, align 2
  store i8 1, ptr %27, align 2
  store i8 1, ptr %26, align 2
  store i8 1, ptr %14, align 1
  %28 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %29 = load i32, ptr %28, align 8
  switch i32 %29, label %31 [
    i32 2, label %35
    i32 1, label %30
  ]

30:                                               ; preds = %25
  br label %35

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.2) #17
  %34 = load ptr, ptr %4, align 8
  br label %35

35:                                               ; preds = %31, %30, %25
  %36 = phi ptr [ %34, %31 ], [ %5, %30 ], [ %5, %25 ]
  %37 = phi i8 [ 0, %31 ], [ 63, %30 ], [ -64, %25 ]
  %38 = zext i8 %37 to i16
  %39 = or i16 %38, 16128
  store i16 %39, ptr %10, align 4
  store i8 2, ptr %3, align 8
  br label %40

40:                                               ; preds = %35, %7
  %41 = phi ptr [ %5, %7 ], [ %36, %35 ]
  %42 = call i32 @spi_mem_exec_op(ptr noundef %41, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #18
  br label %54

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 16777216
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 %52(ptr noundef %0, i8 noundef zeroext 63, ptr noundef %1, i32 noundef 1) #18
  br label %54

54:                                               ; preds = %48, %43, %40
  %55 = phi i32 [ %42, %40 ], [ %53, %48 ], [ -95, %43 ]
  ret i32 %55
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @spi_nor_set_read_settings(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #6 {
  store i8 %1, ptr %0, align 4
  %6 = getelementptr inbounds %struct.spi_nor_read_command, ptr %0, i32 0, i32 1
  store i8 %2, ptr %6, align 1
  %7 = getelementptr inbounds %struct.spi_nor_read_command, ptr %0, i32 0, i32 2
  store i8 %3, ptr %7, align 2
  %8 = getelementptr inbounds %struct.spi_nor_read_command, ptr %0, i32 0, i32 3
  store i32 %4, ptr %8, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @spi_nor_set_pp_settings(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #6 {
  store i8 %1, ptr %0, align 4
  %4 = getelementptr inbounds %struct.spi_nor_pp_command, ptr %0, i32 0, i32 1
  store i32 %2, ptr %4, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i32 @spi_nor_hwcaps_read2cmd(i32 noundef %0) local_unnamed_addr #4 {
  switch i32 %0, label %21 [
    i32 1, label %17
    i32 2, label %2
    i32 4, label %3
    i32 8, label %4
    i32 16, label %5
    i32 32, label %6
    i32 64, label %7
    i32 128, label %8
    i32 256, label %9
    i32 512, label %10
    i32 1024, label %11
    i32 2048, label %12
    i32 4096, label %13
    i32 8192, label %14
    i32 16384, label %15
    i32 32768, label %16
  ]

2:                                                ; preds = %1
  br label %17

3:                                                ; preds = %1
  br label %17

4:                                                ; preds = %1
  br label %17

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  br label %17

7:                                                ; preds = %1
  br label %17

8:                                                ; preds = %1
  br label %17

9:                                                ; preds = %1
  br label %17

10:                                               ; preds = %1
  br label %17

11:                                               ; preds = %1
  br label %17

12:                                               ; preds = %1
  br label %17

13:                                               ; preds = %1
  br label %17

14:                                               ; preds = %1
  br label %17

15:                                               ; preds = %1
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1
  %18 = phi i32 [ 0, %1 ], [ 1, %2 ], [ 2, %3 ], [ 3, %4 ], [ 4, %5 ], [ 5, %6 ], [ 6, %7 ], [ 7, %8 ], [ 8, %9 ], [ 9, %10 ], [ 10, %11 ], [ 11, %12 ], [ 12, %13 ], [ 13, %14 ], [ 14, %15 ], [ 15, %16 ]
  %19 = getelementptr [2 x i32], ptr @spi_nor_hwcaps_read2cmd.hwcaps_read2cmd, i32 %18, i32 1
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = phi i32 [ %20, %17 ], [ -22, %1 ]
  ret i32 %22
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @spi_nor_set_erase_type(ptr nocapture noundef writeonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #7 {
  store i32 %1, ptr %0, align 4
  %4 = getelementptr inbounds %struct.spi_nor_erase_type, ptr %0, i32 0, i32 3
  store i8 %2, ptr %4, align 4
  %5 = tail call i32 @llvm.cttz.i32(i32 %1, i1 true), !range !10
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 -1, i32 %5
  %8 = getelementptr inbounds %struct.spi_nor_erase_type, ptr %0, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = shl nsw i32 -1, %7
  %10 = xor i32 %9, -1
  %11 = getelementptr inbounds %struct.spi_nor_erase_type, ptr %0, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @spi_nor_init_uniform_erase_map(ptr noundef %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #6 {
  %4 = and i8 %1, 15
  %5 = or i8 %4, 16
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.spi_nor_erase_map, ptr %0, i32 0, i32 1
  store i64 %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.spi_nor_erase_map, ptr %0, i32 0, i32 1, i32 1
  store i64 %2, ptr %8, align 8
  store ptr %7, ptr %0, align 8
  %9 = getelementptr inbounds %struct.spi_nor_erase_map, ptr %0, i32 0, i32 3
  store i8 %1, ptr %9, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_post_bfpt_fixups(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.spi_nor_fixups, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i32 %13(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15, %11, %7, %3
  %19 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.flash_info, ptr %20, i32 0, i32 13
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.spi_nor_fixups, ptr %22, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call i32 %26(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  br label %30

30:                                               ; preds = %28, %24, %18, %15
  %31 = phi i32 [ %29, %28 ], [ %16, %15 ], [ 0, %24 ], [ 0, %18 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_nor_restore(ptr noundef %0) #0 {
  %2 = alloca %struct.spi_mem_op, align 8
  %3 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 8
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 4
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 96
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %13, i32 0, i32 12
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 %15(ptr noundef %0, i1 noundef zeroext false) #18
  br label %17

17:                                               ; preds = %11, %6, %1
  %18 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 32768
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %88, label %22

22:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #18
  %23 = getelementptr inbounds i8, ptr %2, i32 1
  %24 = getelementptr inbounds i8, ptr %2, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i64 48, i1 false) #18
  store i8 1, ptr %2, align 8
  %25 = getelementptr inbounds i8, ptr %2, i32 4
  store i16 102, ptr %25, align 4
  %26 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 16
  %29 = trunc i32 %28 to i8
  store i8 %29, ptr %23, align 1
  %30 = and i32 %27, 16777216
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 2
  store i8 1, ptr %33, align 2
  %34 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 1, i32 2
  store i8 1, ptr %34, align 2
  %35 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 2, i32 2
  store i8 1, ptr %35, align 2
  %36 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3, i32 1
  store i8 1, ptr %36, align 1
  %37 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %38 = load i32, ptr %37, align 8
  switch i32 %38, label %40 [
    i32 2, label %43
    i32 1, label %39
  ]

39:                                               ; preds = %32
  br label %43

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.2) #17
  br label %43

43:                                               ; preds = %40, %39, %32
  %44 = phi i8 [ 0, %40 ], [ 102, %39 ], [ -103, %32 ]
  %45 = zext i8 %44 to i16
  %46 = or i16 %45, 26112
  store i16 %46, ptr %25, align 4
  store i8 2, ptr %2, align 8
  br label %47

47:                                               ; preds = %43, %22
  %48 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8
  %50 = call i32 @spi_mem_exec_op(ptr noundef %49, ptr noundef nonnull %2) #18
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.9, i32 noundef %50) #17
  br label %87

55:                                               ; preds = %47
  %56 = getelementptr inbounds i8, ptr %2, i32 2
  store i16 0, ptr %56, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(42) %24, i8 0, i64 42, i1 false) #18
  store i8 1, ptr %2, align 8
  store i16 153, ptr %25, align 4
  %57 = load i32, ptr %26, align 4
  %58 = lshr i32 %57, 16
  %59 = trunc i32 %58 to i8
  store i8 %59, ptr %23, align 1
  %60 = and i32 %57, 16777216
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %79, label %62

62:                                               ; preds = %55
  store i8 1, ptr %56, align 2
  %63 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 1, i32 2
  store i8 1, ptr %63, align 2
  %64 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 2, i32 2
  store i8 1, ptr %64, align 2
  %65 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3, i32 1
  store i8 1, ptr %65, align 1
  %66 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %67 = load i32, ptr %66, align 8
  switch i32 %67, label %69 [
    i32 2, label %74
    i32 1, label %68
  ]

68:                                               ; preds = %62
  br label %74

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.2) #17
  %72 = load i16, ptr %25, align 4
  %73 = shl i16 %72, 8
  br label %74

74:                                               ; preds = %69, %68, %62
  %75 = phi i16 [ %73, %69 ], [ -26368, %68 ], [ -26368, %62 ]
  %76 = phi i8 [ 0, %69 ], [ -103, %68 ], [ 102, %62 ]
  %77 = zext i8 %76 to i16
  %78 = or i16 %75, %77
  store i16 %78, ptr %25, align 4
  store i8 2, ptr %2, align 8
  br label %79

79:                                               ; preds = %74, %55
  %80 = load ptr, ptr %48, align 8
  %81 = call i32 @spi_mem_exec_op(ptr noundef %80, ptr noundef nonnull %2) #18
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %85, ptr noundef nonnull @.str.9, i32 noundef %81) #17
  br label %87

86:                                               ; preds = %79
  call void @usleep_range_state(i32 noundef 200, i32 noundef 400, i32 noundef 2) #18
  br label %87

87:                                               ; preds = %86, %83, %52
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #18
  br label %88

88:                                               ; preds = %87, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_nor_scan(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.spi_nor_flash_parameter, align 8
  %5 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %11, label %15, label %34

15:                                               ; preds = %8
  br i1 %14, label %32, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %13, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %13, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %13, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %13, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28, %24, %20, %16, %15, %3
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #17
  br label %469

34:                                               ; preds = %8
  br i1 %14, label %36, label %35

35:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %6, ptr noundef nonnull @.str.11) #17
  br label %469

36:                                               ; preds = %34, %28
  %37 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  store i32 65793, ptr %37, align 4
  %38 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 13
  store i32 65793, ptr %38, align 4
  %39 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 14
  store i32 65793, ptr %39, align 8
  %40 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 5
  store i32 4096, ptr %40, align 8
  %41 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %6, i32 noundef 4096, i32 noundef 3264) #18
  %42 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  store ptr %41, ptr %42, align 4
  %43 = icmp eq ptr %41, null
  br i1 %43, label %469, label %44

44:                                               ; preds = %36
  %45 = icmp eq ptr %1, null
  br i1 %45, label %74, label %46

46:                                               ; preds = %65, %44
  %47 = phi i32 [ %66, %65 ], [ 0, %44 ]
  %48 = getelementptr [17 x ptr], ptr @manufacturers, i32 0, i32 %47
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %49, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  br label %56

56:                                               ; preds = %62, %53
  %57 = phi i32 [ 0, %53 ], [ %63, %62 ]
  %58 = getelementptr %struct.flash_info, ptr %55, i32 %57
  %59 = load ptr, ptr %58, align 8
  %60 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef %59) #18
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = add nuw i32 %57, 1
  %64 = icmp eq i32 %63, %51
  br i1 %64, label %65, label %56

65:                                               ; preds = %62, %46
  %66 = add nuw nsw i32 %47, 1
  %67 = icmp eq i32 %66, 17
  br i1 %67, label %74, label %46

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %49, i32 0, i32 1
  %70 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 7
  store ptr %49, ptr %70, align 8
  %71 = load ptr, ptr %69, align 4
  %72 = getelementptr %struct.flash_info, ptr %71, i32 %57
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %68, %65, %44
  %75 = tail call fastcc ptr @spi_nor_read_id(ptr noundef %0) #18
  br label %76

76:                                               ; preds = %74, %68
  %77 = phi ptr [ %72, %68 ], [ %75, %74 ]
  %78 = icmp eq ptr %77, null
  %79 = icmp ugt ptr %77, inttoptr (i32 -4096 to ptr)
  %80 = or i1 %78, %79
  br i1 %80, label %102, label %81

81:                                               ; preds = %76
  br i1 %45, label %97, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.flash_info, ptr %77, i32 0, i32 2
  %84 = load i8, ptr %83, align 2
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %82
  %87 = tail call fastcc ptr @spi_nor_read_id(ptr noundef %0) #18
  %88 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  %89 = icmp eq ptr %87, %77
  %90 = or i1 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %5, align 4
  %93 = load ptr, ptr %87, align 8
  %94 = load ptr, ptr %77, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %92, ptr noundef nonnull @.str.12, ptr noundef %93, ptr noundef %94) #17
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi ptr [ %77, %86 ], [ %87, %91 ]
  br i1 %88, label %99, label %97

97:                                               ; preds = %95, %82, %81
  %98 = phi ptr [ %96, %95 ], [ %77, %82 ], [ %77, %81 ]
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi ptr [ %98, %97 ], [ %87, %95 ]
  %101 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %102, label %105

102:                                              ; preds = %99, %76
  %103 = phi ptr [ %100, %99 ], [ inttoptr (i32 -2 to ptr), %76 ]
  %104 = ptrtoint ptr %103 to i32
  br label %469

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 6
  store ptr %100, ptr %106, align 4
  %107 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %107, ptr noundef nonnull @.str, ptr noundef nonnull @spi_nor_scan.__key) #18
  %108 = load ptr, ptr %5, align 4
  %109 = tail call noalias ptr @devm_kmalloc(ptr noundef %108, i32 noundef 344, i32 noundef 3520) #18
  %110 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  store ptr %109, ptr %110, align 4
  %111 = icmp eq ptr %109, null
  br i1 %111, label %469, label %112

112:                                              ; preds = %105
  %113 = load ptr, ptr %106, align 4
  %114 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 25
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 11
  store ptr @spi_nor_sr2_bit1_quad_enable, ptr %116, align 4
  %117 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 12
  store ptr @spansion_set_4byte_addr_mode, ptr %117, align 8
  %118 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 14
  store ptr @spi_nor_default_setup, ptr %118, align 8
  %119 = getelementptr inbounds %struct.flash_info, ptr %113, i32 0, i32 12
  %120 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 9
  store ptr %119, ptr %120, align 8
  %121 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %122 = load i32, ptr %121, align 4
  %123 = or i32 %122, 512
  store i32 %123, ptr %121, align 4
  %124 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 1
  store i32 1, ptr %124, align 8
  %125 = getelementptr inbounds %struct.flash_info, ptr %113, i32 0, i32 3
  %126 = load i32, ptr %125, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.flash_info, ptr %113, i32 0, i32 4
  %129 = load i16, ptr %128, align 8
  %130 = zext i16 %129 to i64
  %131 = mul nuw nsw i64 %130, %127
  store i64 %131, ptr %109, align 8
  %132 = getelementptr inbounds %struct.flash_info, ptr %113, i32 0, i32 5
  %133 = load i16, ptr %132, align 2
  %134 = zext i16 %133 to i32
  %135 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 2
  store i32 %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.flash_info, ptr %113, i32 0, i32 8
  %137 = load i16, ptr %136, align 8
  %138 = and i16 %137, 256
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %112
  %141 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 5
  %142 = load i32, ptr %141, align 4
  %143 = or i32 %142, 2
  store i32 %143, ptr %141, align 4
  %144 = icmp eq ptr %115, null
  br i1 %144, label %151, label %145

145:                                              ; preds = %140
  %146 = tail call ptr @of_find_property(ptr noundef nonnull %115, ptr noundef nonnull @.str.15, ptr noundef null) #18
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, ptr %141, align 4
  %150 = and i32 %149, -3
  store i32 %150, ptr %141, align 4
  br label %151

151:                                              ; preds = %148, %145, %140, %112
  %152 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 5
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 6
  store i8 0, ptr %154, align 4
  %155 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 6, i32 0, i32 1
  store i8 0, ptr %155, align 1
  %156 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 6, i32 0, i32 2
  store i8 3, ptr %156, align 2
  %157 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 6, i32 0, i32 3
  store i32 65793, ptr %157, align 4
  %158 = and i32 %153, 2
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %151
  %161 = getelementptr %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 6, i32 1
  store i8 0, ptr %161, align 4
  %162 = getelementptr %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 6, i32 1, i32 1
  store i8 8, ptr %162, align 1
  %163 = getelementptr %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 6, i32 1, i32 2
  store i8 11, ptr %163, align 2
  %164 = getelementptr %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 6, i32 1, i32 3
  store i32 65793, ptr %164, align 4
  br label %165

165:                                              ; preds = %160, %151
  %166 = or i32 %153, 65537
  store i32 %166, ptr %152, align 4
  %167 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 7
  store i8 2, ptr %167, align 4
  %168 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %109, i32 0, i32 7, i32 0, i32 1
  store i32 65793, ptr %168, align 4
  %169 = load ptr, ptr %106, align 4
  %170 = getelementptr inbounds %struct.flash_info, ptr %169, i32 0, i32 7
  %171 = load i8, ptr %170, align 2, !range !9
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %165
  %174 = tail call i32 @spi_nor_parse_sfdp(ptr noundef %0) #18
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %221, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.14) #17
  br label %469

178:                                              ; preds = %165
  %179 = getelementptr inbounds %struct.flash_info, ptr %169, i32 0, i32 9
  %180 = load i8, ptr %179, align 2
  %181 = and i8 %180, 1
  %182 = icmp eq i8 %181, 0
  tail call fastcc void @spi_nor_no_sfdp_init_params(ptr noundef %0) #18
  br i1 %182, label %183, label %221

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 7
  %185 = load ptr, ptr %184, align 8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %195, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %185, i32 0, i32 3
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %195, label %191

191:                                              ; preds = %187
  %192 = load ptr, ptr %189, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %191
  tail call void %192(ptr noundef %0) #18
  br label %195

195:                                              ; preds = %194, %191, %187, %183
  %196 = load ptr, ptr %106, align 4
  %197 = getelementptr inbounds %struct.flash_info, ptr %196, i32 0, i32 13
  %198 = load ptr, ptr %197, align 8
  %199 = icmp eq ptr %198, null
  br i1 %199, label %205, label %200

200:                                              ; preds = %195
  %201 = load ptr, ptr %198, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  tail call void %201(ptr noundef %0) #18
  %204 = load ptr, ptr %106, align 4
  br label %205

205:                                              ; preds = %203, %200, %195
  %206 = phi ptr [ %196, %195 ], [ %196, %200 ], [ %204, %203 ]
  %207 = getelementptr inbounds %struct.flash_info, ptr %206, i32 0, i32 9
  %208 = load i8, ptr %207, align 2
  %209 = and i8 %208, 120
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %221, label %211

211:                                              ; preds = %205
  call void @llvm.lifetime.start.p0(i64 344, ptr nonnull %4)
  %212 = load ptr, ptr %110, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(344) %4, ptr noundef align 8 dereferenceable(344) %212, i32 344, i1 false) #18
  %213 = tail call i32 @spi_nor_parse_sfdp(ptr noundef %0) #18
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %211
  %216 = load ptr, ptr %110, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(344) %216, ptr noundef nonnull align 8 dereferenceable(344) %4, i32 344, i1 false) #18
  %217 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 8
  store i8 0, ptr %217, align 4
  %218 = load i32, ptr %121, align 4
  %219 = and i32 %218, -65
  store i32 %219, ptr %121, align 4
  br label %220

220:                                              ; preds = %215, %211
  call void @llvm.lifetime.end.p0(i64 344, ptr nonnull %4)
  br label %221

221:                                              ; preds = %220, %205, %178, %173
  %222 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 7
  %223 = load ptr, ptr %222, align 8
  %224 = icmp eq ptr %223, null
  br i1 %224, label %234, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %223, i32 0, i32 3
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %234, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.spi_nor_fixups, ptr %227, i32 0, i32 3
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %234, label %233

233:                                              ; preds = %229
  tail call void %231(ptr noundef %0) #18
  br label %234

234:                                              ; preds = %233, %229, %225, %221
  %235 = load ptr, ptr %106, align 4
  %236 = getelementptr inbounds %struct.flash_info, ptr %235, i32 0, i32 13
  %237 = load ptr, ptr %236, align 8
  %238 = icmp eq ptr %237, null
  br i1 %238, label %245, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.spi_nor_fixups, ptr %237, i32 0, i32 3
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %245, label %243

243:                                              ; preds = %239
  tail call void %241(ptr noundef %0) #18
  %244 = load ptr, ptr %106, align 4
  br label %245

245:                                              ; preds = %243, %239, %234
  %246 = phi ptr [ %244, %243 ], [ %235, %239 ], [ %235, %234 ]
  %247 = load ptr, ptr %114, align 8
  %248 = getelementptr inbounds %struct.flash_info, ptr %246, i32 0, i32 8
  %249 = load i16, ptr %248, align 8
  %250 = tail call ptr @of_find_property(ptr noundef %247, ptr noundef nonnull @.str.16, ptr noundef null) #18
  %251 = icmp eq ptr %250, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %245
  %253 = load i32, ptr %121, align 4
  %254 = or i32 %253, 32
  store i32 %254, ptr %121, align 4
  br label %255

255:                                              ; preds = %252, %245
  %256 = zext i16 %249 to i32
  %257 = and i32 %256, 32
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %255
  %260 = load i32, ptr %121, align 4
  %261 = or i32 %260, 65536
  store i32 %261, ptr %121, align 4
  br label %262

262:                                              ; preds = %259, %255
  %263 = and i32 %256, 1
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %262
  %266 = load i32, ptr %121, align 4
  %267 = or i32 %266, 256
  store i32 %267, ptr %121, align 4
  br label %268

268:                                              ; preds = %265, %262
  %269 = and i32 %256, 2
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %278, label %271

271:                                              ; preds = %268
  %272 = load i32, ptr %121, align 4
  %273 = or i32 %272, 2
  store i32 %273, ptr %121, align 4
  %274 = and i32 %256, 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %278, label %276

276:                                              ; preds = %271
  %277 = or i32 %272, 2050
  store i32 %277, ptr %121, align 4
  br label %278

278:                                              ; preds = %276, %271, %268
  %279 = and i32 %256, 8
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %288, label %281

281:                                              ; preds = %278
  %282 = load i32, ptr %121, align 4
  %283 = or i32 %282, 4096
  store i32 %283, ptr %121, align 4
  %284 = and i32 %256, 16
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %288, label %286

286:                                              ; preds = %281
  %287 = or i32 %282, 12288
  store i32 %287, ptr %121, align 4
  br label %288

288:                                              ; preds = %286, %281, %278
  %289 = and i32 %256, 128
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %288
  %292 = load i32, ptr %121, align 4
  %293 = or i32 %292, 4
  store i32 %293, ptr %121, align 4
  br label %294

294:                                              ; preds = %291, %288
  %295 = and i32 %256, 512
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %294
  %298 = load i32, ptr %121, align 4
  %299 = or i32 %298, 16
  store i32 %299, ptr %121, align 4
  br label %300

300:                                              ; preds = %297, %294
  %301 = and i32 %256, 1024
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = load i32, ptr %121, align 4
  %305 = or i32 %304, 1
  store i32 %305, ptr %121, align 4
  br label %306

306:                                              ; preds = %303, %300
  %307 = and i32 %256, 2048
  %308 = icmp eq i32 %307, 0
  %309 = load i32, ptr %121, align 4
  br i1 %308, label %312, label %310

310:                                              ; preds = %306
  %311 = or i32 %309, 8
  store i32 %311, ptr %121, align 4
  br label %312

312:                                              ; preds = %310, %306
  %313 = phi i32 [ %311, %310 ], [ %309, %306 ]
  %314 = load ptr, ptr %106, align 4
  %315 = getelementptr inbounds %struct.flash_info, ptr %314, i32 0, i32 10
  %316 = load i8, ptr %315, align 1
  %317 = zext i8 %316 to i32
  %318 = and i32 %317, 3
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %327, label %320

320:                                              ; preds = %312
  %321 = shl nuw nsw i32 %317, 6
  %322 = and i32 %321, 64
  %323 = or i32 %322, %313
  %324 = shl nuw nsw i32 %317, 13
  %325 = and i32 %324, 16384
  %326 = or i32 %323, %325
  store i32 %326, ptr %121, align 4
  br label %327

327:                                              ; preds = %320, %312
  %328 = and i32 %313, 256
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %336, label %330

330:                                              ; preds = %327
  %331 = load ptr, ptr %110, align 4
  %332 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %331, i32 0, i32 15
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %335, label %336

335:                                              ; preds = %330
  tail call void @spi_nor_init_default_locking_ops(ptr noundef %0) #18
  br label %336

336:                                              ; preds = %335, %330, %327
  %337 = load ptr, ptr %110, align 4
  %338 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %337, i32 0, i32 14
  %339 = load ptr, ptr %338, align 8
  %340 = icmp eq ptr %339, null
  br i1 %340, label %344, label %341

341:                                              ; preds = %336
  %342 = tail call i32 %339(ptr noundef %0, ptr noundef %2) #18
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %469

344:                                              ; preds = %341, %336
  %345 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 8
  %346 = load i8, ptr %345, align 4
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %348, label %359

348:                                              ; preds = %344
  %349 = load i32, ptr %38, align 4
  %350 = icmp eq i32 %349, 17303560
  br i1 %350, label %370, label %351

351:                                              ; preds = %348
  %352 = load ptr, ptr %106, align 4
  %353 = getelementptr inbounds %struct.flash_info, ptr %352, i32 0, i32 6
  %354 = load i16, ptr %353, align 4
  %355 = icmp eq i16 %354, 0
  br i1 %355, label %358, label %356

356:                                              ; preds = %351
  %357 = trunc i16 %354 to i8
  store i8 %357, ptr %345, align 4
  br label %359

358:                                              ; preds = %351
  store i8 3, ptr %345, align 4
  br label %362

359:                                              ; preds = %356, %344
  %360 = phi i8 [ %357, %356 ], [ %346, %344 ]
  %361 = icmp eq i8 %360, 3
  br i1 %361, label %362, label %366

362:                                              ; preds = %359, %358
  %363 = load ptr, ptr %110, align 4
  %364 = load i64, ptr %363, align 8
  %365 = icmp ugt i64 %364, 16777216
  br i1 %365, label %370, label %461

366:                                              ; preds = %359
  %367 = icmp ugt i8 %360, 4
  br i1 %367, label %469, label %368

368:                                              ; preds = %366
  %369 = icmp eq i8 %360, 4
  br i1 %369, label %371, label %461

370:                                              ; preds = %362, %348
  store i8 4, ptr %345, align 4
  br label %371

371:                                              ; preds = %370, %368
  %372 = load i32, ptr %121, align 4
  %373 = and i32 %372, 192
  %374 = icmp eq i32 %373, 64
  br i1 %374, label %375, label %461

375:                                              ; preds = %371
  %376 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 10
  %377 = load i8, ptr %376, align 2
  switch i8 %377, label %392 [
    i8 3, label %388
    i8 11, label %378
    i8 59, label %379
    i8 -69, label %380
    i8 107, label %381
    i8 -21, label %382
    i8 -117, label %383
    i8 -53, label %384
    i8 13, label %385
    i8 -67, label %386
    i8 -19, label %387
  ]

378:                                              ; preds = %375
  br label %388

379:                                              ; preds = %375
  br label %388

380:                                              ; preds = %375
  br label %388

381:                                              ; preds = %375
  br label %388

382:                                              ; preds = %375
  br label %388

383:                                              ; preds = %375
  br label %388

384:                                              ; preds = %375
  br label %388

385:                                              ; preds = %375
  br label %388

386:                                              ; preds = %375
  br label %388

387:                                              ; preds = %375
  br label %388

388:                                              ; preds = %387, %386, %385, %384, %383, %382, %381, %380, %379, %378, %375
  %389 = phi i32 [ 0, %375 ], [ 1, %378 ], [ 2, %379 ], [ 3, %380 ], [ 4, %381 ], [ 5, %382 ], [ 6, %383 ], [ 7, %384 ], [ 8, %385 ], [ 9, %386 ], [ 10, %387 ]
  %390 = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_read.spi_nor_3to4_read, i32 %389, i32 1
  %391 = load i8, ptr %390, align 1
  br label %392

392:                                              ; preds = %388, %375
  %393 = phi i8 [ %391, %388 ], [ %377, %375 ]
  store i8 %393, ptr %376, align 2
  %394 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 12
  %395 = load i8, ptr %394, align 8
  switch i8 %395, label %404 [
    i8 2, label %400
    i8 50, label %396
    i8 56, label %397
    i8 -126, label %398
    i8 -62, label %399
  ]

396:                                              ; preds = %392
  br label %400

397:                                              ; preds = %392
  br label %400

398:                                              ; preds = %392
  br label %400

399:                                              ; preds = %392
  br label %400

400:                                              ; preds = %399, %398, %397, %396, %392
  %401 = phi i32 [ 0, %392 ], [ 1, %396 ], [ 2, %397 ], [ 3, %398 ], [ 4, %399 ]
  %402 = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_program.spi_nor_3to4_program, i32 %401, i32 1
  %403 = load i8, ptr %402, align 1
  br label %404

404:                                              ; preds = %400, %392
  %405 = phi i8 [ %403, %400 ], [ %395, %392 ]
  store i8 %405, ptr %394, align 8
  %406 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 9
  %407 = load i8, ptr %406, align 1
  switch i8 %407, label %414 [
    i8 32, label %410
    i8 82, label %408
    i8 -40, label %409
  ]

408:                                              ; preds = %404
  br label %410

409:                                              ; preds = %404
  br label %410

410:                                              ; preds = %409, %408, %404
  %411 = phi i32 [ 0, %404 ], [ 1, %408 ], [ 2, %409 ]
  %412 = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_erase.spi_nor_3to4_erase, i32 %411, i32 1
  %413 = load i8, ptr %412, align 1
  br label %414

414:                                              ; preds = %410, %404
  %415 = phi i8 [ %413, %410 ], [ %407, %404 ]
  store i8 %415, ptr %406, align 1
  %416 = load ptr, ptr %110, align 4
  %417 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %416, i32 0, i32 8, i32 3
  %418 = load i8, ptr %417, align 8
  %419 = icmp eq i8 %418, 0
  br i1 %419, label %420, label %461

420:                                              ; preds = %414
  %421 = getelementptr %struct.spi_nor_flash_parameter, ptr %416, i32 0, i32 8, i32 2, i32 0, i32 3
  %422 = load i8, ptr %421, align 4
  switch i8 %422, label %429 [
    i8 32, label %425
    i8 82, label %423
    i8 -40, label %424
  ]

423:                                              ; preds = %420
  br label %425

424:                                              ; preds = %420
  br label %425

425:                                              ; preds = %424, %423, %420
  %426 = phi i32 [ 0, %420 ], [ 1, %423 ], [ 2, %424 ]
  %427 = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_erase.spi_nor_3to4_erase, i32 %426, i32 1
  %428 = load i8, ptr %427, align 1
  br label %429

429:                                              ; preds = %425, %420
  %430 = phi i8 [ %428, %425 ], [ %422, %420 ]
  store i8 %430, ptr %421, align 4
  %431 = getelementptr %struct.spi_nor_flash_parameter, ptr %416, i32 0, i32 8, i32 2, i32 1, i32 3
  %432 = load i8, ptr %431, align 4
  switch i8 %432, label %439 [
    i8 32, label %435
    i8 82, label %434
    i8 -40, label %433
  ]

433:                                              ; preds = %429
  br label %435

434:                                              ; preds = %429
  br label %435

435:                                              ; preds = %434, %433, %429
  %436 = phi i32 [ 0, %429 ], [ 1, %434 ], [ 2, %433 ]
  %437 = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_erase.spi_nor_3to4_erase, i32 %436, i32 1
  %438 = load i8, ptr %437, align 1
  br label %439

439:                                              ; preds = %435, %429
  %440 = phi i8 [ %438, %435 ], [ %432, %429 ]
  store i8 %440, ptr %431, align 4
  %441 = getelementptr %struct.spi_nor_flash_parameter, ptr %416, i32 0, i32 8, i32 2, i32 2, i32 3
  %442 = load i8, ptr %441, align 4
  switch i8 %442, label %449 [
    i8 32, label %445
    i8 82, label %444
    i8 -40, label %443
  ]

443:                                              ; preds = %439
  br label %445

444:                                              ; preds = %439
  br label %445

445:                                              ; preds = %444, %443, %439
  %446 = phi i32 [ 0, %439 ], [ 1, %444 ], [ 2, %443 ]
  %447 = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_erase.spi_nor_3to4_erase, i32 %446, i32 1
  %448 = load i8, ptr %447, align 1
  br label %449

449:                                              ; preds = %445, %439
  %450 = phi i8 [ %448, %445 ], [ %442, %439 ]
  store i8 %450, ptr %441, align 4
  %451 = getelementptr %struct.spi_nor_flash_parameter, ptr %416, i32 0, i32 8, i32 2, i32 3, i32 3
  %452 = load i8, ptr %451, align 4
  switch i8 %452, label %459 [
    i8 32, label %455
    i8 82, label %454
    i8 -40, label %453
  ]

453:                                              ; preds = %449
  br label %455

454:                                              ; preds = %449
  br label %455

455:                                              ; preds = %454, %453, %449
  %456 = phi i32 [ 0, %449 ], [ 1, %454 ], [ 2, %453 ]
  %457 = getelementptr [2 x i8], ptr @spi_nor_convert_3to4_erase.spi_nor_3to4_erase, i32 %456, i32 1
  %458 = load i8, ptr %457, align 1
  br label %459

459:                                              ; preds = %455, %449
  %460 = phi i8 [ %458, %455 ], [ %452, %449 ]
  store i8 %460, ptr %451, align 4
  br label %461

461:                                              ; preds = %459, %414, %371, %368, %362
  %462 = tail call fastcc i32 @spi_nor_init(ptr noundef %0)
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %469

464:                                              ; preds = %461
  tail call fastcc void @spi_nor_set_mtd_info(ptr noundef %0)
  %465 = load ptr, ptr %100, align 8
  %466 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %467 = load i64, ptr %466, align 8
  %468 = ashr i64 %467, 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %6, ptr noundef nonnull @.str.1, ptr noundef %465, i64 noundef %468) #17
  br label %469

469:                                              ; preds = %464, %461, %366, %341, %176, %105, %102, %36, %35, %32
  %470 = phi i32 [ %104, %102 ], [ -12, %36 ], [ %462, %461 ], [ -22, %35 ], [ -22, %32 ], [ %174, %176 ], [ -12, %105 ], [ %342, %341 ], [ -22, %366 ], [ 0, %464 ]
  ret i32 %470
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @spi_nor_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 17303560
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 14
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 17303560
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 16384
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = tail call i32 %5(ptr noundef %0, i1 noundef zeroext true) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %74

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  store i32 17303560, ptr %24, align 4
  %25 = load ptr, ptr %2, align 4
  br label %26

26:                                               ; preds = %23, %15, %11, %7, %1
  %27 = phi ptr [ %3, %1 ], [ %3, %11 ], [ %3, %7 ], [ %3, %15 ], [ %25, %23 ]
  %28 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %27, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 13
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i8
  %35 = icmp eq i8 %34, 4
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 14
  %38 = load i32, ptr %37, align 8
  %39 = trunc i32 %38 to i8
  %40 = icmp eq i8 %39, 4
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %31
  %42 = tail call i32 %29(ptr noundef %0) #18
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %41, %36, %26
  %45 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 65536
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void @spi_nor_try_unlock_all(ptr noundef %0) #18
  br label %50

50:                                               ; preds = %49, %44
  %51 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 8
  %52 = load i8, ptr %51, align 4
  %53 = icmp eq i8 %52, 4
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 13
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 17303560
  br i1 %57, label %74, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %45, align 4
  %60 = and i32 %59, 64
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = and i32 %59, 32
  %64 = icmp ne i32 %63, 0
  %65 = load i1, ptr @spi_nor_init.__already_done, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !11

68:                                               ; preds = %62
  store i1 true, ptr @spi_nor_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2981, i32 noundef 9, ptr noundef nonnull @.str.17) #18
  br label %69

69:                                               ; preds = %68, %62
  %70 = load ptr, ptr %2, align 4
  %71 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %70, i32 0, i32 12
  %72 = load ptr, ptr %71, align 8
  %73 = tail call i32 %72(ptr noundef %0, i1 noundef zeroext true) #18
  br label %74

74:                                               ; preds = %69, %58, %54, %50, %41, %20
  %75 = phi i32 [ %42, %41 ], [ 0, %69 ], [ 0, %58 ], [ 0, %54 ], [ 0, %50 ], [ %21, %20 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @spi_nor_set_mtd_info(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @spi_nor_set_mtd_locking_ops(ptr noundef %0) #18
  tail call void @spi_nor_set_mtd_otp_ops(ptr noundef %0) #18
  %4 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 56, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %13, %12 ], [ %10, %8 ]
  store ptr %15, ptr %5, align 8
  br label %16

16:                                               ; preds = %14, %1
  store i8 3, ptr %0, align 8
  %17 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  store i32 3072, ptr %17, align 4
  %18 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.flash_info, ptr %19, i32 0, i32 8
  %21 = load i16, ptr %20, align 8
  %22 = and i16 %21, 64
  %23 = icmp eq i16 %22, 0
  %24 = select i1 %23, i32 3072, i32 7168
  store i32 %24, ptr %17, align 4
  %25 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 4
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %26, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 5
  store i32 %31, ptr %32, align 8
  %33 = load i64, ptr %26, align 8
  %34 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  store i64 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 21
  store ptr @spi_nor_erase, ptr %35, align 8
  %36 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 24
  store ptr @spi_nor_read, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 25
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %16
  store ptr @spi_nor_write, ptr %37, align 8
  br label %41

41:                                               ; preds = %40, %16
  %42 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 45
  store ptr @spi_nor_suspend, ptr %42, align 8
  %43 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 46
  store ptr @spi_nor_resume, ptr %43, align 4
  %44 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 48
  store ptr @spi_nor_get_device, ptr %44, align 4
  %45 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 49
  store ptr @spi_nor_put_device, ptr %45, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @spi_nor_driver_init() #10 section ".init.text" {
  %1 = tail call i32 @spi_mem_driver_register_with_owner(ptr noundef nonnull @spi_nor_driver, ptr noundef null) #18
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @spi_nor_driver_exit() #10 section ".exit.text" {
  tail call void @spi_mem_driver_unregister(ptr noundef nonnull @spi_nor_driver) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_mem_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_dirmap_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_adjust_op_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_dirmap_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @spi_nor_read_id(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.spi_mem_op, align 8
  %3 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %2, i8 0, i32 48, i1 false), !annotation !8
  store i8 1, ptr %2, align 8
  %9 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 1
  store i8 1, ptr %9, align 1
  %10 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 3
  store i16 159, ptr %10, align 4
  %11 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 1, i32 1
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 1, i32 3
  %13 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(11) %12, i8 0, i64 11, i1 false)
  store i8 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3, i32 2
  store i32 1, ptr %14, align 8
  %15 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3, i32 3
  store i32 6, ptr %15, align 4
  %16 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3, i32 4
  store ptr %4, ptr %16, align 8
  %17 = call i32 @spi_mem_exec_op(ptr noundef nonnull %6, ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #18
  br label %24

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %0, i8 noundef zeroext -97, ptr noundef %4, i32 noundef 6) #18
  br label %24

24:                                               ; preds = %18, %8
  %25 = phi i32 [ %17, %8 ], [ %23, %18 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = inttoptr i32 %25 to ptr
  br label %62

29:                                               ; preds = %56, %24
  %30 = phi i32 [ %57, %56 ], [ 0, %24 ]
  %31 = getelementptr [17 x ptr], ptr @manufacturers, i32 0, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.spi_nor_manufacturer, ptr %32, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %48, %29
  %39 = phi i32 [ %49, %48 ], [ 0, %29 ]
  %40 = getelementptr %struct.flash_info, ptr %34, i32 %39, i32 2
  %41 = load i8, ptr %40, align 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = zext i8 %41 to i32
  %45 = getelementptr %struct.flash_info, ptr %34, i32 %39, i32 1
  %46 = call i32 @bcmp(ptr %45, ptr %4, i32 %44) #18
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43, %38
  %49 = add nuw i32 %39, 1
  %50 = icmp eq i32 %49, %36
  br i1 %50, label %56, label %38

51:                                               ; preds = %43
  %52 = getelementptr %struct.flash_info, ptr %34, i32 %39
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 7
  store ptr %32, ptr %55, align 8
  br label %62

56:                                               ; preds = %51, %48, %29
  %57 = add nuw nsw i32 %30, 1
  %58 = icmp eq i32 %57, 17
  br i1 %58, label %59, label %29

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.13, i32 noundef 6, ptr noundef %4) #17
  br label %62

62:                                               ; preds = %59, %54, %27
  %63 = phi ptr [ %28, %27 ], [ %52, %54 ], [ inttoptr (i32 -19 to ptr), %59 ]
  ret ptr %63
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_parse_sfdp(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @spi_nor_no_sfdp_init_params(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.flash_info, ptr %5, i32 0, i32 9
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 8
  store i32 %14, ptr %12, align 4
  %15 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 3
  store i8 0, ptr %15, align 4
  %16 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 3, i32 1
  store i8 8, ptr %16, align 1
  %17 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 3, i32 2
  store i8 59, ptr %17, align 2
  %18 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 3, i32 3
  store i32 65794, ptr %18, align 4
  br label %19

19:                                               ; preds = %11, %1
  %20 = and i32 %8, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 128
  store i32 %25, ptr %23, align 4
  %26 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 7
  store i8 0, ptr %26, align 4
  %27 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 7, i32 1
  store i8 8, ptr %27, align 1
  %28 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 7, i32 2
  store i8 107, ptr %28, align 2
  %29 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 7, i32 3
  store i32 65796, ptr %29, align 4
  br label %30

30:                                               ; preds = %22, %19
  %31 = and i32 %8, 32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 2048
  store i32 %36, ptr %34, align 4
  %37 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 11
  store i8 0, ptr %37, align 4
  %38 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 11, i32 1
  store i8 8, ptr %38, align 1
  %39 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 11, i32 2
  store i8 -117, ptr %39, align 2
  %40 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 11, i32 3
  store i32 65800, ptr %40, align 4
  br label %41

41:                                               ; preds = %33, %30
  %42 = and i32 %8, 64
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, 32768
  store i32 %47, ptr %45, align 4
  %48 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 15
  store i8 0, ptr %48, align 4
  %49 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 15, i32 1
  store i8 20, ptr %49, align 1
  %50 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 15, i32 2
  store i8 11, ptr %50, align 2
  %51 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 6, i32 15, i32 3
  store i32 17303560, ptr %51, align 4
  br label %52

52:                                               ; preds = %44, %41
  %53 = and i32 %8, 128
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, 8388608
  store i32 %58, ptr %56, align 4
  %59 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 7, i32 7
  store i8 2, ptr %59, align 4
  %60 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 7, i32 7, i32 1
  store i32 17303560, ptr %60, align 4
  br label %61

61:                                               ; preds = %55, %52
  %62 = and i32 %8, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = and i32 %8, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64, %61
  %68 = phi i8 [ -41, %61 ], [ 32, %64 ]
  %69 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 8, i32 2
  store i32 4096, ptr %69, align 4
  %70 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 8, i32 2, i32 0, i32 3
  store i8 %68, ptr %70, align 4
  %71 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 8, i32 2, i32 0, i32 1
  store i32 12, ptr %71, align 4
  %72 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 8, i32 2, i32 0, i32 2
  store i32 4095, ptr %72, align 4
  br label %73

73:                                               ; preds = %67, %64
  %74 = phi i32 [ 0, %64 ], [ 1, %67 ]
  %75 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 8
  %76 = shl nuw nsw i32 1, %74
  %77 = or i32 %76, %74
  %78 = trunc i32 %77 to i8
  %79 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 8, i32 2, i32 %74
  %80 = load ptr, ptr %4, align 4
  %81 = getelementptr inbounds %struct.flash_info, ptr %80, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  store i32 %82, ptr %79, align 4
  %83 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 8, i32 2, i32 %74, i32 3
  store i8 -40, ptr %83, align 4
  %84 = tail call i32 @llvm.cttz.i32(i32 %82, i1 true) #18, !range !10
  %85 = icmp eq i32 %82, 0
  %86 = select i1 %85, i32 -1, i32 %84
  %87 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 8, i32 2, i32 %74, i32 1
  store i32 %86, ptr %87, align 4
  %88 = shl nsw i32 -1, %86
  %89 = xor i32 %88, -1
  %90 = getelementptr %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 8, i32 2, i32 %74, i32 2
  store i32 %89, ptr %90, align 4
  %91 = load i64, ptr %3, align 8
  %92 = or i8 %78, 16
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 8, i32 1
  store i64 %93, ptr %94, align 8
  %95 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 8, i32 1, i32 1
  store i64 %91, ptr %95, align 8
  store ptr %94, ptr %75, align 8
  %96 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 8, i32 3
  store i8 %78, ptr %96, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spansion_set_4byte_addr_mode(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca %struct.spi_mem_op, align 8
  %4 = select i1 %1, i8 -128, i8 0
  %5 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  store i8 %4, ptr %6, align 1
  %7 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %47, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i32 48, i1 false), !annotation !8
  store i8 1, ptr %3, align 8
  %11 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 2
  store i8 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 3
  store i16 23, ptr %13, align 4
  %14 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 1
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 3
  %16 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3
  %17 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 1
  store i8 0, ptr %17, align 1
  %18 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(11) %15, i8 0, i64 11, i1 false)
  store i32 2, ptr %18, align 8
  %19 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 3
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 4
  %21 = load ptr, ptr %5, align 4
  store ptr %21, ptr %20, align 8
  %22 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 16
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr %11, align 1
  %26 = trunc i32 %23 to i8
  store i8 %26, ptr %16, align 4
  %27 = and i32 %23, 16777216
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %10
  %30 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2, i32 2
  %31 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 2
  store i8 1, ptr %12, align 2
  store i8 1, ptr %31, align 2
  store i8 1, ptr %30, align 2
  store i8 1, ptr %17, align 1
  %32 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %33 = load i32, ptr %32, align 8
  switch i32 %33, label %35 [
    i32 2, label %39
    i32 1, label %34
  ]

34:                                               ; preds = %29
  br label %39

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.2) #17
  %38 = load ptr, ptr %7, align 8
  br label %39

39:                                               ; preds = %35, %34, %29
  %40 = phi ptr [ %38, %35 ], [ %8, %34 ], [ %8, %29 ]
  %41 = phi i8 [ 0, %35 ], [ 23, %34 ], [ -24, %29 ]
  %42 = zext i8 %41 to i16
  %43 = or i16 %42, 5888
  store i16 %43, ptr %13, align 4
  store i8 2, ptr %3, align 8
  br label %44

44:                                               ; preds = %39, %10
  %45 = phi ptr [ %8, %10 ], [ %40, %39 ]
  %46 = call i32 @spi_mem_exec_op(ptr noundef %45, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #18
  br label %59

47:                                               ; preds = %2
  %48 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 16777216
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 %57(ptr noundef %0, i8 noundef zeroext 23, ptr noundef %53, i32 noundef 1) #18
  br label %59

59:                                               ; preds = %52, %47, %44
  %60 = phi i32 [ %46, %44 ], [ %58, %52 ], [ -95, %47 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_default_setup(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.spi_mem_op, align 8
  %4 = alloca %struct.spi_mem_op, align 8
  %5 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %6, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %181, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 -4727329, i32 -13148705
  %20 = and i32 %10, %19
  %21 = getelementptr inbounds %struct.anon.65, ptr %4, i32 0, i32 1
  %22 = getelementptr inbounds %struct.anon.65, ptr %4, i32 0, i32 2
  %23 = getelementptr inbounds %struct.anon.65, ptr %4, i32 0, i32 3
  %24 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 1
  %25 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 1, i32 1
  %26 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 1, i32 2
  %27 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 2
  %28 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 2, i32 1
  %29 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 2, i32 2
  %30 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 3
  %31 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 3, i32 1
  %32 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 3, i32 2
  %33 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 3, i32 3
  %34 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %35 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %36 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 11
  %37 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 13
  %38 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 3
  %39 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1
  %40 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 2
  %41 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 3
  %42 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 1
  %43 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 1
  %44 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3
  %45 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 2
  %46 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 2
  %47 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2, i32 2
  %48 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 1
  br label %49

49:                                               ; preds = %177, %14
  %50 = phi i32 [ %20, %14 ], [ %178, %177 ]
  %51 = phi i32 [ 0, %14 ], [ %179, %177 ]
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %177, label %55

55:                                               ; preds = %49
  switch i32 %52, label %177 [
    i32 1, label %71
    i32 2, label %56
    i32 4, label %57
    i32 8, label %58
    i32 16, label %59
    i32 32, label %60
    i32 64, label %61
    i32 128, label %62
    i32 256, label %63
    i32 512, label %64
    i32 1024, label %65
    i32 2048, label %66
    i32 4096, label %67
    i32 8192, label %68
    i32 16384, label %69
    i32 32768, label %70
    i32 65536, label %134
    i32 131072, label %127
    i32 262144, label %128
    i32 524288, label %129
    i32 1048576, label %130
    i32 2097152, label %131
    i32 4194304, label %132
    i32 8388608, label %133
  ]

56:                                               ; preds = %55
  br label %71

57:                                               ; preds = %55
  br label %71

58:                                               ; preds = %55
  br label %71

59:                                               ; preds = %55
  br label %71

60:                                               ; preds = %55
  br label %71

61:                                               ; preds = %55
  br label %71

62:                                               ; preds = %55
  br label %71

63:                                               ; preds = %55
  br label %71

64:                                               ; preds = %55
  br label %71

65:                                               ; preds = %55
  br label %71

66:                                               ; preds = %55
  br label %71

67:                                               ; preds = %55
  br label %71

68:                                               ; preds = %55
  br label %71

69:                                               ; preds = %55
  br label %71

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55
  %72 = phi i32 [ 0, %55 ], [ 1, %56 ], [ 2, %57 ], [ 3, %58 ], [ 4, %59 ], [ 5, %60 ], [ 6, %61 ], [ 7, %62 ], [ 8, %63 ], [ 9, %64 ], [ 10, %65 ], [ 11, %66 ], [ 12, %67 ], [ 13, %68 ], [ 14, %69 ], [ 15, %70 ]
  %73 = getelementptr [2 x i32], ptr @spi_nor_hwcaps_read2cmd.hwcaps_read2cmd, i32 %72, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %76, label %177

76:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i32 48, i1 false) #18, !annotation !8
  store i8 1, ptr %4, align 8
  %77 = getelementptr %struct.spi_nor_flash_parameter, ptr %6, i32 0, i32 6, i32 %74, i32 2
  %78 = load i8, ptr %77, align 2
  %79 = zext i8 %78 to i16
  store i16 %79, ptr %23, align 4
  store i8 3, ptr %24, align 8
  store i8 0, ptr %26, align 2
  store i8 0, ptr %29, align 2
  store i8 0, ptr %31, align 1
  store i32 1, ptr %32, align 8
  store i32 2, ptr %33, align 4
  %80 = getelementptr %struct.spi_nor_flash_parameter, ptr %6, i32 0, i32 6, i32 %74, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = lshr i32 %81, 16
  %83 = trunc i32 %82 to i8
  store i8 %83, ptr %21, align 1
  %84 = lshr i32 %81, 8
  %85 = trunc i32 %84 to i8
  store i8 %85, ptr %25, align 1
  store i8 %85, ptr %28, align 1
  %86 = trunc i32 %81 to i8
  store i8 %86, ptr %30, align 4
  %87 = and i32 %81, 16777216
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %76
  store i8 1, ptr %22, align 2
  store i8 1, ptr %26, align 2
  store i8 1, ptr %29, align 2
  store i8 1, ptr %31, align 1
  store i8 2, ptr %27, align 8
  %90 = load i32, ptr %34, align 8
  switch i32 %90, label %93 [
    i32 2, label %91
    i32 1, label %95
  ]

91:                                               ; preds = %89
  %92 = xor i8 %78, -1
  br label %95

93:                                               ; preds = %89
  %94 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.2) #17
  br label %95

95:                                               ; preds = %93, %91, %89
  %96 = phi i8 [ 0, %93 ], [ %92, %91 ], [ %78, %89 ]
  %97 = shl nuw i16 %79, 8
  %98 = zext i8 %96 to i16
  %99 = or i16 %97, %98
  store i16 %99, ptr %23, align 4
  store i8 2, ptr %4, align 8
  br label %100

100:                                              ; preds = %95, %76
  %101 = load i8, ptr %36, align 1
  %102 = zext i8 %101 to i16
  %103 = trunc i32 %84 to i16
  %104 = and i16 %103, 255
  %105 = mul nuw i16 %104, %102
  %106 = lshr i16 %105, 3
  %107 = trunc i16 %106 to i8
  store i8 %107, ptr %27, align 8
  %108 = load i32, ptr %37, align 4
  %109 = and i32 %108, 16777216
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %100
  %112 = shl i8 %107, 1
  store i8 %112, ptr %27, align 8
  br label %113

113:                                              ; preds = %111, %100
  store i8 4, ptr %24, align 8
  %114 = load ptr, ptr %11, align 8
  %115 = call zeroext i1 @spi_mem_supports_op(ptr noundef %114, ptr noundef nonnull %4) #18
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %5, align 4
  %118 = load i64, ptr %117, align 8
  %119 = icmp ugt i64 %118, 16777216
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  store i8 3, ptr %24, align 8
  %121 = load ptr, ptr %11, align 8
  %122 = call zeroext i1 @spi_mem_supports_op(ptr noundef %121, ptr noundef nonnull %4) #18
  br i1 %122, label %123, label %124

123:                                              ; preds = %120, %113
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  br label %177

124:                                              ; preds = %120, %116
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  %125 = xor i32 %52, -1
  %126 = and i32 %50, %125
  br label %177

127:                                              ; preds = %55
  br label %134

128:                                              ; preds = %55
  br label %134

129:                                              ; preds = %55
  br label %134

130:                                              ; preds = %55
  br label %134

131:                                              ; preds = %55
  br label %134

132:                                              ; preds = %55
  br label %134

133:                                              ; preds = %55
  br label %134

134:                                              ; preds = %133, %132, %131, %130, %129, %128, %127, %55
  %135 = phi i32 [ 1, %127 ], [ 2, %128 ], [ 3, %129 ], [ 4, %130 ], [ 5, %131 ], [ 6, %132 ], [ 7, %133 ], [ 0, %55 ]
  %136 = getelementptr [2 x i32], ptr @spi_nor_hwcaps_pp2cmd.hwcaps_pp2cmd, i32 %135, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %177, label %139

139:                                              ; preds = %134
  %140 = getelementptr %struct.spi_nor_flash_parameter, ptr %6, i32 0, i32 7, i32 %137
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false) #18
  store i8 1, ptr %3, align 8
  %141 = load i8, ptr %140, align 4
  %142 = zext i8 %141 to i16
  store i16 %142, ptr %38, align 4
  store i32 2, ptr %40, align 8
  store i32 2, ptr %41, align 4
  %143 = getelementptr %struct.spi_nor_flash_parameter, ptr %6, i32 0, i32 7, i32 %137, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = lshr i32 %144, 16
  %146 = trunc i32 %145 to i8
  store i8 %146, ptr %42, align 1
  %147 = lshr i32 %144, 8
  %148 = trunc i32 %147 to i8
  store i8 %148, ptr %43, align 1
  %149 = trunc i32 %144 to i8
  store i8 %149, ptr %44, align 4
  %150 = and i32 %144, 16777216
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %139
  store i8 1, ptr %45, align 2
  store i8 1, ptr %46, align 2
  store i8 1, ptr %47, align 2
  store i8 1, ptr %48, align 1
  %153 = load i32, ptr %34, align 8
  switch i32 %153, label %156 [
    i32 2, label %154
    i32 1, label %158
  ]

154:                                              ; preds = %152
  %155 = xor i8 %141, -1
  br label %158

156:                                              ; preds = %152
  %157 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.2) #17
  br label %158

158:                                              ; preds = %156, %154, %152
  %159 = phi i8 [ 0, %156 ], [ %155, %154 ], [ %141, %152 ]
  %160 = shl nuw i16 %142, 8
  %161 = zext i8 %159 to i16
  %162 = or i16 %160, %161
  store i16 %162, ptr %38, align 4
  store i8 2, ptr %3, align 8
  br label %163

163:                                              ; preds = %158, %139
  store i8 4, ptr %39, align 8
  %164 = load ptr, ptr %11, align 8
  %165 = call zeroext i1 @spi_mem_supports_op(ptr noundef %164, ptr noundef nonnull %3) #18
  br i1 %165, label %173, label %166

166:                                              ; preds = %163
  %167 = load ptr, ptr %5, align 4
  %168 = load i64, ptr %167, align 8
  %169 = icmp ugt i64 %168, 16777216
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  store i8 3, ptr %39, align 8
  %171 = load ptr, ptr %11, align 8
  %172 = call zeroext i1 @spi_mem_supports_op(ptr noundef %171, ptr noundef nonnull %3) #18
  br i1 %172, label %173, label %174

173:                                              ; preds = %170, %163
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #18
  br label %177

174:                                              ; preds = %170, %166
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #18
  %175 = xor i32 %52, -1
  %176 = and i32 %50, %175
  br label %177

177:                                              ; preds = %174, %173, %134, %124, %123, %71, %55, %49
  %178 = phi i32 [ %50, %49 ], [ %50, %55 ], [ %50, %134 ], [ %50, %173 ], [ %176, %174 ], [ %50, %123 ], [ %126, %124 ], [ %50, %71 ]
  %179 = add nuw nsw i32 %51, 1
  %180 = icmp eq i32 %179, 32
  br i1 %180, label %183, label %49

181:                                              ; preds = %2
  %182 = and i32 %10, -13148705
  br label %183

183:                                              ; preds = %181, %177
  %184 = phi i32 [ %182, %181 ], [ %178, %177 ]
  %185 = and i32 %184, 65535
  %186 = icmp eq i32 %185, 0
  %187 = call i32 @llvm.ctlz.i32(i32 %185, i1 false) #18, !range !10
  %188 = sub nsw i32 31, %187
  %189 = select i1 %186, i32 -1, i32 %188
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %347, label %191

191:                                              ; preds = %183
  %192 = shl nuw i32 1, %189
  switch i32 %192, label %347 [
    i32 1, label %208
    i32 2, label %193
    i32 4, label %194
    i32 8, label %195
    i32 16, label %196
    i32 32, label %197
    i32 64, label %198
    i32 128, label %199
    i32 256, label %200
    i32 512, label %201
    i32 1024, label %202
    i32 2048, label %203
    i32 4096, label %204
    i32 8192, label %205
    i32 16384, label %206
    i32 32768, label %207
  ]

193:                                              ; preds = %191
  br label %208

194:                                              ; preds = %191
  br label %208

195:                                              ; preds = %191
  br label %208

196:                                              ; preds = %191
  br label %208

197:                                              ; preds = %191
  br label %208

198:                                              ; preds = %191
  br label %208

199:                                              ; preds = %191
  br label %208

200:                                              ; preds = %191
  br label %208

201:                                              ; preds = %191
  br label %208

202:                                              ; preds = %191
  br label %208

203:                                              ; preds = %191
  br label %208

204:                                              ; preds = %191
  br label %208

205:                                              ; preds = %191
  br label %208

206:                                              ; preds = %191
  br label %208

207:                                              ; preds = %191
  br label %208

208:                                              ; preds = %207, %206, %205, %204, %203, %202, %201, %200, %199, %198, %197, %196, %195, %194, %193, %191
  %209 = phi i32 [ 0, %191 ], [ 1, %193 ], [ 2, %194 ], [ 3, %195 ], [ 4, %196 ], [ 5, %197 ], [ 6, %198 ], [ 7, %199 ], [ 8, %200 ], [ 9, %201 ], [ 10, %202 ], [ 11, %203 ], [ 12, %204 ], [ 13, %205 ], [ 14, %206 ], [ 15, %207 ]
  %210 = getelementptr [2 x i32], ptr @spi_nor_hwcaps_read2cmd.hwcaps_read2cmd, i32 %209, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %347, label %213

213:                                              ; preds = %208
  %214 = load ptr, ptr %5, align 4
  %215 = getelementptr %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 6, i32 %211
  %216 = getelementptr %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 6, i32 %211, i32 2
  %217 = load i8, ptr %216, align 2
  %218 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 10
  store i8 %217, ptr %218, align 2
  %219 = getelementptr %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 6, i32 %211, i32 3
  %220 = load i32, ptr %219, align 4
  %221 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 13
  store i32 %220, ptr %221, align 4
  %222 = load i8, ptr %215, align 4
  %223 = getelementptr %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 6, i32 %211, i32 1
  %224 = load i8, ptr %223, align 1
  %225 = add i8 %224, %222
  %226 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 11
  store i8 %225, ptr %226, align 1
  %227 = and i32 %184, 16711680
  %228 = icmp eq i32 %227, 0
  %229 = call i32 @llvm.ctlz.i32(i32 %227, i1 false) #18, !range !10
  %230 = sub nsw i32 31, %229
  %231 = select i1 %228, i32 -1, i32 %230
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %347, label %233

233:                                              ; preds = %213
  %234 = shl nuw i32 1, %231
  switch i32 %234, label %347 [
    i32 65536, label %242
    i32 131072, label %235
    i32 262144, label %236
    i32 524288, label %237
    i32 1048576, label %238
    i32 2097152, label %239
    i32 4194304, label %240
    i32 8388608, label %241
  ]

235:                                              ; preds = %233
  br label %242

236:                                              ; preds = %233
  br label %242

237:                                              ; preds = %233
  br label %242

238:                                              ; preds = %233
  br label %242

239:                                              ; preds = %233
  br label %242

240:                                              ; preds = %233
  br label %242

241:                                              ; preds = %233
  br label %242

242:                                              ; preds = %241, %240, %239, %238, %237, %236, %235, %233
  %243 = phi i32 [ 0, %233 ], [ 1, %235 ], [ 2, %236 ], [ 3, %237 ], [ 4, %238 ], [ 5, %239 ], [ 6, %240 ], [ 7, %241 ]
  %244 = getelementptr [2 x i32], ptr @spi_nor_hwcaps_pp2cmd.hwcaps_pp2cmd, i32 %243, i32 1
  %245 = load i32, ptr %244, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %347, label %247

247:                                              ; preds = %242
  %248 = getelementptr %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 7, i32 %245
  %249 = load i8, ptr %248, align 4
  %250 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 12
  store i8 %249, ptr %250, align 8
  %251 = getelementptr %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 7, i32 %245, i32 1
  %252 = load i32, ptr %251, align 4
  %253 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 14
  store i32 %252, ptr %253, align 8
  %254 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 8, i32 3
  %255 = load i8, ptr %254, align 8
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %247
  %258 = getelementptr %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 8, i32 2, i32 3
  %259 = load i32, ptr %258, align 8
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %328, label %340

261:                                              ; preds = %247
  %262 = zext i8 %255 to i32
  %263 = and i32 %262, 8
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %272, label %265

265:                                              ; preds = %261
  %266 = getelementptr %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 8, i32 2, i32 3
  %267 = load i32, ptr %266, align 4
  %268 = icmp eq i32 %267, 4096
  br i1 %268, label %310, label %269

269:                                              ; preds = %265
  %270 = icmp eq i32 %267, 0
  %271 = select i1 %270, ptr null, ptr %266
  br label %272

272:                                              ; preds = %269, %261
  %273 = phi ptr [ null, %261 ], [ %271, %269 ]
  %274 = and i32 %262, 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %285, label %276

276:                                              ; preds = %272
  %277 = getelementptr %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 8, i32 2, i32 2
  %278 = load i32, ptr %277, align 4
  %279 = icmp eq i32 %278, 4096
  br i1 %279, label %310, label %280

280:                                              ; preds = %276
  %281 = icmp eq ptr %273, null
  br i1 %281, label %282, label %285

282:                                              ; preds = %280
  %283 = icmp eq i32 %278, 0
  %284 = select i1 %283, ptr null, ptr %277
  br label %285

285:                                              ; preds = %282, %280, %272
  %286 = phi ptr [ %273, %280 ], [ %273, %272 ], [ %284, %282 ]
  %287 = and i32 %262, 2
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %298, label %289

289:                                              ; preds = %285
  %290 = getelementptr %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 8, i32 2, i32 1
  %291 = load i32, ptr %290, align 4
  %292 = icmp eq i32 %291, 4096
  br i1 %292, label %310, label %293

293:                                              ; preds = %289
  %294 = icmp eq ptr %286, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %293
  %296 = icmp eq i32 %291, 0
  %297 = select i1 %296, ptr null, ptr %290
  br label %298

298:                                              ; preds = %295, %293, %285
  %299 = phi ptr [ %286, %293 ], [ %286, %285 ], [ %297, %295 ]
  %300 = and i32 %262, 1
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %310, label %302

302:                                              ; preds = %298
  %303 = getelementptr %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 8, i32 2
  %304 = load i32, ptr %303, align 4
  %305 = icmp eq i32 %304, 4096
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = icmp eq ptr %299, null
  br i1 %307, label %308, label %313

308:                                              ; preds = %306
  %309 = icmp eq i32 %304, 0
  br i1 %309, label %347, label %310

310:                                              ; preds = %308, %302, %298, %289, %276, %265
  %311 = phi ptr [ %266, %265 ], [ %277, %276 ], [ %290, %289 ], [ %303, %302 ], [ %299, %298 ], [ %303, %308 ]
  %312 = icmp eq ptr %311, null
  br i1 %312, label %347, label %313

313:                                              ; preds = %310, %306
  %314 = phi ptr [ %311, %310 ], [ %299, %306 ]
  %315 = and i8 %255, -16
  %316 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 8, i32 2
  %317 = ptrtoint ptr %314 to i32
  %318 = ptrtoint ptr %316 to i32
  %319 = sub i32 %317, %318
  %320 = ashr exact i32 %319, 4
  %321 = shl nuw i32 1, %320
  %322 = trunc i32 %321 to i8
  %323 = or i8 %315, %322
  store i8 %323, ptr %254, align 8
  %324 = getelementptr inbounds %struct.spi_nor_erase_type, ptr %314, i32 0, i32 3
  %325 = load i8, ptr %324, align 4
  %326 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 9
  store i8 %325, ptr %326, align 1
  %327 = load i32, ptr %314, align 4
  br label %344

328:                                              ; preds = %257
  %329 = getelementptr %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 8, i32 2, i32 2
  %330 = load i32, ptr %329, align 8
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %340

332:                                              ; preds = %328
  %333 = getelementptr %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 8, i32 2, i32 1
  %334 = load i32, ptr %333, align 8
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %332
  %337 = getelementptr %struct.spi_nor_flash_parameter, ptr %214, i32 0, i32 8, i32 2, i32 0
  %338 = load i32, ptr %337, align 8
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %347, label %340

340:                                              ; preds = %336, %332, %328, %257
  %341 = phi i32 [ %259, %257 ], [ %330, %328 ], [ %334, %332 ], [ %338, %336 ]
  %342 = phi ptr [ %258, %257 ], [ %329, %328 ], [ %333, %332 ], [ %337, %336 ]
  %343 = icmp eq ptr %342, null
  br i1 %343, label %347, label %344

344:                                              ; preds = %340, %313
  %345 = phi i32 [ %327, %313 ], [ %341, %340 ]
  %346 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  store i32 %345, ptr %346, align 8
  br label %347

347:                                              ; preds = %344, %340, %336, %310, %308, %242, %233, %213, %208, %191, %183
  %348 = phi i32 [ -22, %183 ], [ -22, %208 ], [ -22, %191 ], [ -22, %213 ], [ -22, %242 ], [ -22, %233 ], [ -22, %340 ], [ -22, %310 ], [ -22, %308 ], [ -22, %336 ], [ 0, %344 ]
  ret i32 %348
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @spi_mem_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_init_default_locking_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_try_unlock_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_set_mtd_locking_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_nor_set_mtd_otp_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_erase(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = alloca %struct.spi_mem_op, align 8
  %5 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %6, i32 0, i32 8, i32 3
  %8 = load i8, ptr %7, align 8
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.erase_info, ptr %1, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  br i1 %9, label %27, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = icmp ult i64 %11, 4294967296
  br i1 %15, label %16, label %19, !prof !12

16:                                               ; preds = %12
  %17 = trunc i64 %11 to i32
  %18 = urem i32 %17, %14
  br label %24

19:                                               ; preds = %12
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %11) #19, !srcloc !13
  %21 = extractvalue { i64, i64 } %20, 0
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i32 [ %18, %16 ], [ %23, %19 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %409

27:                                               ; preds = %24, %2
  %28 = load i64, ptr %1, align 8
  %29 = trunc i64 %28 to i32
  %30 = trunc i64 %11 to i32
  %31 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %31) #18
  %32 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %27
  %36 = load ptr, ptr %33, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = tail call i32 %36(ptr noundef %0) #18
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @mutex_unlock(ptr noundef %31) #18
  br label %409

42:                                               ; preds = %38, %35, %27
  %43 = and i64 %11, 4294967295
  %44 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 2
  %45 = load i64, ptr %44, align 8
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %109

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %109

52:                                               ; preds = %47
  %53 = tail call i32 @spi_nor_write_enable(ptr noundef %0)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %399

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %88, label %59

59:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i32 48, i1 false) #18
  store i8 1, ptr %4, align 8
  %60 = getelementptr inbounds { i8, i8, i8, [1 x i8], i16 }, ptr %4, i32 0, i32 4
  store i16 199, ptr %60, align 4
  %61 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 14
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 16
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds %struct.anon.65, ptr %4, i32 0, i32 1
  store i8 %64, ptr %65, align 1
  %66 = and i32 %62, 16777216
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.anon.65, ptr %4, i32 0, i32 2
  store i8 1, ptr %69, align 2
  %70 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 1, i32 2
  store i8 1, ptr %70, align 2
  %71 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 2, i32 2
  store i8 1, ptr %71, align 2
  %72 = getelementptr inbounds %struct.spi_mem_op, ptr %4, i32 0, i32 3, i32 1
  store i8 1, ptr %72, align 1
  %73 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 18
  %74 = load i32, ptr %73, align 8
  switch i32 %74, label %76 [
    i32 2, label %80
    i32 1, label %75
  ]

75:                                               ; preds = %68
  br label %80

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.2) #17
  %79 = load ptr, ptr %56, align 8
  br label %80

80:                                               ; preds = %76, %75, %68
  %81 = phi ptr [ %79, %76 ], [ %57, %75 ], [ %57, %68 ]
  %82 = phi i8 [ 0, %76 ], [ -57, %75 ], [ 56, %68 ]
  %83 = zext i8 %82 to i16
  %84 = or i16 %83, -14592
  store i16 %84, ptr %60, align 4
  store i8 2, ptr %4, align 8
  br label %85

85:                                               ; preds = %80, %59
  %86 = phi ptr [ %57, %59 ], [ %81, %80 ]
  %87 = call i32 @spi_mem_exec_op(ptr noundef %86, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  br label %98

88:                                               ; preds = %55
  %89 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 16777216
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %399

93:                                               ; preds = %88
  %94 = load ptr, ptr %32, align 8
  %95 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %94, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 %96(ptr noundef %0, i8 noundef zeroext -57, ptr noundef null, i32 noundef 0) #18
  br label %98

98:                                               ; preds = %93, %85
  %99 = phi i32 [ %87, %85 ], [ %97, %93 ]
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %399

101:                                              ; preds = %98
  %102 = load i64, ptr %44, align 8
  %103 = lshr i64 %102, 21
  %104 = trunc i64 %103 to i32
  %105 = mul i32 %104, 4000
  %106 = call i32 @llvm.umax.i32(i32 %105, i32 4000)
  %107 = call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %0, i32 noundef %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %397, label %399

109:                                              ; preds = %47, %42
  %110 = load ptr, ptr %5, align 4
  %111 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %110, i32 0, i32 8, i32 3
  %112 = load i8, ptr %111, align 8
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %134, label %114

114:                                              ; preds = %109
  %115 = icmp eq i32 %30, 0
  br i1 %115, label %397, label %116

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 3
  br label %118

118:                                              ; preds = %129, %116
  %119 = phi i32 [ %29, %116 ], [ %131, %129 ]
  %120 = phi i32 [ %30, %116 ], [ %132, %129 ]
  %121 = tail call i32 @spi_nor_write_enable(ptr noundef %0)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %399

123:                                              ; preds = %118
  %124 = tail call i32 @spi_nor_erase_sector(ptr noundef %0, i32 noundef %119)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %399

126:                                              ; preds = %123
  %127 = tail call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %0, i32 noundef 4000) #18
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %399

129:                                              ; preds = %126
  %130 = load i32, ptr %117, align 8
  %131 = add i32 %130, %119
  %132 = sub i32 %120, %130
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %397, label %118

134:                                              ; preds = %109
  %135 = and i64 %28, 4294967295
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr %3, ptr %3, align 8
  %136 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %136, align 4
  %137 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %110, i32 0, i32 8
  %138 = load ptr, ptr %137, align 8
  %139 = load i64, ptr %138, align 8
  %140 = and i64 %139, -64
  %141 = getelementptr inbounds %struct.spi_nor_erase_region, ptr %138, i32 0, i32 1
  %142 = load i64, ptr %141, align 8
  %143 = add i64 %140, %142
  %144 = icmp ugt i64 %140, %135
  %145 = icmp ule i64 %143, %135
  %146 = select i1 %144, i1 true, i1 %145
  br i1 %146, label %147, label %164

147:                                              ; preds = %155, %134
  %148 = phi i64 [ %156, %155 ], [ %139, %134 ]
  %149 = phi ptr [ %152, %155 ], [ %138, %134 ]
  %150 = and i64 %148, 16
  %151 = icmp ne i64 %150, 0
  %152 = getelementptr %struct.spi_nor_erase_region, ptr %149, i32 1
  %153 = icmp eq ptr %152, null
  %154 = or i1 %151, %153
  br i1 %154, label %168, label %155

155:                                              ; preds = %147
  %156 = load i64, ptr %152, align 8
  %157 = and i64 %156, -64
  %158 = getelementptr %struct.spi_nor_erase_region, ptr %149, i32 1, i32 1
  %159 = load i64, ptr %158, align 8
  %160 = add i64 %157, %159
  %161 = icmp ugt i64 %157, %135
  %162 = icmp ule i64 %160, %135
  %163 = select i1 %161, i1 true, i1 %162
  br i1 %163, label %147, label %164

164:                                              ; preds = %155, %134
  %165 = phi i64 [ %139, %134 ], [ %156, %155 ]
  %166 = phi ptr [ %138, %134 ], [ %152, %155 ]
  %167 = icmp ugt ptr %166, inttoptr (i32 -4096 to ptr)
  br i1 %167, label %168, label %171

168:                                              ; preds = %164, %147
  %169 = phi ptr [ %166, %164 ], [ inttoptr (i32 -22 to ptr), %147 ]
  %170 = ptrtoint ptr %169 to i32
  br label %337

171:                                              ; preds = %164
  %172 = icmp eq i32 %30, 0
  br i1 %172, label %340, label %173

173:                                              ; preds = %171
  %174 = and i64 %165, -64
  %175 = getelementptr inbounds %struct.spi_nor_erase_region, ptr %166, i32 0, i32 1
  %176 = load i64, ptr %175, align 8
  %177 = add i64 %176, %174
  %178 = getelementptr %struct.spi_nor_flash_parameter, ptr %110, i32 0, i32 8, i32 2, i32 3
  %179 = getelementptr %struct.spi_nor_flash_parameter, ptr %110, i32 0, i32 8, i32 2, i32 3, i32 2
  %180 = getelementptr %struct.spi_nor_flash_parameter, ptr %110, i32 0, i32 8, i32 2, i32 2
  %181 = getelementptr %struct.spi_nor_flash_parameter, ptr %110, i32 0, i32 8, i32 2, i32 2, i32 2
  %182 = getelementptr %struct.spi_nor_flash_parameter, ptr %110, i32 0, i32 8, i32 2, i32 1
  %183 = getelementptr %struct.spi_nor_flash_parameter, ptr %110, i32 0, i32 8, i32 2, i32 1, i32 2
  %184 = getelementptr %struct.spi_nor_flash_parameter, ptr %110, i32 0, i32 8, i32 2
  %185 = getelementptr %struct.spi_nor_flash_parameter, ptr %110, i32 0, i32 8, i32 2, i32 0, i32 2
  br label %186

186:                                              ; preds = %324, %173
  %187 = phi i64 [ %165, %173 ], [ %325, %324 ]
  %188 = phi i64 [ %177, %173 ], [ %323, %324 ]
  %189 = phi ptr [ null, %173 ], [ %301, %324 ]
  %190 = phi ptr [ %166, %173 ], [ %322, %324 ]
  %191 = phi ptr [ null, %173 ], [ %256, %324 ]
  %192 = phi i32 [ %30, %173 ], [ %304, %324 ]
  %193 = phi i64 [ %135, %173 ], [ %303, %324 ]
  %194 = trunc i64 %187 to i32
  %195 = getelementptr inbounds %struct.spi_nor_erase_region, ptr %190, i32 0, i32 1
  %196 = trunc i64 %193 to i32
  %197 = and i64 %187, 32
  %198 = icmp eq i64 %197, 0
  %199 = zext i32 %192 to i64
  %200 = and i32 %194, 8
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %213, label %202

202:                                              ; preds = %186
  br i1 %198, label %206, label %203

203:                                              ; preds = %202
  %204 = load i64, ptr %195, align 8
  %205 = icmp ugt i64 %204, %199
  br i1 %205, label %206, label %255

206:                                              ; preds = %203, %202
  %207 = load i32, ptr %178, align 4
  %208 = icmp ugt i32 %207, %192
  br i1 %208, label %213, label %209

209:                                              ; preds = %206
  %210 = load i32, ptr %179, align 4
  %211 = and i32 %210, %196
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %255, label %213

213:                                              ; preds = %209, %206, %186
  %214 = and i32 %194, 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %227, label %216

216:                                              ; preds = %213
  br i1 %198, label %220, label %217

217:                                              ; preds = %216
  %218 = load i64, ptr %195, align 8
  %219 = icmp ugt i64 %218, %199
  br i1 %219, label %220, label %255

220:                                              ; preds = %217, %216
  %221 = load i32, ptr %180, align 4
  %222 = icmp ugt i32 %221, %192
  br i1 %222, label %227, label %223

223:                                              ; preds = %220
  %224 = load i32, ptr %181, align 4
  %225 = and i32 %224, %196
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %255, label %227

227:                                              ; preds = %223, %220, %213
  %228 = and i32 %194, 2
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %241, label %230

230:                                              ; preds = %227
  br i1 %198, label %234, label %231

231:                                              ; preds = %230
  %232 = load i64, ptr %195, align 8
  %233 = icmp ugt i64 %232, %199
  br i1 %233, label %234, label %255

234:                                              ; preds = %231, %230
  %235 = load i32, ptr %182, align 4
  %236 = icmp ugt i32 %235, %192
  br i1 %236, label %241, label %237

237:                                              ; preds = %234
  %238 = load i32, ptr %183, align 4
  %239 = and i32 %238, %196
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %255, label %241

241:                                              ; preds = %237, %234, %227
  %242 = and i32 %194, 1
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %326, label %244

244:                                              ; preds = %241
  br i1 %198, label %248, label %245

245:                                              ; preds = %244
  %246 = load i64, ptr %195, align 8
  %247 = icmp ugt i64 %246, %199
  br i1 %247, label %248, label %255

248:                                              ; preds = %245, %244
  %249 = load i32, ptr %184, align 4
  %250 = icmp ugt i32 %249, %192
  br i1 %250, label %326, label %251

251:                                              ; preds = %248
  %252 = load i32, ptr %185, align 4
  %253 = and i32 %252, %196
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %326

255:                                              ; preds = %251, %245, %237, %231, %223, %217, %209, %203
  %256 = phi ptr [ %178, %203 ], [ %178, %209 ], [ %180, %217 ], [ %180, %223 ], [ %182, %231 ], [ %182, %237 ], [ %184, %245 ], [ %184, %251 ]
  %257 = icmp eq ptr %256, null
  br i1 %257, label %326, label %258

258:                                              ; preds = %255
  %259 = icmp eq ptr %191, %256
  br i1 %259, label %260, label %267

260:                                              ; preds = %258
  %261 = load i32, ptr %191, align 4
  %262 = getelementptr inbounds %struct.spi_nor_erase_command, ptr %189, i32 0, i32 2
  %263 = load i32, ptr %262, align 4
  %264 = icmp ne i32 %261, %263
  %265 = xor i1 %198, true
  %266 = select i1 %264, i1 true, i1 %265
  br i1 %266, label %267, label %295

267:                                              ; preds = %260, %258
  %268 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %269 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %268, i32 noundef 3264, i32 noundef 20) #20
  %270 = icmp eq ptr %269, null
  br i1 %270, label %289, label %271

271:                                              ; preds = %267
  store volatile ptr %269, ptr %269, align 8
  %272 = getelementptr inbounds %struct.list_head, ptr %269, i32 0, i32 1
  store ptr %269, ptr %272, align 4
  %273 = getelementptr inbounds %struct.spi_nor_erase_type, ptr %256, i32 0, i32 3
  %274 = load i8, ptr %273, align 4
  %275 = getelementptr inbounds %struct.spi_nor_erase_command, ptr %269, i32 0, i32 3
  store i8 %274, ptr %275, align 8
  %276 = getelementptr inbounds %struct.spi_nor_erase_command, ptr %269, i32 0, i32 1
  store i32 1, ptr %276, align 8
  %277 = load i64, ptr %190, align 8
  %278 = and i64 %277, 32
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %271
  %281 = load i64, ptr %195, align 8
  %282 = trunc i64 %281 to i32
  br label %285

283:                                              ; preds = %271
  %284 = load i32, ptr %256, align 4
  br label %285

285:                                              ; preds = %283, %280
  %286 = phi i32 [ %282, %280 ], [ %284, %283 ]
  %287 = getelementptr inbounds %struct.spi_nor_erase_command, ptr %269, i32 0, i32 2
  store i32 %286, ptr %287, align 4
  %288 = icmp ugt ptr %269, inttoptr (i32 -4096 to ptr)
  br i1 %288, label %289, label %292

289:                                              ; preds = %285, %267
  %290 = phi ptr [ %269, %285 ], [ inttoptr (i32 -12 to ptr), %267 ]
  %291 = ptrtoint ptr %290 to i32
  br label %326

292:                                              ; preds = %285
  %293 = load ptr, ptr %136, align 4
  store ptr %269, ptr %136, align 4
  store ptr %3, ptr %269, align 8
  store ptr %293, ptr %272, align 4
  store volatile ptr %269, ptr %293, align 4
  %294 = load i32, ptr %287, align 4
  br label %299

295:                                              ; preds = %260
  %296 = getelementptr inbounds %struct.spi_nor_erase_command, ptr %189, i32 0, i32 1
  %297 = load i32, ptr %296, align 4
  %298 = add i32 %297, 1
  store i32 %298, ptr %296, align 4
  br label %299

299:                                              ; preds = %295, %292
  %300 = phi i32 [ %294, %292 ], [ %261, %295 ]
  %301 = phi ptr [ %269, %292 ], [ %189, %295 ]
  %302 = zext i32 %300 to i64
  %303 = add i64 %193, %302
  %304 = sub i32 %192, %300
  %305 = icmp eq i32 %304, 0
  %306 = icmp ult i64 %303, %188
  %307 = select i1 %305, i1 true, i1 %306
  br i1 %307, label %321, label %308

308:                                              ; preds = %299
  %309 = load i64, ptr %190, align 8
  %310 = and i64 %309, 16
  %311 = icmp ne i64 %310, 0
  %312 = getelementptr %struct.spi_nor_erase_region, ptr %190, i32 1
  %313 = icmp eq ptr %312, null
  %314 = or i1 %313, %311
  br i1 %314, label %326, label %315

315:                                              ; preds = %308
  %316 = load i64, ptr %312, align 8
  %317 = and i64 %316, -64
  %318 = getelementptr %struct.spi_nor_erase_region, ptr %190, i32 1, i32 1
  %319 = load i64, ptr %318, align 8
  %320 = add i64 %317, %319
  br label %321

321:                                              ; preds = %315, %299
  %322 = phi ptr [ %312, %315 ], [ %190, %299 ]
  %323 = phi i64 [ %320, %315 ], [ %188, %299 ]
  br i1 %305, label %340, label %324

324:                                              ; preds = %321
  %325 = load i64, ptr %322, align 8
  br label %186

326:                                              ; preds = %308, %289, %255, %251, %248, %241
  %327 = phi i32 [ %291, %289 ], [ -22, %241 ], [ -22, %248 ], [ -22, %251 ], [ -22, %255 ], [ -22, %308 ]
  %328 = load ptr, ptr %3, align 8
  %329 = icmp eq ptr %328, %3
  br i1 %329, label %337, label %330

330:                                              ; preds = %330, %326
  %331 = phi ptr [ %332, %330 ], [ %328, %326 ]
  %332 = load ptr, ptr %331, align 4
  %333 = getelementptr inbounds %struct.list_head, ptr %331, i32 0, i32 1
  %334 = load ptr, ptr %333, align 4
  %335 = getelementptr inbounds %struct.list_head, ptr %332, i32 0, i32 1
  store ptr %334, ptr %335, align 4
  store volatile ptr %332, ptr %334, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %331, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %333, align 4
  call void @kfree(ptr noundef %331) #18
  %336 = icmp eq ptr %332, %3
  br i1 %336, label %337, label %330

337:                                              ; preds = %330, %326, %168
  %338 = phi i32 [ %170, %168 ], [ %327, %326 ], [ %327, %330 ]
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %393

340:                                              ; preds = %337, %321, %171
  %341 = load ptr, ptr %3, align 8
  %342 = icmp eq ptr %341, %3
  br i1 %342, label %392, label %343

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 9
  br label %345

345:                                              ; preds = %374, %343
  %346 = phi i64 [ %135, %343 ], [ %375, %374 ]
  %347 = phi ptr [ %341, %343 ], [ %348, %374 ]
  %348 = load ptr, ptr %347, align 4
  %349 = getelementptr inbounds %struct.spi_nor_erase_command, ptr %347, i32 0, i32 3
  %350 = load i8, ptr %349, align 4
  store i8 %350, ptr %344, align 1
  %351 = getelementptr inbounds %struct.spi_nor_erase_command, ptr %347, i32 0, i32 1
  %352 = load i32, ptr %351, align 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %374, label %354

354:                                              ; preds = %345
  %355 = getelementptr inbounds %struct.spi_nor_erase_command, ptr %347, i32 0, i32 2
  br label %356

356:                                              ; preds = %367, %354
  %357 = phi i64 [ %346, %354 ], [ %370, %367 ]
  %358 = call i32 @spi_nor_write_enable(ptr noundef %0) #18
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %381

360:                                              ; preds = %356
  %361 = trunc i64 %357 to i32
  %362 = call i32 @spi_nor_erase_sector(ptr noundef %0, i32 noundef %361) #18
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %381

364:                                              ; preds = %360
  %365 = call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %0, i32 noundef 4000) #18
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %381

367:                                              ; preds = %364
  %368 = load i32, ptr %355, align 4
  %369 = zext i32 %368 to i64
  %370 = add i64 %357, %369
  %371 = load i32, ptr %351, align 4
  %372 = add i32 %371, -1
  store i32 %372, ptr %351, align 4
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %356

374:                                              ; preds = %367, %345
  %375 = phi i64 [ %346, %345 ], [ %370, %367 ]
  %376 = getelementptr inbounds %struct.list_head, ptr %347, i32 0, i32 1
  %377 = load ptr, ptr %376, align 4
  %378 = load ptr, ptr %347, align 4
  %379 = getelementptr inbounds %struct.list_head, ptr %378, i32 0, i32 1
  store ptr %377, ptr %379, align 4
  store volatile ptr %378, ptr %377, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %347, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %376, align 4
  call void @kfree(ptr noundef %347) #18
  %380 = icmp eq ptr %348, %3
  br i1 %380, label %392, label %345

381:                                              ; preds = %364, %360, %356
  %382 = phi i32 [ %358, %356 ], [ %362, %360 ], [ %365, %364 ]
  %383 = load ptr, ptr %3, align 8
  %384 = icmp eq ptr %383, %3
  br i1 %384, label %393, label %385

385:                                              ; preds = %385, %381
  %386 = phi ptr [ %387, %385 ], [ %383, %381 ]
  %387 = load ptr, ptr %386, align 4
  %388 = getelementptr inbounds %struct.list_head, ptr %386, i32 0, i32 1
  %389 = load ptr, ptr %388, align 4
  %390 = getelementptr inbounds %struct.list_head, ptr %387, i32 0, i32 1
  store ptr %389, ptr %390, align 4
  store volatile ptr %387, ptr %389, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %386, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %388, align 4
  call void @kfree(ptr noundef %386) #18
  %391 = icmp eq ptr %387, %3
  br i1 %391, label %395, label %385

392:                                              ; preds = %374, %340
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %397

393:                                              ; preds = %381, %337
  %394 = phi i32 [ %382, %381 ], [ %338, %337 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %399

395:                                              ; preds = %385
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  %396 = icmp eq i32 %382, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %395, %392, %129, %114, %101
  %398 = call i32 @spi_nor_write_disable(ptr noundef %0)
  br label %399

399:                                              ; preds = %397, %395, %393, %126, %123, %118, %101, %98, %88, %52
  %400 = phi i32 [ %398, %397 ], [ %382, %395 ], [ %394, %393 ], [ %107, %101 ], [ %99, %98 ], [ %53, %52 ], [ -95, %88 ], [ %127, %126 ], [ %124, %123 ], [ %121, %118 ]
  %401 = load ptr, ptr %32, align 8
  %402 = icmp eq ptr %401, null
  br i1 %402, label %408, label %403

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %401, i32 0, i32 1
  %405 = load ptr, ptr %404, align 4
  %406 = icmp eq ptr %405, null
  br i1 %406, label %408, label %407

407:                                              ; preds = %403
  call void %405(ptr noundef %0) #18
  br label %408

408:                                              ; preds = %407, %403, %399
  call void @mutex_unlock(ptr noundef %31) #18
  br label %409

409:                                              ; preds = %408, %41, %24
  %410 = phi i32 [ %400, %408 ], [ -22, %24 ], [ %39, %41 ]
  ret i32 %410
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_read(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call i32 %11(ptr noundef %0) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %13, %10, %5
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  br label %20

20:                                               ; preds = %41, %18
  %21 = phi i64 [ %1, %18 ], [ %46, %41 ]
  %22 = phi ptr [ %4, %18 ], [ %44, %41 ]
  %23 = phi i32 [ %2, %18 ], [ %47, %41 ]
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %24, i32 0, i32 13
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  %28 = trunc i64 %21 to i32
  br i1 %27, label %31, label %29

29:                                               ; preds = %20
  %30 = tail call i32 %26(ptr noundef %0, i32 noundef %28) #18
  br label %31

31:                                               ; preds = %29, %20
  %32 = phi i32 [ %30, %29 ], [ %28, %20 ]
  %33 = zext i32 %32 to i64
  %34 = tail call i32 @spi_nor_read_data(ptr noundef %0, i64 noundef %33, i32 noundef %23, ptr noundef %22)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %31
  %37 = icmp slt i32 %34, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %36
  %39 = icmp ult i32 %23, %34
  br i1 %39, label %40, label %41, !prof !11

40:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1931, i32 noundef 9, ptr noundef null) #18
  br label %41

41:                                               ; preds = %40, %38
  %42 = load i32, ptr %3, align 4
  %43 = add i32 %42, %34
  store i32 %43, ptr %3, align 4
  %44 = getelementptr i8, ptr %22, i32 %34
  %45 = zext i32 %34 to i64
  %46 = add i64 %21, %45
  %47 = sub i32 %23, %34
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %20

49:                                               ; preds = %41, %36, %31, %16
  %50 = phi i32 [ 0, %16 ], [ %34, %36 ], [ -5, %31 ], [ 0, %41 ]
  %51 = load ptr, ptr %7, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %51, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void %55(ptr noundef %0) #18
  br label %58

58:                                               ; preds = %57, %53, %49, %13
  %59 = phi i32 [ %14, %13 ], [ %50, %49 ], [ %50, %53 ], [ %50, %57 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #18
  %11 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 20
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %5
  %15 = load ptr, ptr %12, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call i32 %15(ptr noundef %0) #18
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %82

20:                                               ; preds = %17, %14, %5
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %73, label %22

22:                                               ; preds = %20
  %23 = tail call i32 @llvm.ctpop.i32(i32 %9) #18, !range !10
  %24 = icmp eq i32 %23, 1
  %25 = add i32 %9, -1
  br label %26

26:                                               ; preds = %68, %22
  %27 = phi i32 [ 0, %22 ], [ %71, %68 ]
  %28 = zext i32 %27 to i64
  %29 = add i64 %28, %1
  br i1 %24, label %30, label %33

30:                                               ; preds = %26
  %31 = trunc i64 %29 to i32
  %32 = and i32 %25, %31
  br label %44

33:                                               ; preds = %26
  %34 = icmp ult i64 %29, 4294967296
  br i1 %34, label %35, label %38, !prof !12

35:                                               ; preds = %33
  %36 = trunc i64 %29 to i32
  %37 = urem i32 %36, %9
  br label %44

38:                                               ; preds = %33
  %39 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %29) #19, !srcloc !13
  %40 = extractvalue { i64, i64 } %39, 0
  %41 = lshr i64 %40, 32
  %42 = trunc i64 %41 to i32
  %43 = trunc i64 %29 to i32
  br label %44

44:                                               ; preds = %38, %35, %30
  %45 = phi i32 [ %36, %35 ], [ %43, %38 ], [ %31, %30 ]
  %46 = phi i32 [ %37, %35 ], [ %42, %38 ], [ %32, %30 ]
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %47, i32 0, i32 13
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = tail call i32 %49(ptr noundef %0, i32 noundef %45) #18
  br label %53

53:                                               ; preds = %51, %44
  %54 = phi i32 [ %52, %51 ], [ %45, %44 ]
  %55 = tail call i32 @spi_nor_write_enable(ptr noundef %0)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = zext i32 %54 to i64
  %59 = sub i32 %9, %46
  %60 = sub i32 %2, %27
  %61 = tail call i32 @llvm.umin.i32(i32 %59, i32 %60)
  %62 = getelementptr i8, ptr %4, i32 %27
  %63 = tail call i32 @spi_nor_write_data(ptr noundef %0, i64 noundef %58, i32 noundef %61, ptr noundef %62)
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %57
  %66 = tail call fastcc i32 @spi_nor_wait_till_ready_with_timeout(ptr noundef %0, i32 noundef 4000) #18
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, ptr %3, align 4
  %70 = add i32 %69, %63
  store i32 %70, ptr %3, align 4
  %71 = add i32 %63, %27
  %72 = icmp ult i32 %71, %2
  br i1 %72, label %26, label %73

73:                                               ; preds = %68, %65, %57, %53, %20
  %74 = phi i32 [ 0, %20 ], [ %66, %65 ], [ %63, %57 ], [ %55, %53 ], [ 0, %68 ]
  %75 = load ptr, ptr %11, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.spi_nor_controller_ops, ptr %75, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void %79(ptr noundef %0) #18
  br label %82

82:                                               ; preds = %81, %77, %73, %17
  %83 = phi i32 [ %18, %17 ], [ %74, %73 ], [ %74, %77 ], [ %74, %81 ]
  tail call void @mutex_unlock(ptr noundef %10) #18
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 17303560
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 14
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 17303560
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 16384
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = tail call i32 %5(ptr noundef %0, i1 noundef zeroext false) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 15
  store i32 65793, ptr %24, align 4
  br label %28

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.18) #17
  br label %28

28:                                               ; preds = %25, %23, %15, %11, %7, %1
  %29 = phi i32 [ %21, %25 ], [ 0, %1 ], [ 0, %11 ], [ 0, %7 ], [ 0, %15 ], [ 0, %23 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spi_nor_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_nor, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @spi_nor_init(ptr noundef %0)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19) #17
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_get_device(ptr nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 62
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.spi_nor, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.spi_device, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 1
  br label %18

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.spi_nor, ptr %3, i32 0, i32 2
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %15, %11 ], [ %17, %16 ]
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.device_driver, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call zeroext i1 @try_module_get(ptr noundef %24) #18
  %26 = select i1 %25, i32 0, i32 -19
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spi_nor_put_device(ptr nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 62
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.spi_nor, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.spi_device, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 1
  br label %18

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.spi_nor, ptr %3, i32 0, i32 2
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %15, %11 ], [ %17, %16 ]
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.device_driver, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  tail call void @module_put(ptr noundef %24) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_mem_driver_register_with_owner(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.spi_mem_dirmap_info, align 8
  %3 = alloca %struct.spi_mem_dirmap_info, align 8
  %4 = alloca %struct.spi_nor_hwcaps, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 16777215, ptr %4, align 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 912, i32 noundef 3520) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %224, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 3
  store ptr %0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 2
  store ptr %5, ptr %12, align 4
  %13 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 56, i32 25
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.mtd_info, ptr %8, i32 0, i32 13
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = tail call i32 @of_property_read_string(ptr noundef %14, ptr noundef nonnull @.str.21, ptr noundef %16) #18
  br label %21

21:                                               ; preds = %19, %10
  %22 = getelementptr inbounds %struct.spi_mem, ptr %0, i32 0, i32 1
  store ptr %8, ptr %22, align 4
  %23 = icmp eq ptr %7, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %7, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store ptr %25, ptr %16, align 8
  br label %34

28:                                               ; preds = %24, %21
  %29 = load ptr, ptr %16, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call ptr @spi_mem_get_name(ptr noundef %0) #18
  store ptr %32, ptr %16, align 8
  br label %33

33:                                               ; preds = %31, %28
  br i1 %23, label %38, label %34

34:                                               ; preds = %33, %27
  %35 = getelementptr inbounds %struct.flash_platform_data, ptr %7, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %34, %33
  %39 = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 11
  %40 = tail call i32 @strcmp(ptr noundef %39, ptr noundef nonnull dereferenceable(8) @.str.20)
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, ptr null, ptr %39
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi ptr [ %36, %34 ], [ %42, %38 ]
  %45 = call i32 @spi_nor_scan(ptr noundef nonnull %8, ptr noundef %44, ptr noundef nonnull %4)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %224

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 21
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.spi_nor_flash_parameter, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, 4096
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 5
  store i32 %51, ptr %54, align 8
  %55 = load ptr, ptr %12, align 4
  %56 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  call void @devm_kfree(ptr noundef %55, ptr noundef %57) #18
  %58 = load ptr, ptr %12, align 4
  %59 = load i32, ptr %54, align 8
  %60 = call noalias ptr @devm_kmalloc(ptr noundef %58, i32 noundef %59, i32 noundef 3264) #18
  store ptr %60, ptr %56, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %224, label %62

62:                                               ; preds = %53
  %63 = load ptr, ptr %48, align 4
  br label %64

64:                                               ; preds = %62, %47
  %65 = phi ptr [ %63, %62 ], [ %49, %47 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false) #18
  store i8 1, ptr %3, align 8
  %66 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 3
  %67 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 10
  %68 = load i8, ptr %67, align 2
  %69 = zext i8 %68 to i16
  store i16 %69, ptr %66, align 4
  %70 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1
  %71 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 8
  %72 = load i8, ptr %71, align 4
  store i8 %72, ptr %70, align 8
  %73 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2
  %74 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 11
  %75 = load i8, ptr %74, align 1
  store i8 %75, ptr %73, align 8
  %76 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 2
  store i32 1, ptr %76, align 8
  %77 = getelementptr inbounds %struct.spi_mem_dirmap_info, ptr %3, i32 0, i32 1
  store i64 0, ptr %77, align 8
  %78 = getelementptr inbounds %struct.spi_mem_dirmap_info, ptr %3, i32 0, i32 2
  %79 = load i64, ptr %65, align 8
  store i64 %79, ptr %78, align 8
  %80 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 13
  %81 = load i32, ptr %80, align 4
  %82 = lshr i32 %81, 16
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 1
  store i8 %83, ptr %84, align 1
  %85 = icmp eq i8 %72, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %64
  %87 = lshr i32 %81, 8
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 1
  store i8 %88, ptr %89, align 1
  br label %90

90:                                               ; preds = %86, %64
  %91 = icmp eq i8 %75, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %90
  %93 = lshr i32 %81, 8
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2, i32 1
  store i8 %94, ptr %95, align 1
  br label %96

96:                                               ; preds = %92, %90
  %97 = phi i8 [ %94, %92 ], [ 0, %90 ]
  %98 = and i32 %81, 16777216
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = zext i8 %75 to i16
  %102 = zext i8 %97 to i16
  %103 = mul nuw i16 %102, %101
  %104 = lshr i16 %103, 3
  %105 = trunc i16 %104 to i8
  br label %136

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.anon.65, ptr %3, i32 0, i32 2
  store i8 1, ptr %107, align 2
  %108 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 1, i32 2
  store i8 1, ptr %108, align 2
  %109 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 2, i32 2
  store i8 1, ptr %109, align 2
  %110 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3, i32 1
  store i8 1, ptr %110, align 1
  %111 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 18
  %112 = load i32, ptr %111, align 8
  switch i32 %112, label %115 [
    i32 2, label %113
    i32 1, label %121
  ]

113:                                              ; preds = %106
  %114 = xor i8 %68, -1
  br label %121

115:                                              ; preds = %106
  %116 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.2) #17
  %117 = load i8, ptr %74, align 1
  %118 = load i32, ptr %80, align 4
  %119 = and i32 %118, 16777216
  %120 = icmp ne i32 %119, 0
  br label %121

121:                                              ; preds = %115, %113, %106
  %122 = phi i1 [ true, %106 ], [ %120, %115 ], [ true, %113 ]
  %123 = phi i32 [ %81, %106 ], [ %118, %115 ], [ %81, %113 ]
  %124 = phi i8 [ %75, %106 ], [ %117, %115 ], [ %75, %113 ]
  %125 = phi i8 [ %68, %106 ], [ 0, %115 ], [ %114, %113 ]
  %126 = shl nuw i16 %69, 8
  %127 = zext i8 %125 to i16
  %128 = or i16 %126, %127
  store i16 %128, ptr %66, align 4
  store i8 2, ptr %3, align 8
  %129 = zext i8 %124 to i16
  %130 = zext i8 %97 to i16
  %131 = mul nuw i16 %129, %130
  %132 = lshr i16 %131, 3
  %133 = trunc i16 %132 to i8
  %134 = zext i1 %122 to i8
  %135 = shl i8 %133, %134
  br label %136

136:                                              ; preds = %121, %100
  %137 = phi i32 [ %81, %100 ], [ %123, %121 ]
  %138 = phi i8 [ %105, %100 ], [ %135, %121 ]
  store i8 %138, ptr %73, align 8
  %139 = getelementptr inbounds %struct.spi_mem_op, ptr %3, i32 0, i32 3
  %140 = trunc i32 %137 to i8
  store i8 %140, ptr %139, align 4
  %141 = load ptr, ptr %12, align 4
  %142 = load ptr, ptr %11, align 8
  %143 = call ptr @devm_spi_mem_dirmap_create(ptr noundef %141, ptr noundef %142, ptr noundef nonnull %3) #18
  %144 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 22
  store ptr %143, ptr %144, align 8
  %145 = icmp ugt ptr %143, inttoptr (i32 -4096 to ptr)
  %146 = ptrtoint ptr %143 to i32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  br i1 %145, label %224, label %147

147:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false) #18
  store i8 1, ptr %2, align 8
  %148 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 3
  %149 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 12
  %150 = load i8, ptr %149, align 8
  %151 = zext i8 %150 to i16
  store i16 %151, ptr %148, align 4
  %152 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 1
  %153 = load i8, ptr %71, align 4
  store i8 %153, ptr %152, align 8
  %154 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3, i32 2
  store i32 2, ptr %154, align 8
  %155 = getelementptr inbounds %struct.spi_mem_dirmap_info, ptr %2, i32 0, i32 2
  %156 = load ptr, ptr %48, align 4
  %157 = load i64, ptr %156, align 8
  store i64 %157, ptr %155, align 8
  %158 = icmp eq i8 %150, -83
  br i1 %158, label %159, label %169

159:                                              ; preds = %147
  %160 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 16
  %161 = load i8, ptr %160, align 8, !range !9
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %159
  store i8 0, ptr %152, align 8
  %164 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 14
  %165 = load i32, ptr %164, align 8
  %166 = lshr i32 %165, 16
  %167 = trunc i32 %166 to i8
  %168 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 1
  store i8 %167, ptr %168, align 1
  br label %180

169:                                              ; preds = %159, %147
  %170 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 14
  %171 = load i32, ptr %170, align 8
  %172 = lshr i32 %171, 16
  %173 = trunc i32 %172 to i8
  %174 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 1
  store i8 %173, ptr %174, align 1
  %175 = icmp eq i8 %153, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %169
  %177 = lshr i32 %171, 8
  %178 = trunc i32 %177 to i8
  %179 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 1, i32 1
  store i8 %178, ptr %179, align 1
  br label %180

180:                                              ; preds = %176, %169, %163
  %181 = phi i32 [ %165, %163 ], [ %171, %176 ], [ %171, %169 ]
  %182 = phi ptr [ %164, %163 ], [ %170, %176 ], [ %170, %169 ]
  %183 = and i32 %181, 16777216
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %204, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 2
  %187 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 2
  store i8 1, ptr %187, align 2
  %188 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 1, i32 2
  store i8 1, ptr %188, align 2
  %189 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 2, i32 2
  store i8 1, ptr %189, align 2
  %190 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3, i32 1
  store i8 1, ptr %190, align 1
  store i8 0, ptr %186, align 8
  %191 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 18
  %192 = load i32, ptr %191, align 8
  switch i32 %192, label %195 [
    i32 2, label %193
    i32 1, label %198
  ]

193:                                              ; preds = %185
  %194 = xor i8 %150, -1
  br label %198

195:                                              ; preds = %185
  %196 = load ptr, ptr %12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %196, ptr noundef nonnull @.str.2) #17
  %197 = load i32, ptr %182, align 8
  br label %198

198:                                              ; preds = %195, %193, %185
  %199 = phi i32 [ %197, %195 ], [ %181, %193 ], [ %181, %185 ]
  %200 = phi i8 [ 0, %195 ], [ %194, %193 ], [ %150, %185 ]
  %201 = shl nuw i16 %151, 8
  %202 = zext i8 %200 to i16
  %203 = or i16 %201, %202
  store i16 %203, ptr %148, align 4
  store i8 2, ptr %2, align 8
  br label %204

204:                                              ; preds = %198, %180
  %205 = phi i32 [ %181, %180 ], [ %199, %198 ]
  %206 = getelementptr inbounds %struct.spi_mem_op, ptr %2, i32 0, i32 3
  %207 = trunc i32 %205 to i8
  store i8 %207, ptr %206, align 4
  %208 = load ptr, ptr %12, align 4
  %209 = load ptr, ptr %11, align 8
  %210 = call ptr @devm_spi_mem_dirmap_create(ptr noundef %208, ptr noundef %209, ptr noundef nonnull %2) #18
  %211 = getelementptr inbounds %struct.spi_nor, ptr %8, i32 0, i32 22, i32 1
  store ptr %210, ptr %211, align 4
  %212 = icmp ugt ptr %210, inttoptr (i32 -4096 to ptr)
  %213 = ptrtoint ptr %210 to i32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #18
  br i1 %212, label %224, label %214

214:                                              ; preds = %204
  br i1 %23, label %220, label %215

215:                                              ; preds = %214
  %216 = getelementptr inbounds %struct.flash_platform_data, ptr %7, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.flash_platform_data, ptr %7, i32 0, i32 2
  %219 = load i32, ptr %218, align 4
  br label %220

220:                                              ; preds = %215, %214
  %221 = phi ptr [ %217, %215 ], [ null, %214 ]
  %222 = phi i32 [ %219, %215 ], [ 0, %214 ]
  %223 = call i32 @mtd_device_parse_register(ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef %221, i32 noundef %222) #18
  br label %224

224:                                              ; preds = %220, %204, %136, %53, %43, %1
  %225 = phi i32 [ %223, %220 ], [ -12, %1 ], [ %45, %43 ], [ -12, %53 ], [ %146, %136 ], [ %213, %204 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret i32 %225
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_nor_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.spi_mem, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @spi_nor_restore(ptr noundef %3)
  %4 = tail call i32 @mtd_device_unregister(ptr noundef %3) #18
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spi_nor_shutdown(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.spi_mem, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @spi_nor_restore(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_mem_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_spi_mem_dirmap_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind allocsize(2) }

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
!10 = !{i32 0, i32 33}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2147984224, i64 2147984504, i64 2147984838, i64 2147985172}
