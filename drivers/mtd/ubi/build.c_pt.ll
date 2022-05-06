; ModuleID = '/llk/IR/drivers/mtd/ubi/build.c_pt.bc'
source_filename = "../drivers/mtd/ubi/build.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.lock_class_key = type {}
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.63 }
%union.anon.63 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtd_dev_param = type { [64 x i8], i32, i32, i32 }
%struct.ubi_notification = type { %struct.ubi_device_info, %struct.ubi_volume_info }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rb_root = type { ptr }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.68 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.68 = type { %struct.mtd_part, [16 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.ubi_volume_desc = type { ptr, i32 }
%struct.ubi_vtbl_record = type { i32, i32, i32, i8, i8, i16, [128 x i8], i8, [23 x i8], i32 }
%struct.ubi_volume = type { %struct.device, %struct.cdev, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [128 x i8], i32, i32, i64, i64, ptr, ptr, i8 }
%struct.path = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }

@ubi_devices_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ubi_devices_mutex, i64 12), ptr getelementptr (i8, ptr @ubi_devices_mutex, i64 12) } }, align 4
@.str = private unnamed_addr constant [4 x i8] c"ubi\00", align 1
@ubi_class_groups = internal global [2 x ptr] [ptr @ubi_class_group, ptr null], align 4
@ubi_class = dso_local global %struct.class { ptr @.str, ptr null, ptr @ubi_class_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ubi_notifiers = external dso_local global %struct.blocking_notifier_head, align 4
@ubi_devices = internal unnamed_addr global [32 x ptr] zeroinitializer, align 4
@ubi_devices_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", align 1
@__func__.ubi_get_device = private unnamed_addr constant [15 x i8] c"ubi_get_device\00", align 1
@__func__.ubi_get_by_major = private unnamed_addr constant [17 x i8] c"ubi_get_by_major\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\013ubi: mtd%d is already attached to ubi%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"\013ubi: refuse attaching mtd%d - it is already emulated on top of UBI\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"\013ubi: refuse attaching mtd%d - MLC NAND is not supported\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"\013ubi: only %d UBI devices may be created\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\013ubi: ubi%i already exists\0A\00", align 1
@ubi_dev_groups = internal global [2 x ptr] [ptr @ubi_dev_group, ptr null], align 4
@ubi_attach_mtd_dev.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"&ubi->buf_mutex\00", align 1
@ubi_attach_mtd_dev.__key.9 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"&ubi->ckvol_mutex\00", align 1
@ubi_attach_mtd_dev.__key.11 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"&ubi->device_mutex\00", align 1
@ubi_attach_mtd_dev.__key.13 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"&ubi->fm_protect\00", align 1
@ubi_attach_mtd_dev.__key.15 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"&ubi->fm_eba_sem\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"attaching mtd%d\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"failed to attach mtd%d, error %d\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"cannot spawn \22%s\22, error %d\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"attached mtd%d (name \22%s\22, size %llu MiB)\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"PEB size: %d bytes (%d KiB), LEB size: %d bytes\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"min./max. I/O unit sizes: %d/%d, sub-page size %d\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"VID header offset: %d (aligned %d), data offset: %d\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"good PEBs: %d, bad PEBs: %d, corrupted PEBs: %d\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c"user volume: %d, internal volumes: %d, max. volumes count: %d\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c"max/mean erase counter: %d/%d, WL threshold: %d, image sequence number: %u\00", align 1
@.str.28 = private unnamed_addr constant [84 x i8] c"available PEBs: %d, total reserved PEBs: %d, PEBs reserved for bad PEB handling: %d\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"%s reference count %d, destroy anyway\00", align 1
@__func__.ubi_detach_mtd_dev = private unnamed_addr constant [19 x i8] c"ubi_detach_mtd_dev\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"detaching mtd%d\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"mtd%d is detached\00", align 1
@__initcall__kmod_ubi__226_1305_ubi_init7 = internal global ptr @ubi_init, section ".initcall7.init", align 4
@ubi_wl_entry_slab = dso_local local_unnamed_addr global ptr null, align 4
@ubi_ctrl_cdev = internal global %struct.miscdevice { i32 255, ptr @.str.70, ptr @ubi_ctrl_cdev_operations, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, align 4
@__exitcall_ubi_exit = internal global ptr @ubi_exit, section ".exitcall.exit", align 4
@__param_str_mtd = internal constant [8 x i8] c"ubi.mtd\00", align 1
@__param_ops_mtd = internal constant %struct.kernel_param_ops { i32 0, ptr @ubi_mtd_param_parse, ptr null, ptr null }, align 4
@__param_mtd = internal constant %struct.kernel_param { ptr @__param_str_mtd, ptr null, ptr @__param_ops_mtd, i16 256, i8 -1, i8 0, %union.anon.63 zeroinitializer }, section "__param", align 4
@__UNIQUE_ID_mtd227 = internal constant [1237 x i8] c"ubi.parm=mtd:MTD devices to attach. Parameter format: mtd=<name|num|path>[,<vid_hdr_offs>[,max_beb_per1024[,ubi_num]]].\0AMultiple \22mtd\22 parameters may be specified.\0AMTD devices may be specified by their number, name, or path to the MTD character device node.\0AOptional \22vid_hdr_offs\22 parameter specifies UBI VID header position to be used by UBI. (default value if 0)\0AOptional \22max_beb_per1024\22 parameter specifies the maximum expected bad eraseblock per 1024 eraseblocks. (default value (20) if 0)\0AOptional \22ubi_num\22 parameter specifies UBI device number which have to be assigned to the newly created UBI device (assigned automatically by default)\0A\0AExample 1: mtd=/dev/mtd0 - attach MTD device /dev/mtd0.\0AExample 2: mtd=content,1984 mtd=4 - attach MTD device with name \22content\22 using VID header offset 1984, and MTD device number 4 with default VID header offset.\0AExample 3: mtd=/dev/mtd1,0,25 - attach MTD device /dev/mtd1 using default VID header offset and reserve 25*nand_size_in_blocks/1024 erase blocks for bad block handling.\0AExample 4: mtd=/dev/mtd1,0,0,5 - attach MTD device /dev/mtd1 to UBI 5 and using default values for the other fields.\0A\09(e.g. if the NAND *chipset* has 4096 PEB, 100 will be reserved for this UBI device).\00", section ".modinfo", align 1
@__UNIQUE_ID_version228 = internal constant [14 x i8] c"ubi.version=1\00", section ".modinfo", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str, ptr @.str.33 }, section "__modver", align 4
@__UNIQUE_ID_description229 = internal constant [44 x i8] c"ubi.description=UBI - Unsorted Block Images\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [28 x i8] c"ubi.author=Artem Bityutskiy\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [29 x i8] c"ubi.file=drivers/mtd/ubi/ubi\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [16 x i8] c"ubi.license=GPL\00", section ".modinfo", align 1
@ubi_class_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ubi_class_attrs, ptr null }, align 4
@ubi_class_attrs = internal global [2 x ptr] [ptr @class_attr_version, ptr null], align 4
@class_attr_version = internal global %struct.class_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @version_show, ptr null }, align 4
@.str.34 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ubi_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ubi_dev_attrs, ptr null }, align 4
@ubi_dev_attrs = internal global [13 x ptr] [ptr @dev_eraseblock_size, ptr @dev_avail_eraseblocks, ptr @dev_total_eraseblocks, ptr @dev_volumes_count, ptr @dev_max_ec, ptr @dev_reserved_for_bad, ptr @dev_bad_peb_count, ptr @dev_max_vol_count, ptr @dev_min_io_size, ptr @dev_bgt_enabled, ptr @dev_mtd_num, ptr @dev_ro_mode, ptr null], align 4
@dev_eraseblock_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292 }, ptr @dev_attribute_show, ptr null }, align 4
@dev_avail_eraseblocks = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292 }, ptr @dev_attribute_show, ptr null }, align 4
@dev_total_eraseblocks = internal global %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292 }, ptr @dev_attribute_show, ptr null }, align 4
@dev_volumes_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292 }, ptr @dev_attribute_show, ptr null }, align 4
@dev_max_ec = internal global %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292 }, ptr @dev_attribute_show, ptr null }, align 4
@dev_reserved_for_bad = internal global %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292 }, ptr @dev_attribute_show, ptr null }, align 4
@dev_bad_peb_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292 }, ptr @dev_attribute_show, ptr null }, align 4
@dev_max_vol_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292 }, ptr @dev_attribute_show, ptr null }, align 4
@dev_min_io_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292 }, ptr @dev_attribute_show, ptr null }, align 4
@dev_bgt_enabled = internal global %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292 }, ptr @dev_attribute_show, ptr null }, align 4
@dev_mtd_num = internal global %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292 }, ptr @dev_attribute_show, ptr null }, align 4
@dev_ro_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292 }, ptr @dev_attribute_show, ptr null }, align 4
@.str.35 = private unnamed_addr constant [16 x i8] c"eraseblock_size\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"avail_eraseblocks\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"total_eraseblocks\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"volumes_count\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"max_ec\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"reserved_for_bad\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"bad_peb_count\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"max_vol_count\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"min_io_size\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"bgt_enabled\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"mtd_num\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"ro_mode\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"multiple regions, not implemented\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"min. I/O unit (%d) is not power of 2\00", align 1
@__func__.io_init = private unnamed_addr constant [8 x i8] c"io_init\00", align 1
@.str.49 = private unnamed_addr constant [46 x i8] c"bad write buffer size %d for %d min. I/O unit\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"unaligned VID header shift %d\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"bad VID header (%d) or data offsets (%d)\00", align 1
@.str.52 = private unnamed_addr constant [78 x i8] c"EC and VID headers are in the same minimal I/O unit, switch to read-only mode\00", align 1
@.str.53 = private unnamed_addr constant [59 x i8] c"MTD device %d is write-protected, attach in read-only mode\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"skip auto-resize because of R/O mode\00", align 1
@.str.55 = private unnamed_addr constant [44 x i8] c"cannot clean auto-resize flag for volume %d\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"cannot auto-resize volume %d\00", align 1
@.str.57 = private unnamed_addr constant [45 x i8] c"volume %d (\22%s\22) re-sized from %d to %d LEBs\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"ubi%d\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"cannot register UBI character devices\00", align 1
@__func__.uif_init = private unnamed_addr constant [9 x i8] c"uif_init\00", align 1
@ubi_cdev_operations = external dso_local constant %struct.file_operations, align 4
@.str.60 = private unnamed_addr constant [21 x i8] c"cannot add volume %d\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"cannot initialize UBI %s, error %d\00", align 1
@mtd_devs = internal unnamed_addr global i32 0, align 4
@.str.62 = private unnamed_addr constant [50 x i8] c"\013UBI error: too many MTD devices, maximum is %d\0A\00", align 1
@ubi_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.63 = private unnamed_addr constant [37 x i8] c"\013UBI error: cannot register device\0A\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"ubi_wl_entry_slab\00", align 1
@mtd_dev_param = internal global [32 x %struct.mtd_dev_param] zeroinitializer, align 4
@.str.66 = private unnamed_addr constant [43 x i8] c"\013UBI error: cannot open mtd %s, error %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"\013UBI error: cannot attach mtd%d\0A\00", align 1
@.str.69 = private unnamed_addr constant [46 x i8] c"\013UBI error: cannot initialize UBI, error %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"ubi_ctrl\00", align 1
@ubi_ctrl_cdev_operations = external dso_local constant %struct.file_operations, align 4
@.str.71 = private unnamed_addr constant [46 x i8] c"\013UBI error: too many parameters, max. is %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [53 x i8] c"\013UBI error: parameter \22%s\22 is too long, max. is %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [49 x i8] c"\014UBI warning: empty 'mtd=' parameter - ignored\0A\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.75 = private unnamed_addr constant [41 x i8] c"\013UBI error: too many arguments at \22%s\22\0A\00", align 1
@.str.76 = private unnamed_addr constant [57 x i8] c"\013UBI error: bad value for max_beb_per1024 parameter: %s\00", align 1
@.str.77 = private unnamed_addr constant [49 x i8] c"\013UBI error: bad value for ubi_num parameter: %s\00", align 1
@.str.78 = private unnamed_addr constant [42 x i8] c"\013UBI error: incorrect bytes count: \22%s\22\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__UNIQUE_ID_mtd227, ptr @__UNIQUE_ID_version228, ptr @__exitcall_ubi_exit, ptr @__initcall__kmod_ubi__226_1305_ubi_init7, ptr @__modver_attr, ptr @__param_mtd, ptr @ubi_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_volume_notify(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ubi_notification, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !8
  call void @ubi_do_get_device_info(ptr noundef %0, ptr noundef nonnull %4) #15
  %5 = getelementptr inbounds %struct.ubi_notification, ptr %4, i32 0, i32 1
  call void @ubi_do_get_volume_info(ptr noundef %0, ptr noundef %1, ptr noundef %5) #15
  %6 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @ubi_notifiers, i32 noundef %2, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #15
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_do_get_device_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_do_get_volume_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_notify_all(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ubi_notification, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !8
  call void @ubi_do_get_device_info(ptr noundef %0, ptr noundef nonnull %4) #15
  %5 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 18
  call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ubi_notification, ptr %4, i32 0, i32 1
  %11 = icmp eq ptr %2, null
  br label %12

12:                                               ; preds = %28, %9
  %13 = phi i32 [ %7, %9 ], [ %29, %28 ]
  %14 = phi i32 [ 0, %9 ], [ %30, %28 ]
  %15 = phi i32 [ 0, %9 ], [ %31, %28 ]
  %16 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  call void @ubi_do_get_volume_info(ptr noundef %0, ptr noundef nonnull %17, ptr noundef %10) #15
  br i1 %11, label %23, label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr %2, align 4
  %22 = call i32 %21(ptr noundef nonnull %2, i32 noundef %1, ptr noundef nonnull %4) #15
  br label %25

23:                                               ; preds = %19
  %24 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @ubi_notifiers, i32 noundef %1, ptr noundef nonnull %4) #15
  br label %25

25:                                               ; preds = %23, %20
  %26 = add i32 %14, 1
  %27 = load i32, ptr %6, align 4
  br label %28

28:                                               ; preds = %25, %12
  %29 = phi i32 [ %27, %25 ], [ %13, %12 ]
  %30 = phi i32 [ %26, %25 ], [ %14, %12 ]
  %31 = add nuw nsw i32 %15, 1
  %32 = icmp slt i32 %31, %29
  br i1 %32, label %12, label %33

33:                                               ; preds = %28, %3
  %34 = phi i32 [ 0, %3 ], [ %30, %28 ]
  call void @mutex_unlock(ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #15
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_enumerate_volumes(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %11, %1
  %3 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %4 = phi i32 [ 0, %1 ], [ %13, %11 ]
  %5 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @ubi_notify_all(ptr noundef nonnull %6, i32 noundef 0, ptr noundef %0)
  %10 = add i32 %9, %3
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %10, %8 ], [ %3, %2 ]
  %13 = add nuw nsw i32 %4, 1
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %15, label %2

15:                                               ; preds = %11
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubi_get_device(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #15
  %2 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15, !prof !9

9:                                                ; preds = %5
  %10 = tail call ptr @llvm.thread.pointer() #15
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 52
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ubi_get_device, i32 noundef 261, i32 noundef %12) #16
  tail call void @dump_stack() #16
  %14 = load i32, ptr %6, align 4
  br label %15

15:                                               ; preds = %9, %5
  %16 = phi i32 [ %14, %9 ], [ %7, %5 ]
  %17 = add i32 %16, 1
  store i32 %17, ptr %6, align 4
  %18 = getelementptr inbounds %struct.ubi_device, ptr %3, i32 0, i32 1
  %19 = tail call ptr @get_device(ptr noundef %18) #15
  br label %20

20:                                               ; preds = %15, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %21 = load i16, ptr @ubi_devices_lock, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr @ubi_devices_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  ret ptr %3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_put_device(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #15
  %2 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 1
  tail call void @put_device(ptr noundef %5) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %6 = load i16, ptr @ubi_devices_lock, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr @ubi_devices_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ubi_get_by_major(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #15
  br label %2

2:                                                ; preds = %29, %1
  %3 = phi i32 [ 0, %1 ], [ %30, %29 ]
  %4 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cdev, ptr %5, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 20
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ubi_device, ptr %5, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22, !prof !9

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #15
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 52
  %19 = load i32, ptr %18, align 8
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ubi_get_by_major, i32 noundef 298, i32 noundef %19) #16
  tail call void @dump_stack() #16
  %21 = load i32, ptr %13, align 4
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi i32 [ %21, %16 ], [ %14, %12 ]
  %24 = add i32 %23, 1
  store i32 %24, ptr %13, align 4
  %25 = getelementptr inbounds %struct.ubi_device, ptr %5, i32 0, i32 1
  %26 = tail call ptr @get_device(ptr noundef %25) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %27 = load i16, ptr @ubi_devices_lock, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr @ubi_devices_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br label %35

29:                                               ; preds = %7, %2
  %30 = add nuw nsw i32 %3, 1
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %32, label %2

32:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %33 = load i16, ptr @ubi_devices_lock, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr @ubi_devices_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br label %35

35:                                               ; preds = %32, %22
  %36 = phi ptr [ %5, %22 ], [ null, %32 ]
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_major2num(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #15
  br label %2

2:                                                ; preds = %15, %1
  %3 = phi i32 [ 0, %1 ], [ %16, %15 ]
  %4 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cdev, ptr %5, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 20
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ubi_device, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  br label %18

15:                                               ; preds = %7, %2
  %16 = add nuw nsw i32 %3, 1
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %18, label %2

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %14, %12 ], [ -19, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %20 = load i16, ptr @ubi_devices_lock, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr @ubi_devices_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_free_all_volumes(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 2147483647
  br i1 %4, label %5, label %19

5:                                                ; preds = %14, %1
  %6 = phi i32 [ %15, %14 ], [ %3, %1 ]
  %7 = phi i32 [ %16, %14 ], [ 0, %1 ]
  %8 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  tail call void @ubi_eba_replace_table(ptr noundef nonnull %9, ptr noundef null) #15
  %12 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %12) #15
  store ptr null, ptr %8, align 4
  %13 = load i32, ptr %2, align 4
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i32 [ %6, %5 ], [ %13, %11 ]
  %16 = add nuw nsw i32 %7, 1
  %17 = add i32 %15, 1
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %5, label %19

19:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_free_internal_volumes(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2147483647
  br i1 %4, label %19, label %5

5:                                                ; preds = %14, %1
  %6 = phi i32 [ %15, %14 ], [ %3, %1 ]
  %7 = phi i32 [ %16, %14 ], [ %3, %1 ]
  %8 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  tail call void @ubi_eba_replace_table(ptr noundef nonnull %9, ptr noundef null) #15
  %12 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %12) #15
  store ptr null, ptr %8, align 4
  %13 = load i32, ptr %2, align 4
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i32 [ %6, %5 ], [ %13, %11 ]
  %16 = add nsw i32 %7, 1
  %17 = add i32 %15, 1
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %5, label %19

19:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_attach_mtd_dev(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt i32 %3, 768
  br i1 %5, label %392, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 0
  %8 = select i1 %7, i32 20, i32 %3
  %9 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 14
  br label %10

10:                                               ; preds = %24, %6
  %11 = phi i32 [ 0, %6 ], [ %25, %24 ]
  %12 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %9, align 4
  %17 = getelementptr inbounds %struct.ubi_device, ptr %13, i32 0, i32 79
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mtd_info, ptr %18, i32 0, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %16, i32 noundef %11) #16
  br label %392

24:                                               ; preds = %15, %10
  %25 = add nuw nsw i32 %11, 1
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %10

27:                                               ; preds = %24
  %28 = load i8, ptr %0, align 8
  switch i8 %28, label %40 [
    i8 7, label %29
    i8 8, label %32
  ]

29:                                               ; preds = %27
  %30 = load i32, ptr %9, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %30) #16
  br label %392

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 16384
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, ptr %9, align 4
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %38) #16
  br label %392

40:                                               ; preds = %32, %27
  %41 = icmp eq i32 %1, -1
  br i1 %41, label %42, label %52

42:                                               ; preds = %47, %40
  %43 = phi i32 [ %48, %47 ], [ 0, %40 ]
  %44 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %42
  %48 = add nuw nsw i32 %43, 1
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %50, label %42

50:                                               ; preds = %47
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 32) #16
  br label %392

52:                                               ; preds = %40
  %53 = icmp sgt i32 %1, 31
  br i1 %53, label %392, label %54

54:                                               ; preds = %52
  %55 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %1) #16
  br label %392

60:                                               ; preds = %54, %42
  %61 = phi i32 [ %1, %54 ], [ %43, %42 ]
  %62 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %63 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3520, i32 noundef 3768) #17
  %64 = icmp eq ptr %63, null
  br i1 %64, label %392, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 1
  tail call void @device_initialize(ptr noundef %66) #15
  %67 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 1, i32 33
  store ptr @dev_release, ptr %67, align 4
  %68 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 1, i32 31
  store ptr @ubi_class, ptr %68, align 4
  %69 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 1, i32 32
  store ptr @ubi_dev_groups, ptr %69, align 8
  %70 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 79
  store ptr %0, ptr %70, align 4
  %71 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 2
  store i32 %61, ptr %71, align 8
  %72 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 74
  store i32 %2, ptr %72, align 8
  %73 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 14
  store i32 -1, ptr %73, align 8
  %74 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 25
  store i32 1, ptr %74, align 4
  %75 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 81
  tail call void @__mutex_init(ptr noundef %75, ptr noundef nonnull @.str.8, ptr noundef nonnull @ubi_attach_mtd_dev.__key) #15
  %76 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 82
  tail call void @__mutex_init(ptr noundef %76, ptr noundef nonnull @.str.10, ptr noundef nonnull @ubi_attach_mtd_dev.__key.9) #15
  %77 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %77, ptr noundef nonnull @.str.12, ptr noundef nonnull @ubi_attach_mtd_dev.__key.11) #15
  %78 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 6
  store i32 0, ptr %78, align 8
  %79 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 30
  tail call void @__init_rwsem(ptr noundef %79, ptr noundef nonnull @.str.14, ptr noundef nonnull @ubi_attach_mtd_dev.__key.13) #15
  %80 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 29
  tail call void @__init_rwsem(ptr noundef %80, ptr noundef nonnull @.str.16, ptr noundef nonnull @ubi_attach_mtd_dev.__key.15) #15
  %81 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %63, ptr noundef nonnull @.str.17, i32 noundef %81) #15
  %82 = load ptr, ptr %70, align 4
  %83 = getelementptr inbounds %struct.mtd_info, ptr %82, i32 0, i32 19
  %84 = load i32, ptr %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef nonnull %63, ptr noundef nonnull @.str.47) #15
  br label %386

87:                                               ; preds = %65
  %88 = load i32, ptr %72, align 8
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %386, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.mtd_info, ptr %82, i32 0, i32 3
  %92 = load i32, ptr %91, align 8
  %93 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 61
  store i32 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.mtd_info, ptr %82, i32 0, i32 2
  %95 = load i64, ptr %94, align 8
  %96 = getelementptr inbounds %struct.mtd_info, ptr %82, i32 0, i32 8
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %90
  %100 = zext i32 %97 to i64
  %101 = lshr i64 %95, %100
  %102 = trunc i64 %101 to i32
  br label %113

103:                                              ; preds = %90
  %104 = load i32, ptr %91, align 8
  %105 = icmp ult i64 %95, 4294967296
  br i1 %105, label %106, label %109, !prof !14

106:                                              ; preds = %103
  %107 = trunc i64 %95 to i32
  %108 = udiv i32 %107, %104
  br label %113

109:                                              ; preds = %103
  %110 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %104, i64 %95) #18, !srcloc !15
  %111 = extractvalue { i64, i64 } %110, 1
  %112 = trunc i64 %111 to i32
  br label %113

113:                                              ; preds = %109, %106, %99
  %114 = phi i32 [ %102, %99 ], [ %108, %106 ], [ %112, %109 ]
  %115 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 60
  store i32 %114, ptr %115, align 8
  %116 = load i64, ptr %94, align 8
  %117 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 59
  store i64 %116, ptr %117, align 8
  br label %118

118:                                              ; preds = %118, %113
  %119 = phi ptr [ %82, %113 ], [ %121, %118 ]
  %120 = getelementptr inbounds %struct.mtd_info, ptr %119, i32 0, i32 62
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %118

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.mtd_info, ptr %119, i32 0, i32 42
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %173, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 77
  %129 = load i8, ptr %128, align 4
  %130 = or i8 %129, 1
  store i8 %130, ptr %128, align 4
  %131 = tail call i64 @mtd_get_device_size(ptr noundef %82) #15
  %132 = load ptr, ptr %70, align 4
  %133 = getelementptr inbounds %struct.mtd_info, ptr %132, i32 0, i32 8
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %127
  %137 = zext i32 %134 to i64
  %138 = lshr i64 %131, %137
  %139 = trunc i64 %138 to i32
  br label %151

140:                                              ; preds = %127
  %141 = getelementptr inbounds %struct.mtd_info, ptr %132, i32 0, i32 3
  %142 = load i32, ptr %141, align 8
  %143 = icmp ult i64 %131, 4294967296
  br i1 %143, label %144, label %147, !prof !14

144:                                              ; preds = %140
  %145 = trunc i64 %131 to i32
  %146 = udiv i32 %145, %142
  br label %151

147:                                              ; preds = %140
  %148 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %142, i64 %131) #18, !srcloc !15
  %149 = extractvalue { i64, i64 } %148, 1
  %150 = trunc i64 %149 to i32
  br label %151

151:                                              ; preds = %147, %144, %136
  %152 = phi i32 [ %139, %136 ], [ %146, %144 ], [ %150, %147 ]
  %153 = freeze i32 %152
  %154 = sdiv i32 %153, 1024
  %155 = mul i32 %154, 1024
  %156 = sub i32 %153, %155
  %157 = mul i32 %154, %8
  %158 = mul i32 %156, %8
  %159 = sdiv i32 %158, 1024
  %160 = add i32 %159, %157
  %161 = freeze i32 %160
  %162 = sdiv i32 %161, %8
  %163 = mul i32 %162, %8
  %164 = sub i32 %161, %163
  %165 = shl i32 %162, 10
  %166 = shl i32 %164, 10
  %167 = sdiv i32 %166, %8
  %168 = add i32 %167, %165
  %169 = icmp slt i32 %168, %152
  %170 = zext i1 %169 to i32
  %171 = add i32 %160, %170
  %172 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 13
  store i32 %171, ptr %172, align 4
  br label %173

173:                                              ; preds = %151, %123
  %174 = phi ptr [ %132, %151 ], [ %82, %123 ]
  %175 = load i8, ptr %174, align 8
  %176 = icmp eq i8 %175, 3
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 77
  %179 = load i8, ptr %178, align 4
  %180 = or i8 %179, 2
  store i8 %180, ptr %178, align 4
  br label %181

181:                                              ; preds = %177, %173
  %182 = getelementptr inbounds %struct.mtd_info, ptr %174, i32 0, i32 4
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 67
  store i32 %183, ptr %184, align 4
  %185 = load i32, ptr %182, align 4
  %186 = getelementptr inbounds %struct.mtd_info, ptr %174, i32 0, i32 53
  %187 = load i32, ptr %186, align 4
  %188 = lshr i32 %185, %187
  %189 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 68
  store i32 %188, ptr %189, align 8
  %190 = tail call i32 @llvm.ctpop.i32(i32 %183) #15, !range !16
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %193, label %192

192:                                              ; preds = %181
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %63, ptr noundef nonnull @.str.48, i32 noundef %183) #15
  br label %386

193:                                              ; preds = %181
  %194 = icmp slt i32 %188, 1
  br i1 %194, label %195, label %202, !prof !9

195:                                              ; preds = %193
  %196 = tail call ptr @llvm.thread.pointer() #15
  %197 = getelementptr inbounds %struct.task_struct, ptr %196, i32 0, i32 52
  %198 = load i32, ptr %197, align 8
  %199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.io_init, i32 noundef 649, i32 noundef %198) #16
  tail call void @dump_stack() #16
  %200 = load i32, ptr %189, align 8
  %201 = load i32, ptr %184, align 4
  br label %202

202:                                              ; preds = %195, %193
  %203 = phi i32 [ %201, %195 ], [ %183, %193 ]
  %204 = phi i32 [ %200, %195 ], [ %188, %193 ]
  %205 = icmp sgt i32 %204, %203
  br i1 %205, label %206, label %213, !prof !9

206:                                              ; preds = %202
  %207 = tail call ptr @llvm.thread.pointer() #15
  %208 = getelementptr inbounds %struct.task_struct, ptr %207, i32 0, i32 52
  %209 = load i32, ptr %208, align 8
  %210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.io_init, i32 noundef 650, i32 noundef %209) #16
  tail call void @dump_stack() #16
  %211 = load i32, ptr %184, align 4
  %212 = load i32, ptr %189, align 8
  br label %213

213:                                              ; preds = %206, %202
  %214 = phi i32 [ %212, %206 ], [ %204, %202 ]
  %215 = phi i32 [ %211, %206 ], [ %203, %202 ]
  %216 = srem i32 %215, %214
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %224, label %218, !prof !14

218:                                              ; preds = %213
  %219 = tail call ptr @llvm.thread.pointer() #15
  %220 = getelementptr inbounds %struct.task_struct, ptr %219, i32 0, i32 52
  %221 = load i32, ptr %220, align 8
  %222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.io_init, i32 noundef 651, i32 noundef %221) #16
  tail call void @dump_stack() #16
  %223 = load i32, ptr %184, align 4
  br label %224

224:                                              ; preds = %218, %213
  %225 = phi i32 [ %215, %213 ], [ %223, %218 ]
  %226 = load ptr, ptr %70, align 4
  %227 = getelementptr inbounds %struct.mtd_info, ptr %226, i32 0, i32 5
  %228 = load i32, ptr %227, align 8
  %229 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 78
  store i32 %228, ptr %229, align 8
  %230 = icmp slt i32 %228, %225
  br i1 %230, label %237, label %231

231:                                              ; preds = %224
  %232 = srem i32 %228, %225
  %233 = icmp eq i32 %232, 0
  %234 = tail call i32 @llvm.ctpop.i32(i32 %228) #15, !range !16
  %235 = icmp eq i32 %234, 1
  %236 = and i1 %235, %233
  br i1 %236, label %238, label %237

237:                                              ; preds = %231, %224
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %63, ptr noundef nonnull @.str.49, i32 noundef %228, i32 noundef %225) #15
  br label %386

238:                                              ; preds = %231
  %239 = load i32, ptr %189, align 8
  %240 = add i32 %239, 63
  %241 = sub i32 0, %239
  %242 = and i32 %240, %241
  %243 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 72
  store i32 %242, ptr %243, align 8
  %244 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 73
  store i32 %242, ptr %244, align 4
  %245 = load i32, ptr %72, align 8
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %238
  store i32 %242, ptr %72, align 8
  %248 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 76
  %249 = load i32, ptr %248, align 8
  br label %254

250:                                              ; preds = %238
  %251 = and i32 %245, %241
  %252 = sub i32 %245, %251
  %253 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 76
  store i32 %252, ptr %253, align 8
  br label %254

254:                                              ; preds = %250, %247
  %255 = phi i32 [ %249, %247 ], [ %252, %250 ]
  %256 = phi i32 [ %242, %247 ], [ %245, %250 ]
  %257 = phi i32 [ %242, %247 ], [ %251, %250 ]
  %258 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 75
  store i32 %257, ptr %258, align 4
  %259 = add i32 %256, 64
  %260 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 71
  %261 = add i32 %225, -1
  %262 = add i32 %261, %259
  %263 = sub i32 0, %225
  %264 = and i32 %262, %263
  store i32 %264, ptr %260, align 4
  %265 = and i32 %255, 3
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %254
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %63, ptr noundef nonnull @.str.50, i32 noundef %255) #15
  br label %386

268:                                              ; preds = %254
  %269 = icmp ult i32 %256, 64
  %270 = icmp ult i32 %264, %259
  %271 = select i1 %269, i1 true, i1 %270
  br i1 %271, label %276, label %272

272:                                              ; preds = %268
  %273 = load i32, ptr %93, align 4
  %274 = add i32 %273, -64
  %275 = icmp ugt i32 %264, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %272, %268
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %63, ptr noundef nonnull @.str.51, i32 noundef %256, i32 noundef %264) #15
  br label %386

277:                                              ; preds = %272
  %278 = load i32, ptr %115, align 8
  %279 = sdiv i32 %278, 10
  %280 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 66
  %281 = icmp slt i32 %278, 160
  %282 = select i1 %281, i32 16, i32 %279
  store i32 %282, ptr %280, align 8
  %283 = icmp ugt i32 %259, %239
  br i1 %283, label %289, label %284

284:                                              ; preds = %277
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %63, ptr noundef nonnull @.str.52) #15
  %285 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 69
  store i32 1, ptr %285, align 4
  %286 = load i32, ptr %93, align 4
  %287 = load i32, ptr %260, align 4
  %288 = load ptr, ptr %70, align 4
  br label %289

289:                                              ; preds = %284, %277
  %290 = phi ptr [ %288, %284 ], [ %226, %277 ]
  %291 = phi i32 [ %287, %284 ], [ %264, %277 ]
  %292 = phi i32 [ %286, %284 ], [ %273, %277 ]
  %293 = sub i32 %292, %291
  %294 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 70
  store i32 %293, ptr %294, align 8
  %295 = getelementptr inbounds %struct.mtd_info, ptr %290, i32 0, i32 1
  %296 = load i32, ptr %295, align 4
  %297 = and i32 %296, 1024
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %289
  %300 = getelementptr inbounds %struct.mtd_info, ptr %290, i32 0, i32 14
  %301 = load i32, ptr %300, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %63, ptr noundef nonnull @.str.53, i32 noundef %301) #15
  %302 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 69
  store i32 1, ptr %302, align 4
  %303 = load i32, ptr %93, align 4
  br label %304

304:                                              ; preds = %299, %289
  %305 = phi i32 [ %303, %299 ], [ %292, %289 ]
  %306 = tail call noalias ptr @vmalloc(i32 noundef %305) #19
  %307 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 80
  store ptr %306, ptr %307, align 8
  %308 = icmp eq ptr %306, null
  br i1 %308, label %386, label %309

309:                                              ; preds = %304
  %310 = tail call i32 @ubi_attach(ptr noundef nonnull %63, i32 noundef 0) #15
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %314, label %312

312:                                              ; preds = %309
  %313 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef nonnull %63, ptr noundef nonnull @.str.18, i32 noundef %313, i32 noundef %310) #15
  br label %386

314:                                              ; preds = %309
  %315 = load i32, ptr %73, align 8
  %316 = icmp eq i32 %315, -1
  br i1 %316, label %320, label %317

317:                                              ; preds = %314
  %318 = tail call fastcc i32 @autoresize(ptr noundef nonnull %63, i32 noundef %315)
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %381

320:                                              ; preds = %317, %314
  %321 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %61
  store ptr %63, ptr %321, align 4
  %322 = tail call fastcc i32 @uif_init(ptr noundef nonnull %63)
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %381

324:                                              ; preds = %320
  %325 = tail call i32 @ubi_debugfs_init_dev(ptr noundef nonnull %63) #15
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %379

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 58
  %329 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ubi_thread, ptr noundef nonnull %63, i32 noundef -1, ptr noundef nonnull @.str.19, ptr noundef %328) #15
  %330 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 56
  store ptr %329, ptr %330, align 8
  %331 = icmp ugt ptr %329, inttoptr (i32 -4096 to ptr)
  br i1 %331, label %332, label %334

332:                                              ; preds = %327
  %333 = ptrtoint ptr %329 to i32
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef nonnull %63, ptr noundef nonnull @.str.20, ptr noundef %328, i32 noundef %333) #15
  tail call void @ubi_debugfs_exit_dev(ptr noundef nonnull %63) #15
  br label %379

334:                                              ; preds = %327
  %335 = load i32, ptr %9, align 4
  %336 = getelementptr inbounds %struct.mtd_info, ptr %0, i32 0, i32 13
  %337 = load ptr, ptr %336, align 8
  %338 = load i64, ptr %117, align 8
  %339 = ashr i64 %338, 20
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %63, ptr noundef nonnull @.str.21, i32 noundef %335, ptr noundef %337, i64 noundef %339) #15
  %340 = load i32, ptr %93, align 4
  %341 = ashr i32 %340, 10
  %342 = load i32, ptr %294, align 8
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %63, ptr noundef nonnull @.str.22, i32 noundef %340, i32 noundef %341, i32 noundef %342) #15
  %343 = load i32, ptr %184, align 4
  %344 = load i32, ptr %229, align 8
  %345 = load i32, ptr %189, align 8
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %63, ptr noundef nonnull @.str.23, i32 noundef %343, i32 noundef %344, i32 noundef %345) #15
  %346 = load i32, ptr %72, align 8
  %347 = load i32, ptr %258, align 4
  %348 = load i32, ptr %260, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %63, ptr noundef nonnull @.str.24, i32 noundef %346, i32 noundef %347, i32 noundef %348) #15
  %349 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 63
  %350 = load i32, ptr %349, align 4
  %351 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 62
  %352 = load i32, ptr %351, align 8
  %353 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 64
  %354 = load i32, ptr %353, align 8
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %63, ptr noundef nonnull @.str.25, i32 noundef %350, i32 noundef %352, i32 noundef %354) #15
  %355 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 4
  %356 = load i32, ptr %355, align 8
  %357 = add i32 %356, -1
  %358 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 15
  %359 = load i32, ptr %358, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %63, ptr noundef nonnull @.str.26, i32 noundef %357, i32 noundef 1, i32 noundef %359) #15
  %360 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 19
  %361 = load i32, ptr %360, align 4
  %362 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 20
  %363 = load i32, ptr %362, align 8
  %364 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 8
  %365 = load i32, ptr %364, align 8
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %63, ptr noundef nonnull @.str.27, i32 noundef %361, i32 noundef %363, i32 noundef 4096, i32 noundef %365) #15
  %366 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 10
  %367 = load i32, ptr %366, align 8
  %368 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 9
  %369 = load i32, ptr %368, align 4
  %370 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 11
  %371 = load i32, ptr %370, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %63, ptr noundef nonnull @.str.28, i32 noundef %367, i32 noundef %369, i32 noundef %371) #15
  %372 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %372) #15
  %373 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 57
  store i32 1, ptr %373, align 4
  %374 = load ptr, ptr %330, align 8
  %375 = tail call i32 @wake_up_process(ptr noundef %374) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %376 = load i16, ptr %372, align 8
  %377 = add i16 %376, 1
  store i16 %377, ptr %372, align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  %378 = tail call i32 @ubi_notify_all(ptr noundef nonnull %63, i32 noundef 0, ptr noundef null)
  br label %392

379:                                              ; preds = %332, %324
  %380 = phi i32 [ %325, %324 ], [ %333, %332 ]
  tail call fastcc void @uif_close(ptr noundef nonnull %63)
  br label %381

381:                                              ; preds = %379, %320, %317
  %382 = phi i32 [ %318, %317 ], [ %322, %320 ], [ %380, %379 ]
  %383 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %61
  store ptr null, ptr %383, align 4
  tail call void @ubi_wl_close(ptr noundef nonnull %63) #15
  tail call void @ubi_free_all_volumes(ptr noundef nonnull %63)
  %384 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 17
  %385 = load ptr, ptr %384, align 4
  tail call void @vfree(ptr noundef %385) #15
  br label %386

386:                                              ; preds = %381, %312, %304, %276, %267, %237, %192, %87, %86
  %387 = phi i32 [ %310, %312 ], [ %382, %381 ], [ -12, %304 ], [ -22, %86 ], [ -22, %237 ], [ -22, %267 ], [ -22, %276 ], [ -22, %192 ], [ -22, %87 ]
  %388 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 80
  %389 = load ptr, ptr %388, align 8
  tail call void @vfree(ptr noundef %389) #15
  %390 = getelementptr inbounds %struct.ubi_device, ptr %63, i32 0, i32 31
  %391 = load ptr, ptr %390, align 4
  tail call void @vfree(ptr noundef %391) #15
  tail call void @put_device(ptr noundef %66) #15
  br label %392

392:                                              ; preds = %386, %334, %60, %58, %52, %50, %37, %29, %22, %4
  %393 = phi i32 [ -17, %22 ], [ -22, %29 ], [ -23, %50 ], [ %387, %386 ], [ %61, %334 ], [ -17, %58 ], [ -22, %37 ], [ -22, %4 ], [ -22, %52 ], [ -12, %60 ]
  ret i32 %393
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dev_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  tail call void @kfree(ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_attach(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @autoresize(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ubi_volume_desc, align 8
  %4 = alloca %struct.ubi_vtbl_record, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store i64 0, ptr %3, align 8, !annotation !8
  %5 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubi_volume, ptr %6, i32 0, i32 9
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.54) #15
  br label %37

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.ubi_vtbl_record, ptr %15, i32 %1, i32 7
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, -2
  store i8 %18, ptr %16, align 1
  %19 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 10
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %4) #15
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr %struct.ubi_vtbl_record, ptr %23, i32 %1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(172) %4, ptr noundef align 1 dereferenceable(172) %24, i32 172, i1 false)
  %25 = call i32 @ubi_change_vtbl_record(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %4) #15
  br label %34

28:                                               ; preds = %13
  store ptr %6, ptr %3, align 8
  %29 = add i32 %20, %8
  %30 = call i32 @ubi_resize_volume(ptr noundef nonnull %3, i32 noundef %29) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef %1) #15
  br label %37

33:                                               ; preds = %22
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %1) #15
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %4) #15
  br label %37

34:                                               ; preds = %28, %27
  %35 = getelementptr inbounds %struct.ubi_volume, ptr %6, i32 0, i32 18
  %36 = load i32, ptr %7, align 8
  call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %1, ptr noundef %35, i32 noundef %8, i32 noundef %36) #15
  br label %37

37:                                               ; preds = %34, %33, %32, %12
  %38 = phi i32 [ 0, %12 ], [ 0, %34 ], [ %25, %33 ], [ %30, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uif_init(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef nonnull @.str.58, i32 noundef %5)
  %7 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = call i32 @alloc_chrdev_region(ptr noundef nonnull %2, i32 noundef 0, i32 noundef %9, ptr noundef %3) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.59) #15
  br label %70

13:                                               ; preds = %1
  %14 = load i32, ptr %2, align 4
  %15 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 1
  %16 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 1, i32 27
  store i32 %14, ptr %16, align 8
  %17 = and i32 %14, 1048575
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19, !prof !14

19:                                               ; preds = %13
  %20 = tail call ptr @llvm.thread.pointer() #15
  %21 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 52
  %22 = load i32, ptr %21, align 8
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.uif_init, i32 noundef 460, i32 noundef %22) #16
  call void @dump_stack() #16
  br label %24

24:                                               ; preds = %19, %13
  call void @cdev_init(ptr noundef %0, ptr noundef nonnull @ubi_cdev_operations) #15
  %25 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 1
  store ptr null, ptr %25, align 4
  %26 = load i32, ptr %4, align 8
  %27 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %15, ptr noundef nonnull @.str.58, i32 noundef %26) #15
  %28 = call i32 @cdev_device_add(ptr noundef %0, ptr noundef %15) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %24
  %31 = load i32, ptr %7, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %60, %30
  %34 = phi i32 [ %61, %60 ], [ %31, %30 ]
  %35 = phi i32 [ %62, %60 ], [ 0, %30 ]
  %36 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %33
  %40 = call i32 @ubi_add_volume(ptr noundef %0, ptr noundef nonnull %37) #15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, ptr %7, align 4
  br label %60

44:                                               ; preds = %39
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %35) #15
  %45 = load i32, ptr %7, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %55, %44
  %48 = phi i32 [ %56, %55 ], [ %45, %44 ]
  %49 = phi i32 [ %57, %55 ], [ 0, %44 ]
  %50 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  call void @ubi_free_volume(ptr noundef %0, ptr noundef nonnull %51) #15
  %54 = load i32, ptr %7, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = phi i32 [ %48, %47 ], [ %54, %53 ]
  %57 = add nuw nsw i32 %49, 1
  %58 = icmp slt i32 %57, %56
  br i1 %58, label %47, label %59

59:                                               ; preds = %55, %44
  call void @cdev_device_del(ptr noundef %0, ptr noundef %15) #15
  br label %64

60:                                               ; preds = %42, %33
  %61 = phi i32 [ %43, %42 ], [ %34, %33 ]
  %62 = add nuw nsw i32 %35, 1
  %63 = icmp slt i32 %62, %61
  br i1 %63, label %33, label %70

64:                                               ; preds = %59, %24
  %65 = phi i32 [ %28, %24 ], [ %40, %59 ]
  %66 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = load i32, ptr %7, align 4
  %69 = add i32 %68, 1
  call void @unregister_chrdev_region(i32 noundef %67, i32 noundef %69) #15
  call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.61, ptr noundef %3, i32 noundef %65) #15
  br label %70

70:                                               ; preds = %64, %60, %30, %12
  %71 = phi i32 [ %10, %12 ], [ %65, %64 ], [ 0, %30 ], [ 0, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_debugfs_init_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_thread(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_debugfs_exit_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uif_close(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %13, %1
  %6 = phi i32 [ %14, %13 ], [ %3, %1 ]
  %7 = phi i32 [ %15, %13 ], [ 0, %1 ]
  %8 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 5, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  tail call void @ubi_free_volume(ptr noundef %0, ptr noundef nonnull %9) #15
  %12 = load i32, ptr %2, align 4
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %6, %5 ], [ %12, %11 ]
  %15 = add nuw nsw i32 %7, 1
  %16 = icmp slt i32 %15, %14
  br i1 %16, label %5, label %17

17:                                               ; preds = %13, %1
  %18 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %0, ptr noundef %18) #15
  %19 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %2, align 4
  %22 = add i32 %21, 1
  tail call void @unregister_chrdev_region(i32 noundef %20, i32 noundef %22) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_wl_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_detach_mtd_dev(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %0, 31
  br i1 %3, label %108, label %4

4:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #15
  %5 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %0
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %105, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18, !prof !9

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #15
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 52
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ubi_get_device, i32 noundef 261, i32 noundef %15) #16
  tail call void @dump_stack() #16
  %17 = load i32, ptr %9, align 4
  br label %18

18:                                               ; preds = %12, %8
  %19 = phi i32 [ %17, %12 ], [ %10, %8 ]
  %20 = add i32 %19, 1
  store i32 %20, ptr %9, align 4
  %21 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 1
  %22 = tail call ptr @get_device(ptr noundef %21) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %23 = load i16, ptr @ubi_devices_lock, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr @ubi_devices_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #15
  tail call void @put_device(ptr noundef %21) #15
  %25 = load i32, ptr %9, align 4
  %26 = add i32 %25, -1
  store i32 %26, ptr %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %18
  %29 = icmp eq i32 %1, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %31 = load i16, ptr @ubi_devices_lock, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr @ubi_devices_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br label %108

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 3
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef nonnull %6, ptr noundef nonnull @.str.29, ptr noundef %34, i32 noundef %26) #15
  br label %35

35:                                               ; preds = %33, %18
  store ptr null, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %36 = load i16, ptr @ubi_devices_lock, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr @ubi_devices_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  %38 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, %0
  br i1 %40, label %46, label %41, !prof !14

41:                                               ; preds = %35
  %42 = tail call ptr @llvm.thread.pointer() #15
  %43 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 52
  %44 = load i32, ptr %43, align 8
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ubi_detach_mtd_dev, i32 noundef 1087, i32 noundef %44) #16
  tail call void @dump_stack() #16
  br label %46

46:                                               ; preds = %41, %35
  %47 = tail call i32 @ubi_notify_all(ptr noundef nonnull %6, i32 noundef 1, ptr noundef null)
  %48 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 79
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.mtd_info, ptr %49, i32 0, i32 14
  %51 = load i32, ptr %50, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %6, ptr noundef nonnull @.str.30, i32 noundef %51) #15
  %52 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 56
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %46
  %56 = tail call i32 @kthread_stop(ptr noundef nonnull %53) #15
  br label %57

57:                                               ; preds = %55, %46
  tail call void @ubi_debugfs_exit_dev(ptr noundef nonnull %6) #15
  %58 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 15
  %59 = load i32, ptr %58, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %69, %57
  %62 = phi i32 [ %70, %69 ], [ %59, %57 ]
  %63 = phi i32 [ %71, %69 ], [ 0, %57 ]
  %64 = getelementptr %struct.ubi_device, ptr %6, i32 0, i32 5, i32 %63
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  tail call void @ubi_free_volume(ptr noundef %6, ptr noundef nonnull %65) #15
  %68 = load i32, ptr %58, align 4
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi i32 [ %62, %61 ], [ %68, %67 ]
  %71 = add nuw nsw i32 %63, 1
  %72 = icmp slt i32 %71, %70
  br i1 %72, label %61, label %73

73:                                               ; preds = %69, %57
  tail call void @cdev_device_del(ptr noundef %6, ptr noundef %21) #15
  %74 = getelementptr inbounds %struct.cdev, ptr %6, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %58, align 4
  %77 = add i32 %76, 1
  tail call void @unregister_chrdev_region(i32 noundef %75, i32 noundef %77) #15
  tail call void @ubi_wl_close(ptr noundef nonnull %6) #15
  %78 = load i32, ptr %58, align 4
  %79 = icmp eq i32 %78, 2147483647
  br i1 %79, label %94, label %80

80:                                               ; preds = %89, %73
  %81 = phi i32 [ %90, %89 ], [ %78, %73 ]
  %82 = phi i32 [ %91, %89 ], [ %78, %73 ]
  %83 = getelementptr %struct.ubi_device, ptr %6, i32 0, i32 5, i32 %82
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  tail call void @ubi_eba_replace_table(ptr noundef nonnull %84, ptr noundef null) #15
  %87 = load ptr, ptr %83, align 4
  tail call void @kfree(ptr noundef %87) #15
  store ptr null, ptr %83, align 4
  %88 = load i32, ptr %58, align 4
  br label %89

89:                                               ; preds = %86, %80
  %90 = phi i32 [ %81, %80 ], [ %88, %86 ]
  %91 = add nsw i32 %82, 1
  %92 = add i32 %90, 1
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %80, label %94

94:                                               ; preds = %89, %73
  %95 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 17
  %96 = load ptr, ptr %95, align 4
  tail call void @vfree(ptr noundef %96) #15
  %97 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 80
  %98 = load ptr, ptr %97, align 8
  tail call void @vfree(ptr noundef %98) #15
  %99 = getelementptr inbounds %struct.ubi_device, ptr %6, i32 0, i32 31
  %100 = load ptr, ptr %99, align 4
  tail call void @vfree(ptr noundef %100) #15
  %101 = load ptr, ptr %48, align 4
  %102 = getelementptr inbounds %struct.mtd_info, ptr %101, i32 0, i32 14
  %103 = load i32, ptr %102, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef nonnull %6, ptr noundef nonnull @.str.31, i32 noundef %103) #15
  %104 = load ptr, ptr %48, align 4
  tail call void @put_mtd_device(ptr noundef %104) #15
  tail call void @put_device(ptr noundef %21) #15
  br label %108

105:                                              ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %106 = load i16, ptr @ubi_devices_lock, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr @ubi_devices_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br label %108

108:                                              ; preds = %105, %94, %30, %2
  %109 = phi i32 [ 0, %94 ], [ -16, %30 ], [ -22, %2 ], [ -22, %105 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_mtd_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ubi_init() #7 section ".init.text" {
  %1 = load i32, ptr @mtd_devs, align 4
  %2 = icmp sgt i32 %1, 32
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef 32) #16
  br label %55

5:                                                ; preds = %0
  %6 = tail call i32 @__class_register(ptr noundef nonnull @ubi_class, ptr noundef nonnull @ubi_init.__key) #15
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %55, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @misc_register(ptr noundef nonnull @ubi_ctrl_cdev) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #16
  br label %52

13:                                               ; preds = %8
  %14 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.64, i32 noundef 20, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  store ptr %14, ptr @ubi_wl_entry_slab, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %50, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @ubi_debugfs_init() #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load i32, ptr @mtd_devs, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %44, %19
  %23 = phi i32 [ %45, %44 ], [ 0, %19 ]
  %24 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %23
  %25 = tail call i32 @__cond_resched() #15
  %26 = tail call fastcc ptr @open_mtd_device(ptr noundef %24) #20
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = ptrtoint ptr %26 to i32
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %24, i32 noundef %29) #16
  br label %44

31:                                               ; preds = %22
  tail call void @mutex_lock(ptr noundef nonnull @ubi_devices_mutex) #15
  %32 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %23, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %23, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %23, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @ubi_attach_mtd_dev(ptr noundef %26, i32 noundef %33, i32 noundef %35, i32 noundef %37)
  tail call void @mutex_unlock(ptr noundef nonnull @ubi_devices_mutex) #15
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.mtd_info, ptr %26, i32 0, i32 14
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %42) #16
  tail call void @put_mtd_device(ptr noundef %26) #15
  br label %44

44:                                               ; preds = %40, %31, %28
  %45 = add nuw nsw i32 %23, 1
  %46 = load i32, ptr @mtd_devs, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %22, label %55

48:                                               ; preds = %16
  %49 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %49) #15
  br label %50

50:                                               ; preds = %48, %13
  %51 = phi i32 [ %17, %48 ], [ -12, %13 ]
  tail call void @misc_deregister(ptr noundef nonnull @ubi_ctrl_cdev) #15
  br label %52

52:                                               ; preds = %50, %11
  %53 = phi i32 [ %9, %11 ], [ %51, %50 ]
  tail call void @class_unregister(ptr noundef nonnull @ubi_class) #15
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %53) #16
  br label %55

55:                                               ; preds = %52, %44, %19, %5, %3
  %56 = phi i32 [ -22, %3 ], [ %53, %52 ], [ %6, %5 ], [ 0, %19 ], [ 0, %44 ]
  ret i32 %56
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ubi_exit() #7 section ".exit.text" {
  br label %1

1:                                                ; preds = %11, %0
  %2 = phi i32 [ 0, %0 ], [ %12, %11 ]
  %3 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @ubi_devices_mutex) #15
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.ubi_device, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @ubi_detach_mtd_dev(i32 noundef %9, i32 noundef 1)
  tail call void @mutex_unlock(ptr noundef nonnull @ubi_devices_mutex) #15
  br label %11

11:                                               ; preds = %6, %1
  %12 = add nuw nsw i32 %2, 1
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %14, label %1

14:                                               ; preds = %11
  tail call void @ubi_debugfs_exit() #15
  %15 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %15) #15
  tail call void @misc_deregister(ptr noundef nonnull @ubi_ctrl_cdev) #15
  tail call void @class_unregister(ptr noundef nonnull @ubi_class) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_debugfs_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @version_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #8 {
  %4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef 1)
  ret i32 %4
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_eba_replace_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dev_attribute_show(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 472
  %5 = load i32, ptr %4, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #15
  %6 = getelementptr [32 x ptr], ptr @ubi_devices, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %97, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ubi_device, ptr %7, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19, !prof !9

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #15
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 52
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ubi_get_device, i32 noundef 261, i32 noundef %16) #16
  tail call void @dump_stack() #16
  %18 = load i32, ptr %10, align 4
  br label %19

19:                                               ; preds = %13, %9
  %20 = phi i32 [ %18, %13 ], [ %11, %9 ]
  %21 = add i32 %20, 1
  store i32 %21, ptr %10, align 4
  %22 = getelementptr inbounds %struct.ubi_device, ptr %7, i32 0, i32 1
  %23 = tail call ptr @get_device(ptr noundef %22) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %24 = load i16, ptr @ubi_devices_lock, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr @ubi_devices_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  %26 = icmp eq ptr %1, @dev_eraseblock_size
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.ubi_device, ptr %7, i32 0, i32 70
  %29 = load i32, ptr %28, align 8
  br label %88

30:                                               ; preds = %19
  %31 = icmp eq ptr %1, @dev_avail_eraseblocks
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.ubi_device, ptr %7, i32 0, i32 10
  %34 = load i32, ptr %33, align 8
  br label %88

35:                                               ; preds = %30
  %36 = icmp eq ptr %1, @dev_total_eraseblocks
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.ubi_device, ptr %7, i32 0, i32 63
  %39 = load i32, ptr %38, align 4
  br label %88

40:                                               ; preds = %35
  %41 = icmp eq ptr %1, @dev_volumes_count
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.ubi_device, ptr %7, i32 0, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, -1
  br label %88

46:                                               ; preds = %40
  %47 = icmp eq ptr %1, @dev_max_ec
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.ubi_device, ptr %7, i32 0, i32 19
  %50 = load i32, ptr %49, align 4
  br label %88

51:                                               ; preds = %46
  %52 = icmp eq ptr %1, @dev_reserved_for_bad
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.ubi_device, ptr %7, i32 0, i32 11
  %55 = load i32, ptr %54, align 4
  br label %88

56:                                               ; preds = %51
  %57 = icmp eq ptr %1, @dev_bad_peb_count
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.ubi_device, ptr %7, i32 0, i32 62
  %60 = load i32, ptr %59, align 8
  br label %88

61:                                               ; preds = %56
  %62 = icmp eq ptr %1, @dev_max_vol_count
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.ubi_device, ptr %7, i32 0, i32 15
  %65 = load i32, ptr %64, align 4
  br label %88

66:                                               ; preds = %61
  %67 = icmp eq ptr %1, @dev_min_io_size
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.ubi_device, ptr %7, i32 0, i32 67
  %70 = load i32, ptr %69, align 4
  br label %88

71:                                               ; preds = %66
  %72 = icmp eq ptr %1, @dev_bgt_enabled
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.ubi_device, ptr %7, i32 0, i32 57
  %75 = load i32, ptr %74, align 4
  br label %88

76:                                               ; preds = %71
  %77 = icmp eq ptr %1, @dev_mtd_num
  br i1 %77, label %78, label %83

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.ubi_device, ptr %7, i32 0, i32 79
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.mtd_info, ptr %80, i32 0, i32 14
  %82 = load i32, ptr %81, align 4
  br label %88

83:                                               ; preds = %76
  %84 = icmp eq ptr %1, @dev_ro_mode
  br i1 %84, label %85, label %91

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.ubi_device, ptr %7, i32 0, i32 69
  %87 = load i32, ptr %86, align 4
  br label %88

88:                                               ; preds = %85, %78, %73, %68, %63, %58, %53, %48, %42, %37, %32, %27
  %89 = phi i32 [ %34, %32 ], [ %45, %42 ], [ %55, %53 ], [ %65, %63 ], [ %75, %73 ], [ %87, %85 ], [ %82, %78 ], [ %70, %68 ], [ %60, %58 ], [ %50, %48 ], [ %39, %37 ], [ %29, %27 ]
  %90 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = phi i32 [ -22, %83 ], [ %90, %88 ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @ubi_devices_lock) #15
  %93 = load i32, ptr %10, align 4
  %94 = add i32 %93, -1
  store i32 %94, ptr %10, align 4
  tail call void @put_device(ptr noundef %22) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %95 = load i16, ptr @ubi_devices_lock, align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr @ubi_devices_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br label %100

97:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !10
  %98 = load i16, ptr @ubi_devices_lock, align 4
  %99 = add i16 %98, 1
  store i16 %99, ptr @ubi_devices_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !13
  br label %100

100:                                              ; preds = %97, %91
  %101 = phi i32 [ %92, %91 ], [ -19, %97 ]
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mtd_get_device_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_change_vtbl_record(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_resize_volume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_add_volume(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_free_volume(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_debugfs_init() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @open_mtd_device(ptr noundef %0) unnamed_addr #7 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = call i32 @simple_strtoul(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0) #15
  %4 = load ptr, ptr %2, align 4
  %5 = load i8, ptr %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = icmp eq ptr %4, %0
  %8 = or i1 %7, %6
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = call ptr @get_mtd_device_nm(ptr noundef %0) #15
  %11 = icmp eq ptr %10, inttoptr (i32 -19 to ptr)
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = call fastcc ptr @open_mtd_by_chdev(ptr noundef %0) #20
  br label %16

14:                                               ; preds = %1
  %15 = call ptr @get_mtd_device(ptr noundef null, i32 noundef %3) #15
  br label %16

16:                                               ; preds = %14, %12, %9
  %17 = phi ptr [ %13, %12 ], [ %10, %9 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device_nm(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @open_mtd_by_chdev(ptr noundef %0) unnamed_addr #7 section ".init.text" {
  %2 = alloca %struct.path, align 8
  %3 = alloca %struct.kstat, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i32 144, i1 false), !annotation !8
  %4 = call i32 @kern_path(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = inttoptr i32 %4 to ptr
  br label %30

8:                                                ; preds = %1
  %9 = call i32 @vfs_getattr(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #15
  call void @path_put(ptr noundef nonnull %2) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = inttoptr i32 %9 to ptr
  br label %30

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -1048576
  %17 = icmp eq i32 %16, 94371840
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, -4096
  %22 = icmp eq i16 %21, 8192
  %23 = and i32 %15, 1
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = lshr i32 %15, 1
  %28 = and i32 %27, 524287
  %29 = call ptr @get_mtd_device(ptr noundef null, i32 noundef %28) #15
  br label %30

30:                                               ; preds = %26, %18, %13, %11, %6
  %31 = phi ptr [ %7, %6 ], [ %12, %11 ], [ %29, %26 ], [ inttoptr (i32 -22 to ptr), %18 ], [ inttoptr (i32 -22 to ptr), %13 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret ptr %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ubi_mtd_param_parse(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca [64 x i8], align 1
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store ptr %4, ptr %5, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %82, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @mtd_devs, align 4
  %9 = icmp eq i32 %8, 32
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef 32) #16
  br label %82

12:                                               ; preds = %7
  %13 = call i32 @strnlen(ptr noundef nonnull %0, i32 noundef 64)
  switch i32 %13, label %18 [
    i32 64, label %14
    i32 0, label %16
  ]

14:                                               ; preds = %12
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull %0, i32 noundef 64) #16
  br label %82

16:                                               ; preds = %12
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #16
  br label %82

18:                                               ; preds = %12
  %19 = call ptr @strcpy(ptr noundef nonnull %4, ptr noundef nonnull %0)
  %20 = add i32 %13, -1
  %21 = getelementptr [64 x i8], ptr %4, i32 0, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 10
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i8 0, ptr %21, align 1
  br label %25

25:                                               ; preds = %24, %18
  %26 = call ptr @strsep(ptr noundef nonnull %5, ptr noundef nonnull @.str.74) #15
  %27 = call ptr @strsep(ptr noundef nonnull %5, ptr noundef nonnull @.str.74) #15
  %28 = call ptr @strsep(ptr noundef nonnull %5, ptr noundef nonnull @.str.74) #15
  %29 = call ptr @strsep(ptr noundef nonnull %5, ptr noundef nonnull @.str.74) #15
  %30 = load ptr, ptr %5, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull %0) #16
  br label %82

34:                                               ; preds = %25
  %35 = load i32, ptr @mtd_devs, align 4
  %36 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %35
  %37 = call ptr @strcpy(ptr noundef %36, ptr noundef %26)
  %38 = icmp eq ptr %27, null
  br i1 %38, label %62, label %39

39:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store ptr null, ptr %3, align 4, !annotation !8
  %40 = call i32 @simple_strtoul(ptr noundef nonnull %27, ptr noundef nonnull %3, i32 noundef 0) #15
  %41 = load ptr, ptr %3, align 4
  %42 = icmp eq ptr %41, %27
  %43 = icmp ugt i32 %40, 2147483646
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %39
  %46 = load i8, ptr %41, align 1
  switch i8 %46, label %54 [
    i8 71, label %49
    i8 77, label %51
    i8 75, label %57
    i8 0, label %47
  ]

47:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %48 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %35, i32 2
  store i32 %40, ptr %48, align 4
  br label %62

49:                                               ; preds = %45
  %50 = shl i32 %40, 10
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i32 [ %40, %45 ], [ %50, %49 ]
  %53 = shl i32 %52, 10
  br label %57

54:                                               ; preds = %45, %39
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull %27) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %56 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %35, i32 2
  store i32 -22, ptr %56, align 4
  br label %82

57:                                               ; preds = %51, %45
  %58 = phi i32 [ %40, %45 ], [ %53, %51 ]
  %59 = shl i32 %58, 10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %60 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %35, i32 2
  store i32 %59, ptr %60, align 4
  %61 = icmp slt i32 %59, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %57, %47, %34
  %63 = icmp eq ptr %28, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %62
  %65 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %35, i32 3
  %66 = call i32 @kstrtoint(ptr noundef nonnull %28, i32 noundef 10, ptr noundef %65) #15
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull %28) #16
  br label %82

70:                                               ; preds = %64, %62
  %71 = icmp eq ptr %29, null
  %72 = getelementptr [32 x %struct.mtd_dev_param], ptr @mtd_dev_param, i32 0, i32 %35, i32 1
  br i1 %71, label %78, label %73

73:                                               ; preds = %70
  %74 = call i32 @kstrtoint(ptr noundef nonnull %29, i32 noundef 10, ptr noundef %72) #15
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull %29) #16
  br label %82

78:                                               ; preds = %70
  store i32 -1, ptr %72, align 4
  br label %79

79:                                               ; preds = %78, %73
  %80 = load i32, ptr @mtd_devs, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr @mtd_devs, align 4
  br label %82

82:                                               ; preds = %79, %76, %68, %57, %54, %32, %16, %14, %10, %2
  %83 = phi i32 [ -22, %10 ], [ -22, %14 ], [ 0, %16 ], [ -22, %32 ], [ 0, %79 ], [ -22, %2 ], [ %59, %57 ], [ -22, %68 ], [ -22, %76 ], [ -22, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret i32 %83
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148967750}
!11 = !{i64 2148963574}
!12 = !{i64 2148963649, i64 2148963676, i64 2148963723, i64 2148963745, i64 2148963773, i64 2148963793}
!13 = !{i64 2148990753}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2147931627, i64 2147931907, i64 2147932241, i64 2147932575}
!16 = !{i32 0, i32 33}
