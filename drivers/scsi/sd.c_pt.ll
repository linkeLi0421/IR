; ModuleID = '/llk/IR/drivers/scsi/sd.c_pt.bc'
source_filename = "../drivers/scsi/sd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scsi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pr_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.scsi_disk = type <{ ptr, ptr, %struct.device, ptr, ptr, %struct.atomic_t, [4 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i24, [2 x i8] }>
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.lockdep_map = type {}
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.34, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.34 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scsi_mode_data = type { i32, i16, i8, i8, i8, i8 }
%struct.blk_independent_access_ranges = type { %struct.kobject, i8, i32, [0 x %struct.blk_independent_access_range] }
%struct.blk_independent_access_range = type { %struct.kobject, ptr, i64, i64 }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.scsi_vpd = type { %struct.callback_head, i32, [0 x i8] }

@__UNIQUE_ID_author278 = internal constant [29 x i8] c"sd_mod.author=Eric Youngdale\00", section ".modinfo", align 1
@__UNIQUE_ID_description279 = internal constant [41 x i8] c"sd_mod.description=SCSI disk (sd) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file280 = internal constant [32 x i8] c"sd_mod.file=drivers/scsi/sd_mod\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [19 x i8] c"sd_mod.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias282 = internal constant [29 x i8] c"sd_mod.alias=block-major-8-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias283 = internal constant [30 x i8] c"sd_mod.alias=block-major-65-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias284 = internal constant [30 x i8] c"sd_mod.alias=block-major-66-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias285 = internal constant [30 x i8] c"sd_mod.alias=block-major-67-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias286 = internal constant [30 x i8] c"sd_mod.alias=block-major-68-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias287 = internal constant [30 x i8] c"sd_mod.alias=block-major-69-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias288 = internal constant [30 x i8] c"sd_mod.alias=block-major-70-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias289 = internal constant [30 x i8] c"sd_mod.alias=block-major-71-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias290 = internal constant [31 x i8] c"sd_mod.alias=block-major-128-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias291 = internal constant [31 x i8] c"sd_mod.alias=block-major-129-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias292 = internal constant [31 x i8] c"sd_mod.alias=block-major-130-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [31 x i8] c"sd_mod.alias=block-major-131-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [31 x i8] c"sd_mod.alias=block-major-132-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [31 x i8] c"sd_mod.alias=block-major-133-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias296 = internal constant [31 x i8] c"sd_mod.alias=block-major-134-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [31 x i8] c"sd_mod.alias=block-major-135-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [26 x i8] c"sd_mod.alias=scsi:t-0x00*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [26 x i8] c"sd_mod.alias=scsi:t-0x07*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias300 = internal constant [26 x i8] c"sd_mod.alias=scsi:t-0x0e*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias301 = internal constant [26 x i8] c"sd_mod.alias=scsi:t-0x14*\00", section ".modinfo", align 1
@sd_template = internal global %struct.scsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr null, ptr null, ptr @sd_probe, ptr null, ptr @sd_remove, ptr @sd_shutdown, ptr null, ptr null, ptr null, ptr null, ptr @sd_pm_ops, ptr null, ptr null }, ptr @sd_rescan, ptr @sd_init_command, ptr @sd_uninit_command, ptr @sd_done, ptr @sd_eh_action, ptr @sd_eh_reset }, align 4
@sd_cdb_pool = internal unnamed_addr global ptr null, align 4
@sd_page_pool = internal unnamed_addr global ptr null, align 4
@sd_cdb_cache = internal unnamed_addr global ptr null, align 4
@sd_disk_class = internal global %struct.class { ptr @.str.91, ptr null, ptr null, ptr @sd_disk_groups, ptr null, ptr null, ptr null, ptr null, ptr @scsi_disk_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@__initcall__kmod_sd_mod__337_3942_init_sd6 = internal global ptr @init_sd, section ".initcall6.init", align 4
@__exitcall_exit_sd = internal global ptr @exit_sd, section ".exitcall.exit", align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"DRIVER_OK\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"%s: Result: hostbyte=0x%02x driverbyte=%s\0A\00", align 1
@sd_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sd_suspend_system, ptr @sd_resume_system, ptr null, ptr null, ptr @sd_suspend_system, ptr @sd_resume_system, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sd_suspend_runtime, ptr @sd_resume_runtime, ptr null }, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Unsupported ZBC host-managed device.\0A\00", align 1
@sd_bio_compl_lkclass = internal global %struct.lock_class_key zeroinitializer, align 1
@sd_index_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"sd_probe: memory exhausted.\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"SCSI disk (sd) name length exceeded.\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@sd_fops = internal constant %struct.block_device_operations { ptr null, ptr @sd_open, ptr @sd_release, ptr null, ptr @sd_ioctl, ptr null, ptr @sd_check_events, ptr @sd_unlock_native_capacity, ptr @sd_getgeo, ptr null, ptr null, ptr null, ptr null, ptr @sd_get_unique_id, ptr null, ptr @sd_pr_ops, ptr null }, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"\015\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Attached SCSI %sdisk\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"removable \00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@sd_pr_ops = internal constant %struct.pr_ops { ptr @sd_pr_register, ptr @sd_pr_reserve, ptr @sd_pr_release, ptr @sd_pr_preempt, ptr @sd_pr_clear }, align 4
@sd_ref_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sd_ref_mutex, i64 12), ptr getelementptr (i8, ptr @sd_ref_mutex, i64 12) } }, align 4
@.str.16 = private unnamed_addr constant [23 x i8] c"PR command failed: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"sd_revalidate_disk: Memory allocation failure.\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Media removed, stopped polling\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Test Unit Ready failed\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Spinning up disk...\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.21 = private unnamed_addr constant [4 x i8] c"\01c.\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Unit Not Ready\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"\01cready\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"\01cnot responding...\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"Very big device. Trying to use READ CAPACITY(16).\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"Using 0xffffffff as device size\0A\00", align 1
@.str.27 = private unnamed_addr constant [58 x i8] c"Adjusting the sector count from its reported value: %llu\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"Sector size 0 reported, assuming 512.\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"Unsupported sector size %d.\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"Read Capacity(16) failed\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"physical block alignment offset: %u\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"Sense not available.\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.34 = private unnamed_addr constant [64 x i8] c"formatted with unsupported protection type %u. Disabling disk!\0A\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"Enabling DIF Type %u protection\0A\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"Disabling DIF Type %u protection\0A\00", align 1
@scsi_host_dif_capable.cap = internal unnamed_addr constant [4 x i8] c"\00\01\02\04", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Read Capacity(10) failed\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"Host-aware SMR disk used as regular disk\0A\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"Drive-managed SMR disk\0A\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"%llu %d-byte logical blocks: (%s/%s)\0A\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"%u-byte physical blocks\0A\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"Assuming Write Enabled\0A\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"Test WP failed, assume Write Enabled\0A\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"Write Protect is %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"Mode Sense: %4ph\0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"Missing header in MODE_SENSE response\0A\00", align 1
@.str.53 = private unnamed_addr constant [52 x i8] c"Truncating mode parameter data from %d to %d bytes\0A\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"Incomplete mode parameter data\0A\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"No Caching mode page found\0A\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"Disabling FUA\0A\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"Uses READ/WRITE(6), disabling FUA\0A\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"Write cache: %s, read cache: %s, %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"supports DPO and FUA\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"doesn't support DPO or FUA\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"Cache data unavailable\0A\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"Asking for cache data failed\0A\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"Assuming drive cache: write back\0A\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"Assuming drive cache: write through\0A\00", align 1
@.str.67 = private unnamed_addr constant [49 x i8] c"getting Control mode page failed, assume no ATO\0A\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"ATO Got wrong page\0A\00", align 1
@.str.69 = private unnamed_addr constant [48 x i8] c"Invalid Concurrent Positioning Ranges VPD page\0A\00", align 1
@.str.70 = private unnamed_addr constant [45 x i8] c"Invalid Concurrent Positioning Range number\0A\00", align 1
@.str.71 = private unnamed_addr constant [34 x i8] c"%u concurrent positioning ranges\0A\00", align 1
@.str.72 = private unnamed_addr constant [71 x i8] c"Optimal transfer size %u logical blocks > dev_max (%u logical blocks)\0A\00", align 1
@.str.73 = private unnamed_addr constant [79 x i8] c"Optimal transfer size %u logical blocks > sd driver limit (%u logical blocks)\0A\00", align 1
@.str.74 = private unnamed_addr constant [55 x i8] c"Optimal transfer size %u bytes < PAGE_SIZE (%u bytes)\0A\00", align 1
@.str.75 = private unnamed_addr constant [81 x i8] c"Optimal transfer size %u bytes not a multiple of physical block size (%u bytes)\0A\00", align 1
@.str.76 = private unnamed_addr constant [32 x i8] c"Optimal transfer size %u bytes\0A\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"Synchronizing SCSI cache\0A\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.78 = private unnamed_addr constant [15 x i8] c"Stopping disk\0A\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"Synchronize Cache(10) failed\00", align 1
@__const.sd_start_stop_device.cmd = private unnamed_addr constant [6 x i8] c"\1B\00\00\00\00\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"Start/Stop Unit failed\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"Starting disk\0A\00", align 1
@sd_resume_runtime.cmd = internal constant <{ i8, [9 x i8] }> <{ i8 3, [9 x i8] zeroinitializer }>, align 1
@.str.82 = private unnamed_addr constant [28 x i8] c"Failed to clear sense data\0A\00", align 1
@sd_init_command.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"drivers/scsi/sd.c\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@bvec_virt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"include/linux/bvec.h\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.85 = private unnamed_addr constant [27 x i8] c"device offline or changed\0A\00", align 1
@.str.86 = private unnamed_addr constant [29 x i8] c"access beyond end of device\0A\00", align 1
@.str.87 = private unnamed_addr constant [47 x i8] c"request not aligned to the logical block size\0A\00", align 1
@sd_prot_op.ops = internal unnamed_addr constant [8 x i32] [i32 0, i32 3, i32 1, i32 5, i32 0, i32 4, i32 2, i32 6], align 4
@sd_prot_flag_mask.flag_mask = internal unnamed_addr constant [7 x i32] [i32 0, i32 24, i32 30, i32 15, i32 9, i32 31, i32 31], align 4
@sd_setup_rw6_cmnd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.88 = private unnamed_addr constant [34 x i8] c"FUA write on READ/WRITE(6) drive\0A\00", align 1
@.str.89 = private unnamed_addr constant [55 x i8] c"Unaligned partial completion (resid=%u, sector_sz=%u)\0A\00", align 1
@.str.90 = private unnamed_addr constant [48 x i8] c"Medium access timeout failure. Offlining disk!\0A\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"scsi_disk\00", align 1
@sd_disk_groups = internal global [2 x ptr] [ptr @sd_disk_group, ptr null], align 4
@sd_disk_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sd_disk_attrs, ptr null }, align 4
@sd_disk_attrs = internal global [15 x ptr] [ptr @dev_attr_cache_type, ptr @dev_attr_FUA, ptr @dev_attr_allow_restart, ptr @dev_attr_manage_start_stop, ptr @dev_attr_protection_type, ptr @dev_attr_protection_mode, ptr @dev_attr_app_tag_own, ptr @dev_attr_thin_provisioning, ptr @dev_attr_provisioning_mode, ptr @dev_attr_zeroing_mode, ptr @dev_attr_max_write_same_blocks, ptr @dev_attr_max_medium_access_timeouts, ptr @dev_attr_zoned_cap, ptr @dev_attr_max_retries, ptr null], align 4
@dev_attr_cache_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420 }, ptr @cache_type_show, ptr @cache_type_store }, align 4
@dev_attr_FUA = internal global %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292 }, ptr @FUA_show, ptr null }, align 4
@dev_attr_allow_restart = internal global %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 420 }, ptr @allow_restart_show, ptr @allow_restart_store }, align 4
@dev_attr_manage_start_stop = internal global %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420 }, ptr @manage_start_stop_show, ptr @manage_start_stop_store }, align 4
@dev_attr_protection_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 420 }, ptr @protection_type_show, ptr @protection_type_store }, align 4
@dev_attr_protection_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292 }, ptr @protection_mode_show, ptr null }, align 4
@dev_attr_app_tag_own = internal global %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292 }, ptr @app_tag_own_show, ptr null }, align 4
@dev_attr_thin_provisioning = internal global %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 292 }, ptr @thin_provisioning_show, ptr null }, align 4
@dev_attr_provisioning_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 420 }, ptr @provisioning_mode_show, ptr @provisioning_mode_store }, align 4
@dev_attr_zeroing_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 420 }, ptr @zeroing_mode_show, ptr @zeroing_mode_store }, align 4
@dev_attr_max_write_same_blocks = internal global %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 420 }, ptr @max_write_same_blocks_show, ptr @max_write_same_blocks_store }, align 4
@dev_attr_max_medium_access_timeouts = internal global %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 420 }, ptr @max_medium_access_timeouts_show, ptr @max_medium_access_timeouts_store }, align 4
@dev_attr_zoned_cap = internal global %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 292 }, ptr @zoned_cap_show, ptr null }, align 4
@dev_attr_max_retries = internal global %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 420 }, ptr @max_retries_show, ptr @max_retries_store }, align 4
@.str.92 = private unnamed_addr constant [11 x i8] c"cache_type\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@sd_cache_types = internal global [4 x ptr] [ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97], align 4
@.str.94 = private unnamed_addr constant [14 x i8] c"write through\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"write back\00", align 1
@.str.97 = private unnamed_addr constant [27 x i8] c"write back, no read (daft)\00", align 1
@cache_type_store.temp = internal constant [11 x i8] c"temporary \00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"FUA\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"allow_restart\00", align 1
@.str.101 = private unnamed_addr constant [18 x i8] c"manage_start_stop\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"protection_type\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"protection_mode\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"%s%u\0A\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"dif\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"app_tag_own\00", align 1
@.str.109 = private unnamed_addr constant [18 x i8] c"thin_provisioning\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"provisioning_mode\00", align 1
@lbp_mode = internal global [6 x ptr] [ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.60], align 4
@.str.111 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"writesame_16\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"writesame_10\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"writesame_zero\00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"zeroing_mode\00", align 1
@zeroing_mode = internal global [4 x ptr] [ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], align 4
@.str.117 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"writesame\00", align 1
@.str.119 = private unnamed_addr constant [19 x i8] c"writesame_16_unmap\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c"writesame_10_unmap\00", align 1
@.str.121 = private unnamed_addr constant [22 x i8] c"max_write_same_blocks\00", align 1
@.str.122 = private unnamed_addr constant [27 x i8] c"max_medium_access_timeouts\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"zoned_cap\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"host-managed\0A\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"host-aware\0A\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"drive-managed\0A\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"max_retries\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.129 = private unnamed_addr constant [39 x i8] c"max_retries must be between -1 and %d\0A\00", align 1
@init_sd.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"sd_ext_cdb\00", align 1
@.str.131 = private unnamed_addr constant [37 x i8] c"\013sd: can't init extended cdb cache\0A\00", align 1
@.str.132 = private unnamed_addr constant [36 x i8] c"\013sd: can't init extended cdb pool\0A\00", align 1
@.str.133 = private unnamed_addr constant [36 x i8] c"\013sd: can't init discard page pool\0A\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias282, ptr @__UNIQUE_ID_alias283, ptr @__UNIQUE_ID_alias284, ptr @__UNIQUE_ID_alias285, ptr @__UNIQUE_ID_alias286, ptr @__UNIQUE_ID_alias287, ptr @__UNIQUE_ID_alias288, ptr @__UNIQUE_ID_alias289, ptr @__UNIQUE_ID_alias290, ptr @__UNIQUE_ID_alias291, ptr @__UNIQUE_ID_alias292, ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_alias301, ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_file280, ptr @__UNIQUE_ID_license281, ptr @__exitcall_exit_sd, ptr @__initcall__kmod_sd_mod__337_3942_init_sd6, ptr @exit_sd], section "llvm.metadata"
@switch.table.sd_probe = private unnamed_addr constant [16 x i32] [i32 8, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135], align 4
@switch.table.sd_pr_preempt = private unnamed_addr constant [6 x i8] c"\01\03\05\06\07\08", align 1
@switch.table.sd_sync_cache = private unnamed_addr constant [13 x i32] [i32 0, i32 -16, i32 -5, i32 0, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -16, i32 -16, i32 -16], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_sd() #0 section ".exit.text" {
  tail call void @driver_unregister(ptr noundef nonnull @sd_template) #17
  %1 = load ptr, ptr @sd_cdb_pool, align 4
  tail call void @mempool_destroy(ptr noundef %1) #17
  %2 = load ptr, ptr @sd_page_pool, align 4
  tail call void @mempool_destroy(ptr noundef %2) #17
  %3 = load ptr, ptr @sd_cdb_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #17
  tail call void @class_unregister(ptr noundef nonnull @sd_disk_class) #17
  br label %4

4:                                                ; preds = %8, %0
  %5 = phi i32 [ 0, %0 ], [ %11, %8 ]
  %6 = icmp ult i32 %5, 16
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/sd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #17, !srcloc !8
  unreachable

8:                                                ; preds = %4
  %9 = getelementptr inbounds [16 x i32], ptr @switch.table.sd_probe, i32 0, i32 %5
  %10 = load i32, ptr %9, align 4
  tail call void @unregister_blkdev(i32 noundef %10, ptr noundef nonnull @.str) #17
  %11 = add nuw nsw i32 %5, 1
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %13, label %4

13:                                               ; preds = %8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_sd() #0 section ".init.text" {
  br label %1

1:                                                ; preds = %6, %0
  %2 = phi i32 [ 0, %0 ], [ %12, %6 ]
  %3 = phi i32 [ 0, %0 ], [ %13, %6 ]
  %4 = icmp ult i32 %3, 16
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/sd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #17, !srcloc !8
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds [16 x i32], ptr @switch.table.sd_probe, i32 0, i32 %3
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @__register_blkdev(i32 noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @sd_default_probe) #17
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = add i32 %2, %11
  %13 = add nuw nsw i32 %3, 1
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %15, label %1

15:                                               ; preds = %6
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %59, label %17

17:                                               ; preds = %15
  %18 = tail call i32 @__class_register(ptr noundef nonnull @sd_disk_class, ptr noundef nonnull @init_sd.__key) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.130, i32 noundef 32, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  store ptr %21, ptr @sd_cdb_cache, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #18
  br label %46

25:                                               ; preds = %20
  %26 = tail call ptr @mempool_create(i32 noundef 2, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %21) #17
  store ptr %26, ptr @sd_cdb_pool, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #18
  br label %43

30:                                               ; preds = %25
  %31 = tail call ptr @mempool_create(i32 noundef 2, ptr noundef nonnull @mempool_alloc_pages, ptr noundef nonnull @mempool_free_pages, ptr noundef null) #17
  store ptr %31, ptr @sd_page_pool, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #18
  br label %40

35:                                               ; preds = %30
  %36 = tail call i32 @scsi_register_driver(ptr noundef nonnull @sd_template) #17
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr @sd_page_pool, align 4
  tail call void @mempool_destroy(ptr noundef %39) #17
  br label %40

40:                                               ; preds = %38, %33
  %41 = phi i32 [ %36, %38 ], [ -12, %33 ]
  %42 = load ptr, ptr @sd_cdb_pool, align 4
  tail call void @mempool_destroy(ptr noundef %42) #17
  br label %43

43:                                               ; preds = %40, %28
  %44 = phi i32 [ %41, %40 ], [ -12, %28 ]
  %45 = load ptr, ptr @sd_cdb_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %45) #17
  br label %46

46:                                               ; preds = %43, %23
  %47 = phi i32 [ %44, %43 ], [ -12, %23 ]
  tail call void @class_unregister(ptr noundef nonnull @sd_disk_class) #17
  br label %48

48:                                               ; preds = %46, %17
  %49 = phi i32 [ %18, %17 ], [ %47, %46 ]
  br label %50

50:                                               ; preds = %54, %48
  %51 = phi i32 [ 0, %48 ], [ %57, %54 ]
  %52 = icmp ult i32 %51, 16
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/sd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #17, !srcloc !8
  unreachable

54:                                               ; preds = %50
  %55 = getelementptr inbounds [16 x i32], ptr @switch.table.sd_probe, i32 0, i32 %51
  %56 = load i32, ptr %55, align 4
  tail call void @unregister_blkdev(i32 noundef %56, ptr noundef nonnull @.str) #17
  %57 = add nuw nsw i32 %51, 1
  %58 = icmp eq i32 %57, 16
  br i1 %58, label %59, label %50

59:                                               ; preds = %54, %35, %15
  %60 = phi i32 [ -19, %15 ], [ 0, %35 ], [ %49, %54 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sd_print_sense_hdr(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 3
  %9 = select i1 %7, ptr null, ptr %8
  tail call void @scsi_print_sense_hdr(ptr noundef %4, ptr noundef %9, ptr noundef %1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_sense_hdr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sd_print_result(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 3
  %10 = select i1 %6, ptr null, ptr %9
  %11 = lshr i32 %2, 16
  %12 = and i32 %11, 255
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %8, ptr noundef %10, ptr noundef nonnull @.str.5, ptr noundef %1, i32 noundef %12, ptr noundef nonnull @.str.4) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -264
  %3 = tail call i32 @scsi_autopm_get_device(ptr noundef %2) #17
  %4 = getelementptr i8, ptr %0, i32 -148
  %5 = load i8, ptr %4, align 4
  switch i8 %5, label %143 [
    i8 20, label %6
    i8 0, label %7
    i8 7, label %7
    i8 14, label %7
  ]

6:                                                ; preds = %1
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.7) #17
  br label %143

7:                                                ; preds = %1, %1, %1
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 560) #19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %143, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %0, i32 -260
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @__alloc_disk_node(ptr noundef %13, i32 noundef -1, ptr noundef nonnull @sd_bio_compl_lkclass) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %141, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @ida_alloc_range(ptr noundef nonnull @sd_index_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #17
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.8) #17
  br label %139

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 3
  %22 = getelementptr %struct.gendisk, ptr %14, i32 0, i32 3, i32 2
  %23 = getelementptr %struct.gendisk, ptr %14, i32 0, i32 4
  %24 = getelementptr %struct.gendisk, ptr %14, i32 0, i32 3, i32 31
  store i8 0, ptr %24, align 1
  br label %25

25:                                               ; preds = %29, %20
  %26 = phi i32 [ %17, %20 ], [ %37, %29 ]
  %27 = phi ptr [ %24, %20 ], [ %36, %29 ]
  %28 = icmp eq ptr %27, %22
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = freeze i32 %26
  %31 = sdiv i32 %30, 26
  %32 = mul i32 %31, 26
  %33 = sub i32 %30, %32
  %34 = trunc i32 %33 to i8
  %35 = add nsw i8 %34, 97
  %36 = getelementptr i8, ptr %27, i32 -1
  store i8 %35, ptr %36, align 1
  %37 = add nsw i32 %31, -1
  %38 = icmp sgt i32 %26, 25
  br i1 %38, label %25, label %40

39:                                               ; preds = %25
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.9) #17
  tail call void @ida_free(ptr noundef nonnull @sd_index_ida, i32 noundef %17) #17
  br label %139

40:                                               ; preds = %29
  %41 = ptrtoint ptr %23 to i32
  %42 = ptrtoint ptr %36 to i32
  %43 = sub i32 %41, %42
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %22, ptr align 1 %36, i32 %43, i1 false) #17
  store i16 25715, ptr %21, align 1
  %44 = getelementptr inbounds %struct.scsi_disk, ptr %9, i32 0, i32 1
  store ptr %2, ptr %44, align 4
  store ptr @sd_template, ptr %9, align 8
  %45 = getelementptr inbounds %struct.scsi_disk, ptr %9, i32 0, i32 3
  store ptr %14, ptr %45, align 8
  %46 = getelementptr inbounds %struct.scsi_disk, ptr %9, i32 0, i32 15
  store i32 %17, ptr %46, align 4
  %47 = getelementptr inbounds %struct.scsi_disk, ptr %9, i32 0, i32 8
  store i32 5, ptr %47, align 8
  %48 = getelementptr inbounds %struct.scsi_disk, ptr %9, i32 0, i32 5
  store volatile i32 0, ptr %48, align 8
  %49 = getelementptr i8, ptr %0, i32 -4
  store volatile i32 0, ptr %49, align 4
  %50 = load ptr, ptr %12, align 4
  %51 = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 23
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %40
  %55 = load i8, ptr %4, align 4
  %56 = icmp eq i8 %55, 7
  %57 = select i1 %56, i32 7500, i32 3000
  tail call void @blk_queue_rq_timeout(ptr noundef %50, i32 noundef %57) #17
  br label %58

58:                                               ; preds = %54, %40
  %59 = getelementptr inbounds %struct.scsi_disk, ptr %9, i32 0, i32 2
  tail call void @device_initialize(ptr noundef %59) #17
  %60 = tail call ptr @get_device(ptr noundef %0) #17
  %61 = getelementptr inbounds %struct.scsi_disk, ptr %9, i32 0, i32 2, i32 1
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.scsi_disk, ptr %9, i32 0, i32 2, i32 31
  store ptr @sd_disk_class, ptr %62, align 4
  %63 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load ptr, ptr %0, align 4
  br label %68

68:                                               ; preds = %66, %58
  %69 = phi ptr [ %67, %66 ], [ %64, %58 ]
  %70 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %59, ptr noundef nonnull @.str.10, ptr noundef %69) #17
  %71 = tail call i32 @device_add(ptr noundef %59) #17
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  tail call void @put_device(ptr noundef %59) #17
  br label %143

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %9, ptr %75, align 8
  %76 = lshr i32 %17, 4
  %77 = and i32 %76, 15
  %78 = getelementptr inbounds [16 x i32], ptr @switch.table.sd_probe, i32 0, i32 %77
  %79 = load i32, ptr %78, align 4
  store i32 %79, ptr %14, align 8
  %80 = shl i32 %17, 4
  %81 = and i32 %80, 240
  %82 = and i32 %17, 1048320
  %83 = or i32 %81, %82
  %84 = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 1
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 2
  store i32 16, ptr %85, align 8
  %86 = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 8
  store ptr @sd_fops, ptr %86, align 8
  %87 = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 10
  store ptr %9, ptr %87, align 8
  %88 = getelementptr i8, ptr %0, i32 -156
  store i32 512, ptr %88, align 4
  %89 = getelementptr inbounds %struct.scsi_disk, ptr %9, i32 0, i32 7
  store i64 0, ptr %89, align 8
  %90 = getelementptr inbounds %struct.scsi_disk, ptr %9, i32 0, i32 19
  store i8 1, ptr %90, align 4
  %91 = getelementptr inbounds %struct.scsi_disk, ptr %9, i32 0, i32 20
  store i8 0, ptr %91, align 1
  %92 = getelementptr inbounds %struct.scsi_disk, ptr %9, i32 0, i32 25
  %93 = load i32, ptr %92, align 2
  %94 = and i32 %93, -48
  %95 = or i32 %94, 32
  store i32 %95, ptr %92, align 2
  %96 = getelementptr inbounds %struct.scsi_disk, ptr %9, i32 0, i32 17
  store i32 2, ptr %96, align 4
  tail call fastcc void @sd_revalidate_disk(ptr noundef nonnull %14)
  %97 = getelementptr i8, ptr %0, i32 -68
  %98 = load i64, ptr %97, align 4
  %99 = and i64 %98, 1
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %74
  %102 = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 11
  %103 = load i32, ptr %102, align 4
  %104 = or i32 %103, 1
  store i32 %104, ptr %102, align 4
  %105 = load i16, ptr %23, align 4
  %106 = or i16 %105, 1
  store i16 %106, ptr %23, align 4
  %107 = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 5
  store i16 3, ptr %107, align 2
  br label %108

108:                                              ; preds = %101, %74
  %109 = load ptr, ptr %12, align 4
  tail call void @blk_pm_runtime_init(ptr noundef %109, ptr noundef %0) #17
  %110 = load i64, ptr %97, align 4
  %111 = and i64 %110, 70368744177664
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %108
  %114 = load ptr, ptr %2, align 8
  %115 = getelementptr inbounds %struct.Scsi_Host, ptr %114, i32 0, i32 11
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.scsi_host_template, ptr %116, i32 0, i32 51
  %118 = load i32, ptr %117, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %0, i32 noundef %118) #17
  br label %119

119:                                              ; preds = %113, %108
  %120 = tail call i32 @device_add_disk(ptr noundef %0, ptr noundef nonnull %14, ptr noundef null) #17
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  tail call void @put_device(ptr noundef %59) #17
  br label %143

123:                                              ; preds = %119
  tail call fastcc void @sd_revalidate_disk(ptr noundef nonnull %14)
  %124 = load i32, ptr %92, align 2
  %125 = and i32 %124, 524288
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.scsi_disk, ptr %9, i32 0, i32 4
  store ptr null, ptr %128, align 4
  br label %129

129:                                              ; preds = %127, %123
  %130 = load ptr, ptr %45, align 8
  %131 = icmp eq ptr %130, null
  %132 = load ptr, ptr %44, align 4
  %133 = getelementptr inbounds %struct.gendisk, ptr %130, i32 0, i32 3
  %134 = select i1 %131, ptr null, ptr %133
  %135 = load i64, ptr %97, align 4
  %136 = and i64 %135, 1
  %137 = icmp eq i64 %136, 0
  %138 = select i1 %137, ptr @.str.15, ptr @.str.14
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %132, ptr noundef %134, ptr noundef nonnull @.str.13, ptr noundef nonnull %138) #17
  br label %143

139:                                              ; preds = %39, %19
  %140 = phi i32 [ -12, %19 ], [ -22, %39 ]
  tail call void @put_disk(ptr noundef nonnull %14) #17
  br label %141

141:                                              ; preds = %139, %11
  %142 = phi i32 [ %140, %139 ], [ -12, %11 ]
  tail call void @kfree(ptr noundef nonnull %9) #17
  br label %143

143:                                              ; preds = %141, %129, %122, %73, %7, %6, %1
  %144 = phi i32 [ 0, %129 ], [ -19, %6 ], [ %142, %141 ], [ %71, %73 ], [ %120, %122 ], [ -12, %7 ], [ -19, %1 ]
  tail call void @scsi_autopm_put_device(ptr noundef %2) #17
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_remove(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @scsi_autopm_get_device(ptr noundef %5) #17
  %7 = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 2
  tail call void @device_del(ptr noundef %7) #17
  %8 = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  tail call void @del_gendisk(ptr noundef %9) #17
  tail call void @sd_shutdown(ptr noundef %0)
  tail call void @mutex_lock(ptr noundef nonnull @sd_ref_mutex) #17
  store ptr null, ptr %2, align 8
  tail call void @put_device(ptr noundef %7) #17
  tail call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sd_shutdown(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 7
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %49, label %14

14:                                               ; preds = %9, %5
  %15 = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 25
  %16 = load i32, ptr %15, align 2
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 19
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.gendisk, ptr %25, i32 0, i32 3
  %30 = select i1 %26, ptr null, ptr %29
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %28, ptr noundef %30, ptr noundef nonnull @.str.77) #17
  %31 = tail call fastcc i32 @sd_sync_cache(ptr noundef nonnull %3, ptr noundef null)
  br label %32

32:                                               ; preds = %23, %19, %14
  %33 = load i32, ptr @system_state, align 4
  %34 = icmp eq i32 %33, 6
  br i1 %34, label %49, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.scsi_device, ptr %37, i32 0, i32 41
  %39 = load i64, ptr %38, align 4
  %40 = and i64 %39, 268435456
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds %struct.gendisk, ptr %44, i32 0, i32 3
  %47 = select i1 %45, ptr null, ptr %46
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %37, ptr noundef %47, ptr noundef nonnull @.str.78) #17
  %48 = tail call fastcc i32 @sd_start_stop_device(ptr noundef nonnull %3, i32 noundef 0)
  br label %49

49:                                               ; preds = %42, %35, %32, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sd_rescan(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  tail call fastcc void @sd_revalidate_disk(ptr noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @sd_init_command(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -168
  %3 = getelementptr i8, ptr %0, i32 -156
  %4 = load i32, ptr %3, align 4
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %398 [
    i8 3, label %6
    i8 9, label %22
    i8 7, label %80
    i8 2, label %176
    i8 0, label %195
    i8 1, label %195
    i8 13, label %195
    i8 15, label %401
    i8 17, label %401
    i8 10, label %401
    i8 11, label %401
    i8 12, label %401
  ]

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.scsi_disk, ptr %11, i32 0, i32 22
  %13 = load i8, ptr %12, align 1
  switch i8 %13, label %401 [
    i8 1, label %14
    i8 2, label %16
    i8 3, label %18
    i8 4, label %20
  ]

14:                                               ; preds = %6
  %15 = tail call fastcc zeroext i8 @sd_setup_unmap_cmnd(ptr noundef %0)
  br label %401

16:                                               ; preds = %6
  %17 = tail call fastcc zeroext i8 @sd_setup_write_same16_cmnd(ptr noundef %0, i1 noundef zeroext true)
  br label %401

18:                                               ; preds = %6
  %19 = tail call fastcc zeroext i8 @sd_setup_write_same10_cmnd(ptr noundef %0, i1 noundef zeroext true)
  br label %401

20:                                               ; preds = %6
  %21 = tail call fastcc zeroext i8 @sd_setup_write_same10_cmnd(ptr noundef %0, i1 noundef zeroext false)
  br label %401

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.request_queue, ptr %25, i32 0, i32 15
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.gendisk, ptr %27, i32 0, i32 10
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr i8, ptr %0, i32 -128
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 20
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  %35 = tail call i32 @llvm.ctlz.i32(i32 %33, i1 false) #17, !range !9
  %36 = sub nsw i32 22, %35
  %37 = select i1 %34, i32 -10, i32 %36
  %38 = getelementptr i8, ptr %0, i32 -136
  %39 = load i32, ptr %38, align 8
  %40 = zext i32 %37 to i64
  %41 = lshr i64 %31, %40
  %42 = lshr i32 %39, 9
  %43 = zext i32 %42 to i64
  %44 = sub nsw i32 22, %35
  %45 = select i1 %34, i32 -10, i32 %44
  %46 = zext i32 %45 to i64
  %47 = and i32 %4, 8388608
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %22
  %50 = getelementptr inbounds %struct.scsi_disk, ptr %29, i32 0, i32 23
  %51 = load i8, ptr %50, align 8
  switch i8 %51, label %56 [
    i8 2, label %52
    i8 3, label %54
  ]

52:                                               ; preds = %49
  %53 = tail call fastcc zeroext i8 @sd_setup_write_same16_cmnd(ptr noundef %0, i1 noundef zeroext true) #17
  br label %401

54:                                               ; preds = %49
  %55 = tail call fastcc zeroext i8 @sd_setup_write_same10_cmnd(ptr noundef %0, i1 noundef zeroext true) #17
  br label %401

56:                                               ; preds = %49, %22
  %57 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 41
  %58 = load i64, ptr %57, align 4
  %59 = and i64 %58, 524288
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %0, i32 -152
  %63 = load i32, ptr %62, align 8
  %64 = or i32 %63, 2048
  store i32 %64, ptr %62, align 8
  br label %401

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.scsi_disk, ptr %29, i32 0, i32 25
  %67 = load i32, ptr %66, align 2
  %68 = and i32 %67, 8192
  %69 = icmp ne i32 %68, 0
  %70 = icmp ugt i64 %41, 4294967295
  %71 = select i1 %69, i1 true, i1 %70
  %72 = shl i64 4294901760, %46
  %73 = and i64 %72, %43
  %74 = icmp ne i64 %73, 0
  %75 = select i1 %71, i1 true, i1 %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = tail call fastcc zeroext i8 @sd_setup_write_same16_cmnd(ptr noundef %0, i1 noundef zeroext false) #17
  br label %401

78:                                               ; preds = %65
  %79 = tail call fastcc zeroext i8 @sd_setup_write_same10_cmnd(ptr noundef %0, i1 noundef zeroext false) #17
  br label %401

80:                                               ; preds = %1
  %81 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %2, align 8
  %84 = getelementptr inbounds %struct.request_queue, ptr %83, i32 0, i32 15
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.gendisk, ptr %85, i32 0, i32 10
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr i8, ptr %0, i32 -120
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr i8, ptr %0, i32 -128
  %91 = load i64, ptr %90, align 8
  %92 = getelementptr inbounds %struct.scsi_device, ptr %82, i32 0, i32 20
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  %95 = tail call i32 @llvm.ctlz.i32(i32 %93, i1 false) #17, !range !9
  %96 = sub nsw i32 22, %95
  %97 = select i1 %94, i32 -10, i32 %96
  %98 = getelementptr i8, ptr %0, i32 -136
  %99 = load i32, ptr %98, align 8
  %100 = zext i32 %97 to i64
  %101 = lshr i64 %91, %100
  %102 = lshr i32 %99, 9
  %103 = zext i32 %102 to i64
  %104 = sub nsw i32 22, %95
  %105 = select i1 %94, i32 -10, i32 %104
  %106 = zext i32 %105 to i64
  %107 = lshr i64 %103, %106
  %108 = trunc i64 %107 to i32
  %109 = getelementptr inbounds %struct.scsi_disk, ptr %87, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.scsi_device, ptr %110, i32 0, i32 41
  %112 = load i64, ptr %111, align 4
  %113 = and i64 %112, 524288
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %401

115:                                              ; preds = %80
  %116 = getelementptr inbounds %struct.bio, ptr %89, i32 0, i32 16
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.bio, ptr %89, i32 0, i32 8, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr %struct.bio_vec, ptr %117, i32 %119, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.bio, ptr %89, i32 0, i32 8, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %123, %121
  %125 = and i32 %124, 4095
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %136, !prof !10

127:                                              ; preds = %115
  %128 = getelementptr inbounds %struct.bio, ptr %89, i32 0, i32 8, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr %struct.bio_vec, ptr %117, i32 %119, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = sub i32 %131, %123
  %133 = tail call i32 @llvm.umin.i32(i32 %129, i32 %132) #17
  %134 = tail call i32 @llvm.umin.i32(i32 %133, i32 4096) #17
  %135 = icmp eq i32 %134, %93
  br i1 %135, label %137, label %136, !prof !10

136:                                              ; preds = %127, %115
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/sd.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1079, 0\0A.popsection", ""() #17, !srcloc !11
  unreachable

137:                                              ; preds = %127
  %138 = getelementptr i8, ptr %0, i32 -140
  store i32 12000, ptr %138, align 4
  %139 = getelementptr inbounds %struct.scsi_disk, ptr %87, i32 0, i32 25
  %140 = load i32, ptr %139, align 2
  %141 = and i32 %140, 8192
  %142 = icmp ne i32 %141, 0
  %143 = icmp ugt i64 %101, 4294967295
  %144 = select i1 %142, i1 true, i1 %143
  %145 = icmp ugt i32 %108, 65535
  %146 = select i1 %144, i1 true, i1 %145
  %147 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  br i1 %146, label %148, label %157

148:                                              ; preds = %137
  store i16 16, ptr %147, align 4
  %149 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %150 = load ptr, ptr %149, align 4
  store i8 -109, ptr %150, align 1
  %151 = load ptr, ptr %149, align 4
  %152 = getelementptr i8, ptr %151, i32 2
  %153 = tail call i64 @llvm.bswap.i64(i64 %101) #17
  store i64 %153, ptr %152, align 1
  %154 = load ptr, ptr %149, align 4
  %155 = getelementptr i8, ptr %154, i32 10
  %156 = tail call i32 @llvm.bswap.i32(i32 %108) #17
  store i32 %156, ptr %155, align 1
  br label %168

157:                                              ; preds = %137
  store i16 10, ptr %147, align 4
  %158 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %159 = load ptr, ptr %158, align 4
  store i8 65, ptr %159, align 1
  %160 = trunc i64 %101 to i32
  %161 = load ptr, ptr %158, align 4
  %162 = getelementptr i8, ptr %161, i32 2
  %163 = tail call i32 @llvm.bswap.i32(i32 %160) #17
  store i32 %163, ptr %162, align 1
  %164 = trunc i64 %107 to i16
  %165 = load ptr, ptr %158, align 4
  %166 = getelementptr i8, ptr %165, i32 7
  %167 = tail call i16 @llvm.bswap.i16(i16 %164) #17
  store i16 %167, ptr %166, align 1
  br label %168

168:                                              ; preds = %157, %148
  %169 = load i32, ptr %92, align 4
  %170 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 20
  store i32 %169, ptr %170, align 4
  %171 = getelementptr inbounds %struct.scsi_disk, ptr %87, i32 0, i32 8
  %172 = load i32, ptr %171, align 8
  %173 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 9
  store i32 %172, ptr %173, align 4
  %174 = load i32, ptr %92, align 4
  store i32 %174, ptr %98, align 8
  %175 = tail call zeroext i8 @scsi_alloc_sgtables(ptr noundef %0) #17
  br label %401

176:                                              ; preds = %1
  %177 = load ptr, ptr %2, align 8
  %178 = getelementptr inbounds %struct.request_queue, ptr %177, i32 0, i32 15
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.gendisk, ptr %179, i32 0, i32 10
  %181 = load ptr, ptr %180, align 8
  %182 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %182, i8 0, i32 16, i1 false) #17
  %183 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %184 = load ptr, ptr %183, align 4
  store i8 53, ptr %184, align 1
  %185 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  store i16 10, ptr %185, align 4
  %186 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 20
  store i32 0, ptr %186, align 4
  %187 = getelementptr inbounds %struct.scsi_disk, ptr %181, i32 0, i32 8
  %188 = load i32, ptr %187, align 8
  %189 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 9
  store i32 %188, ptr %189, align 4
  %190 = load ptr, ptr %2, align 8
  %191 = getelementptr inbounds %struct.request_queue, ptr %190, i32 0, i32 23
  %192 = load i32, ptr %191, align 8
  %193 = shl i32 %192, 1
  %194 = getelementptr i8, ptr %0, i32 -140
  store i32 %193, ptr %194, align 4
  br label %401

195:                                              ; preds = %1, %1, %1
  %196 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = load ptr, ptr %2, align 8
  %199 = getelementptr inbounds %struct.request_queue, ptr %198, i32 0, i32 15
  %200 = load ptr, ptr %199, align 8
  %201 = getelementptr inbounds %struct.gendisk, ptr %200, i32 0, i32 10
  %202 = load ptr, ptr %201, align 8
  %203 = getelementptr i8, ptr %0, i32 -128
  %204 = load i64, ptr %203, align 8
  %205 = getelementptr inbounds %struct.scsi_device, ptr %197, i32 0, i32 20
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 0
  %208 = tail call i32 @llvm.ctlz.i32(i32 %206, i1 false) #17, !range !9
  %209 = sub nsw i32 22, %208
  %210 = select i1 %207, i32 -10, i32 %209
  %211 = getelementptr i8, ptr %0, i32 -136
  %212 = load i32, ptr %211, align 8
  %213 = lshr i32 %212, 9
  %214 = zext i32 %213 to i64
  %215 = zext i32 %210 to i64
  %216 = lshr i64 %214, %215
  %217 = trunc i64 %216 to i32
  %218 = zext i32 %210 to i64
  %219 = lshr i64 %204, %218
  %220 = sub nsw i32 22, %208
  %221 = select i1 %207, i32 -10, i32 %220
  %222 = zext i32 %221 to i64
  %223 = shl nuw i64 1, %222
  %224 = trunc i64 %223 to i32
  %225 = add i32 %224, -1
  %226 = and i32 %4, 1
  %227 = icmp ne i32 %226, 0
  %228 = tail call zeroext i8 @scsi_alloc_sgtables(ptr noundef %0) #17
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %401

230:                                              ; preds = %195
  %231 = getelementptr inbounds %struct.scsi_device, ptr %197, i32 0, i32 68
  %232 = load i32, ptr %231, align 4
  switch i32 %232, label %233 [
    i32 7, label %394
    i32 6, label %394
    i32 4, label %394
  ]

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.scsi_device, ptr %197, i32 0, i32 41
  %235 = load i64, ptr %234, align 4
  %236 = and i64 %235, 2
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %394

238:                                              ; preds = %233
  %239 = load i64, ptr %203, align 8
  %240 = load i32, ptr %211, align 8
  %241 = lshr i32 %240, 9
  %242 = zext i32 %241 to i64
  %243 = add i64 %239, %242
  %244 = load ptr, ptr %2, align 8
  %245 = getelementptr inbounds %struct.request_queue, ptr %244, i32 0, i32 15
  %246 = load ptr, ptr %245, align 8
  %247 = getelementptr inbounds %struct.gendisk, ptr %246, i32 0, i32 7
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.block_device, ptr %248, i32 0, i32 1
  %250 = load i64, ptr %249, align 8
  %251 = icmp ugt i64 %243, %250
  br i1 %251, label %394, label %252

252:                                              ; preds = %238
  %253 = zext i32 %225 to i64
  %254 = and i64 %239, %253
  %255 = icmp eq i64 %254, 0
  %256 = and i32 %241, %225
  %257 = icmp eq i32 %256, 0
  %258 = select i1 %255, i1 %257, i1 false
  br i1 %258, label %259, label %394

259:                                              ; preds = %252
  %260 = getelementptr inbounds %struct.scsi_disk, ptr %202, i32 0, i32 7
  %261 = load i64, ptr %260, align 8
  %262 = add i64 %261, -8
  %263 = and i64 %235, 34359738368
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %274, label %265

265:                                              ; preds = %259
  %266 = and i64 %216, 4294967295
  %267 = add i64 %219, %266
  %268 = icmp ugt i64 %267, %262
  br i1 %268, label %269, label %274, !prof !12

269:                                              ; preds = %265
  %270 = icmp ugt i64 %262, %219
  br i1 %270, label %271, label %274

271:                                              ; preds = %269
  %272 = sub i64 %262, %219
  %273 = trunc i64 %272 to i32
  br label %274

274:                                              ; preds = %271, %269, %265, %259
  %275 = phi i32 [ %273, %271 ], [ %217, %265 ], [ 1, %269 ], [ %217, %259 ]
  %276 = load i32, ptr %3, align 4
  %277 = and i32 %276, 255
  %278 = icmp eq i32 %277, 13
  br i1 %278, label %396, label %279

279:                                              ; preds = %274
  %280 = lshr i32 %276, 14
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 8
  %283 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 18
  %284 = load ptr, ptr %283, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %290, label %286

286:                                              ; preds = %279
  %287 = getelementptr inbounds %struct.sg_table, ptr %284, i32 0, i32 1
  %288 = load i32, ptr %287, align 4
  %289 = icmp ne i32 %288, 0
  br label %290

290:                                              ; preds = %286, %279
  %291 = phi i1 [ %289, %286 ], [ false, %279 ]
  %292 = getelementptr inbounds %struct.scsi_disk, ptr %202, i32 0, i32 21
  %293 = load i8, ptr %292, align 2
  %294 = icmp ugt i8 %293, 3
  br i1 %294, label %307, label %295

295:                                              ; preds = %290
  %296 = zext i8 %293 to i32
  %297 = load ptr, ptr %196, align 4
  %298 = load ptr, ptr %297, align 8
  %299 = getelementptr inbounds %struct.Scsi_Host, ptr %298, i32 0, i32 41
  %300 = load i32, ptr %299, align 4
  %301 = getelementptr [4 x i8], ptr @scsi_host_dif_capable.cap, i32 0, i32 %296
  %302 = load i8, ptr %301, align 1
  %303 = zext i8 %302 to i32
  %304 = and i32 %300, %303
  %305 = icmp eq i32 %304, 0
  %306 = select i1 %305, i32 0, i32 %296
  br label %307

307:                                              ; preds = %295, %290
  %308 = phi i32 [ %306, %295 ], [ 0, %290 ]
  %309 = icmp ne i32 %308, 0
  %310 = select i1 %309, i1 true, i1 %291
  br i1 %310, label %311, label %322

311:                                              ; preds = %307
  %312 = zext i1 %291 to i32
  %313 = tail call fastcc zeroext i8 @sd_setup_protect_cmnd(ptr noundef %0, i32 noundef %312, i32 noundef %308) #17
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %322, label %315

315:                                              ; preds = %311
  %316 = zext i8 %313 to i32
  %317 = load i8, ptr %292, align 2
  %318 = icmp eq i8 %317, 2
  br i1 %318, label %319, label %322

319:                                              ; preds = %315
  %320 = or i8 %313, %282
  %321 = tail call fastcc zeroext i8 @sd_setup_rw32_cmnd(ptr noundef %0, i1 noundef zeroext %227, i64 noundef %219, i32 noundef %275, i8 noundef zeroext %320) #17
  br label %380

322:                                              ; preds = %315, %311, %307
  %323 = phi i1 [ true, %315 ], [ false, %311 ], [ false, %307 ]
  %324 = phi i32 [ %316, %315 ], [ 0, %311 ], [ 0, %307 ]
  %325 = load i64, ptr %234, align 4
  %326 = and i64 %325, 1048576
  %327 = icmp ne i64 %326, 0
  %328 = icmp ugt i32 %275, 65535
  %329 = select i1 %327, i1 true, i1 %328
  br i1 %329, label %330, label %349

330:                                              ; preds = %322
  %331 = trunc i32 %324 to i8
  %332 = or i8 %282, %331
  %333 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  store i16 16, ptr %333, align 4
  %334 = select i1 %227, i8 -118, i8 -120
  %335 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %336 = load ptr, ptr %335, align 4
  store i8 %334, ptr %336, align 1
  %337 = load ptr, ptr %335, align 4
  %338 = getelementptr i8, ptr %337, i32 1
  store i8 %332, ptr %338, align 1
  %339 = load ptr, ptr %335, align 4
  %340 = getelementptr i8, ptr %339, i32 14
  store i8 0, ptr %340, align 1
  %341 = load ptr, ptr %335, align 4
  %342 = getelementptr i8, ptr %341, i32 15
  store i8 0, ptr %342, align 1
  %343 = load ptr, ptr %335, align 4
  %344 = getelementptr i8, ptr %343, i32 2
  %345 = tail call i64 @llvm.bswap.i64(i64 %219) #17
  store i64 %345, ptr %344, align 1
  %346 = load ptr, ptr %335, align 4
  %347 = getelementptr i8, ptr %346, i32 10
  %348 = tail call i32 @llvm.bswap.i32(i32 %275) #17
  store i32 %348, ptr %347, align 1
  br label %383

349:                                              ; preds = %322
  %350 = icmp ugt i32 %275, 255
  %351 = icmp ugt i64 %219, 2097151
  %352 = select i1 %350, i1 true, i1 %351
  br i1 %352, label %357, label %353

353:                                              ; preds = %349
  %354 = and i64 %325, 32768
  %355 = icmp ne i64 %354, 0
  %356 = or i1 %323, %355
  br i1 %356, label %357, label %378

357:                                              ; preds = %353, %349
  %358 = trunc i32 %324 to i8
  %359 = or i8 %282, %358
  %360 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  store i16 10, ptr %360, align 4
  %361 = select i1 %227, i8 42, i8 40
  %362 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %363 = load ptr, ptr %362, align 4
  store i8 %361, ptr %363, align 1
  %364 = load ptr, ptr %362, align 4
  %365 = getelementptr i8, ptr %364, i32 1
  store i8 %359, ptr %365, align 1
  %366 = load ptr, ptr %362, align 4
  %367 = getelementptr i8, ptr %366, i32 6
  store i8 0, ptr %367, align 1
  %368 = load ptr, ptr %362, align 4
  %369 = getelementptr i8, ptr %368, i32 9
  store i8 0, ptr %369, align 1
  %370 = trunc i64 %219 to i32
  %371 = load ptr, ptr %362, align 4
  %372 = getelementptr i8, ptr %371, i32 2
  %373 = tail call i32 @llvm.bswap.i32(i32 %370) #17
  store i32 %373, ptr %372, align 1
  %374 = trunc i32 %275 to i16
  %375 = load ptr, ptr %362, align 4
  %376 = getelementptr i8, ptr %375, i32 7
  %377 = tail call i16 @llvm.bswap.i16(i16 %374) #17
  store i16 %377, ptr %376, align 1
  br label %383

378:                                              ; preds = %353
  %379 = tail call fastcc zeroext i8 @sd_setup_rw6_cmnd(ptr noundef %0, i1 noundef zeroext %227, i64 noundef %219, i32 noundef %275, i8 noundef zeroext %282) #17
  br label %380

380:                                              ; preds = %378, %319
  %381 = phi i8 [ %321, %319 ], [ %379, %378 ]
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %383, label %396, !prof !10

383:                                              ; preds = %380, %357, %330
  %384 = load i32, ptr %205, align 4
  %385 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 20
  store i32 %384, ptr %385, align 4
  %386 = shl i32 %275, 9
  %387 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 19
  store i32 %386, ptr %387, align 4
  %388 = getelementptr inbounds %struct.scsi_disk, ptr %202, i32 0, i32 8
  %389 = load i32, ptr %388, align 8
  %390 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 9
  store i32 %389, ptr %390, align 4
  %391 = load i32, ptr %205, align 4
  %392 = mul i32 %391, %275
  %393 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  store i32 %392, ptr %393, align 4
  br label %401

394:                                              ; preds = %252, %238, %233, %230, %230, %230
  %395 = phi ptr [ @.str.85, %230 ], [ @.str.85, %230 ], [ @.str.85, %230 ], [ @.str.85, %233 ], [ @.str.86, %238 ], [ @.str.87, %252 ]
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.33, ptr noundef %0, ptr noundef nonnull %395) #17
  br label %396

396:                                              ; preds = %394, %380, %274
  %397 = phi i8 [ %381, %380 ], [ 5, %274 ], [ 10, %394 ]
  tail call void @scsi_free_sgtables(ptr noundef %0) #17
  br label %401

398:                                              ; preds = %1
  %399 = load i1, ptr @sd_init_command.__already_done, align 1
  br i1 %399, label %401, label %400, !prof !10

400:                                              ; preds = %398
  store i1 true, ptr @sd_init_command.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 1368, i32 noundef 9, ptr noundef null) #17
  br label %401

401:                                              ; preds = %400, %398, %396, %383, %195, %176, %168, %80, %78, %76, %61, %54, %52, %20, %18, %16, %14, %6, %1, %1, %1, %1, %1
  %402 = phi i8 [ 0, %176 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ 5, %6 ], [ 1, %400 ], [ 1, %398 ], [ 5, %61 ], [ %77, %76 ], [ %79, %78 ], [ %55, %54 ], [ %53, %52 ], [ %175, %168 ], [ 5, %80 ], [ %397, %396 ], [ 0, %383 ], [ %228, %195 ], [ 5, %1 ], [ 5, %1 ], [ 5, %1 ], [ 5, %1 ], [ 5, %1 ]
  ret i8 %402
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sd_uninit_command(ptr nocapture noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -152
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 262144
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -52
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr @sd_page_pool, align 4
  tail call void @mempool_free(ptr noundef %8, ptr noundef %9) #17
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  store ptr null, ptr %11, align 4
  %17 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  store i16 0, ptr %17, align 4
  %18 = load ptr, ptr @sd_cdb_pool, align 4
  tail call void @mempool_free(ptr noundef %12, ptr noundef %18) #17
  br label %19

19:                                               ; preds = %16, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_done(ptr noundef %0) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.scsi_sense_hdr, align 8
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  %14 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.scsi_device, ptr %15, i32 0, i32 20
  %17 = load i32, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  store i64 0, ptr %5, align 8, !annotation !13
  %18 = getelementptr i8, ptr %0, i32 -168
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 15
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.gendisk, ptr %21, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %0, i32 -156
  %25 = load i32, ptr %24, align 4
  %26 = trunc i32 %25 to i8
  switch i8 %26, label %33 [
    i8 3, label %27
    i8 9, label %27
    i8 7, label %27
    i8 15, label %27
    i8 17, label %27
    i8 10, label %27
    i8 11, label %27
    i8 12, label %27
  ]

27:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12
  %28 = getelementptr i8, ptr %0, i32 -136
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 5
  br i1 %8, label %31, label %32

31:                                               ; preds = %27
  store i32 0, ptr %30, align 4
  br label %64

32:                                               ; preds = %27
  store i32 %29, ptr %30, align 4
  br label %54

33:                                               ; preds = %12
  %34 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %17, -1
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.scsi_disk, ptr %23, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.scsi_disk, ptr %23, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.gendisk, ptr %41, i32 0, i32 3
  %46 = select i1 %42, ptr null, ptr %45
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %44, ptr noundef %46, ptr noundef nonnull @.str.89, i32 noundef %35, i32 noundef %17) #17
  tail call void @scsi_print_command(ptr noundef %0) #17
  %47 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %35, -1
  %50 = or i32 %49, %36
  %51 = add i32 %50, 1
  %52 = tail call i32 @llvm.umin.i32(i32 %48, i32 %51)
  store i32 %52, ptr %34, align 4
  br label %53

53:                                               ; preds = %39, %33
  br i1 %8, label %64, label %54

54:                                               ; preds = %53, %32
  %55 = phi i32 [ 0, %32 ], [ %13, %53 ]
  %56 = call zeroext i1 @scsi_command_normalize_sense(ptr noundef %0, ptr noundef nonnull %5) #17
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i8, ptr %5, align 8
  %59 = icmp ugt i8 %58, 111
  %60 = and i8 %58, 1
  %61 = icmp ne i8 %60, 0
  %62 = and i1 %59, %61
  %63 = zext i1 %62 to i32
  br label %67

64:                                               ; preds = %53, %31
  %65 = phi i32 [ %29, %31 ], [ %13, %53 ]
  %66 = getelementptr inbounds %struct.scsi_disk, ptr %23, i32 0, i32 18
  store i32 0, ptr %66, align 8
  br label %235

67:                                               ; preds = %57, %54
  %68 = phi i32 [ %63, %57 ], [ 0, %54 ]
  %69 = getelementptr inbounds %struct.scsi_disk, ptr %23, i32 0, i32 18
  store i32 0, ptr %69, align 8
  %70 = and i32 %7, -2147483394
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = xor i1 %56, true
  %74 = icmp ne i32 %68, 0
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %235, label %76

76:                                               ; preds = %72, %67
  %77 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %5, i32 0, i32 1
  %78 = load i8, ptr %77, align 1
  switch i8 %78, label %235 [
    i8 4, label %79
    i8 3, label %79
    i8 1, label %120
    i8 0, label %123
    i8 11, label %126
    i8 5, label %171
  ]

79:                                               ; preds = %76, %76
  %80 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store i64 0, ptr %4, align 8, !annotation !13
  %81 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.scsi_device, ptr %80, i32 0, i32 20
  %84 = load i32, ptr %83, align 4
  %85 = icmp ugt i32 %82, %84
  br i1 %85, label %86, label %118

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %88 = load ptr, ptr %87, align 4
  %89 = call zeroext i1 @scsi_get_sense_info_fld(ptr noundef %88, i32 noundef 96, ptr noundef nonnull %4) #17
  br i1 %89, label %90, label %118

90:                                               ; preds = %86
  %91 = load i32, ptr %83, align 4
  %92 = getelementptr i8, ptr %0, i32 -128
  %93 = load i64, ptr %92, align 8
  %94 = icmp eq i32 %91, 0
  %95 = call i32 @llvm.ctlz.i32(i32 %91, i1 false) #17, !range !9
  %96 = sub nsw i32 22, %95
  %97 = select i1 %94, i32 -10, i32 %96
  %98 = zext i32 %97 to i64
  %99 = lshr i64 %93, %98
  %100 = sub nsw i32 31, %95
  %101 = select i1 %94, i32 -1, i32 %100
  %102 = load i32, ptr %81, align 4
  %103 = lshr i32 %102, %101
  %104 = zext i32 %103 to i64
  %105 = load i64, ptr %4, align 8
  %106 = icmp uge i64 %105, %99
  %107 = add i64 %99, %104
  %108 = icmp ult i64 %105, %107
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %118

110:                                              ; preds = %90
  %111 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 5
  %112 = load i32, ptr %111, align 4
  %113 = sub i32 %102, %112
  %114 = sub i64 %105, %99
  %115 = trunc i64 %114 to i32
  %116 = mul i32 %91, %115
  %117 = call i32 @llvm.umin.i32(i32 %116, i32 %113) #17
  br label %118

118:                                              ; preds = %110, %90, %86, %79
  %119 = phi i32 [ %117, %110 ], [ 0, %79 ], [ 0, %86 ], [ 0, %90 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %235

120:                                              ; preds = %76
  %121 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  %122 = load i32, ptr %121, align 4
  br label %235

123:                                              ; preds = %76
  store i32 0, ptr %6, align 4
  %124 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %125 = load ptr, ptr %124, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(96) %125, i8 0, i32 96, i1 false)
  br label %235

126:                                              ; preds = %76
  %127 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %5, i32 0, i32 2
  %128 = load i8, ptr %127, align 2
  %129 = icmp eq i8 %128, 16
  br i1 %129, label %130, label %235

130:                                              ; preds = %126
  %131 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store i64 0, ptr %3, align 8, !annotation !13
  %132 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr inbounds %struct.scsi_device, ptr %131, i32 0, i32 20
  %135 = load i32, ptr %134, align 4
  %136 = icmp ugt i32 %133, %135
  br i1 %136, label %137, label %169

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %139 = load ptr, ptr %138, align 4
  %140 = call zeroext i1 @scsi_get_sense_info_fld(ptr noundef %139, i32 noundef 96, ptr noundef nonnull %3) #17
  br i1 %140, label %141, label %169

141:                                              ; preds = %137
  %142 = load i32, ptr %134, align 4
  %143 = getelementptr i8, ptr %0, i32 -128
  %144 = load i64, ptr %143, align 8
  %145 = icmp eq i32 %142, 0
  %146 = call i32 @llvm.ctlz.i32(i32 %142, i1 false) #17, !range !9
  %147 = sub nsw i32 22, %146
  %148 = select i1 %145, i32 -10, i32 %147
  %149 = zext i32 %148 to i64
  %150 = lshr i64 %144, %149
  %151 = sub nsw i32 31, %146
  %152 = select i1 %145, i32 -1, i32 %151
  %153 = load i32, ptr %132, align 4
  %154 = lshr i32 %153, %152
  %155 = zext i32 %154 to i64
  %156 = load i64, ptr %3, align 8
  %157 = icmp uge i64 %156, %150
  %158 = add i64 %150, %155
  %159 = icmp ult i64 %156, %158
  %160 = select i1 %157, i1 %159, i1 false
  br i1 %160, label %161, label %169

161:                                              ; preds = %141
  %162 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 5
  %163 = load i32, ptr %162, align 4
  %164 = sub i32 %153, %163
  %165 = sub i64 %156, %150
  %166 = trunc i64 %165 to i32
  %167 = mul i32 %142, %166
  %168 = call i32 @llvm.umin.i32(i32 %167, i32 %164) #17
  br label %169

169:                                              ; preds = %161, %141, %137, %130
  %170 = phi i32 [ %168, %161 ], [ 0, %130 ], [ 0, %137 ], [ 0, %141 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  br label %235

171:                                              ; preds = %76
  %172 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %5, i32 0, i32 2
  %173 = load i8, ptr %172, align 2
  switch i8 %173, label %235 [
    i8 16, label %174
    i8 32, label %215
    i8 36, label %215
  ]

174:                                              ; preds = %171
  %175 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store i64 0, ptr %2, align 8, !annotation !13
  %176 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr inbounds %struct.scsi_device, ptr %175, i32 0, i32 20
  %179 = load i32, ptr %178, align 4
  %180 = icmp ugt i32 %177, %179
  br i1 %180, label %181, label %213

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %183 = load ptr, ptr %182, align 4
  %184 = call zeroext i1 @scsi_get_sense_info_fld(ptr noundef %183, i32 noundef 96, ptr noundef nonnull %2) #17
  br i1 %184, label %185, label %213

185:                                              ; preds = %181
  %186 = load i32, ptr %178, align 4
  %187 = getelementptr i8, ptr %0, i32 -128
  %188 = load i64, ptr %187, align 8
  %189 = icmp eq i32 %186, 0
  %190 = call i32 @llvm.ctlz.i32(i32 %186, i1 false) #17, !range !9
  %191 = sub nsw i32 22, %190
  %192 = select i1 %189, i32 -10, i32 %191
  %193 = zext i32 %192 to i64
  %194 = lshr i64 %188, %193
  %195 = sub nsw i32 31, %190
  %196 = select i1 %189, i32 -1, i32 %195
  %197 = load i32, ptr %176, align 4
  %198 = lshr i32 %197, %196
  %199 = zext i32 %198 to i64
  %200 = load i64, ptr %2, align 8
  %201 = icmp uge i64 %200, %194
  %202 = add i64 %194, %199
  %203 = icmp ult i64 %200, %202
  %204 = select i1 %201, i1 %203, i1 false
  br i1 %204, label %205, label %213

205:                                              ; preds = %185
  %206 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 5
  %207 = load i32, ptr %206, align 4
  %208 = sub i32 %197, %207
  %209 = sub i64 %200, %194
  %210 = trunc i64 %209 to i32
  %211 = mul i32 %186, %210
  %212 = call i32 @llvm.umin.i32(i32 %211, i32 %208) #17
  br label %213

213:                                              ; preds = %205, %185, %181, %174
  %214 = phi i32 [ %212, %205 ], [ 0, %174 ], [ 0, %181 ], [ 0, %185 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br label %235

215:                                              ; preds = %171, %171
  %216 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %217 = load ptr, ptr %216, align 4
  %218 = load i8, ptr %217, align 1
  switch i8 %218, label %235 [
    i8 66, label %219
    i8 -109, label %220
    i8 65, label %220
  ]

219:                                              ; preds = %215
  call fastcc void @sd_config_discard(ptr noundef %23, i32 noundef 5)
  br label %235

220:                                              ; preds = %215, %215
  %221 = getelementptr i8, ptr %217, i32 1
  %222 = load i8, ptr %221, align 1
  %223 = and i8 %222, 8
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %220
  call fastcc void @sd_config_discard(ptr noundef %23, i32 noundef 5)
  br label %235

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.scsi_disk, ptr %23, i32 0, i32 1
  %228 = load ptr, ptr %227, align 4
  %229 = getelementptr inbounds %struct.scsi_device, ptr %228, i32 0, i32 41
  %230 = load i64, ptr %229, align 4
  %231 = or i64 %230, 524288
  store i64 %231, ptr %229, align 4
  call fastcc void @sd_config_write_same(ptr noundef %23)
  %232 = getelementptr i8, ptr %0, i32 -152
  %233 = load i32, ptr %232, align 8
  %234 = or i32 %233, 2048
  store i32 %234, ptr %232, align 8
  br label %235

235:                                              ; preds = %226, %225, %219, %215, %213, %171, %169, %126, %123, %120, %118, %76, %72, %64
  %236 = phi i32 [ %55, %76 ], [ %55, %171 ], [ %55, %215 ], [ %55, %225 ], [ %55, %226 ], [ %55, %219 ], [ %214, %213 ], [ %170, %169 ], [ %55, %126 ], [ %55, %123 ], [ %122, %120 ], [ %119, %118 ], [ %55, %72 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret i32 %236
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_eh_action(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -168
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 68
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %13 [
    i32 7, label %45
    i32 6, label %45
    i32 4, label %45
  ]

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = load i8, ptr %15, align 1
  switch i8 %16, label %45 [
    i8 8, label %20
    i8 40, label %20
    i8 -88, label %20
    i8 -120, label %20
    i8 53, label %20
    i8 47, label %20
    i8 -81, label %20
    i8 -113, label %20
    i8 10, label %20
    i8 42, label %20
    i8 -86, label %20
    i8 -118, label %20
    i8 65, label %20
    i8 -109, label %20
    i8 66, label %20
    i8 127, label %17
  ]

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %15, i32 9
  %19 = load i8, ptr %18, align 1
  switch i8 %19, label %45 [
    i8 9, label %20
    i8 10, label %20
    i8 11, label %20
    i8 13, label %20
  ]

20:                                               ; preds = %17, %17, %17, %17, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %21 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 16711680
  %24 = icmp ne i32 %23, 196608
  %25 = icmp ne i32 %1, 8194
  %26 = or i1 %25, %24
  br i1 %26, label %45, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.scsi_disk, ptr %8, i32 0, i32 25
  %29 = load i32, ptr %28, align 2
  %30 = and i32 %29, 1048576
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.scsi_disk, ptr %8, i32 0, i32 18
  %33 = load i32, ptr %32, align 8
  br i1 %31, label %34, label %37

34:                                               ; preds = %27
  %35 = add i32 %33, 1
  store i32 %35, ptr %32, align 8
  %36 = or i32 %29, 1048576
  store i32 %36, ptr %28, align 2
  br label %37

37:                                               ; preds = %34, %27
  %38 = phi i32 [ %35, %34 ], [ %33, %27 ]
  %39 = getelementptr inbounds %struct.scsi_disk, ptr %8, i32 0, i32 17
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.33, ptr noundef %0, ptr noundef nonnull @.str.90) #17
  %43 = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 67
  tail call void @mutex_lock(ptr noundef %43) #17
  %44 = tail call i32 @scsi_device_set_state(ptr noundef %10, i32 noundef 6) #17
  tail call void @mutex_unlock(ptr noundef %43) #17
  br label %45

45:                                               ; preds = %42, %37, %20, %17, %13, %2, %2, %2
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sd_eh_reset(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -168
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.scsi_disk, ptr %7, i32 0, i32 25
  %9 = load i32, ptr %8, align 2
  %10 = and i32 %9, -1048577
  store i32 %10, ptr %8, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_autopm_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_disk_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sd_revalidate_disk(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca %struct.scsi_mode_data, align 4
  %3 = alloca %struct.scsi_sense_hdr, align 8
  %4 = alloca %struct.scsi_mode_data, align 4
  %5 = alloca %struct.scsi_sense_hdr, align 8
  %6 = alloca %struct.scsi_mode_data, align 4
  %7 = alloca [10 x i8], align 1
  %8 = alloca [10 x i8], align 1
  %9 = alloca [10 x i8], align 1
  %10 = alloca %struct.scsi_sense_hdr, align 8
  %11 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 7
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 68
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %23 [
    i32 7, label %1440
    i32 6, label %1440
    i32 4, label %1440
  ]

23:                                               ; preds = %1
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 512) #19
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load ptr, ptr %15, align 8
  %29 = icmp eq ptr %28, null
  %30 = load ptr, ptr %13, align 4
  br i1 %29, label %33, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gendisk, ptr %28, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %30, ptr noundef %32, ptr noundef nonnull @.str.17) #17
  br label %1440

33:                                               ; preds = %27
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %30, ptr noundef null, ptr noundef nonnull @.str.17) #17
  br label %1440

34:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  store i64 0, ptr %10, align 8, !annotation !13
  %35 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 19
  %36 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 1
  %37 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 8
  %38 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %10, i32 0, i32 1
  %39 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %10, i32 0, i32 2
  %40 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %10, i32 0, i32 3
  %41 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 2
  %42 = getelementptr inbounds [10 x i8], ptr %9, i32 0, i32 4
  br label %43

43:                                               ; preds = %253, %34
  %44 = phi i32 [ 0, %34 ], [ %161, %253 ]
  %45 = phi i1 [ true, %34 ], [ false, %253 ]
  %46 = phi i32 [ 0, %34 ], [ %254, %253 ]
  %47 = load i8, ptr %35, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %9, i8 0, i64 10, i1 false) #17
  %48 = load ptr, ptr %13, align 4
  %49 = load i32, ptr %37, align 8
  %50 = call i32 @__scsi_execute(ptr noundef %48, ptr noundef nonnull %9, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %10, i32 noundef 3000, i32 noundef %49, i64 noundef 0, i32 noundef 0, ptr noundef null) #17
  %51 = load i8, ptr %10, align 8
  %52 = and i8 %51, 112
  %53 = icmp eq i8 %52, 112
  br i1 %53, label %54, label %83

54:                                               ; preds = %43
  %55 = load i8, ptr %38, align 1
  switch i8 %55, label %83 [
    i8 6, label %56
    i8 2, label %56
  ]

56:                                               ; preds = %54, %54
  %57 = load i8, ptr %39, align 2
  %58 = icmp eq i8 %57, 58
  br i1 %58, label %59, label %83

59:                                               ; preds = %157, %121, %56
  %60 = phi i8 [ %47, %56 ], [ %112, %121 ], [ %148, %157 ]
  %61 = load i8, ptr %35, align 4
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %13, align 4
  %65 = getelementptr inbounds %struct.scsi_device, ptr %64, i32 0, i32 41
  %66 = load i64, ptr %65, align 4
  %67 = or i64 %66, 2
  store i64 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %63, %59
  %69 = load ptr, ptr %13, align 4
  %70 = getelementptr inbounds %struct.scsi_device, ptr %69, i32 0, i32 41
  %71 = load i64, ptr %70, align 4
  %72 = and i64 %71, 1
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  store i8 0, ptr %35, align 4
  store i64 0, ptr %19, align 8
  br label %75

75:                                               ; preds = %74, %68
  %76 = icmp eq i8 %60, 0
  br i1 %76, label %274, label %77

77:                                               ; preds = %75
  %78 = load ptr, ptr %15, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.gendisk, ptr %78, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %69, ptr noundef %81, ptr noundef nonnull @.str.18) #17
  br label %274

82:                                               ; preds = %77
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %69, ptr noundef null, ptr noundef nonnull @.str.18) #17
  br label %274

83:                                               ; preds = %56, %54, %43
  %84 = icmp eq i32 %50, 0
  %85 = zext i1 %53 to i32
  %86 = select i1 %84, i32 %44, i32 %85
  %87 = icmp slt i32 %50, 0
  %88 = and i32 %50, 16711680
  %89 = icmp eq i32 %88, 65536
  %90 = or i1 %87, %89
  br i1 %90, label %110, label %96

91:                                               ; preds = %157, %155, %146
  %92 = icmp eq i32 %151, 0
  %93 = zext i1 %154 to i32
  %94 = select i1 %92, i32 %147, i32 %93
  %95 = and i32 %151, -2147483394
  br label %160

96:                                               ; preds = %83
  %97 = trunc i32 %50 to i8
  %98 = and i8 %97, -6
  switch i8 %98, label %99 [
    i8 16, label %102
    i8 0, label %102
  ]

99:                                               ; preds = %96
  %100 = and i32 %50, 254
  %101 = icmp eq i32 %100, 34
  br i1 %101, label %102, label %110

102:                                              ; preds = %99, %96, %96
  %103 = and i32 %50, -2147483394
  %104 = icmp eq i32 %103, 2
  %105 = icmp ne i32 %86, 0
  %106 = select i1 %104, i1 %105, i1 false
  %107 = load i8, ptr %38, align 1
  %108 = icmp eq i8 %107, 6
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %160

110:                                              ; preds = %102, %99, %83
  %111 = phi i32 [ 1, %102 ], [ %86, %99 ], [ %86, %83 ]
  %112 = load i8, ptr %35, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %9, i8 0, i64 10, i1 false) #17
  %113 = load ptr, ptr %13, align 4
  %114 = load i32, ptr %37, align 8
  %115 = call i32 @__scsi_execute(ptr noundef %113, ptr noundef nonnull %9, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %10, i32 noundef 3000, i32 noundef %114, i64 noundef 0, i32 noundef 0, ptr noundef null) #17
  %116 = load i8, ptr %10, align 8
  %117 = and i8 %116, 112
  %118 = icmp eq i8 %117, 112
  br i1 %118, label %119, label %124

119:                                              ; preds = %110
  %120 = load i8, ptr %38, align 1
  switch i8 %120, label %124 [
    i8 6, label %121
    i8 2, label %121
  ]

121:                                              ; preds = %119, %119
  %122 = load i8, ptr %39, align 2
  %123 = icmp eq i8 %122, 58
  br i1 %123, label %59, label %124

124:                                              ; preds = %121, %119, %110
  %125 = icmp eq i32 %115, 0
  %126 = zext i1 %118 to i32
  %127 = select i1 %125, i32 %111, i32 %126
  %128 = icmp slt i32 %115, 0
  %129 = and i32 %115, 16711680
  %130 = icmp eq i32 %129, 65536
  %131 = or i1 %128, %130
  br i1 %131, label %146, label %132

132:                                              ; preds = %124
  %133 = trunc i32 %115 to i8
  %134 = and i8 %133, -6
  switch i8 %134, label %135 [
    i8 16, label %138
    i8 0, label %138
  ]

135:                                              ; preds = %132
  %136 = and i32 %115, 254
  %137 = icmp eq i32 %136, 34
  br i1 %137, label %138, label %146

138:                                              ; preds = %135, %132, %132
  %139 = and i32 %115, -2147483394
  %140 = icmp eq i32 %139, 2
  %141 = icmp ne i32 %127, 0
  %142 = select i1 %140, i1 %141, i1 false
  %143 = load i8, ptr %38, align 1
  %144 = icmp eq i8 %143, 6
  %145 = select i1 %142, i1 %144, i1 false
  br i1 %145, label %146, label %160

146:                                              ; preds = %138, %135, %124
  %147 = phi i32 [ 1, %138 ], [ %127, %135 ], [ %127, %124 ]
  %148 = load i8, ptr %35, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %9, i8 0, i64 10, i1 false) #17
  %149 = load ptr, ptr %13, align 4
  %150 = load i32, ptr %37, align 8
  %151 = call i32 @__scsi_execute(ptr noundef %149, ptr noundef nonnull %9, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %10, i32 noundef 3000, i32 noundef %150, i64 noundef 0, i32 noundef 0, ptr noundef null) #17
  %152 = load i8, ptr %10, align 8
  %153 = and i8 %152, 112
  %154 = icmp eq i8 %153, 112
  br i1 %154, label %155, label %91

155:                                              ; preds = %146
  %156 = load i8, ptr %38, align 1
  switch i8 %156, label %91 [
    i8 6, label %157
    i8 2, label %157
  ]

157:                                              ; preds = %155, %155
  %158 = load i8, ptr %39, align 2
  %159 = icmp eq i8 %158, 58
  br i1 %159, label %59, label %91

160:                                              ; preds = %138, %102, %91
  %161 = phi i32 [ %94, %91 ], [ %86, %102 ], [ %127, %138 ]
  %162 = phi i32 [ %151, %91 ], [ %50, %102 ], [ %115, %138 ]
  %163 = phi i32 [ %95, %91 ], [ %103, %102 ], [ %139, %138 ]
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %185, label %165

165:                                              ; preds = %160
  br i1 %45, label %166, label %259

166:                                              ; preds = %165
  %167 = icmp slt i32 %162, 0
  %168 = and i32 %162, 16711680
  %169 = icmp eq i32 %168, 65536
  %170 = or i1 %167, %169
  br i1 %170, label %177, label %171

171:                                              ; preds = %166
  %172 = trunc i32 %162 to i8
  %173 = and i8 %172, -6
  switch i8 %173, label %174 [
    i8 16, label %274
    i8 0, label %274
  ]

174:                                              ; preds = %171
  %175 = and i32 %162, 254
  %176 = icmp eq i32 %175, 34
  br i1 %176, label %274, label %177

177:                                              ; preds = %174, %166
  %178 = load ptr, ptr %15, align 8
  %179 = icmp eq ptr %178, null
  %180 = load ptr, ptr %13, align 4
  %181 = getelementptr inbounds %struct.gendisk, ptr %178, i32 0, i32 3
  %182 = select i1 %179, ptr null, ptr %181
  %183 = lshr i32 %162, 16
  %184 = and i32 %183, 255
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %180, ptr noundef %182, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.19, i32 noundef %184, ptr noundef nonnull @.str.4) #17
  br label %274

185:                                              ; preds = %160
  %186 = load ptr, ptr %13, align 4
  %187 = getelementptr inbounds %struct.scsi_device, ptr %186, i32 0, i32 41
  %188 = load i64, ptr %187, align 4
  %189 = and i64 %188, 67108864
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %258

191:                                              ; preds = %185
  %192 = icmp ne i32 %161, 0
  %193 = load i8, ptr %38, align 1
  %194 = icmp eq i8 %193, 2
  %195 = select i1 %192, i1 %194, i1 false
  br i1 %195, label %196, label %230

196:                                              ; preds = %191
  %197 = load i8, ptr %39, align 2
  %198 = icmp eq i8 %197, 4
  %199 = load i8, ptr %40, align 1
  %200 = icmp eq i8 %199, 3
  %201 = select i1 %198, i1 %200, i1 false
  %202 = icmp eq i8 %199, 11
  %203 = select i1 %198, i1 %202, i1 false
  %204 = select i1 %201, i1 true, i1 %203
  %205 = icmp eq i8 %199, 12
  %206 = select i1 %198, i1 %205, i1 false
  %207 = select i1 %204, i1 true, i1 %206
  %208 = icmp eq i8 %199, 27
  %209 = select i1 %198, i1 %208, i1 false
  %210 = select i1 %207, i1 true, i1 %209
  br i1 %210, label %258, label %211

211:                                              ; preds = %196
  br i1 %45, label %212, label %227

212:                                              ; preds = %211
  %213 = load ptr, ptr %15, align 8
  %214 = icmp eq ptr %213, null
  %215 = getelementptr inbounds %struct.gendisk, ptr %213, i32 0, i32 3
  %216 = select i1 %214, ptr null, ptr %215
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %186, ptr noundef %216, ptr noundef nonnull @.str.20) #17
  store i8 27, ptr %9, align 1
  store i8 1, ptr %36, align 1
  store i64 65536, ptr %41, align 1
  %217 = load ptr, ptr %13, align 4
  %218 = getelementptr inbounds %struct.scsi_device, ptr %217, i32 0, i32 41
  %219 = load i64, ptr %218, align 4
  %220 = and i64 %219, 536870912
  %221 = icmp eq i64 %220, 0
  %222 = select i1 %221, i8 1, i8 17
  store i8 %222, ptr %42, align 1
  %223 = load i32, ptr %37, align 8
  %224 = call i32 @__scsi_execute(ptr noundef %217, ptr noundef nonnull %9, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %10, i32 noundef 3000, i32 noundef %223, i64 noundef 0, i32 noundef 0, ptr noundef null) #17
  %225 = load volatile i32, ptr @jiffies, align 64
  %226 = add i32 %225, 10000
  br label %227

227:                                              ; preds = %212, %211
  %228 = phi i32 [ %46, %211 ], [ %226, %212 ]
  call void @msleep(i32 noundef 1000) #17
  %229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #18
  br label %253

230:                                              ; preds = %191
  %231 = icmp eq i8 %193, 6
  %232 = select i1 %192, i1 %231, i1 false
  %233 = load i8, ptr %39, align 2
  %234 = icmp eq i8 %233, 40
  %235 = select i1 %232, i1 %234, i1 false
  br i1 %235, label %236, label %242

236:                                              ; preds = %230
  br i1 %45, label %237, label %240

237:                                              ; preds = %236
  %238 = load volatile i32, ptr @jiffies, align 64
  %239 = add i32 %238, 500
  br label %240

240:                                              ; preds = %237, %236
  %241 = phi i32 [ %46, %236 ], [ %239, %237 ]
  call void @msleep(i32 noundef 1000) #17
  br label %253

242:                                              ; preds = %230
  br i1 %45, label %243, label %259

243:                                              ; preds = %242
  %244 = load ptr, ptr %15, align 8
  %245 = icmp eq ptr %244, null
  %246 = getelementptr inbounds %struct.gendisk, ptr %244, i32 0, i32 3
  %247 = select i1 %245, ptr null, ptr %246
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %186, ptr noundef %247, ptr noundef nonnull @.str.22) #17
  %248 = load ptr, ptr %13, align 4
  %249 = load ptr, ptr %15, align 8
  %250 = icmp eq ptr %249, null
  %251 = getelementptr inbounds %struct.gendisk, ptr %249, i32 0, i32 3
  %252 = select i1 %250, ptr null, ptr %251
  call void @scsi_print_sense_hdr(ptr noundef %248, ptr noundef %252, ptr noundef nonnull %10) #17
  br label %274

253:                                              ; preds = %240, %227
  %254 = phi i32 [ %228, %227 ], [ %241, %240 ]
  %255 = load volatile i32, ptr @jiffies, align 64
  %256 = sub i32 %254, %255
  %257 = icmp sgt i32 %256, -1
  br i1 %257, label %43, label %259

258:                                              ; preds = %196, %185
  br i1 %45, label %274, label %259

259:                                              ; preds = %258, %253, %242, %165
  %260 = icmp slt i32 %162, 0
  %261 = and i32 %162, 16711680
  %262 = icmp eq i32 %261, 65536
  %263 = or i1 %260, %262
  br i1 %263, label %272, label %264

264:                                              ; preds = %259
  %265 = trunc i32 %162 to i8
  %266 = and i8 %265, -6
  switch i8 %266, label %267 [
    i8 16, label %270
    i8 0, label %270
  ]

267:                                              ; preds = %264
  %268 = and i32 %162, 254
  %269 = icmp eq i32 %268, 34
  br i1 %269, label %270, label %272

270:                                              ; preds = %267, %264, %264
  %271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #18
  br label %274

272:                                              ; preds = %267, %259
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #18
  br label %274

274:                                              ; preds = %272, %270, %258, %243, %177, %174, %171, %171, %82, %80, %75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %9) #17
  %275 = load i8, ptr %35, align 4
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %1286, label %277

277:                                              ; preds = %274
  %278 = load ptr, ptr %13, align 4
  %279 = load ptr, ptr %278, align 8
  %280 = getelementptr inbounds %struct.Scsi_Host, ptr %279, i32 0, i32 24
  %281 = load i16, ptr %280, align 4
  %282 = icmp ult i16 %281, 16
  br i1 %282, label %311, label %283

283:                                              ; preds = %277
  %284 = getelementptr inbounds %struct.scsi_device, ptr %278, i32 0, i32 41
  %285 = load i64, ptr %284, align 4
  %286 = and i64 %285, 274877906944
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %311

288:                                              ; preds = %283
  %289 = getelementptr inbounds %struct.scsi_device, ptr %278, i32 0, i32 23
  %290 = load i8, ptr %289, align 1
  %291 = icmp ugt i8 %290, 5
  br i1 %291, label %304, label %292

292:                                              ; preds = %288
  %293 = and i64 %285, 4398046511104
  %294 = icmp eq i64 %293, 0
  %295 = icmp ugt i8 %290, 3
  %296 = select i1 %294, i1 %295, i1 false
  br i1 %296, label %297, label %311

297:                                              ; preds = %292
  %298 = getelementptr inbounds %struct.scsi_device, ptr %278, i32 0, i32 29
  %299 = load ptr, ptr %298, align 8
  %300 = getelementptr i8, ptr %299, i32 5
  %301 = load i8, ptr %300, align 1
  %302 = and i8 %301, 1
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %311, label %304

304:                                              ; preds = %297, %288
  %305 = call fastcc i32 @read_capacity_16(ptr noundef %12, ptr noundef %278, ptr noundef %25) #17
  switch i32 %305, label %306 [
    i32 -75, label %373
    i32 -19, label %398
  ]

306:                                              ; preds = %304
  %307 = icmp slt i32 %305, 0
  br i1 %307, label %308, label %337

308:                                              ; preds = %306
  %309 = call fastcc i32 @read_capacity_10(ptr noundef %12, ptr noundef %278, ptr noundef %25) #17
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %398, label %337

311:                                              ; preds = %297, %292, %283, %277
  %312 = call fastcc i32 @read_capacity_10(ptr noundef %12, ptr noundef %278, ptr noundef %25) #17
  %313 = icmp eq i32 %312, -75
  br i1 %313, label %373, label %314

314:                                              ; preds = %311
  %315 = icmp slt i32 %312, 0
  br i1 %315, label %398, label %316

316:                                              ; preds = %314
  %317 = load i64, ptr %19, align 8
  %318 = icmp ugt i64 %317, 4294967295
  br i1 %318, label %319, label %337

319:                                              ; preds = %316
  %320 = load ptr, ptr %15, align 8
  %321 = icmp eq ptr %320, null
  %322 = load ptr, ptr %13, align 4
  %323 = getelementptr inbounds %struct.gendisk, ptr %320, i32 0, i32 3
  %324 = select i1 %321, ptr null, ptr %323
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %322, ptr noundef %324, ptr noundef nonnull @.str.25) #17
  %325 = call fastcc i32 @read_capacity_16(ptr noundef %12, ptr noundef %278, ptr noundef %25) #17
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %319
  %328 = load ptr, ptr %15, align 8
  %329 = icmp eq ptr %328, null
  %330 = load ptr, ptr %13, align 4
  %331 = getelementptr inbounds %struct.gendisk, ptr %328, i32 0, i32 3
  %332 = select i1 %329, ptr null, ptr %331
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %330, ptr noundef %332, ptr noundef nonnull @.str.26) #17
  br label %361

333:                                              ; preds = %319
  %334 = getelementptr inbounds %struct.scsi_device, ptr %278, i32 0, i32 41
  %335 = load i64, ptr %334, align 4
  %336 = and i64 %335, -274877906945
  store i64 %336, ptr %334, align 4
  br label %337

337:                                              ; preds = %333, %316, %308, %306
  %338 = phi i32 [ %309, %308 ], [ %312, %316 ], [ %325, %333 ], [ %305, %306 ]
  %339 = getelementptr inbounds %struct.scsi_device, ptr %278, i32 0, i32 41
  %340 = load i64, ptr %339, align 4
  %341 = and i64 %340, 4294967296
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %345, label %343

343:                                              ; preds = %337
  %344 = load i64, ptr %19, align 8
  br label %352

345:                                              ; preds = %337
  %346 = and i64 %340, 8589934592
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %364, label %348

348:                                              ; preds = %345
  %349 = load i64, ptr %19, align 8
  %350 = and i64 %349, 1
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %364, label %352

352:                                              ; preds = %348, %343
  %353 = phi i64 [ %344, %343 ], [ %349, %348 ]
  %354 = load ptr, ptr %15, align 8
  %355 = icmp eq ptr %354, null
  %356 = load ptr, ptr %13, align 4
  %357 = getelementptr inbounds %struct.gendisk, ptr %354, i32 0, i32 3
  %358 = select i1 %355, ptr null, ptr %357
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %356, ptr noundef %358, ptr noundef nonnull @.str.27, i64 noundef %353) #17
  %359 = load i64, ptr %19, align 8
  %360 = add i64 %359, -1
  br label %361

361:                                              ; preds = %352, %327
  %362 = phi i64 [ %360, %352 ], [ 4294967296, %327 ]
  %363 = phi i32 [ %338, %352 ], [ %312, %327 ]
  store i64 %362, ptr %19, align 8
  br label %364

364:                                              ; preds = %361, %348, %345
  %365 = phi i32 [ %338, %348 ], [ %338, %345 ], [ %363, %361 ]
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %364
  %368 = load ptr, ptr %15, align 8
  %369 = icmp eq ptr %368, null
  %370 = load ptr, ptr %13, align 4
  %371 = getelementptr inbounds %struct.gendisk, ptr %368, i32 0, i32 3
  %372 = select i1 %369, ptr null, ptr %371
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %370, ptr noundef %372, ptr noundef nonnull @.str.28) #17
  br label %373

373:                                              ; preds = %367, %364, %311, %304
  %374 = phi i32 [ %365, %364 ], [ %305, %304 ], [ -75, %311 ], [ 512, %367 ]
  %375 = add nsw i32 %374, -512
  %376 = call i32 @llvm.fshl.i32(i32 %375, i32 %375, i32 23) #17
  switch i32 %376, label %377 [
    i32 7, label %383
    i32 3, label %383
    i32 1, label %383
    i32 0, label %383
  ]

377:                                              ; preds = %373
  %378 = load ptr, ptr %15, align 8
  %379 = icmp eq ptr %378, null
  %380 = load ptr, ptr %13, align 4
  %381 = getelementptr inbounds %struct.gendisk, ptr %378, i32 0, i32 3
  %382 = select i1 %379, ptr null, ptr %381
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %380, ptr noundef %382, ptr noundef nonnull @.str.29, i32 noundef %374) #17
  store i64 0, ptr %19, align 8
  br label %383

383:                                              ; preds = %377, %373, %373, %373, %373
  %384 = phi i32 [ 512, %377 ], [ %374, %373 ], [ %374, %373 ], [ %374, %373 ], [ %374, %373 ]
  %385 = getelementptr inbounds %struct.scsi_device, ptr %278, i32 0, i32 1
  %386 = load ptr, ptr %385, align 4
  call void @blk_queue_logical_block_size(ptr noundef %386, i32 noundef %384) #17
  %387 = load ptr, ptr %385, align 4
  %388 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 16
  %389 = load i32, ptr %388, align 8
  call void @blk_queue_physical_block_size(ptr noundef %387, i32 noundef %389) #17
  %390 = load ptr, ptr %13, align 4
  %391 = getelementptr inbounds %struct.scsi_device, ptr %390, i32 0, i32 20
  store i32 %384, ptr %391, align 4
  %392 = load i64, ptr %19, align 8
  %393 = icmp ugt i64 %392, 4294967295
  br i1 %393, label %394, label %398

394:                                              ; preds = %383
  %395 = getelementptr inbounds %struct.scsi_device, ptr %278, i32 0, i32 41
  %396 = load i64, ptr %395, align 4
  %397 = or i64 %396, 1048576
  store i64 %397, ptr %395, align 4
  br label %398

398:                                              ; preds = %394, %383, %314, %308, %304
  call void @blk_queue_flag_clear(i32 noundef 6, ptr noundef %18) #17
  call void @blk_queue_flag_set(i32 noundef 10, ptr noundef %18) #17
  %399 = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 41
  %400 = load i64, ptr %399, align 4
  %401 = and i64 %400, 16777216
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %403, label %410

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 23
  %405 = load i8, ptr %404, align 1
  %406 = icmp ult i8 %405, 5
  %407 = and i64 %400, 8388608
  %408 = icmp ne i64 %407, 0
  %409 = select i1 %406, i1 true, i1 %408
  br i1 %409, label %591, label %410

410:                                              ; preds = %403, %398
  %411 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 25
  %412 = load i32, ptr %411, align 2
  %413 = and i32 %412, 64
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %444, label %415

415:                                              ; preds = %410
  %416 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %417 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %416, i32 noundef 3264, i32 noundef 8) #19
  %418 = icmp eq ptr %417, null
  br i1 %418, label %443, label %419

419:                                              ; preds = %415
  %420 = load ptr, ptr %13, align 4
  %421 = call i32 @scsi_get_vpd_page(ptr noundef %420, i8 noundef zeroext -78, ptr noundef nonnull %417, i32 noundef 8) #17
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %443

423:                                              ; preds = %419
  %424 = load i32, ptr %411, align 2
  %425 = getelementptr i8, ptr %417, i32 5
  %426 = load i8, ptr %425, align 1
  %427 = lshr i8 %426, 7
  %428 = zext i8 %427 to i32
  %429 = shl nuw nsw i32 %428, 8
  %430 = and i32 %424, -3841
  %431 = or i32 %430, 2048
  %432 = or i32 %429, %431
  %433 = lshr i8 %426, 6
  %434 = zext i8 %433 to i32
  %435 = shl nuw nsw i32 %434, 9
  %436 = lshr i8 %426, 5
  %437 = and i8 %436, 1
  %438 = zext i8 %437 to i32
  %439 = shl nuw nsw i32 %438, 10
  %440 = and i32 %435, 512
  %441 = or i32 %432, %440
  %442 = or i32 %441, %439
  store i32 %442, ptr %411, align 2
  br label %443

443:                                              ; preds = %423, %419, %415
  call void @kfree(ptr noundef %417) #17
  br label %444

444:                                              ; preds = %443, %410
  %445 = load ptr, ptr %13, align 4
  %446 = getelementptr inbounds %struct.scsi_device, ptr %445, i32 0, i32 20
  %447 = load i32, ptr %446, align 4
  %448 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %449 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %448, i32 noundef 3264, i32 noundef 64) #19
  %450 = icmp eq ptr %449, null
  br i1 %450, label %532, label %451

451:                                              ; preds = %444
  %452 = load ptr, ptr %13, align 4
  %453 = call i32 @scsi_get_vpd_page(ptr noundef %452, i8 noundef zeroext -80, ptr noundef nonnull %449, i32 noundef 64) #17
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %532

455:                                              ; preds = %451
  %456 = load ptr, ptr %15, align 8
  %457 = getelementptr inbounds %struct.gendisk, ptr %456, i32 0, i32 9
  %458 = load ptr, ptr %457, align 4
  %459 = getelementptr i8, ptr %449, i32 6
  %460 = load i16, ptr %459, align 2
  %461 = call i16 @llvm.bswap.i16(i16 %460) #17
  %462 = zext i16 %461 to i32
  %463 = mul i32 %447, %462
  call void @blk_queue_io_min(ptr noundef %458, i32 noundef %463) #17
  %464 = getelementptr i8, ptr %449, i32 8
  %465 = load i32, ptr %464, align 8
  %466 = call i32 @llvm.bswap.i32(i32 %465) #17
  %467 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 9
  store i32 %466, ptr %467, align 4
  %468 = getelementptr i8, ptr %449, i32 12
  %469 = load i32, ptr %468, align 4
  %470 = call i32 @llvm.bswap.i32(i32 %469) #17
  %471 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 10
  store i32 %470, ptr %471, align 8
  %472 = getelementptr i8, ptr %449, i32 3
  %473 = load i8, ptr %472, align 1
  %474 = icmp eq i8 %473, 60
  br i1 %474, label %475, label %532

475:                                              ; preds = %455
  %476 = getelementptr i8, ptr %449, i32 36
  %477 = load i64, ptr %476, align 4
  %478 = call i64 @llvm.bswap.i64(i64 %477) #17
  %479 = trunc i64 %478 to i32
  %480 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 11
  store i32 %479, ptr %480, align 4
  %481 = load i32, ptr %411, align 2
  %482 = and i32 %481, 64
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %532, label %484

484:                                              ; preds = %475
  %485 = getelementptr i8, ptr %449, i32 20
  %486 = load i32, ptr %485, align 4
  %487 = getelementptr i8, ptr %449, i32 24
  %488 = load i32, ptr %487, align 8
  %489 = icmp ne i32 %486, 0
  %490 = icmp ne i32 %488, 0
  %491 = select i1 %489, i1 %490, i1 false
  br i1 %491, label %492, label %495

492:                                              ; preds = %484
  %493 = call i32 @llvm.bswap.i32(i32 %486) #17
  %494 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 12
  store i32 %493, ptr %494, align 8
  br label %495

495:                                              ; preds = %492, %484
  %496 = getelementptr i8, ptr %449, i32 28
  %497 = load i32, ptr %496, align 4
  %498 = call i32 @llvm.bswap.i32(i32 %497) #17
  %499 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 13
  store i32 %498, ptr %499, align 4
  %500 = getelementptr i8, ptr %449, i32 32
  %501 = load i8, ptr %500, align 8
  %502 = icmp sgt i8 %501, -1
  br i1 %502, label %508, label %503

503:                                              ; preds = %495
  %504 = load i32, ptr %500, align 8
  %505 = and i32 %504, -129
  %506 = call i32 @llvm.bswap.i32(i32 %505) #17
  %507 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 14
  store i32 %506, ptr %507, align 8
  br label %508

508:                                              ; preds = %503, %495
  %509 = and i32 %481, 2048
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %516

511:                                              ; preds = %508
  %512 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 12
  %513 = load i32, ptr %512, align 8
  %514 = icmp eq i32 %513, 0
  %515 = select i1 %514, i32 2, i32 1
  br label %530

516:                                              ; preds = %508
  %517 = and i32 %481, 256
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %523, label %519

519:                                              ; preds = %516
  %520 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 12
  %521 = load i32, ptr %520, align 8
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %530

523:                                              ; preds = %519, %516
  %524 = and i32 %481, 512
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %530

526:                                              ; preds = %523
  %527 = and i32 %481, 1024
  %528 = icmp eq i32 %527, 0
  %529 = select i1 %528, i32 5, i32 3
  br label %530

530:                                              ; preds = %526, %523, %519, %511
  %531 = phi i32 [ %515, %511 ], [ 1, %519 ], [ 2, %523 ], [ %529, %526 ]
  call fastcc void @sd_config_discard(ptr noundef %12, i32 noundef %531) #17
  br label %532

532:                                              ; preds = %530, %475, %455, %451, %444
  call void @kfree(ptr noundef %449) #17
  %533 = load ptr, ptr %15, align 8
  %534 = getelementptr inbounds %struct.gendisk, ptr %533, i32 0, i32 9
  %535 = load ptr, ptr %534, align 4
  %536 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %537 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %536, i32 noundef 3264, i32 noundef 64) #19
  %538 = icmp eq ptr %537, null
  br i1 %538, label %590, label %539

539:                                              ; preds = %532
  %540 = load ptr, ptr %13, align 4
  %541 = call i32 @scsi_get_vpd_page(ptr noundef %540, i8 noundef zeroext -79, ptr noundef nonnull %537, i32 noundef 64) #17
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %590

543:                                              ; preds = %539
  %544 = getelementptr i8, ptr %537, i32 4
  %545 = load i16, ptr %544, align 4
  %546 = icmp eq i16 %545, 256
  br i1 %546, label %547, label %548

547:                                              ; preds = %543
  call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %535) #17
  call void @blk_queue_flag_clear(i32 noundef 10, ptr noundef %535) #17
  br label %548

548:                                              ; preds = %547, %543
  %549 = load ptr, ptr %13, align 4
  %550 = getelementptr inbounds %struct.scsi_device, ptr %549, i32 0, i32 22
  %551 = load i8, ptr %550, align 4
  %552 = icmp eq i8 %551, 20
  br i1 %552, label %553, label %555

553:                                              ; preds = %548
  %554 = load ptr, ptr %15, align 8
  call void @blk_queue_set_zoned(ptr noundef %554, i32 noundef 2) #17
  br label %569

555:                                              ; preds = %548
  %556 = getelementptr i8, ptr %537, i32 8
  %557 = load i8, ptr %556, align 8
  %558 = lshr i8 %557, 4
  %559 = and i8 %558, 3
  %560 = zext i8 %559 to i32
  %561 = load i32, ptr %411, align 2
  %562 = shl nuw nsw i32 %560, 16
  %563 = and i32 %561, -196609
  %564 = or i32 %562, %563
  store i32 %564, ptr %411, align 2
  %565 = icmp eq i8 %559, 1
  %566 = load ptr, ptr %15, align 8
  br i1 %565, label %567, label %568

567:                                              ; preds = %555
  call void @blk_queue_set_zoned(ptr noundef %566, i32 noundef 1) #17
  br label %569

568:                                              ; preds = %555
  call void @blk_queue_set_zoned(ptr noundef %566, i32 noundef 0) #17
  br label %569

569:                                              ; preds = %568, %567, %553
  %570 = load i32, ptr %411, align 2
  %571 = and i32 %570, 32
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %590, label %573

573:                                              ; preds = %569
  %574 = lshr i32 %570, 16
  %575 = and i32 %574, 3
  switch i32 %575, label %590 [
    i32 1, label %576
    i32 2, label %583
  ]

576:                                              ; preds = %573
  %577 = load ptr, ptr %15, align 8
  %578 = icmp eq ptr %577, null
  %579 = load ptr, ptr %13, align 4
  br i1 %578, label %582, label %580

580:                                              ; preds = %576
  %581 = getelementptr inbounds %struct.gendisk, ptr %577, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %579, ptr noundef %581, ptr noundef nonnull @.str.41) #17
  br label %590

582:                                              ; preds = %576
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %579, ptr noundef null, ptr noundef nonnull @.str.41) #17
  br label %590

583:                                              ; preds = %573
  %584 = load ptr, ptr %15, align 8
  %585 = icmp eq ptr %584, null
  %586 = load ptr, ptr %13, align 4
  br i1 %585, label %589, label %587

587:                                              ; preds = %583
  %588 = getelementptr inbounds %struct.gendisk, ptr %584, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %586, ptr noundef %588, ptr noundef nonnull @.str.42) #17
  br label %590

589:                                              ; preds = %583
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %586, ptr noundef null, ptr noundef nonnull @.str.42) #17
  br label %590

590:                                              ; preds = %589, %587, %582, %580, %573, %569, %539, %532
  call void @kfree(ptr noundef %537) #17
  br label %591

591:                                              ; preds = %590, %403
  %592 = load ptr, ptr %13, align 4
  %593 = getelementptr inbounds %struct.scsi_device, ptr %592, i32 0, i32 20
  %594 = load i32, ptr %593, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %7) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %7, i8 0, i32 10, i1 false) #17, !annotation !13
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %8) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %8, i8 0, i32 10, i1 false) #17, !annotation !13
  %595 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 25
  %596 = load i32, ptr %595, align 2
  %597 = and i32 %596, 32
  %598 = icmp eq i32 %597, 0
  %599 = load i64, ptr %19, align 8
  %600 = icmp eq i64 %599, %20
  %601 = select i1 %598, i1 %600, i1 false
  br i1 %601, label %620, label %602

602:                                              ; preds = %591
  %603 = sext i32 %594 to i64
  call void @string_get_size(i64 noundef %599, i64 noundef %603, i32 noundef 1, ptr noundef nonnull %7, i32 noundef 10) #17
  %604 = load i64, ptr %19, align 8
  call void @string_get_size(i64 noundef %604, i64 noundef %603, i32 noundef 0, ptr noundef nonnull %8, i32 noundef 10) #17
  %605 = load ptr, ptr %15, align 8
  %606 = icmp eq ptr %605, null
  %607 = load ptr, ptr %13, align 4
  %608 = getelementptr inbounds %struct.gendisk, ptr %605, i32 0, i32 3
  %609 = select i1 %606, ptr null, ptr %608
  %610 = load i64, ptr %19, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %607, ptr noundef %609, ptr noundef nonnull @.str.43, i64 noundef %610, i32 noundef %594, ptr noundef nonnull %8, ptr noundef nonnull %7) #17
  %611 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 16
  %612 = load i32, ptr %611, align 8
  %613 = icmp eq i32 %612, %594
  br i1 %613, label %620, label %614

614:                                              ; preds = %602
  %615 = load ptr, ptr %15, align 8
  %616 = icmp eq ptr %615, null
  %617 = load ptr, ptr %13, align 4
  %618 = getelementptr inbounds %struct.gendisk, ptr %615, i32 0, i32 3
  %619 = select i1 %616, ptr null, ptr %618
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %617, ptr noundef %619, ptr noundef nonnull @.str.44, i32 noundef %612) #17
  br label %620

620:                                              ; preds = %614, %602, %591
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %7) #17
  %621 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false) #17, !annotation !13
  %622 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 20
  %623 = load i8, ptr %622, align 1
  %624 = load ptr, ptr %15, align 8
  call void @set_disk_ro(ptr noundef %624, i1 noundef zeroext false) #17
  %625 = getelementptr inbounds %struct.scsi_device, ptr %621, i32 0, i32 41
  %626 = load i64, ptr %625, align 4
  %627 = and i64 %626, 4194304
  %628 = icmp eq i64 %627, 0
  br i1 %628, label %640, label %629

629:                                              ; preds = %620
  %630 = load i32, ptr %595, align 2
  %631 = and i32 %630, 32
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %710, label %633

633:                                              ; preds = %629
  %634 = load ptr, ptr %15, align 8
  %635 = icmp eq ptr %634, null
  %636 = load ptr, ptr %13, align 4
  br i1 %635, label %639, label %637

637:                                              ; preds = %633
  %638 = getelementptr inbounds %struct.gendisk, ptr %634, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %636, ptr noundef %638, ptr noundef nonnull @.str.45) #17
  br label %710

639:                                              ; preds = %633
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %636, ptr noundef null, ptr noundef nonnull @.str.45) #17
  br label %710

640:                                              ; preds = %620
  %641 = and i64 %626, 33554432
  %642 = icmp eq i64 %641, 0
  %643 = load ptr, ptr %13, align 4
  br i1 %642, label %647, label %644

644:                                              ; preds = %640
  %645 = load i32, ptr %37, align 8
  %646 = call i32 @scsi_mode_sense(ptr noundef %643, i32 noundef 0, i32 noundef 63, ptr noundef %25, i32 noundef 192, i32 noundef 3000, i32 noundef %645, ptr noundef nonnull %6, ptr noundef null) #17
  br label %670

647:                                              ; preds = %640
  %648 = getelementptr inbounds %struct.scsi_device, ptr %643, i32 0, i32 41
  %649 = load i64, ptr %648, align 4
  %650 = and i64 %649, 65536
  %651 = icmp eq i64 %650, 0
  %652 = select i1 %651, i32 4, i32 8
  %653 = load i32, ptr %37, align 8
  %654 = call i32 @scsi_mode_sense(ptr noundef %643, i32 noundef 0, i32 noundef 63, ptr noundef %25, i32 noundef %652, i32 noundef 3000, i32 noundef %653, ptr noundef nonnull %6, ptr noundef null) #17
  %655 = icmp slt i32 %654, 0
  br i1 %655, label %656, label %684

656:                                              ; preds = %647
  %657 = load ptr, ptr %13, align 4
  %658 = getelementptr inbounds %struct.scsi_device, ptr %657, i32 0, i32 41
  %659 = load i64, ptr %658, align 4
  %660 = and i64 %659, 65536
  %661 = icmp eq i64 %660, 0
  %662 = select i1 %661, i32 4, i32 8
  %663 = load i32, ptr %37, align 8
  %664 = call i32 @scsi_mode_sense(ptr noundef %657, i32 noundef 0, i32 noundef 0, ptr noundef %25, i32 noundef %662, i32 noundef 3000, i32 noundef %663, ptr noundef nonnull %6, ptr noundef null) #17
  %665 = icmp slt i32 %664, 0
  br i1 %665, label %666, label %684

666:                                              ; preds = %656
  %667 = load ptr, ptr %13, align 4
  %668 = load i32, ptr %37, align 8
  %669 = call i32 @scsi_mode_sense(ptr noundef %667, i32 noundef 0, i32 noundef 63, ptr noundef %25, i32 noundef 255, i32 noundef 3000, i32 noundef %668, ptr noundef nonnull %6, ptr noundef null) #17
  br label %670

670:                                              ; preds = %666, %644
  %671 = phi i32 [ %646, %644 ], [ %669, %666 ]
  %672 = icmp slt i32 %671, 0
  br i1 %672, label %673, label %684

673:                                              ; preds = %670
  %674 = load i32, ptr %595, align 2
  %675 = and i32 %674, 32
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %710, label %677

677:                                              ; preds = %673
  %678 = load ptr, ptr %15, align 8
  %679 = icmp eq ptr %678, null
  %680 = load ptr, ptr %13, align 4
  br i1 %679, label %683, label %681

681:                                              ; preds = %677
  %682 = getelementptr inbounds %struct.gendisk, ptr %678, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %680, ptr noundef %682, ptr noundef nonnull @.str.46) #17
  br label %710

683:                                              ; preds = %677
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %680, ptr noundef null, ptr noundef nonnull @.str.46) #17
  br label %710

684:                                              ; preds = %670, %656, %647
  %685 = getelementptr inbounds %struct.scsi_mode_data, ptr %6, i32 0, i32 3
  %686 = load i8, ptr %685, align 1
  %687 = lshr i8 %686, 7
  store i8 %687, ptr %622, align 1
  %688 = load ptr, ptr %15, align 8
  %689 = icmp slt i8 %686, 0
  call void @set_disk_ro(ptr noundef %688, i1 noundef zeroext %689) #17
  %690 = load i32, ptr %595, align 2
  %691 = and i32 %690, 32
  %692 = icmp eq i32 %691, 0
  %693 = load i8, ptr %622, align 1
  %694 = icmp eq i8 %623, %693
  %695 = select i1 %692, i1 %694, i1 false
  br i1 %695, label %710, label %696

696:                                              ; preds = %684
  %697 = load ptr, ptr %15, align 8
  %698 = icmp eq ptr %697, null
  %699 = load ptr, ptr %13, align 4
  %700 = getelementptr inbounds %struct.gendisk, ptr %697, i32 0, i32 3
  %701 = select i1 %698, ptr null, ptr %700
  %702 = icmp eq i8 %693, 0
  %703 = select i1 %702, ptr @.str.49, ptr @.str.48
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %699, ptr noundef %701, ptr noundef nonnull @.str.47, ptr noundef nonnull %703) #17
  %704 = load ptr, ptr %15, align 8
  %705 = icmp eq ptr %704, null
  %706 = load ptr, ptr %13, align 4
  br i1 %705, label %709, label %707

707:                                              ; preds = %696
  %708 = getelementptr inbounds %struct.gendisk, ptr %704, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.50, ptr noundef %706, ptr noundef %708, ptr noundef nonnull @.str.51, ptr noundef %25) #17
  br label %710

709:                                              ; preds = %696
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.50, ptr noundef %706, ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef %25) #17
  br label %710

710:                                              ; preds = %709, %707, %684, %683, %681, %673, %639, %637, %629
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  %711 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #17, !annotation !13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  store i64 0, ptr %5, align 8, !annotation !13
  %712 = load i32, ptr %595, align 2
  %713 = and i32 %712, 2
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %715, label %1057

715:                                              ; preds = %710
  %716 = getelementptr inbounds %struct.scsi_device, ptr %711, i32 0, i32 41
  %717 = load i64, ptr %716, align 4
  %718 = and i64 %717, 2097152
  %719 = icmp eq i64 %718, 0
  %720 = getelementptr inbounds %struct.scsi_device, ptr %711, i32 0, i32 22
  %721 = load i8, ptr %720, align 4
  br i1 %719, label %731, label %722

722:                                              ; preds = %715
  %723 = icmp ne i8 %721, 14
  %724 = and i64 %717, 4194304
  %725 = icmp eq i64 %724, 0
  %726 = select i1 %723, i1 %725, i1 false
  br i1 %726, label %727, label %1025

727:                                              ; preds = %722
  %728 = and i64 %717, 33554432
  %729 = icmp eq i64 %728, 0
  %730 = select i1 %729, i32 4, i32 192
  br label %735

731:                                              ; preds = %715
  %732 = icmp eq i8 %721, 14
  %733 = select i1 %732, i32 8, i32 0
  %734 = select i1 %732, i32 6, i32 8
  br label %735

735:                                              ; preds = %731, %727
  %736 = phi i32 [ 0, %727 ], [ %733, %731 ]
  %737 = phi i32 [ 63, %727 ], [ %734, %731 ]
  %738 = phi i32 [ %730, %727 ], [ 4, %731 ]
  %739 = and i64 %717, 65536
  %740 = icmp ne i64 %739, 0
  %741 = icmp ult i32 %738, 8
  %742 = and i1 %740, %741
  %743 = select i1 %742, i32 8, i32 %738
  %744 = load i32, ptr %37, align 8
  %745 = call i32 @scsi_mode_sense(ptr noundef %711, i32 noundef %736, i32 noundef %737, ptr noundef %25, i32 noundef %743, i32 noundef 3000, i32 noundef %744, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %746 = icmp slt i32 %745, 0
  br i1 %746, label %990, label %747

747:                                              ; preds = %735
  %748 = getelementptr inbounds %struct.scsi_mode_data, ptr %4, i32 0, i32 4
  %749 = load i8, ptr %748, align 4
  %750 = icmp eq i8 %749, 0
  br i1 %750, label %751, label %761

751:                                              ; preds = %747
  %752 = load i32, ptr %595, align 2
  %753 = and i32 %752, 32
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %761, label %755

755:                                              ; preds = %751
  %756 = load ptr, ptr %15, align 8
  %757 = icmp eq ptr %756, null
  %758 = load ptr, ptr %13, align 4
  %759 = getelementptr inbounds %struct.gendisk, ptr %756, i32 0, i32 3
  %760 = select i1 %757, ptr null, ptr %759
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef %758, ptr noundef %760, ptr noundef nonnull @.str.52) #17
  br label %761

761:                                              ; preds = %755, %751, %747
  %762 = phi i32 [ %737, %747 ], [ 6, %751 ], [ 6, %755 ]
  %763 = phi i32 [ %738, %747 ], [ 0, %751 ], [ 0, %755 ]
  %764 = load i32, ptr %4, align 4
  %765 = icmp slt i32 %764, 3
  br i1 %765, label %990, label %766

766:                                              ; preds = %761
  %767 = icmp ugt i32 %764, 512
  br i1 %767, label %768, label %778

768:                                              ; preds = %766
  %769 = load i32, ptr %595, align 2
  %770 = and i32 %769, 32
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %778, label %772

772:                                              ; preds = %768
  %773 = load ptr, ptr %15, align 8
  %774 = icmp eq ptr %773, null
  %775 = load ptr, ptr %13, align 4
  %776 = getelementptr inbounds %struct.gendisk, ptr %773, i32 0, i32 3
  %777 = select i1 %774, ptr null, ptr %776
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %775, ptr noundef %777, ptr noundef nonnull @.str.53, i32 noundef %764, i32 noundef 512) #17
  br label %778

778:                                              ; preds = %772, %768, %766
  %779 = phi i32 [ %764, %766 ], [ 512, %768 ], [ 512, %772 ]
  %780 = icmp eq i32 %762, 63
  br i1 %780, label %781, label %786

781:                                              ; preds = %778
  %782 = load i64, ptr %716, align 4
  %783 = and i64 %782, 33554432
  %784 = icmp eq i64 %783, 0
  %785 = select i1 %784, i32 %779, i32 192
  br label %786

786:                                              ; preds = %781, %778
  %787 = phi i32 [ %779, %778 ], [ %785, %781 ]
  %788 = icmp ugt i32 %787, %763
  br i1 %788, label %789, label %800

789:                                              ; preds = %786
  %790 = load ptr, ptr %13, align 4
  %791 = getelementptr inbounds %struct.scsi_device, ptr %790, i32 0, i32 41
  %792 = load i64, ptr %791, align 4
  %793 = and i64 %792, 65536
  %794 = icmp ne i64 %793, 0
  %795 = icmp ult i32 %787, 8
  %796 = and i1 %795, %794
  %797 = select i1 %796, i32 8, i32 %787
  %798 = load i32, ptr %37, align 8
  %799 = call i32 @scsi_mode_sense(ptr noundef %790, i32 noundef %736, i32 noundef %762, ptr noundef %25, i32 noundef %797, i32 noundef 3000, i32 noundef %798, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  br label %800

800:                                              ; preds = %789, %786
  %801 = phi i32 [ %799, %789 ], [ %745, %786 ]
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %990

803:                                              ; preds = %800
  %804 = load i8, ptr %748, align 4
  %805 = zext i8 %804 to i32
  %806 = getelementptr inbounds %struct.scsi_mode_data, ptr %4, i32 0, i32 1
  %807 = load i16, ptr %806, align 4
  %808 = zext i16 %807 to i32
  %809 = add nuw nsw i32 %808, %805
  %810 = icmp ugt i32 %787, %809
  br i1 %810, label %811, label %873

811:                                              ; preds = %867, %803
  %812 = phi i32 [ %871, %867 ], [ %809, %803 ]
  %813 = getelementptr i8, ptr %25, i32 %812
  %814 = load i8, ptr %813, align 1
  %815 = and i8 %814, 64
  %816 = trunc i8 %814 to i6
  switch i6 %816, label %831 [
    i6 8, label %817
    i6 6, label %817
  ]

817:                                              ; preds = %811, %811
  %818 = sub i32 %787, %812
  %819 = icmp slt i32 %818, 3
  br i1 %819, label %820, label %884

820:                                              ; preds = %817
  %821 = load i32, ptr %595, align 2
  %822 = and i32 %821, 32
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %1025, label %824

824:                                              ; preds = %820
  %825 = load ptr, ptr %15, align 8
  %826 = icmp eq ptr %825, null
  %827 = load ptr, ptr %13, align 4
  br i1 %826, label %830, label %828

828:                                              ; preds = %824
  %829 = getelementptr inbounds %struct.gendisk, ptr %825, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef %827, ptr noundef %829, ptr noundef nonnull @.str.54) #17
  br label %1025

830:                                              ; preds = %824
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef %827, ptr noundef null, ptr noundef nonnull @.str.54) #17
  br label %1025

831:                                              ; preds = %811
  %832 = icmp ne i8 %815, 0
  %833 = sub i32 %787, %812
  %834 = icmp sgt i32 %833, 3
  %835 = select i1 %832, i1 %834, i1 false
  br i1 %835, label %836, label %847

836:                                              ; preds = %831
  %837 = add i32 %812, 2
  %838 = getelementptr i8, ptr %25, i32 %837
  %839 = load i8, ptr %838, align 1
  %840 = zext i8 %839 to i32
  %841 = shl nuw nsw i32 %840, 8
  %842 = or i32 %841, 4
  %843 = add i32 %812, 3
  %844 = getelementptr i8, ptr %25, i32 %843
  %845 = load i8, ptr %844, align 1
  %846 = zext i8 %845 to i32
  br label %867

847:                                              ; preds = %831
  %848 = icmp eq i8 %815, 0
  %849 = icmp sgt i32 %833, 1
  %850 = select i1 %848, i1 %849, i1 false
  br i1 %850, label %851, label %856

851:                                              ; preds = %847
  %852 = add nsw i32 %812, 1
  %853 = getelementptr i8, ptr %25, i32 %852
  %854 = load i8, ptr %853, align 1
  %855 = zext i8 %854 to i32
  br label %867

856:                                              ; preds = %847
  %857 = load i32, ptr %595, align 2
  %858 = and i32 %857, 32
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %1025, label %860

860:                                              ; preds = %856
  %861 = load ptr, ptr %15, align 8
  %862 = icmp eq ptr %861, null
  %863 = load ptr, ptr %13, align 4
  br i1 %862, label %866, label %864

864:                                              ; preds = %860
  %865 = getelementptr inbounds %struct.gendisk, ptr %861, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef %863, ptr noundef %865, ptr noundef nonnull @.str.54) #17
  br label %1025

866:                                              ; preds = %860
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef %863, ptr noundef null, ptr noundef nonnull @.str.54) #17
  br label %1025

867:                                              ; preds = %851, %836
  %868 = phi i32 [ 2, %851 ], [ %846, %836 ]
  %869 = phi i32 [ %855, %851 ], [ %842, %836 ]
  %870 = add i32 %868, %812
  %871 = add i32 %870, %869
  %872 = icmp sgt i32 %787, %871
  br i1 %872, label %811, label %873

873:                                              ; preds = %867, %803
  %874 = load i32, ptr %595, align 2
  %875 = and i32 %874, 32
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %1025, label %877

877:                                              ; preds = %873
  %878 = load ptr, ptr %15, align 8
  %879 = icmp eq ptr %878, null
  %880 = load ptr, ptr %13, align 4
  br i1 %879, label %883, label %881

881:                                              ; preds = %877
  %882 = getelementptr inbounds %struct.gendisk, ptr %878, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %880, ptr noundef %882, ptr noundef nonnull @.str.55) #17
  br label %1025

883:                                              ; preds = %877
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %880, ptr noundef null, ptr noundef nonnull @.str.55) #17
  br label %1025

884:                                              ; preds = %817
  %885 = and i8 %814, 63
  %886 = icmp eq i8 %885, 8
  %887 = add i32 %812, 2
  %888 = getelementptr i8, ptr %25, i32 %887
  %889 = load i8, ptr %888, align 1
  %890 = load i32, ptr %595, align 2
  br i1 %886, label %891, label %902

891:                                              ; preds = %884
  %892 = and i8 %889, 4
  %893 = zext i8 %892 to i32
  %894 = and i32 %890, -5
  %895 = or i32 %894, %893
  store i32 %895, ptr %595, align 2
  %896 = load i8, ptr %888, align 1
  %897 = shl i8 %896, 3
  %898 = and i8 %897, 8
  %899 = zext i8 %898 to i32
  %900 = and i32 %895, -9
  %901 = or i32 %900, %899
  br label %909

902:                                              ; preds = %884
  %903 = shl i8 %889, 2
  %904 = and i8 %903, 4
  %905 = xor i8 %904, 4
  %906 = zext i8 %905 to i32
  %907 = and i32 %890, -13
  %908 = or i32 %907, %906
  br label %909

909:                                              ; preds = %902, %891
  %910 = phi i32 [ %908, %902 ], [ %901, %891 ]
  %911 = getelementptr inbounds %struct.scsi_mode_data, ptr %4, i32 0, i32 3
  %912 = load i8, ptr %911, align 1
  %913 = and i8 %912, 16
  %914 = zext i8 %913 to i32
  %915 = and i32 %910, -17
  %916 = or i32 %915, %914
  store i32 %916, ptr %595, align 2
  %917 = load i64, ptr %716, align 4
  %918 = and i64 %917, 8796093022208
  %919 = icmp eq i64 %918, 0
  br i1 %919, label %929, label %920

920:                                              ; preds = %909
  %921 = and i32 %910, 32
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %945, label %923

923:                                              ; preds = %920
  %924 = load ptr, ptr %15, align 8
  %925 = icmp eq ptr %924, null
  %926 = load ptr, ptr %13, align 4
  %927 = getelementptr inbounds %struct.gendisk, ptr %924, i32 0, i32 3
  %928 = select i1 %925, ptr null, ptr %927
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %926, ptr noundef %928, ptr noundef nonnull @.str.56) #17
  br label %945

929:                                              ; preds = %909
  %930 = icmp eq i8 %913, 0
  br i1 %930, label %948, label %931

931:                                              ; preds = %929
  %932 = load ptr, ptr %13, align 4
  %933 = getelementptr inbounds %struct.scsi_device, ptr %932, i32 0, i32 41
  %934 = load i64, ptr %933, align 4
  %935 = and i64 %934, 1081344
  %936 = icmp eq i64 %935, 0
  br i1 %936, label %937, label %948

937:                                              ; preds = %931
  %938 = and i32 %910, 32
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %945, label %940

940:                                              ; preds = %937
  %941 = load ptr, ptr %15, align 8
  %942 = icmp eq ptr %941, null
  %943 = getelementptr inbounds %struct.gendisk, ptr %941, i32 0, i32 3
  %944 = select i1 %942, ptr null, ptr %943
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %932, ptr noundef %944, ptr noundef nonnull @.str.57) #17
  br label %945

945:                                              ; preds = %940, %937, %923, %920
  %946 = load i32, ptr %595, align 2
  %947 = and i32 %946, -17
  store i32 %947, ptr %595, align 2
  br label %948

948:                                              ; preds = %945, %931, %929
  %949 = phi i32 [ %916, %929 ], [ %916, %931 ], [ %947, %945 ]
  %950 = and i32 %949, 4
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %957, label %952

952:                                              ; preds = %948
  %953 = load i8, ptr %622, align 1
  %954 = icmp eq i8 %953, 0
  br i1 %954, label %957, label %955

955:                                              ; preds = %952
  %956 = and i32 %949, -5
  store i32 %956, ptr %595, align 2
  br label %957

957:                                              ; preds = %955, %952, %948
  %958 = phi i32 [ %956, %955 ], [ %949, %952 ], [ %949, %948 ]
  %959 = and i32 %958, 32
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %961, label %965

961:                                              ; preds = %957
  %962 = xor i32 %958, %712
  %963 = and i32 %962, 28
  %964 = icmp eq i32 %963, 0
  br i1 %964, label %1057, label %965

965:                                              ; preds = %961, %957
  %966 = load ptr, ptr %15, align 8
  %967 = icmp eq ptr %966, null
  %968 = load ptr, ptr %13, align 4
  br i1 %967, label %980, label %969

969:                                              ; preds = %965
  %970 = getelementptr inbounds %struct.gendisk, ptr %966, i32 0, i32 3
  %971 = and i32 %958, 4
  %972 = icmp eq i32 %971, 0
  %973 = select i1 %972, ptr @.str.60, ptr @.str.59
  %974 = and i32 %958, 8
  %975 = icmp eq i32 %974, 0
  %976 = select i1 %975, ptr @.str.59, ptr @.str.60
  %977 = and i32 %958, 16
  %978 = icmp eq i32 %977, 0
  %979 = select i1 %978, ptr @.str.62, ptr @.str.61
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %968, ptr noundef %970, ptr noundef nonnull @.str.58, ptr noundef nonnull %973, ptr noundef nonnull %976, ptr noundef nonnull %979) #17
  br label %1057

980:                                              ; preds = %965
  %981 = and i32 %958, 4
  %982 = icmp eq i32 %981, 0
  %983 = select i1 %982, ptr @.str.60, ptr @.str.59
  %984 = and i32 %958, 8
  %985 = icmp eq i32 %984, 0
  %986 = select i1 %985, ptr @.str.59, ptr @.str.60
  %987 = and i32 %958, 16
  %988 = icmp eq i32 %987, 0
  %989 = select i1 %988, ptr @.str.62, ptr @.str.61
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %968, ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull %983, ptr noundef nonnull %986, ptr noundef nonnull %989) #17
  br label %1057

990:                                              ; preds = %800, %761, %735
  %991 = load i8, ptr %5, align 8
  %992 = and i8 %991, 112
  %993 = icmp eq i8 %992, 112
  %994 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %5, i32 0, i32 1
  %995 = load i8, ptr %994, align 1
  %996 = icmp eq i8 %995, 5
  %997 = select i1 %993, i1 %996, i1 false
  %998 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %5, i32 0, i32 2
  %999 = load i8, ptr %998, align 2
  %1000 = icmp eq i8 %999, 36
  %1001 = select i1 %997, i1 %1000, i1 false
  %1002 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %5, i32 0, i32 3
  %1003 = load i8, ptr %1002, align 1
  %1004 = icmp eq i8 %1003, 0
  %1005 = select i1 %1001, i1 %1004, i1 false
  %1006 = load i32, ptr %595, align 2
  %1007 = and i32 %1006, 32
  %1008 = icmp eq i32 %1007, 0
  br i1 %1005, label %1009, label %1017

1009:                                             ; preds = %990
  br i1 %1008, label %1025, label %1010

1010:                                             ; preds = %1009
  %1011 = load ptr, ptr %15, align 8
  %1012 = icmp eq ptr %1011, null
  %1013 = load ptr, ptr %13, align 4
  br i1 %1012, label %1016, label %1014

1014:                                             ; preds = %1010
  %1015 = getelementptr inbounds %struct.gendisk, ptr %1011, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %1013, ptr noundef %1015, ptr noundef nonnull @.str.63) #17
  br label %1025

1016:                                             ; preds = %1010
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %1013, ptr noundef null, ptr noundef nonnull @.str.63) #17
  br label %1025

1017:                                             ; preds = %990
  br i1 %1008, label %1025, label %1018

1018:                                             ; preds = %1017
  %1019 = load ptr, ptr %15, align 8
  %1020 = icmp eq ptr %1019, null
  %1021 = load ptr, ptr %13, align 4
  br i1 %1020, label %1024, label %1022

1022:                                             ; preds = %1018
  %1023 = getelementptr inbounds %struct.gendisk, ptr %1019, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef %1021, ptr noundef %1023, ptr noundef nonnull @.str.64) #17
  br label %1025

1024:                                             ; preds = %1018
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef %1021, ptr noundef null, ptr noundef nonnull @.str.64) #17
  br label %1025

1025:                                             ; preds = %1024, %1022, %1017, %1016, %1014, %1009, %883, %881, %873, %866, %864, %856, %830, %828, %820, %722
  %1026 = load i64, ptr %716, align 4
  %1027 = and i64 %1026, 2199023255552
  %1028 = icmp eq i64 %1027, 0
  %1029 = load i32, ptr %595, align 2
  %1030 = and i32 %1029, 32
  %1031 = icmp eq i32 %1030, 0
  br i1 %1028, label %1043, label %1032

1032:                                             ; preds = %1025
  br i1 %1031, label %1040, label %1033

1033:                                             ; preds = %1032
  %1034 = load ptr, ptr %15, align 8
  %1035 = icmp eq ptr %1034, null
  %1036 = load ptr, ptr %13, align 4
  %1037 = getelementptr inbounds %struct.gendisk, ptr %1034, i32 0, i32 3
  %1038 = select i1 %1035, ptr null, ptr %1037
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %1036, ptr noundef %1038, ptr noundef nonnull @.str.65) #17
  %1039 = load i32, ptr %595, align 2
  br label %1040

1040:                                             ; preds = %1033, %1032
  %1041 = phi i32 [ %1039, %1033 ], [ %1029, %1032 ]
  %1042 = or i32 %1041, 4
  br label %1054

1043:                                             ; preds = %1025
  br i1 %1031, label %1051, label %1044

1044:                                             ; preds = %1043
  %1045 = load ptr, ptr %15, align 8
  %1046 = icmp eq ptr %1045, null
  %1047 = load ptr, ptr %13, align 4
  %1048 = getelementptr inbounds %struct.gendisk, ptr %1045, i32 0, i32 3
  %1049 = select i1 %1046, ptr null, ptr %1048
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %1047, ptr noundef %1049, ptr noundef nonnull @.str.66) #17
  %1050 = load i32, ptr %595, align 2
  br label %1051

1051:                                             ; preds = %1044, %1043
  %1052 = phi i32 [ %1050, %1044 ], [ %1029, %1043 ]
  %1053 = and i32 %1052, -5
  br label %1054

1054:                                             ; preds = %1051, %1040
  %1055 = phi i32 [ %1053, %1051 ], [ %1042, %1040 ]
  %1056 = and i32 %1055, -25
  store i32 %1056, ptr %595, align 2
  br label %1057

1057:                                             ; preds = %1054, %980, %969, %961, %710
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  %1058 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #17, !annotation !13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store i64 0, ptr %3, align 8, !annotation !13
  %1059 = getelementptr inbounds %struct.scsi_device, ptr %1058, i32 0, i32 22
  %1060 = load i8, ptr %1059, align 4
  switch i8 %1060, label %1125 [
    i8 0, label %1061
    i8 20, label %1061
  ]

1061:                                             ; preds = %1057, %1057
  %1062 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 21
  %1063 = load i8, ptr %1062, align 2
  %1064 = icmp eq i8 %1063, 0
  br i1 %1064, label %1125, label %1065

1065:                                             ; preds = %1061
  %1066 = load i32, ptr %37, align 8
  %1067 = call i32 @scsi_mode_sense(ptr noundef %1058, i32 noundef 1, i32 noundef 10, ptr noundef %25, i32 noundef 36, i32 noundef 3000, i32 noundef %1066, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  %1068 = icmp slt i32 %1067, 0
  %1069 = getelementptr inbounds %struct.scsi_mode_data, ptr %2, i32 0, i32 4
  %1070 = load i8, ptr %1069, align 4
  %1071 = icmp eq i8 %1070, 0
  %1072 = select i1 %1068, i1 true, i1 %1071
  %1073 = load i32, ptr %2, align 4
  %1074 = icmp ult i32 %1073, 6
  %1075 = select i1 %1072, i1 true, i1 %1074
  br i1 %1075, label %1076, label %1096

1076:                                             ; preds = %1065
  %1077 = load i32, ptr %595, align 2
  %1078 = and i32 %1077, 32
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %1086, label %1080

1080:                                             ; preds = %1076
  %1081 = load ptr, ptr %15, align 8
  %1082 = icmp eq ptr %1081, null
  %1083 = load ptr, ptr %13, align 4
  %1084 = getelementptr inbounds %struct.gendisk, ptr %1081, i32 0, i32 3
  %1085 = select i1 %1082, ptr null, ptr %1084
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %1083, ptr noundef %1085, ptr noundef nonnull @.str.67) #17
  br label %1086

1086:                                             ; preds = %1080, %1076
  %1087 = load i8, ptr %3, align 8
  %1088 = and i8 %1087, 112
  %1089 = icmp eq i8 %1088, 112
  br i1 %1089, label %1090, label %1125

1090:                                             ; preds = %1086
  %1091 = load ptr, ptr %13, align 4
  %1092 = load ptr, ptr %15, align 8
  %1093 = icmp eq ptr %1092, null
  %1094 = getelementptr inbounds %struct.gendisk, ptr %1092, i32 0, i32 3
  %1095 = select i1 %1093, ptr null, ptr %1094
  call void @scsi_print_sense_hdr(ptr noundef %1091, ptr noundef %1095, ptr noundef nonnull %3) #17
  br label %1125

1096:                                             ; preds = %1065
  %1097 = zext i8 %1070 to i32
  %1098 = getelementptr inbounds %struct.scsi_mode_data, ptr %2, i32 0, i32 1
  %1099 = load i16, ptr %1098, align 4
  %1100 = zext i16 %1099 to i32
  %1101 = add nuw nsw i32 %1100, %1097
  %1102 = getelementptr i8, ptr %25, i32 %1101
  %1103 = load i8, ptr %1102, align 1
  %1104 = and i8 %1103, 63
  %1105 = icmp eq i8 %1104, 10
  br i1 %1105, label %1117, label %1106

1106:                                             ; preds = %1096
  %1107 = load i32, ptr %595, align 2
  %1108 = and i32 %1107, 32
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1125, label %1110

1110:                                             ; preds = %1106
  %1111 = load ptr, ptr %15, align 8
  %1112 = icmp eq ptr %1111, null
  %1113 = load ptr, ptr %13, align 4
  br i1 %1112, label %1116, label %1114

1114:                                             ; preds = %1110
  %1115 = getelementptr inbounds %struct.gendisk, ptr %1111, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef %1113, ptr noundef %1115, ptr noundef nonnull @.str.68) #17
  br label %1125

1116:                                             ; preds = %1110
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef %1113, ptr noundef null, ptr noundef nonnull @.str.68) #17
  br label %1125

1117:                                             ; preds = %1096
  %1118 = add nuw nsw i32 %1101, 5
  %1119 = getelementptr i8, ptr %25, i32 %1118
  %1120 = load i8, ptr %1119, align 1
  %1121 = icmp sgt i8 %1120, -1
  br i1 %1121, label %1125, label %1122

1122:                                             ; preds = %1117
  %1123 = load i32, ptr %595, align 2
  %1124 = or i32 %1123, 1
  store i32 %1124, ptr %595, align 2
  br label %1125

1125:                                             ; preds = %1122, %1117, %1116, %1114, %1106, %1090, %1086, %1061, %1057
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #17
  %1126 = load ptr, ptr %13, align 4
  %1127 = load ptr, ptr %1126, align 8
  %1128 = getelementptr inbounds %struct.Scsi_Host, ptr %1127, i32 0, i32 36
  %1129 = load i16, ptr %1128, align 8
  %1130 = and i16 %1129, 128
  %1131 = icmp eq i16 %1130, 0
  br i1 %1131, label %1136, label %1132

1132:                                             ; preds = %1125
  %1133 = getelementptr inbounds %struct.scsi_device, ptr %1126, i32 0, i32 41
  %1134 = load i64, ptr %1133, align 4
  %1135 = or i64 %1134, 524288
  store i64 %1135, ptr %1133, align 4
  br label %1160

1136:                                             ; preds = %1125
  %1137 = call i32 @scsi_report_opcode(ptr noundef %1126, ptr noundef %25, i32 noundef 512, i8 noundef zeroext 18) #17
  %1138 = icmp slt i32 %1137, 0
  br i1 %1138, label %1139, label %1148

1139:                                             ; preds = %1136
  %1140 = getelementptr inbounds %struct.scsi_device, ptr %1126, i32 0, i32 41
  %1141 = load i64, ptr %1140, align 4
  %1142 = or i64 %1141, 262144
  store i64 %1142, ptr %1140, align 4
  %1143 = call i32 @scsi_get_vpd_page(ptr noundef %1126, i8 noundef zeroext -119, ptr noundef %25, i32 noundef 64) #17
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1145, label %1148

1145:                                             ; preds = %1139
  %1146 = load i64, ptr %1140, align 4
  %1147 = or i64 %1146, 524288
  store i64 %1147, ptr %1140, align 4
  br label %1148

1148:                                             ; preds = %1145, %1139, %1136
  %1149 = call i32 @scsi_report_opcode(ptr noundef %1126, ptr noundef %25, i32 noundef 512, i8 noundef zeroext -109) #17
  %1150 = icmp eq i32 %1149, 1
  br i1 %1150, label %1151, label %1154

1151:                                             ; preds = %1148
  %1152 = load i32, ptr %595, align 2
  %1153 = or i32 %1152, 8192
  store i32 %1153, ptr %595, align 2
  br label %1154

1154:                                             ; preds = %1151, %1148
  %1155 = call i32 @scsi_report_opcode(ptr noundef %1126, ptr noundef %25, i32 noundef 512, i8 noundef zeroext 65) #17
  %1156 = icmp eq i32 %1155, 1
  br i1 %1156, label %1157, label %1160

1157:                                             ; preds = %1154
  %1158 = load i32, ptr %595, align 2
  %1159 = or i32 %1158, 4096
  store i32 %1159, ptr %595, align 2
  br label %1160

1160:                                             ; preds = %1157, %1154, %1132
  %1161 = load ptr, ptr %13, align 4
  %1162 = getelementptr inbounds %struct.scsi_device, ptr %1161, i32 0, i32 41
  %1163 = load i64, ptr %1162, align 4
  %1164 = and i64 %1163, 549755813888
  %1165 = icmp eq i64 %1164, 0
  br i1 %1165, label %1175, label %1166

1166:                                             ; preds = %1160
  %1167 = call i32 @scsi_report_opcode(ptr noundef %1161, ptr noundef %25, i32 noundef 512, i8 noundef zeroext -94) #17
  %1168 = icmp eq i32 %1167, 1
  br i1 %1168, label %1169, label %1175

1169:                                             ; preds = %1166
  %1170 = call i32 @scsi_report_opcode(ptr noundef %1161, ptr noundef %25, i32 noundef 512, i8 noundef zeroext -75) #17
  %1171 = icmp eq i32 %1170, 1
  br i1 %1171, label %1172, label %1175

1172:                                             ; preds = %1169
  %1173 = load i32, ptr %595, align 2
  %1174 = or i32 %1173, 524288
  store i32 %1174, ptr %595, align 2
  br label %1175

1175:                                             ; preds = %1172, %1169, %1166, %1160
  %1176 = load i32, ptr %595, align 2
  %1177 = and i32 %1176, 32
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1179, label %1286

1179:                                             ; preds = %1175
  %1180 = load i64, ptr %19, align 8
  %1181 = icmp eq i64 %1180, 0
  br i1 %1181, label %1267, label %1182

1182:                                             ; preds = %1179
  %1183 = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8256, i32 noundef 3264, i32 noundef 2) #20
  %1184 = icmp eq ptr %1183, null
  br i1 %1184, label %1267, label %1185

1185:                                             ; preds = %1182
  %1186 = load ptr, ptr %13, align 4
  %1187 = call i32 @scsi_get_vpd_page(ptr noundef %1186, i8 noundef zeroext -71, ptr noundef nonnull %1183, i32 noundef 8256) #17
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1189, label %1267

1189:                                             ; preds = %1185
  %1190 = getelementptr i8, ptr %1183, i32 2
  %1191 = load i16, ptr %1190, align 2
  %1192 = call i16 @llvm.bswap.i16(i16 %1191) #17
  %1193 = zext i16 %1192 to i32
  %1194 = add i16 %1192, -8254
  %1195 = icmp ult i16 %1194, -8161
  br i1 %1195, label %1200, label %1196

1196:                                             ; preds = %1189
  %1197 = add nuw nsw i32 %1193, 3
  %1198 = and i32 %1197, 31
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1207, label %1200

1200:                                             ; preds = %1196, %1189
  %1201 = load ptr, ptr %15, align 8
  %1202 = icmp eq ptr %1201, null
  %1203 = load ptr, ptr %13, align 4
  br i1 %1202, label %1206, label %1204

1204:                                             ; preds = %1200
  %1205 = getelementptr inbounds %struct.gendisk, ptr %1201, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef %1203, ptr noundef %1205, ptr noundef nonnull @.str.69) #17
  br label %1267

1206:                                             ; preds = %1200
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef %1203, ptr noundef null, ptr noundef nonnull @.str.69) #17
  br label %1267

1207:                                             ; preds = %1196
  %1208 = add nsw i32 %1193, -61
  %1209 = sdiv i32 %1208, 32
  %1210 = add nsw i32 %1193, -93
  %1211 = icmp ult i32 %1210, 32
  br i1 %1211, label %1267, label %1212

1212:                                             ; preds = %1207
  %1213 = load ptr, ptr %15, align 8
  %1214 = call ptr @disk_alloc_independent_access_ranges(ptr noundef %1213, i32 noundef %1209) #17
  %1215 = icmp eq ptr %1214, null
  br i1 %1215, label %1267, label %1216

1216:                                             ; preds = %1212
  %1217 = add nsw i32 %1193, -30
  %1218 = icmp ult i32 %1217, 63
  br i1 %1218, label %1219, label %1221

1219:                                             ; preds = %1216
  %1220 = load ptr, ptr %15, align 8
  call void @disk_set_independent_access_ranges(ptr noundef %1220, ptr noundef nonnull %1214) #17
  br label %1284

1221:                                             ; preds = %1216
  %1222 = getelementptr i8, ptr %1183, i32 64
  %1223 = call i32 @llvm.umax.i32(i32 %1209, i32 1) #17
  br label %1224

1224:                                             ; preds = %1237, %1221
  %1225 = phi ptr [ %1265, %1237 ], [ %1222, %1221 ]
  %1226 = phi i32 [ %1264, %1237 ], [ 0, %1221 ]
  %1227 = load i8, ptr %1225, align 1
  %1228 = zext i8 %1227 to i32
  %1229 = icmp eq i32 %1226, %1228
  br i1 %1229, label %1237, label %1230

1230:                                             ; preds = %1224
  %1231 = load ptr, ptr %15, align 8
  %1232 = icmp eq ptr %1231, null
  %1233 = load ptr, ptr %13, align 4
  br i1 %1232, label %1236, label %1234

1234:                                             ; preds = %1230
  %1235 = getelementptr inbounds %struct.gendisk, ptr %1231, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef %1233, ptr noundef %1235, ptr noundef nonnull @.str.70) #17
  br label %1267

1236:                                             ; preds = %1230
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef %1233, ptr noundef null, ptr noundef nonnull @.str.70) #17
  br label %1267

1237:                                             ; preds = %1224
  %1238 = getelementptr i8, ptr %1225, i32 8
  %1239 = load i64, ptr %1238, align 1
  %1240 = load ptr, ptr %13, align 4
  %1241 = getelementptr inbounds %struct.scsi_device, ptr %1240, i32 0, i32 20
  %1242 = load i32, ptr %1241, align 4
  %1243 = icmp eq i32 %1242, 0
  %1244 = call i32 @llvm.ctlz.i32(i32 %1242, i1 false) #17, !range !9
  %1245 = call i64 @llvm.bswap.i64(i64 %1239) #17
  %1246 = sub nsw i32 22, %1244
  %1247 = select i1 %1243, i32 -10, i32 %1246
  %1248 = zext i32 %1247 to i64
  %1249 = shl i64 %1245, %1248
  %1250 = getelementptr %struct.blk_independent_access_ranges, ptr %1214, i32 0, i32 3, i32 %1226, i32 2
  store i64 %1249, ptr %1250, align 8
  %1251 = getelementptr i8, ptr %1225, i32 16
  %1252 = load i64, ptr %1251, align 1
  %1253 = load ptr, ptr %13, align 4
  %1254 = getelementptr inbounds %struct.scsi_device, ptr %1253, i32 0, i32 20
  %1255 = load i32, ptr %1254, align 4
  %1256 = icmp eq i32 %1255, 0
  %1257 = call i32 @llvm.ctlz.i32(i32 %1255, i1 false) #17, !range !9
  %1258 = call i64 @llvm.bswap.i64(i64 %1252) #17
  %1259 = sub nsw i32 22, %1257
  %1260 = select i1 %1256, i32 -10, i32 %1259
  %1261 = zext i32 %1260 to i64
  %1262 = shl i64 %1258, %1261
  %1263 = getelementptr %struct.blk_independent_access_ranges, ptr %1214, i32 0, i32 3, i32 %1226, i32 3
  store i64 %1262, ptr %1263, align 8
  %1264 = add nuw i32 %1226, 1
  %1265 = getelementptr i8, ptr %1225, i32 32
  %1266 = icmp eq i32 %1264, %1223
  br i1 %1266, label %1271, label %1224

1267:                                             ; preds = %1236, %1234, %1212, %1207, %1206, %1204, %1185, %1182, %1179
  %1268 = phi ptr [ %1214, %1234 ], [ %1214, %1236 ], [ null, %1212 ], [ null, %1207 ], [ null, %1179 ], [ null, %1182 ], [ null, %1206 ], [ null, %1204 ], [ null, %1185 ]
  %1269 = phi ptr [ %1183, %1234 ], [ %1183, %1236 ], [ %1183, %1212 ], [ %1183, %1207 ], [ null, %1179 ], [ null, %1182 ], [ %1183, %1206 ], [ %1183, %1204 ], [ %1183, %1185 ]
  %1270 = load ptr, ptr %15, align 8
  call void @disk_set_independent_access_ranges(ptr noundef %1270, ptr noundef %1268) #17
  br label %1284

1271:                                             ; preds = %1237
  %1272 = load ptr, ptr %15, align 8
  call void @disk_set_independent_access_ranges(ptr noundef %1272, ptr noundef nonnull %1214) #17
  %1273 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 24
  %1274 = load i8, ptr %1273, align 1
  %1275 = zext i8 %1274 to i32
  %1276 = icmp eq i32 %1209, %1275
  br i1 %1276, label %1284, label %1277

1277:                                             ; preds = %1271
  %1278 = load ptr, ptr %15, align 8
  %1279 = icmp eq ptr %1278, null
  %1280 = load ptr, ptr %13, align 4
  %1281 = getelementptr inbounds %struct.gendisk, ptr %1278, i32 0, i32 3
  %1282 = select i1 %1279, ptr null, ptr %1281
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %1280, ptr noundef %1282, ptr noundef nonnull @.str.71, i32 noundef %1209) #17
  %1283 = trunc i32 %1209 to i8
  store i8 %1283, ptr %1273, align 1
  br label %1284

1284:                                             ; preds = %1277, %1271, %1267, %1219
  %1285 = phi ptr [ %1269, %1267 ], [ %1183, %1277 ], [ %1183, %1271 ], [ %1183, %1219 ]
  call void @kfree(ptr noundef %1285) #17
  br label %1286

1286:                                             ; preds = %1284, %1175, %274
  %1287 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 25
  %1288 = load i32, ptr %1287, align 2
  %1289 = and i32 %1288, 4
  %1290 = icmp ne i32 %1289, 0
  %1291 = and i32 %1288, 20
  %1292 = icmp eq i32 %1291, 20
  %1293 = load ptr, ptr %15, align 8
  %1294 = getelementptr inbounds %struct.gendisk, ptr %1293, i32 0, i32 9
  %1295 = load ptr, ptr %1294, align 4
  call void @blk_queue_write_cache(ptr noundef %1295, i1 noundef zeroext %1290, i1 noundef zeroext %1292) #17
  %1296 = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 41
  %1297 = load i64, ptr %1296, align 4
  %1298 = and i64 %1297, 1048576
  %1299 = icmp eq i64 %1298, 0
  %1300 = select i1 %1299, i32 65535, i32 -1
  %1301 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 9
  %1302 = load i32, ptr %1301, align 4
  %1303 = icmp eq i32 %1302, 0
  %1304 = call i32 @llvm.umin.i32(i32 %1300, i32 %1302)
  %1305 = select i1 %1303, i32 %1300, i32 %1304
  %1306 = zext i32 %1305 to i64
  %1307 = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 20
  %1308 = load i32, ptr %1307, align 4
  %1309 = icmp eq i32 %1308, 0
  %1310 = call i32 @llvm.ctlz.i32(i32 %1308, i1 false) #17, !range !9
  %1311 = sub nsw i32 22, %1310
  %1312 = select i1 %1309, i32 -10, i32 %1311
  %1313 = zext i32 %1312 to i64
  %1314 = shl i64 %1306, %1313
  %1315 = trunc i64 %1314 to i32
  %1316 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 4
  store i32 %1315, ptr %1316, align 4
  %1317 = load ptr, ptr %13, align 4
  %1318 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 10
  %1319 = load i32, ptr %1318, align 8
  %1320 = getelementptr inbounds %struct.scsi_device, ptr %1317, i32 0, i32 20
  %1321 = load i32, ptr %1320, align 4
  %1322 = mul i32 %1321, %1319
  %1323 = icmp eq i32 %1319, 0
  br i1 %1323, label %1397, label %1324

1324:                                             ; preds = %1286
  %1325 = icmp ugt i32 %1319, %1305
  br i1 %1325, label %1326, label %1336

1326:                                             ; preds = %1324
  %1327 = load i32, ptr %1287, align 2
  %1328 = and i32 %1327, 32
  %1329 = icmp eq i32 %1328, 0
  br i1 %1329, label %1397, label %1330

1330:                                             ; preds = %1326
  %1331 = load ptr, ptr %15, align 8
  %1332 = icmp eq ptr %1331, null
  br i1 %1332, label %1335, label %1333

1333:                                             ; preds = %1330
  %1334 = getelementptr inbounds %struct.gendisk, ptr %1331, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %1317, ptr noundef %1334, ptr noundef nonnull @.str.72, i32 noundef %1319, i32 noundef %1305) #17
  br label %1397

1335:                                             ; preds = %1330
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %1317, ptr noundef null, ptr noundef nonnull @.str.72, i32 noundef %1319, i32 noundef %1305) #17
  br label %1397

1336:                                             ; preds = %1324
  %1337 = icmp ugt i32 %1319, 65535
  br i1 %1337, label %1338, label %1348

1338:                                             ; preds = %1336
  %1339 = load i32, ptr %1287, align 2
  %1340 = and i32 %1339, 32
  %1341 = icmp eq i32 %1340, 0
  br i1 %1341, label %1397, label %1342

1342:                                             ; preds = %1338
  %1343 = load ptr, ptr %15, align 8
  %1344 = icmp eq ptr %1343, null
  br i1 %1344, label %1347, label %1345

1345:                                             ; preds = %1342
  %1346 = getelementptr inbounds %struct.gendisk, ptr %1343, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %1317, ptr noundef %1346, ptr noundef nonnull @.str.73, i32 noundef %1319, i32 noundef 65535) #17
  br label %1397

1347:                                             ; preds = %1342
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %1317, ptr noundef null, ptr noundef nonnull @.str.73, i32 noundef %1319, i32 noundef 65535) #17
  br label %1397

1348:                                             ; preds = %1336
  %1349 = icmp ult i32 %1322, 4096
  br i1 %1349, label %1350, label %1360

1350:                                             ; preds = %1348
  %1351 = load i32, ptr %1287, align 2
  %1352 = and i32 %1351, 32
  %1353 = icmp eq i32 %1352, 0
  br i1 %1353, label %1397, label %1354

1354:                                             ; preds = %1350
  %1355 = load ptr, ptr %15, align 8
  %1356 = icmp eq ptr %1355, null
  br i1 %1356, label %1359, label %1357

1357:                                             ; preds = %1354
  %1358 = getelementptr inbounds %struct.gendisk, ptr %1355, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %1317, ptr noundef %1358, ptr noundef nonnull @.str.74, i32 noundef %1322, i32 noundef 4096) #17
  br label %1397

1359:                                             ; preds = %1354
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %1317, ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef %1322, i32 noundef 4096) #17
  br label %1397

1360:                                             ; preds = %1348
  %1361 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 16
  %1362 = load i32, ptr %1361, align 8
  %1363 = add i32 %1362, -1
  %1364 = and i32 %1363, %1322
  %1365 = icmp eq i32 %1364, 0
  %1366 = load i32, ptr %1287, align 2
  %1367 = and i32 %1366, 32
  %1368 = icmp eq i32 %1367, 0
  br i1 %1365, label %1376, label %1369

1369:                                             ; preds = %1360
  br i1 %1368, label %1397, label %1370

1370:                                             ; preds = %1369
  %1371 = load ptr, ptr %15, align 8
  %1372 = icmp eq ptr %1371, null
  br i1 %1372, label %1375, label %1373

1373:                                             ; preds = %1370
  %1374 = getelementptr inbounds %struct.gendisk, ptr %1371, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %1317, ptr noundef %1374, ptr noundef nonnull @.str.75, i32 noundef %1322, i32 noundef %1362) #17
  br label %1397

1375:                                             ; preds = %1370
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %1317, ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef %1322, i32 noundef %1362) #17
  br label %1397

1376:                                             ; preds = %1360
  br i1 %1368, label %1382, label %1377

1377:                                             ; preds = %1376
  %1378 = load ptr, ptr %15, align 8
  %1379 = icmp eq ptr %1378, null
  %1380 = getelementptr inbounds %struct.gendisk, ptr %1378, i32 0, i32 3
  %1381 = select i1 %1379, ptr null, ptr %1380
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %1317, ptr noundef %1381, ptr noundef nonnull @.str.76, i32 noundef %1322) #17
  br label %1382

1382:                                             ; preds = %1377, %1376
  %1383 = load i32, ptr %1318, align 8
  %1384 = load i32, ptr %1307, align 4
  %1385 = mul i32 %1384, %1383
  %1386 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 12
  store i32 %1385, ptr %1386, align 4
  %1387 = load i32, ptr %1318, align 8
  %1388 = zext i32 %1387 to i64
  %1389 = load i32, ptr %1307, align 4
  %1390 = icmp eq i32 %1389, 0
  %1391 = call i32 @llvm.ctlz.i32(i32 %1389, i1 false) #17, !range !9
  %1392 = sub nsw i32 22, %1391
  %1393 = select i1 %1390, i32 -10, i32 %1392
  %1394 = zext i32 %1393 to i64
  %1395 = shl i64 %1388, %1394
  %1396 = trunc i64 %1395 to i32
  br label %1410

1397:                                             ; preds = %1375, %1373, %1369, %1359, %1357, %1350, %1347, %1345, %1338, %1335, %1333, %1326, %1286
  %1398 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 12
  store i32 0, ptr %1398, align 4
  %1399 = load i32, ptr %1307, align 4
  %1400 = icmp eq i32 %1399, 0
  %1401 = call i32 @llvm.ctlz.i32(i32 %1399, i1 false) #17, !range !9
  %1402 = sub nsw i32 22, %1401
  %1403 = select i1 %1400, i32 -10, i32 %1402
  %1404 = zext i32 %1403 to i64
  %1405 = shl i64 %1306, %1404
  %1406 = icmp eq i64 %1405, 0
  %1407 = call i64 @llvm.umin.i64(i64 %1405, i64 2560)
  %1408 = trunc i64 %1407 to i32
  %1409 = select i1 %1406, i32 2560, i32 %1408
  br label %1410

1410:                                             ; preds = %1397, %1382
  %1411 = phi i32 [ %1396, %1382 ], [ %1409, %1397 ]
  %1412 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 3
  %1413 = load i32, ptr %1412, align 4
  %1414 = call i32 @llvm.umin.i32(i32 %1411, i32 %1413)
  %1415 = load i32, ptr %1287, align 2
  %1416 = and i32 %1415, 32
  %1417 = icmp eq i32 %1416, 0
  br i1 %1417, label %1418, label %1425

1418:                                             ; preds = %1410
  %1419 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 6
  %1420 = load i32, ptr %1419, align 4
  %1421 = load i32, ptr %1316, align 4
  %1422 = icmp ugt i32 %1420, %1421
  %1423 = icmp ugt i32 %1420, %1413
  %1424 = select i1 %1422, i1 true, i1 %1423
  br i1 %1424, label %1425, label %1428

1425:                                             ; preds = %1418, %1410
  %1426 = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 32, i32 6
  store i32 %1414, ptr %1426, align 4
  %1427 = load i32, ptr %1287, align 2
  br label %1428

1428:                                             ; preds = %1425, %1418
  %1429 = phi i32 [ %1415, %1418 ], [ %1427, %1425 ]
  %1430 = and i32 %1429, -33
  store i32 %1430, ptr %1287, align 2
  %1431 = load i64, ptr %19, align 8
  %1432 = load i32, ptr %1307, align 4
  %1433 = icmp eq i32 %1432, 0
  %1434 = call i32 @llvm.ctlz.i32(i32 %1432, i1 false) #17, !range !9
  %1435 = sub nsw i32 22, %1434
  %1436 = select i1 %1433, i32 -10, i32 %1435
  %1437 = zext i32 %1436 to i64
  %1438 = shl i64 %1431, %1437
  %1439 = call zeroext i1 @set_capacity_and_notify(ptr noundef %0, i64 noundef %1438) #17
  call fastcc void @sd_config_write_same(ptr noundef %12)
  call void @kfree(ptr noundef nonnull %25) #17
  br label %1440

1440:                                             ; preds = %1428, %33, %31, %1, %1, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_pm_runtime_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_autopm_put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_open(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @sd_ref_mutex) #17
  %5 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.scsi_disk, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @scsi_device_get(ptr noundef %10) #17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %2
  tail call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  br label %81

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.scsi_disk, ptr %6, i32 0, i32 2
  %16 = tail call ptr @get_device(ptr noundef %15) #17
  tail call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  %17 = load ptr, ptr %9, align 4
  %18 = tail call i32 @scsi_block_when_processing_errors(ptr noundef %17) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %78, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr inbounds %struct.scsi_device, ptr %21, i32 0, i32 41
  %23 = load i64, ptr %22, align 4
  %24 = and i64 %23, 1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.scsi_disk, ptr %6, i32 0, i32 20
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26, %20
  %31 = tail call zeroext i1 @bdev_check_media_change(ptr noundef %0) #17
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = load ptr, ptr %3, align 8
  br label %40

34:                                               ; preds = %30, %26
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.gendisk, ptr %35, i32 0, i32 12
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34, %32
  %41 = phi ptr [ %33, %32 ], [ %35, %34 ]
  tail call fastcc void @sd_revalidate_disk(ptr noundef %41)
  br label %42

42:                                               ; preds = %40, %34
  %43 = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 41
  %44 = load i64, ptr %43, align 4
  %45 = and i64 %44, 1
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.scsi_disk, ptr %6, i32 0, i32 19
  %49 = load i8, ptr %48, align 4
  %50 = icmp eq i8 %49, 0
  %51 = and i32 %1, 64
  %52 = icmp eq i32 %51, 0
  %53 = and i1 %52, %50
  br i1 %53, label %78, label %54

54:                                               ; preds = %47, %42
  %55 = getelementptr inbounds %struct.scsi_disk, ptr %6, i32 0, i32 20
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, 0
  %58 = and i32 %1, 2
  %59 = icmp eq i32 %58, 0
  %60 = or i1 %59, %57
  br i1 %60, label %61, label %78

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 68
  %63 = load i32, ptr %62, align 4
  switch i32 %63, label %64 [
    i32 7, label %78
    i32 6, label %78
    i32 4, label %78
  ]

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.scsi_disk, ptr %6, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #17, !srcloc !15
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #17, !srcloc !16
  %67 = extractvalue { i32, i32 } %66, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !17
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load i64, ptr %43, align 4
  %71 = and i64 %70, 1
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = tail call i32 @scsi_block_when_processing_errors(ptr noundef %17) #17
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @scsi_set_medium_removal(ptr noundef %17, i8 noundef zeroext 1) #17
  br label %81

78:                                               ; preds = %61, %61, %61, %54, %47, %14
  %79 = phi i32 [ -6, %61 ], [ -6, %14 ], [ -123, %47 ], [ -30, %54 ], [ -6, %61 ], [ -6, %61 ]
  %80 = load ptr, ptr %9, align 4
  tail call void @mutex_lock(ptr noundef nonnull @sd_ref_mutex) #17
  tail call void @put_device(ptr noundef %15) #17
  tail call void @scsi_device_put(ptr noundef %80) #17
  tail call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  br label %81

81:                                               ; preds = %78, %76, %73, %69, %64, %13
  %82 = phi i32 [ %79, %78 ], [ 0, %73 ], [ 0, %76 ], [ 0, %69 ], [ 0, %64 ], [ -6, %13 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sd_release(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.scsi_disk, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scsi_disk, ptr %4, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #17, !srcloc !15
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #17, !srcloc !19
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 41
  %13 = load i64, ptr %12, align 4
  %14 = and i64 %13, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @scsi_block_when_processing_errors(ptr noundef %6) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @scsi_set_medium_removal(ptr noundef %6, i8 noundef zeroext 0) #17
  br label %21

21:                                               ; preds = %19, %16, %11, %2
  %22 = load ptr, ptr %5, align 4
  tail call void @mutex_lock(ptr noundef nonnull @sd_ref_mutex) #17
  %23 = getelementptr inbounds %struct.scsi_disk, ptr %4, i32 0, i32 2
  tail call void @put_device(ptr noundef %23) #17
  tail call void @scsi_device_put(ptr noundef %22) #17
  tail call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.scsi_disk, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = inttoptr i32 %3 to ptr
  %12 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 15
  %13 = load i8, ptr %12, align 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = tail call zeroext i1 @capable(i32 noundef 17) #17
  br i1 %16, label %17, label %24

17:                                               ; preds = %15, %4
  %18 = and i32 %1, 64
  %19 = icmp ne i32 %18, 0
  %20 = tail call i32 @scsi_ioctl_block_when_processing_errors(ptr noundef %10, i32 noundef %2, i1 noundef zeroext %19) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = tail call i32 @scsi_ioctl(ptr noundef %10, i32 noundef %1, i32 noundef %2, ptr noundef %11) #17
  br label %24

24:                                               ; preds = %22, %17, %15
  %25 = phi i32 [ %23, %22 ], [ -515, %15 ], [ %20, %17 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_check_events(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = alloca %struct.scsi_sense_hdr, align 8
  tail call void @mutex_lock(ptr noundef nonnull @sd_ref_mutex) #17
  %4 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @scsi_device_get(ptr noundef %9) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %2
  tail call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  br label %108

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 2
  %15 = tail call ptr @get_device(ptr noundef %14) #17
  tail call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 68
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %36 [
    i32 7, label %19
    i32 6, label %19
    i32 4, label %19
  ]

19:                                               ; preds = %13, %13, %13
  %20 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 19
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 41
  %25 = load i64, ptr %24, align 4
  %26 = or i64 %25, 2
  store i64 %26, ptr %24, align 4
  %27 = load ptr, ptr %8, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi ptr [ %27, %23 ], [ %16, %19 ]
  %30 = getelementptr inbounds %struct.scsi_device, ptr %29, i32 0, i32 41
  %31 = load i64, ptr %30, align 4
  %32 = and i64 %31, 1
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %100, label %34

34:                                               ; preds = %28
  store i8 0, ptr %20, align 4
  %35 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 7
  store i64 0, ptr %35, align 8
  br label %100

36:                                               ; preds = %13
  %37 = tail call i32 @scsi_block_when_processing_errors(ptr noundef %16) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %91, label %39

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store i64 0, ptr %3, align 8
  %40 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 8
  %41 = load i32, ptr %40, align 8
  %42 = call i32 @scsi_test_unit_ready(ptr noundef %16, i32 noundef 3000, i32 noundef %41, ptr noundef nonnull %3) #17
  %43 = and i32 %42, -2130771968
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 19
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %8, align 4
  %51 = getelementptr inbounds %struct.scsi_device, ptr %50, i32 0, i32 41
  %52 = load i64, ptr %51, align 4
  %53 = or i64 %52, 2
  store i64 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr inbounds %struct.scsi_device, ptr %55, i32 0, i32 41
  %57 = load i64, ptr %56, align 4
  %58 = and i64 %57, 1
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %89, label %86

60:                                               ; preds = %39
  %61 = load i8, ptr %3, align 8
  %62 = and i8 %61, 112
  %63 = icmp eq i8 %62, 112
  br i1 %63, label %64, label %90

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 1
  %66 = load i8, ptr %65, align 1
  switch i8 %66, label %90 [
    i8 6, label %67
    i8 2, label %67
  ]

67:                                               ; preds = %64, %64
  %68 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 2
  %69 = load i8, ptr %68, align 2
  %70 = icmp eq i8 %69, 58
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 19
  %73 = load i8, ptr %72, align 4
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %8, align 4
  %77 = getelementptr inbounds %struct.scsi_device, ptr %76, i32 0, i32 41
  %78 = load i64, ptr %77, align 4
  %79 = or i64 %78, 2
  store i64 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %75, %71
  %81 = load ptr, ptr %8, align 4
  %82 = getelementptr inbounds %struct.scsi_device, ptr %81, i32 0, i32 41
  %83 = load i64, ptr %82, align 4
  %84 = and i64 %83, 1
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %80, %54
  %87 = phi ptr [ %46, %54 ], [ %72, %80 ]
  store i8 0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 7
  store i64 0, ptr %88, align 8
  br label %89

89:                                               ; preds = %86, %80, %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  br label %100

90:                                               ; preds = %67, %64, %60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  br label %91

91:                                               ; preds = %90, %36
  %92 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 19
  %93 = load i8, ptr %92, align 4
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 41
  %97 = load i64, ptr %96, align 4
  %98 = or i64 %97, 2
  store i64 %98, ptr %96, align 4
  br label %99

99:                                               ; preds = %95, %91
  store i8 1, ptr %92, align 4
  br label %100

100:                                              ; preds = %99, %89, %34, %28
  %101 = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 41
  %102 = load i64, ptr %101, align 4
  %103 = and i64 %102, -3
  store i64 %103, ptr %101, align 4
  %104 = load ptr, ptr %8, align 4
  call void @mutex_lock(ptr noundef nonnull @sd_ref_mutex) #17
  call void @put_device(ptr noundef %14) #17
  call void @scsi_device_put(ptr noundef %104) #17
  call void @mutex_unlock(ptr noundef nonnull @sd_ref_mutex) #17
  %105 = trunc i64 %102 to i32
  %106 = lshr i32 %105, 1
  %107 = and i32 %106, 1
  br label %108

108:                                              ; preds = %100, %12
  %109 = phi i32 [ %107, %100 ], [ 0, %12 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sd_unlock_native_capacity(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.scsi_host_template, ptr %8, i32 0, i32 26
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void %10(ptr noundef %5) #17
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_getgeo(ptr noundef %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = alloca [4 x i32], align 4
  %4 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.scsi_disk, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.scsi_disk, ptr %7, i32 0, i32 7
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 false) #17, !range !9
  %17 = sub nsw i32 22, %16
  %18 = select i1 %15, i32 -10, i32 %17
  %19 = zext i32 %18 to i64
  %20 = shl i64 %12, %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %21 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 0, ptr %21, align 4, !annotation !13
  store i32 64, ptr %3, align 4
  %22 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  store i32 32, ptr %22, align 4
  %23 = lshr i64 %20, 11
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 11
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.scsi_host_template, ptr %27, i32 0, i32 25
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %2
  %32 = call i32 %29(ptr noundef %9, ptr noundef %0, i64 noundef %20, ptr noundef nonnull %3) #17
  br label %35

33:                                               ; preds = %2
  %34 = call i32 @scsicam_bios_param(ptr noundef %0, i64 noundef %20, ptr noundef nonnull %3) #17
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32, ptr %3, align 4
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %1, align 4
  %38 = load i32, ptr %22, align 4
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.hd_geometry, ptr %1, i32 0, i32 1
  store i8 %39, ptr %40, align 1
  %41 = load i32, ptr %25, align 4
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds %struct.hd_geometry, ptr %1, i32 0, i32 2
  store i16 %42, ptr %43, align 2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_get_unique_id(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  %8 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 34
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.scsi_vpd, ptr %9, i32 0, i32 2
  %13 = getelementptr %struct.scsi_vpd, ptr %9, i32 1, i32 0, i32 1
  %14 = getelementptr inbounds %struct.scsi_vpd, ptr %9, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = icmp ult ptr %13, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %39, %11
  %19 = phi i32 [ %40, %39 ], [ %15, %11 ]
  %20 = phi ptr [ %46, %39 ], [ %13, %11 ]
  %21 = phi i32 [ %41, %39 ], [ -22, %11 ]
  %22 = getelementptr i8, ptr %20, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 48
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %24, 15
  %28 = icmp eq i32 %27, %2
  %29 = and i1 %26, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %18
  %31 = getelementptr i8, ptr %20, i32 3
  %32 = load i8, ptr %31, align 1
  switch i8 %32, label %39 [
    i8 16, label %33
    i8 12, label %33
    i8 8, label %33
  ]

33:                                               ; preds = %30, %30, %30
  %34 = zext i8 %32 to i32
  %35 = getelementptr i8, ptr %20, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %35, i32 %34, i1 false)
  %36 = icmp eq i8 %32, 16
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %14, align 4
  br label %39

39:                                               ; preds = %37, %30, %18
  %40 = phi i32 [ %19, %18 ], [ %19, %30 ], [ %38, %37 ]
  %41 = phi i32 [ %21, %18 ], [ %21, %30 ], [ %34, %37 ]
  %42 = getelementptr i8, ptr %20, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %44, 4
  %46 = getelementptr i8, ptr %20, i32 %45
  %47 = getelementptr i8, ptr %12, i32 %40
  %48 = icmp ult ptr %46, %47
  br i1 %48, label %18, label %49

49:                                               ; preds = %39, %33, %11, %3
  %50 = phi i32 [ -6, %3 ], [ -22, %11 ], [ 16, %33 ], [ %41, %39 ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !22
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_block_when_processing_errors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_set_medium_removal(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bdev_check_media_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_ioctl_block_when_processing_errors(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_ioctl(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_test_unit_ready(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsicam_bios_param(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_pr_register(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #3 {
  %5 = icmp ult i32 %3, 2
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 0
  %8 = select i1 %7, i8 0, i8 6
  %9 = tail call fastcc i32 @sd_pr_command(ptr noundef %0, i8 noundef zeroext %8, i64 noundef %1, i64 noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ %9, %6 ], [ -95, %4 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_pr_reserve(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = add i32 %2, -1
  %8 = icmp ult i32 %7, 6
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = getelementptr inbounds [6 x i8], ptr @switch.table.sd_pr_preempt, i32 0, i32 %7
  %11 = load i8, ptr %10, align 1
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i8 [ %11, %9 ], [ 0, %6 ]
  %14 = tail call fastcc i32 @sd_pr_command(ptr noundef %0, i8 noundef zeroext 1, i64 noundef %1, i64 noundef 0, i8 noundef zeroext %13, i8 noundef zeroext 0)
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i32 [ %14, %12 ], [ -95, %4 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_pr_release(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #3 {
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds [6 x i8], ptr @switch.table.sd_pr_preempt, i32 0, i32 %4
  %8 = load i8, ptr %7, align 1
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i8 [ %8, %6 ], [ 0, %3 ]
  %11 = tail call fastcc i32 @sd_pr_command(ptr noundef %0, i8 noundef zeroext 2, i64 noundef %1, i64 noundef 0, i8 noundef zeroext %10, i8 noundef zeroext 0)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_pr_preempt(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4) #3 {
  %6 = add i32 %3, -1
  %7 = icmp ult i32 %6, 6
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds [6 x i8], ptr @switch.table.sd_pr_preempt, i32 0, i32 %6
  %10 = load i8, ptr %9, align 1
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i8 [ %10, %8 ], [ 0, %5 ]
  %13 = select i1 %4, i8 5, i8 4
  %14 = tail call fastcc i32 @sd_pr_command(ptr noundef %0, i8 noundef zeroext %13, i64 noundef %1, i64 noundef %2, i8 noundef zeroext %12, i8 noundef zeroext 0)
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_pr_clear(ptr nocapture noundef readonly %0, i64 noundef %1) #3 {
  %3 = tail call fastcc i32 @sd_pr_command(ptr noundef %0, i8 noundef zeroext 3, i64 noundef %1, i64 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sd_pr_command(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i64 noundef %2, i64 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) unnamed_addr #3 {
  %7 = alloca %struct.scsi_sense_hdr, align 8
  %8 = alloca [16 x i8], align 1
  %9 = alloca [24 x i8], align 8
  %10 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 10
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.scsi_disk, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store i64 0, ptr %7, align 8, !annotation !13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  %16 = getelementptr inbounds i8, ptr %8, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %16, i8 0, i32 13, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #17
  %17 = getelementptr inbounds i8, ptr %9, i32 16
  store i64 0, ptr %17, align 8
  store i8 95, ptr %8, align 1
  %18 = getelementptr inbounds [16 x i8], ptr %8, i32 0, i32 1
  store i8 %1, ptr %18, align 1
  %19 = getelementptr inbounds [16 x i8], ptr %8, i32 0, i32 2
  store i8 %4, ptr %19, align 1
  %20 = getelementptr inbounds [16 x i8], ptr %8, i32 0, i32 5
  store i32 402653184, ptr %20, align 1
  %21 = tail call i64 @llvm.bswap.i64(i64 %2) #17
  store i64 %21, ptr %9, align 8
  %22 = getelementptr inbounds [24 x i8], ptr %9, i32 0, i32 8
  %23 = tail call i64 @llvm.bswap.i64(i64 %3) #17
  store i64 %23, ptr %22, align 8
  %24 = getelementptr inbounds [24 x i8], ptr %9, i32 0, i32 20
  store i8 %5, ptr %24, align 4
  %25 = getelementptr inbounds %struct.scsi_disk, ptr %13, i32 0, i32 8
  %26 = load i32, ptr %25, align 8
  %27 = call i32 @__scsi_execute(ptr noundef %15, ptr noundef nonnull %8, i32 noundef 1, ptr noundef nonnull %9, i32 noundef 24, ptr noundef null, ptr noundef nonnull %7, i32 noundef 3000, i32 noundef %26, i64 noundef 0, i32 noundef 0, ptr noundef null) #17
  %28 = and i32 %27, -2147483394
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %35

30:                                               ; preds = %6
  %31 = load i8, ptr %7, align 8
  %32 = and i8 %31, 112
  %33 = icmp eq i8 %32, 112
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %15, ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef %27) #17
  call void @scsi_print_sense_hdr(ptr noundef %15, ptr noundef null, ptr noundef nonnull %7) #17
  br label %35

35:                                               ; preds = %34, %30, %6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  ret i32 %27
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sd_config_write_same(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 41
  %11 = load i64, ptr %10, align 4
  %12 = and i64 %11, 524288
  %13 = icmp eq i64 %12, 0
  %14 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 11
  br i1 %13, label %16, label %15

15:                                               ; preds = %1
  store i32 0, ptr %14, align 4
  br label %67

16:                                               ; preds = %1
  %17 = load i32, ptr %14, align 4
  %18 = icmp ugt i32 %17, 65535
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 @llvm.umin.i32(i32 %17, i32 8388607)
  br label %34

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 25
  %23 = load i32, ptr %22, align 2
  %24 = and i32 %23, 12288
  %25 = icmp eq i32 %24, 0
  %26 = and i64 %11, 262144
  %27 = icmp eq i64 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = icmp eq i32 %17, 0
  %31 = select i1 %30, i32 65535, i32 %17
  br label %34

32:                                               ; preds = %21
  %33 = or i64 %11, 524288
  store i64 %33, ptr %10, align 4
  br label %34

34:                                               ; preds = %32, %29, %19
  %35 = phi i32 [ %31, %29 ], [ 0, %32 ], [ %20, %19 ]
  store i32 %35, ptr %14, align 4
  %36 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 25
  %37 = load i32, ptr %36, align 2
  %38 = and i32 %37, 640
  %39 = icmp eq i32 %38, 640
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  %41 = and i32 %37, 1152
  %42 = icmp eq i32 %41, 1152
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = icmp eq i32 %35, 0
  %45 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 23
  br i1 %44, label %47, label %46

46:                                               ; preds = %43
  store i8 1, ptr %45, align 8
  br label %52

47:                                               ; preds = %43
  store i8 0, ptr %45, align 8
  br label %67

48:                                               ; preds = %40, %34
  %49 = phi i8 [ 2, %34 ], [ 3, %40 ]
  %50 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 23
  store i8 %49, ptr %50, align 8
  %51 = icmp eq i32 %35, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %48, %46
  %53 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 16
  %54 = load i32, ptr %53, align 8
  %55 = icmp ugt i32 %54, %9
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load ptr, ptr %6, align 4
  %58 = getelementptr inbounds %struct.scsi_device, ptr %57, i32 0, i32 20
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  %61 = tail call i32 @llvm.ctlz.i32(i32 %59, i1 false) #17, !range !9
  %62 = sub nsw i32 31, %61
  %63 = select i1 %60, i32 -1, i32 %62
  %64 = lshr i32 %54, %63
  %65 = sub i32 0, %64
  %66 = and i32 %35, %65
  store i32 %66, ptr %14, align 4
  br label %67

67:                                               ; preds = %56, %52, %48, %47, %15
  %68 = phi i32 [ 0, %47 ], [ 0, %48 ], [ %35, %52 ], [ %66, %56 ], [ 0, %15 ]
  %69 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 11
  %70 = lshr i32 %9, 9
  %71 = mul i32 %68, %70
  tail call void @blk_queue_max_write_same_sectors(ptr noundef %5, i32 noundef %71) #17
  %72 = load i32, ptr %69, align 4
  %73 = mul i32 %72, %70
  tail call void @blk_queue_max_write_zeroes_sectors(ptr noundef %5, i32 noundef %73) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_capacity_16(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = alloca [16 x i8], align 1
  %5 = alloca %struct.scsi_sense_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  store i64 0, ptr %5, align 8, !annotation !13
  %6 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 41
  %7 = load i64, ptr %6, align 4
  %8 = and i64 %7, 137438953472
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %240

10:                                               ; preds = %3
  %11 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 1
  %12 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 13
  %13 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 8
  %14 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %5, i32 0, i32 1
  %15 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %5, i32 0, i32 2
  %16 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %5, i32 0, i32 3
  %17 = getelementptr inbounds i8, ptr %4, i32 2
  br label %18

18:                                               ; preds = %80, %10
  %19 = phi i32 [ %81, %80 ], [ 0, %10 ]
  %20 = phi i32 [ %82, %80 ], [ 3, %10 ]
  %21 = phi i32 [ %83, %80 ], [ 10, %10 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %17, i8 0, i32 14, i1 false)
  store i8 -98, ptr %4, align 1
  store i8 16, ptr %11, align 1
  store i8 32, ptr %12, align 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false)
  %22 = load i32, ptr %13, align 8
  %23 = call i32 @__scsi_execute(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 2, ptr noundef %2, i32 noundef 32, ptr noundef null, ptr noundef nonnull %5, i32 noundef 3000, i32 noundef %22, i64 noundef 0, i32 noundef 0, ptr noundef null) #17
  %24 = load i8, ptr %5, align 8
  %25 = and i8 %24, 112
  %26 = icmp eq i8 %25, 112
  br i1 %26, label %27, label %51

27:                                               ; preds = %18
  %28 = load i8, ptr %14, align 1
  switch i8 %28, label %51 [
    i8 6, label %29
    i8 2, label %29
  ]

29:                                               ; preds = %27, %27
  %30 = load i8, ptr %15, align 2
  %31 = icmp eq i8 %30, 58
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 19
  %34 = load i8, ptr %33, align 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.scsi_device, ptr %38, i32 0, i32 41
  %40 = load i64, ptr %39, align 4
  %41 = or i64 %40, 2
  store i64 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %36, %32
  %43 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.scsi_device, ptr %44, i32 0, i32 41
  %46 = load i64, ptr %45, align 4
  %47 = and i64 %46, 1
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %240, label %49

49:                                               ; preds = %42
  store i8 0, ptr %33, align 4
  %50 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 7
  store i64 0, ptr %50, align 8
  br label %240

51:                                               ; preds = %29, %27, %18
  %52 = icmp sgt i32 %23, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %51
  %54 = zext i1 %26 to i32
  %55 = load i8, ptr %14, align 1
  %56 = icmp eq i8 %55, 5
  %57 = select i1 %26, i1 %56, i1 false
  %58 = load i8, ptr %15, align 2
  br i1 %57, label %59, label %65

59:                                               ; preds = %53
  %60 = and i8 %58, -5
  %61 = icmp eq i8 %60, 32
  %62 = load i8, ptr %16, align 1
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %240, label %76

65:                                               ; preds = %53
  %66 = load i8, ptr %16, align 1
  %67 = icmp eq i8 %55, 6
  %68 = select i1 %26, i1 %67, i1 false
  %69 = icmp eq i8 %58, 41
  %70 = select i1 %68, i1 %69, i1 false
  %71 = icmp eq i8 %66, 0
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = add i32 %21, -1
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73, %65, %59, %51
  %77 = phi i32 [ %54, %73 ], [ %54, %65 ], [ %19, %51 ], [ %54, %59 ]
  %78 = phi i32 [ %74, %73 ], [ %21, %65 ], [ %21, %51 ], [ %21, %59 ]
  %79 = add i32 %20, -1
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i32 [ %54, %73 ], [ %77, %76 ]
  %82 = phi i32 [ %20, %73 ], [ %79, %76 ]
  %83 = phi i32 [ %74, %73 ], [ %78, %76 ]
  %84 = icmp ne i32 %23, 0
  %85 = icmp ne i32 %82, 0
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %18, label %87

87:                                               ; preds = %80
  br i1 %84, label %88, label %98

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 3
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  %92 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.gendisk, ptr %90, i32 0, i32 3
  %95 = select i1 %91, ptr null, ptr %94
  %96 = lshr i32 %23, 16
  %97 = and i32 %96, 255
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %93, ptr noundef %95, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.30, i32 noundef %97, ptr noundef nonnull @.str.4) #17
  call fastcc void @read_capacity_error(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %81)
  br label %240

98:                                               ; preds = %87
  %99 = getelementptr i8, ptr %2, i32 8
  %100 = load i32, ptr %99, align 1
  %101 = call i32 @llvm.bswap.i32(i32 %100) #17
  %102 = load i64, ptr %2, align 1
  %103 = call i64 @llvm.bswap.i64(i64 %102) #17
  %104 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.scsi_device, ptr %105, i32 0, i32 41
  %107 = load i64, ptr %106, align 4
  %108 = and i64 %107, 4398046511104
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %173

110:                                              ; preds = %98
  %111 = getelementptr inbounds %struct.scsi_device, ptr %105, i32 0, i32 23
  %112 = load i8, ptr %111, align 1
  %113 = icmp ugt i8 %112, 3
  br i1 %113, label %114, label %173

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.scsi_device, ptr %105, i32 0, i32 29
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr i8, ptr %116, i32 5
  %118 = load i8, ptr %117, align 1
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %173, label %121

121:                                              ; preds = %114
  %122 = getelementptr i8, ptr %2, i32 12
  %123 = load i8, ptr %122, align 1
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %173, label %126

126:                                              ; preds = %121
  %127 = lshr i8 %123, 1
  %128 = and i8 %127, 7
  %129 = add nuw nsw i8 %128, 1
  %130 = zext i8 %129 to i32
  %131 = icmp ugt i8 %128, 2
  br i1 %131, label %142, label %132

132:                                              ; preds = %126
  %133 = load ptr, ptr %105, align 8
  %134 = getelementptr inbounds %struct.Scsi_Host, ptr %133, i32 0, i32 41
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr [4 x i8], ptr @scsi_host_dif_capable.cap, i32 0, i32 %130
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = and i32 %135, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i32
  br label %142

142:                                              ; preds = %132, %126
  %143 = phi i32 [ -19, %126 ], [ %141, %132 ]
  %144 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 25
  %145 = load i32, ptr %144, align 2
  %146 = and i32 %145, 32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 21
  %150 = load i8, ptr %149, align 2
  %151 = icmp eq i8 %129, %150
  br i1 %151, label %180, label %152

152:                                              ; preds = %148, %142
  switch i32 %143, label %178 [
    i32 -19, label %153
    i32 1, label %159
    i32 0, label %166
  ]

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 3
  %155 = load ptr, ptr %154, align 8
  %156 = icmp eq ptr %155, null
  %157 = getelementptr inbounds %struct.gendisk, ptr %155, i32 0, i32 3
  %158 = select i1 %156, ptr null, ptr %157
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef %105, ptr noundef %158, ptr noundef nonnull @.str.34, i32 noundef %130) #17
  br label %178

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 3
  %161 = load ptr, ptr %160, align 8
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.gendisk, ptr %161, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %105, ptr noundef %164, ptr noundef nonnull @.str.35, i32 noundef %130) #17
  br label %173

165:                                              ; preds = %159
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %105, ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef %130) #17
  br label %173

166:                                              ; preds = %152
  %167 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 3
  %168 = load ptr, ptr %167, align 8
  %169 = icmp eq ptr %168, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.gendisk, ptr %168, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %105, ptr noundef %171, ptr noundef nonnull @.str.36, i32 noundef %130) #17
  br label %173

172:                                              ; preds = %166
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %105, ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef %130) #17
  br label %173

173:                                              ; preds = %172, %170, %165, %163, %121, %114, %110, %98
  %174 = phi i8 [ %129, %170 ], [ %129, %172 ], [ %129, %163 ], [ %129, %165 ], [ 0, %114 ], [ 0, %121 ], [ 0, %98 ], [ 0, %110 ]
  %175 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 21
  store i8 %174, ptr %175, align 2
  %176 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 25
  %177 = load i32, ptr %176, align 2
  br label %184

178:                                              ; preds = %153, %152
  %179 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 21
  store i8 %129, ptr %179, align 2
  br label %182

180:                                              ; preds = %148
  store i8 %129, ptr %149, align 2
  %181 = icmp slt i32 %143, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %180, %178
  %183 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 7
  store i64 0, ptr %183, align 8
  br label %240

184:                                              ; preds = %180, %173
  %185 = phi i32 [ %177, %173 ], [ %145, %180 ]
  %186 = getelementptr i8, ptr %2, i32 13
  %187 = load i8, ptr %186, align 1
  %188 = and i8 %187, 15
  %189 = zext i8 %188 to i32
  %190 = shl i32 %101, %189
  %191 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 16
  store i32 %190, ptr %191, align 8
  %192 = getelementptr i8, ptr %2, i32 12
  %193 = load i8, ptr %192, align 1
  %194 = lshr i8 %193, 4
  %195 = and i8 %194, 3
  %196 = zext i8 %195 to i32
  %197 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 25
  %198 = shl nuw nsw i32 %196, 14
  %199 = and i32 %185, -49153
  %200 = or i32 %198, %199
  store i32 %200, ptr %197, align 2
  %201 = getelementptr i8, ptr %2, i32 14
  %202 = load i8, ptr %201, align 1
  %203 = and i8 %202, 63
  %204 = zext i8 %203 to i32
  %205 = shl nuw nsw i32 %204, 8
  %206 = getelementptr i8, ptr %2, i32 15
  %207 = load i8, ptr %206, align 1
  %208 = zext i8 %207 to i32
  %209 = or i32 %205, %208
  %210 = mul i32 %209, %101
  %211 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 1
  %212 = load ptr, ptr %211, align 4
  call void @blk_queue_alignment_offset(ptr noundef %212, i32 noundef %210) #17
  %213 = icmp eq i32 %210, 0
  br i1 %213, label %225, label %214

214:                                              ; preds = %184
  %215 = load i32, ptr %197, align 2
  %216 = and i32 %215, 32
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 3
  %220 = load ptr, ptr %219, align 8
  %221 = icmp eq ptr %220, null
  %222 = load ptr, ptr %104, align 4
  %223 = getelementptr inbounds %struct.gendisk, ptr %220, i32 0, i32 3
  %224 = select i1 %221, ptr null, ptr %223
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %222, ptr noundef %224, ptr noundef nonnull @.str.31, i32 noundef %210) #17
  br label %225

225:                                              ; preds = %218, %214, %184
  %226 = load i8, ptr %201, align 1
  %227 = icmp sgt i8 %226, -1
  br i1 %227, label %237, label %228

228:                                              ; preds = %225
  %229 = load i32, ptr %197, align 2
  %230 = or i32 %229, 64
  store i32 %230, ptr %197, align 2
  %231 = load i8, ptr %201, align 1
  %232 = and i8 %231, 64
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %228
  %235 = or i32 %229, 192
  store i32 %235, ptr %197, align 2
  br label %236

236:                                              ; preds = %234, %228
  call fastcc void @sd_config_discard(ptr noundef %0, i32 noundef 2)
  br label %237

237:                                              ; preds = %236, %225
  %238 = add i64 %103, 1
  %239 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 7
  store i64 %238, ptr %239, align 8
  br label %240

240:                                              ; preds = %237, %182, %88, %59, %49, %42, %3
  %241 = phi i32 [ -22, %88 ], [ -19, %182 ], [ %101, %237 ], [ -22, %3 ], [ -19, %42 ], [ -19, %49 ], [ -22, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret i32 %241
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_capacity_10(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = alloca [16 x i8], align 1
  %5 = alloca %struct.scsi_sense_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %6 = getelementptr inbounds i8, ptr %4, i32 10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 6, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  store i64 0, ptr %5, align 8, !annotation !13
  %7 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 1
  %8 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 8
  %9 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %5, i32 0, i32 2
  %11 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %5, i32 0, i32 3
  br label %12

12:                                               ; preds = %65, %3
  %13 = phi i32 [ 0, %3 ], [ %66, %65 ]
  %14 = phi i32 [ 3, %3 ], [ %67, %65 ]
  %15 = phi i32 [ 10, %3 ], [ %68, %65 ]
  store i8 37, ptr %4, align 1
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(9) %7, i8 0, i32 9, i1 false)
  store i64 0, ptr %2, align 1
  %16 = load i32, ptr %8, align 8
  %17 = call i32 @__scsi_execute(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 2, ptr noundef %2, i32 noundef 8, ptr noundef null, ptr noundef nonnull %5, i32 noundef 3000, i32 noundef %16, i64 noundef 0, i32 noundef 0, ptr noundef null) #17
  %18 = load i8, ptr %5, align 8
  %19 = and i8 %18, 112
  %20 = icmp eq i8 %19, 112
  br i1 %20, label %21, label %45

21:                                               ; preds = %12
  %22 = load i8, ptr %9, align 1
  switch i8 %22, label %45 [
    i8 6, label %23
    i8 2, label %23
  ]

23:                                               ; preds = %21, %21
  %24 = load i8, ptr %10, align 2
  %25 = icmp eq i8 %24, 58
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 19
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.scsi_device, ptr %32, i32 0, i32 41
  %34 = load i64, ptr %33, align 4
  %35 = or i64 %34, 2
  store i64 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %30, %26
  %37 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.scsi_device, ptr %38, i32 0, i32 41
  %40 = load i64, ptr %39, align 4
  %41 = and i64 %40, 1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %103, label %43

43:                                               ; preds = %36
  store i8 0, ptr %27, align 4
  %44 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 7
  store i64 0, ptr %44, align 8
  br label %103

45:                                               ; preds = %23, %21, %12
  %46 = icmp sgt i32 %17, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %45
  %48 = zext i1 %20 to i32
  %49 = load i8, ptr %9, align 1
  %50 = icmp eq i8 %49, 6
  %51 = select i1 %20, i1 %50, i1 false
  %52 = load i8, ptr %10, align 2
  %53 = icmp eq i8 %52, 41
  %54 = select i1 %51, i1 %53, i1 false
  %55 = load i8, ptr %11, align 1
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = add i32 %15, -1
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58, %47, %45
  %62 = phi i32 [ %48, %58 ], [ %48, %47 ], [ %13, %45 ]
  %63 = phi i32 [ %59, %58 ], [ %15, %47 ], [ %15, %45 ]
  %64 = add i32 %14, -1
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i32 [ %48, %58 ], [ %62, %61 ]
  %67 = phi i32 [ %14, %58 ], [ %64, %61 ]
  %68 = phi i32 [ %59, %58 ], [ %63, %61 ]
  %69 = icmp ne i32 %17, 0
  %70 = icmp ne i32 %67, 0
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %12, label %72

72:                                               ; preds = %65
  br i1 %69, label %73, label %83

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  %77 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.gendisk, ptr %75, i32 0, i32 3
  %80 = select i1 %76, ptr null, ptr %79
  %81 = lshr i32 %17, 16
  %82 = and i32 %81, 255
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %78, ptr noundef %80, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.37, i32 noundef %82, ptr noundef nonnull @.str.4) #17
  call fastcc void @read_capacity_error(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %66)
  br label %103

83:                                               ; preds = %72
  %84 = getelementptr i8, ptr %2, i32 4
  %85 = load i32, ptr %84, align 1
  %86 = call i32 @llvm.bswap.i32(i32 %85) #17
  %87 = load i32, ptr %2, align 1
  %88 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 41
  %89 = load i64, ptr %88, align 4
  %90 = and i64 %89, 137438953472
  %91 = icmp ne i64 %90, 0
  %92 = icmp eq i32 %87, -1
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 7
  store i64 0, ptr %95, align 8
  %96 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 16
  store i32 %86, ptr %96, align 8
  br label %103

97:                                               ; preds = %83
  %98 = call i32 @llvm.bswap.i32(i32 %87) #17
  %99 = zext i32 %98 to i64
  %100 = add nuw nsw i64 %99, 1
  %101 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 7
  store i64 %100, ptr %101, align 8
  %102 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 16
  store i32 %86, ptr %102, align 8
  br label %103

103:                                              ; preds = %97, %94, %73, %43, %36
  %104 = phi i32 [ -22, %73 ], [ %86, %94 ], [ %86, %97 ], [ -19, %36 ], [ -19, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_physical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @read_capacity_error(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  br i1 %9, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %11, ptr noundef %13, ptr noundef nonnull @.str.32) #17
  br label %47

14:                                               ; preds = %6
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %11, ptr noundef null, ptr noundef nonnull @.str.32) #17
  br label %47

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.gendisk, ptr %19, i32 0, i32 3
  %22 = select i1 %20, ptr null, ptr %21
  tail call void @scsi_print_sense_hdr(ptr noundef %17, ptr noundef %22, ptr noundef %2) #17
  %23 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 41
  %24 = load i64, ptr %23, align 4
  %25 = and i64 %24, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %2, i32 0, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 2
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 19
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %16, align 4
  %37 = getelementptr inbounds %struct.scsi_device, ptr %36, i32 0, i32 41
  %38 = load i64, ptr %37, align 4
  %39 = or i64 %38, 2
  store i64 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr inbounds %struct.scsi_device, ptr %41, i32 0, i32 41
  %43 = load i64, ptr %42, align 4
  %44 = and i64 %43, 1
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i8 0, ptr %32, align 4
  br label %47

47:                                               ; preds = %46, %40, %27, %15, %14, %12
  %48 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 7
  store i64 0, ptr %48, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_alignment_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sd_config_discard(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 14
  %12 = load i32, ptr %11, align 8
  %13 = mul i32 %12, %10
  %14 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 32, i32 19
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 16
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 13
  %18 = load i32, ptr %17, align 4
  %19 = mul i32 %18, %10
  %20 = tail call i32 @llvm.umax.i32(i32 %16, i32 %19)
  %21 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 32, i32 18
  store i32 %20, ptr %21, align 4
  %22 = trunc i32 %1 to i8
  %23 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 22
  store i8 %22, ptr %23, align 1
  switch i32 %1, label %63 [
    i32 0, label %24
    i32 5, label %24
    i32 1, label %25
    i32 2, label %31
    i32 3, label %44
    i32 4, label %57
  ]

24:                                               ; preds = %2, %2
  tail call void @blk_queue_max_discard_sectors(ptr noundef %6, i32 noundef 0) #17
  tail call void @blk_queue_flag_clear(i32 noundef 8, ptr noundef %6) #17
  br label %67

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 12
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  %29 = tail call i32 @llvm.umin.i32(i32 %27, i32 8388607)
  %30 = select i1 %28, i32 8388607, i32 %29
  br label %63

31:                                               ; preds = %2
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr inbounds %struct.scsi_device, ptr %32, i32 0, i32 41
  %34 = load i64, ptr %33, align 4
  %35 = and i64 %34, 35184372088832
  %36 = icmp eq i64 %35, 0
  %37 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 12
  %38 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 11
  %39 = select i1 %36, ptr %38, ptr %37
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = tail call i32 @llvm.umin.i32(i32 %40, i32 8388607)
  %43 = select i1 %41, i32 8388607, i32 %42
  br label %63

44:                                               ; preds = %2
  %45 = load ptr, ptr %7, align 4
  %46 = getelementptr inbounds %struct.scsi_device, ptr %45, i32 0, i32 41
  %47 = load i64, ptr %46, align 4
  %48 = and i64 %47, 35184372088832
  %49 = icmp eq i64 %48, 0
  %50 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 12
  %51 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 11
  %52 = select i1 %49, ptr %51, ptr %50
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = tail call i32 @llvm.umin.i32(i32 %53, i32 65535)
  %56 = select i1 %54, i32 65535, i32 %55
  br label %63

57:                                               ; preds = %2
  %58 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 11
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  %61 = tail call i32 @llvm.umin.i32(i32 %59, i32 65535)
  %62 = select i1 %60, i32 65535, i32 %61
  br label %63

63:                                               ; preds = %57, %44, %31, %25, %2
  %64 = phi i32 [ 0, %2 ], [ %62, %57 ], [ %56, %44 ], [ %43, %31 ], [ %30, %25 ]
  %65 = lshr i32 %10, 9
  %66 = mul i32 %64, %65
  tail call void @blk_queue_max_discard_sectors(ptr noundef %6, i32 noundef %66) #17
  tail call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %6) #17
  br label %67

67:                                               ; preds = %63, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_get_vpd_page(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_min(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_set_zoned(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @string_get_size(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_mode_sense(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_report_opcode(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @disk_alloc_independent_access_ranges(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_set_independent_access_ranges(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_write_cache(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_write_same_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_write_zeroes_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sd_sync_cache(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca %struct.scsi_sense_hdr, align 8
  %4 = alloca [10 x i8], align 1
  %5 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 23
  %10 = load i32, ptr %9, align 8
  %11 = shl i32 %10, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store i64 0, ptr %3, align 8, !annotation !13
  %12 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 68
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %14 [
    i32 7, label %73
    i32 6, label %73
    i32 4, label %73
  ]

14:                                               ; preds = %2
  %15 = icmp eq ptr %1, null
  %16 = select i1 %15, ptr %3, ptr %1
  %17 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #17
  %18 = getelementptr inbounds i8, ptr %4, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %18, i8 0, i32 9, i1 false)
  store i8 53, ptr %4, align 1
  %19 = load i32, ptr %17, align 8
  %20 = call i32 @__scsi_execute(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %16, i32 noundef %11, i32 noundef %19, i64 noundef 0, i32 noundef 32768, ptr noundef null) #17
  %21 = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #17
  br i1 %21, label %73, label %22

22:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #17
  %23 = getelementptr inbounds i8, ptr %4, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %23, i8 0, i32 9, i1 false)
  store i8 53, ptr %4, align 1
  %24 = load i32, ptr %17, align 8
  %25 = call i32 @__scsi_execute(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %16, i32 noundef %11, i32 noundef %24, i64 noundef 0, i32 noundef 32768, ptr noundef null) #17
  %26 = icmp eq i32 %25, 0
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #17
  br i1 %26, label %73, label %27

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #17
  %28 = getelementptr inbounds i8, ptr %4, i32 1
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %28, i8 0, i32 9, i1 false)
  store i8 53, ptr %4, align 1
  %29 = load i32, ptr %17, align 8
  %30 = call i32 @__scsi_execute(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %16, i32 noundef %11, i32 noundef %29, i64 noundef 0, i32 noundef 32768, ptr noundef null) #17
  %31 = icmp eq i32 %30, 0
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #17
  br i1 %31, label %73, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.gendisk, ptr %34, i32 0, i32 3
  %38 = select i1 %35, ptr null, ptr %37
  %39 = lshr i32 %30, 16
  %40 = and i32 %39, 255
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %36, ptr noundef %38, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.79, i32 noundef %40, ptr noundef nonnull @.str.4) #17
  %41 = icmp slt i32 %30, 0
  br i1 %41, label %73, label %42

42:                                               ; preds = %32
  %43 = and i32 %30, -2147483394
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  %46 = load i8, ptr %16, align 1
  %47 = and i8 %46, 112
  %48 = icmp eq i8 %47, 112
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load ptr, ptr %5, align 4
  %51 = load ptr, ptr %33, align 8
  %52 = icmp eq ptr %51, null
  %53 = getelementptr inbounds %struct.gendisk, ptr %51, i32 0, i32 3
  %54 = select i1 %52, ptr null, ptr %53
  call void @scsi_print_sense_hdr(ptr noundef %50, ptr noundef %54, ptr noundef nonnull %16) #17
  %55 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 2
  %56 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %1, i32 0, i32 2
  %57 = select i1 %15, ptr %55, ptr %56
  %58 = load i8, ptr %57, align 1
  switch i8 %58, label %65 [
    i8 58, label %73
    i8 32, label %73
    i8 116, label %59
  ]

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 3
  %61 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %1, i32 0, i32 3
  %62 = select i1 %15, ptr %60, ptr %61
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, 113
  br i1 %64, label %73, label %65

65:                                               ; preds = %59, %49, %45, %42
  %66 = trunc i32 %39 to i8
  %67 = add i8 %66, -1
  %68 = icmp ult i8 %67, 13
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = sext i8 %67 to i32
  %71 = getelementptr inbounds [13 x i32], ptr @switch.table.sd_sync_cache, i32 0, i32 %70
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %69, %65, %59, %49, %49, %32, %27, %22, %14, %2, %2, %2
  %74 = phi i32 [ -19, %2 ], [ %30, %32 ], [ 0, %49 ], [ 0, %49 ], [ 0, %59 ], [ -19, %2 ], [ -19, %2 ], [ 0, %27 ], [ 0, %22 ], [ 0, %14 ], [ %72, %69 ], [ -5, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sd_start_stop_device(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca %struct.scsi_sense_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @__const.sd_start_stop_device.cmd, i32 6, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store i64 0, ptr %4, align 8, !annotation !13
  %5 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 1, ptr %9, align 1
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i8 [ 1, %8 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 41
  %13 = load i64, ptr %12, align 4
  %14 = and i64 %13, 536870912
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = select i1 %7, i8 48, i8 16
  %18 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  %19 = or i8 %11, %17
  store i8 %19, ptr %18, align 1
  br label %20

20:                                               ; preds = %16, %10
  %21 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 68
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %23 [
    i32 7, label %52
    i32 6, label %52
    i32 4, label %52
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 8
  %25 = load i32, ptr %24, align 8
  %26 = call i32 @__scsi_execute(ptr noundef %6, ptr noundef nonnull %3, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull %4, i32 noundef 3000, i32 noundef %25, i64 noundef 0, i32 noundef 32768, ptr noundef null) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.scsi_disk, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr inbounds %struct.gendisk, ptr %30, i32 0, i32 3
  %34 = select i1 %31, ptr null, ptr %33
  %35 = lshr i32 %26, 16
  %36 = and i32 %35, 255
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.1, ptr noundef %32, ptr noundef %34, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.80, i32 noundef %36, ptr noundef nonnull @.str.4) #17
  %37 = icmp sgt i32 %26, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %28
  %39 = load i8, ptr %4, align 8
  %40 = and i8 %39, 112
  %41 = icmp eq i8 %40, 112
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load ptr, ptr %5, align 4
  %44 = load ptr, ptr %29, align 8
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds %struct.gendisk, ptr %44, i32 0, i32 3
  %47 = select i1 %45, ptr null, ptr %46
  call void @scsi_print_sense_hdr(ptr noundef %43, ptr noundef %47, ptr noundef nonnull %4) #17
  %48 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %4, i32 0, i32 2
  %49 = load i8, ptr %48, align 2
  %50 = icmp eq i8 %49, 58
  br i1 %50, label %51, label %52

51:                                               ; preds = %42, %23
  br label %52

52:                                               ; preds = %51, %42, %38, %28, %20, %20, %20
  %53 = phi i32 [ -19, %20 ], [ 0, %51 ], [ -5, %42 ], [ -5, %28 ], [ -5, %38 ], [ -19, %20 ], [ -19, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #17
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_suspend_system(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 7
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5, %1
  %11 = tail call fastcc i32 @sd_suspend_common(ptr noundef %0, i1 noundef zeroext true)
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi i32 [ %11, %10 ], [ 0, %5 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_resume_system(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 7
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 41
  %18 = load i64, ptr %17, align 4
  %19 = and i64 %18, 268435456
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.scsi_disk, ptr %12, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.gendisk, ptr %23, i32 0, i32 3
  %26 = select i1 %24, ptr null, ptr %25
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %16, ptr noundef %26, ptr noundef nonnull @.str.81) #17
  %27 = tail call fastcc i32 @sd_start_stop_device(ptr noundef nonnull %12, i32 noundef 1) #17
  br label %28

28:                                               ; preds = %21, %14, %10, %5
  %29 = phi i32 [ 0, %5 ], [ 0, %10 ], [ 0, %14 ], [ %27, %21 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_suspend_runtime(ptr nocapture noundef readonly %0) #3 {
  %2 = tail call fastcc i32 @sd_suspend_common(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sd_resume_runtime(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 41
  %9 = load i64, ptr %8, align 4
  %10 = and i64 %9, 140737488355328
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 23
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 @__scsi_execute(ptr noundef %7, ptr noundef nonnull @sd_resume_runtime.cmd, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef %16, i32 noundef 1, i64 noundef 0, i32 noundef 32768, ptr noundef null) #17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.scsi_disk, ptr %3, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.gendisk, ptr %21, i32 0, i32 3
  %25 = select i1 %22, ptr null, ptr %24
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %23, ptr noundef %25, ptr noundef nonnull @.str.82) #17
  br label %26

26:                                               ; preds = %19, %12, %5
  %27 = load ptr, ptr %2, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.scsi_disk, ptr %27, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.scsi_device, ptr %31, i32 0, i32 41
  %33 = load i64, ptr %32, align 4
  %34 = and i64 %33, 268435456
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.scsi_disk, ptr %27, i32 0, i32 3
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds %struct.gendisk, ptr %38, i32 0, i32 3
  %41 = select i1 %39, ptr null, ptr %40
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %31, ptr noundef %41, ptr noundef nonnull @.str.81) #17
  %42 = tail call fastcc i32 @sd_start_stop_device(ptr noundef nonnull %27, i32 noundef 1) #17
  br label %43

43:                                               ; preds = %36, %29, %26, %1
  %44 = phi i32 [ 0, %1 ], [ 0, %26 ], [ 0, %29 ], [ %42, %36 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sd_suspend_common(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #3 {
  %3 = alloca %struct.scsi_sense_hdr, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store i64 0, ptr %3, align 8, !annotation !13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 25
  %9 = load i32, ptr %8, align 2
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 19
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.gendisk, ptr %18, i32 0, i32 3
  %23 = select i1 %19, ptr null, ptr %22
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %21, ptr noundef %23, ptr noundef nonnull @.str.77) #17
  %24 = call fastcc i32 @sd_sync_cache(ptr noundef nonnull %5, ptr noundef nonnull %3)
  switch i32 %24, label %25 [
    i32 0, label %33
    i32 -19, label %48
  ]

25:                                               ; preds = %16
  %26 = load i8, ptr %3, align 8
  %27 = and i8 %26, 112
  %28 = icmp ne i8 %27, 112
  %29 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %3, i32 0, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = icmp ne i8 %30, 5
  %32 = select i1 %28, i1 true, i1 %31
  br i1 %32, label %48, label %33

33:                                               ; preds = %25, %16, %12, %7
  %34 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 41
  %37 = load i64, ptr %36, align 4
  %38 = and i64 %37, 268435456
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.scsi_disk, ptr %5, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  %44 = getelementptr inbounds %struct.gendisk, ptr %42, i32 0, i32 3
  %45 = select i1 %43, ptr null, ptr %44
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.11, ptr noundef %35, ptr noundef %45, ptr noundef nonnull @.str.78) #17
  %46 = call fastcc i32 @sd_start_stop_device(ptr noundef nonnull %5, i32 noundef 0)
  %47 = select i1 %1, i32 0, i32 %46
  br label %48

48:                                               ; preds = %40, %33, %25, %16, %2
  %49 = phi i32 [ 0, %2 ], [ 0, %16 ], [ %24, %25 ], [ %47, %40 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sd_setup_unmap_cmnd(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr i8, ptr %0, i32 -168
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %0, i32 -128
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scsi_device, ptr %11, i32 0, i32 20
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %13, i1 false) #17, !range !9
  %16 = sub nsw i32 22, %15
  %17 = select i1 %14, i32 -10, i32 %16
  %18 = getelementptr i8, ptr %0, i32 -136
  %19 = load i32, ptr %18, align 8
  %20 = zext i32 %17 to i64
  %21 = lshr i64 %9, %20
  %22 = load ptr, ptr @sd_page_pool, align 4
  %23 = tail call noalias ptr @mempool_alloc(ptr noundef %22, i32 noundef 2592) #17
  %24 = getelementptr i8, ptr %0, i32 -52
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %79, label %26

26:                                               ; preds = %1
  %27 = lshr i32 %19, 9
  %28 = zext i32 %27 to i64
  %29 = sub nsw i32 22, %15
  %30 = select i1 %14, i32 -10, i32 %29
  %31 = zext i32 %30 to i64
  %32 = lshr i64 %28, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32, ptr @pgprot_kernel, align 4
  %35 = or i32 %34, 512
  %36 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %23, i32 noundef %35) #17
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %36, i8 0, i32 4096, i1 false) #17
  tail call void @kunmap_local_indexed(ptr noundef %36) #17
  %37 = getelementptr i8, ptr %0, i32 -44
  store i32 0, ptr %37, align 4
  %38 = getelementptr i8, ptr %0, i32 -48
  store i32 24, ptr %38, align 4
  %39 = getelementptr i8, ptr %0, i32 -152
  %40 = load i32, ptr %39, align 8
  %41 = or i32 %40, 262144
  store i32 %41, ptr %39, align 8
  %42 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  store i16 10, ptr %42, align 4
  %43 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %44 = load ptr, ptr %43, align 4
  store i8 66, ptr %44, align 1
  %45 = load ptr, ptr %43, align 4
  %46 = getelementptr i8, ptr %45, i32 8
  store i8 24, ptr %46, align 1
  %47 = load ptr, ptr %24, align 4
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 30
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %56, label %51

51:                                               ; preds = %26
  %52 = icmp eq i32 %49, 3
  %53 = load i32, ptr @movable_zone, align 4
  %54 = icmp eq i32 %53, 2
  %55 = select i1 %52, i1 %54, i1 false
  br label %56

56:                                               ; preds = %51, %26
  %57 = phi i1 [ true, %26 ], [ %55, %51 ]
  %58 = load i1, ptr @bvec_virt.__already_done, align 1
  %59 = xor i1 %58, true
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %63, !prof !12

61:                                               ; preds = %56
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.84, i32 noundef 240, i32 noundef 9, ptr noundef null) #17
  %62 = load ptr, ptr %24, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi ptr [ %62, %61 ], [ %47, %56 ]
  %65 = tail call ptr @page_address(ptr noundef %64) #17
  %66 = load i32, ptr %37, align 4
  %67 = getelementptr i8, ptr %65, i32 %66
  store i16 5632, ptr %67, align 1
  %68 = getelementptr i8, ptr %67, i32 2
  store i16 4096, ptr %68, align 1
  %69 = getelementptr i8, ptr %67, i32 8
  %70 = tail call i64 @llvm.bswap.i64(i64 %21) #17
  store i64 %70, ptr %69, align 1
  %71 = getelementptr i8, ptr %67, i32 16
  %72 = tail call i32 @llvm.bswap.i32(i32 %33) #17
  store i32 %72, ptr %71, align 1
  %73 = getelementptr inbounds %struct.scsi_disk, ptr %7, i32 0, i32 8
  %74 = load i32, ptr %73, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 9
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 20
  store i32 24, ptr %76, align 4
  %77 = getelementptr i8, ptr %0, i32 -140
  store i32 3000, ptr %77, align 4
  %78 = tail call zeroext i8 @scsi_alloc_sgtables(ptr noundef %0) #17
  br label %79

79:                                               ; preds = %63, %1
  %80 = phi i8 [ %78, %63 ], [ 9, %1 ]
  ret i8 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sd_setup_write_same16_cmnd(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -168
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %0, i32 -128
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 false) #17, !range !9
  %17 = sub nsw i32 22, %16
  %18 = select i1 %15, i32 -10, i32 %17
  %19 = getelementptr i8, ptr %0, i32 -136
  %20 = load i32, ptr %19, align 8
  %21 = zext i32 %18 to i64
  %22 = lshr i64 %12, %21
  %23 = lshr i32 %20, 9
  %24 = zext i32 %23 to i64
  %25 = sub nsw i32 22, %16
  %26 = select i1 %15, i32 -10, i32 %25
  %27 = zext i32 %26 to i64
  %28 = lshr i64 %24, %27
  %29 = trunc i64 %28 to i32
  %30 = load ptr, ptr @sd_page_pool, align 4
  %31 = tail call noalias ptr @mempool_alloc(ptr noundef %30, i32 noundef 2592) #17
  %32 = getelementptr i8, ptr %0, i32 -52
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %63, label %34

34:                                               ; preds = %2
  %35 = load i32, ptr @pgprot_kernel, align 4
  %36 = or i32 %35, 512
  %37 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %31, i32 noundef %36) #17
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %37, i8 0, i32 4096, i1 false) #17
  tail call void @kunmap_local_indexed(ptr noundef %37) #17
  %38 = getelementptr i8, ptr %0, i32 -44
  store i32 0, ptr %38, align 4
  %39 = getelementptr i8, ptr %0, i32 -48
  store i32 %14, ptr %39, align 4
  %40 = getelementptr i8, ptr %0, i32 -152
  %41 = load i32, ptr %40, align 8
  %42 = or i32 %41, 262144
  store i32 %42, ptr %40, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  store i16 16, ptr %43, align 4
  %44 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %45 = load ptr, ptr %44, align 4
  store i8 -109, ptr %45, align 1
  br i1 %1, label %46, label %49

46:                                               ; preds = %34
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr i8, ptr %47, i32 1
  store i8 8, ptr %48, align 1
  br label %49

49:                                               ; preds = %46, %34
  %50 = phi i32 [ 3000, %46 ], [ 12000, %34 ]
  %51 = load ptr, ptr %44, align 4
  %52 = getelementptr i8, ptr %51, i32 2
  %53 = tail call i64 @llvm.bswap.i64(i64 %22) #17
  store i64 %53, ptr %52, align 1
  %54 = load ptr, ptr %44, align 4
  %55 = getelementptr i8, ptr %54, i32 10
  %56 = tail call i32 @llvm.bswap.i32(i32 %29) #17
  store i32 %56, ptr %55, align 1
  %57 = getelementptr inbounds %struct.scsi_disk, ptr %10, i32 0, i32 8
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 9
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 20
  store i32 %14, ptr %60, align 4
  %61 = getelementptr i8, ptr %0, i32 -140
  store i32 %50, ptr %61, align 4
  %62 = tail call zeroext i8 @scsi_alloc_sgtables(ptr noundef %0) #17
  br label %63

63:                                               ; preds = %49, %2
  %64 = phi i8 [ %62, %49 ], [ 9, %2 ]
  ret i8 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sd_setup_write_same10_cmnd(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -168
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %0, i32 -128
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 false) #17, !range !9
  %17 = sub nsw i32 22, %16
  %18 = select i1 %15, i32 -10, i32 %17
  %19 = getelementptr i8, ptr %0, i32 -136
  %20 = load i32, ptr %19, align 8
  %21 = zext i32 %18 to i64
  %22 = lshr i64 %12, %21
  %23 = lshr i32 %20, 9
  %24 = zext i32 %23 to i64
  %25 = sub nsw i32 22, %16
  %26 = select i1 %15, i32 -10, i32 %25
  %27 = zext i32 %26 to i64
  %28 = lshr i64 %24, %27
  %29 = load ptr, ptr @sd_page_pool, align 4
  %30 = tail call noalias ptr @mempool_alloc(ptr noundef %29, i32 noundef 2592) #17
  %31 = getelementptr i8, ptr %0, i32 -52
  store ptr %30, ptr %31, align 4
  %32 = icmp eq ptr %30, null
  br i1 %32, label %64, label %33

33:                                               ; preds = %2
  %34 = load i32, ptr @pgprot_kernel, align 4
  %35 = or i32 %34, 512
  %36 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %30, i32 noundef %35) #17
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %36, i8 0, i32 4096, i1 false) #17
  tail call void @kunmap_local_indexed(ptr noundef %36) #17
  %37 = getelementptr i8, ptr %0, i32 -44
  store i32 0, ptr %37, align 4
  %38 = getelementptr i8, ptr %0, i32 -48
  store i32 %14, ptr %38, align 4
  %39 = getelementptr i8, ptr %0, i32 -152
  %40 = load i32, ptr %39, align 8
  %41 = or i32 %40, 262144
  store i32 %41, ptr %39, align 8
  %42 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  store i16 10, ptr %42, align 4
  %43 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %44 = load ptr, ptr %43, align 4
  store i8 65, ptr %44, align 1
  br i1 %1, label %45, label %48

45:                                               ; preds = %33
  %46 = load ptr, ptr %43, align 4
  %47 = getelementptr i8, ptr %46, i32 1
  store i8 8, ptr %47, align 1
  br label %48

48:                                               ; preds = %45, %33
  %49 = phi i32 [ 3000, %45 ], [ 12000, %33 ]
  %50 = trunc i64 %22 to i32
  %51 = load ptr, ptr %43, align 4
  %52 = getelementptr i8, ptr %51, i32 2
  %53 = tail call i32 @llvm.bswap.i32(i32 %50) #17
  store i32 %53, ptr %52, align 1
  %54 = trunc i64 %28 to i16
  %55 = load ptr, ptr %43, align 4
  %56 = getelementptr i8, ptr %55, i32 7
  %57 = tail call i16 @llvm.bswap.i16(i16 %54) #17
  store i16 %57, ptr %56, align 1
  %58 = getelementptr inbounds %struct.scsi_disk, ptr %10, i32 0, i32 8
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 9
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 20
  store i32 %14, ptr %61, align 4
  %62 = getelementptr i8, ptr %0, i32 -140
  store i32 %49, ptr %62, align 4
  %63 = tail call zeroext i8 @scsi_alloc_sgtables(ptr noundef %0) #17
  br label %64

64:                                               ; preds = %48, %2
  %65 = phi i8 [ %63, %48 ], [ 9, %2 ]
  ret i8 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @scsi_alloc_sgtables(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmd_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @sd_setup_protect_cmnd(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #11 {
  %4 = getelementptr i8, ptr %0, i32 -156
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %1, 0
  %7 = icmp ne i32 %2, 0
  %8 = shl i32 %5, 2
  %9 = and i32 %8, 4
  %10 = select i1 %6, i32 0, i32 2
  %11 = zext i1 %7 to i32
  %12 = or i32 %10, %11
  %13 = or i32 %12, %9
  %14 = getelementptr [8 x i32], ptr @sd_prot_op.ops, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  br i1 %6, label %20, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 12
  %18 = load i8, ptr %17, align 2
  %19 = or i8 %18, 2
  store i8 %19, ptr %17, align 2
  br label %20

20:                                               ; preds = %16, %3
  %21 = icmp eq i32 %2, 3
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 12
  %24 = load i8, ptr %23, align 2
  %25 = or i8 %24, 12
  store i8 %25, ptr %23, align 2
  br label %26

26:                                               ; preds = %22, %20
  %27 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 12
  %28 = load i8, ptr %27, align 2
  %29 = zext i1 %7 to i8
  %30 = or i8 %28, %29
  %31 = select i1 %7, i8 32, i8 0
  %32 = trunc i32 %15 to i8
  %33 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 10
  store i8 %32, ptr %33, align 4
  %34 = trunc i32 %2 to i8
  %35 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 11
  store i8 %34, ptr %35, align 1
  %36 = getelementptr [7 x i32], ptr @sd_prot_flag_mask.flag_mask, i32 0, i32 %15
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 12
  %39 = trunc i32 %37 to i8
  %40 = and i8 %30, %39
  store i8 %40, ptr %38, align 2
  ret i8 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sd_setup_rw32_cmnd(ptr nocapture noundef %0, i1 noundef zeroext %1, i64 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #3 {
  %6 = load ptr, ptr @sd_cdb_pool, align 4
  %7 = tail call noalias ptr @mempool_alloc(ptr noundef %6, i32 noundef 2592) #17
  %8 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %24, label %10, !prof !12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  store i16 32, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %7, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %12, i8 0, i32 27, i1 false)
  store i8 127, ptr %7, align 1
  %13 = getelementptr i8, ptr %7, i32 7
  store i8 24, ptr %13, align 1
  %14 = select i1 %1, i8 11, i8 9
  %15 = getelementptr i8, ptr %7, i32 9
  store i8 %14, ptr %15, align 1
  %16 = getelementptr i8, ptr %7, i32 10
  store i8 %4, ptr %16, align 1
  %17 = getelementptr i8, ptr %7, i32 12
  %18 = tail call i64 @llvm.bswap.i64(i64 %2) #17
  store i64 %18, ptr %17, align 1
  %19 = trunc i64 %2 to i32
  %20 = getelementptr i8, ptr %7, i32 20
  %21 = tail call i32 @llvm.bswap.i32(i32 %19) #17
  store i32 %21, ptr %20, align 1
  %22 = getelementptr i8, ptr %7, i32 28
  %23 = tail call i32 @llvm.bswap.i32(i32 %3) #17
  store i32 %23, ptr %22, align 1
  br label %24

24:                                               ; preds = %10, %5
  %25 = phi i8 [ 0, %10 ], [ 9, %5 ]
  ret i8 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sd_setup_rw6_cmnd(ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #3 {
  %6 = icmp eq i32 %3, 0
  %7 = load i1, ptr @sd_setup_rw6_cmnd.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !12

10:                                               ; preds = %5
  store i1 true, ptr @sd_setup_rw6_cmnd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.83, i32 noundef 1189, i32 noundef 9, ptr noundef null) #17
  br label %11

11:                                               ; preds = %10, %5
  br i1 %6, label %38, label %12

12:                                               ; preds = %11
  %13 = and i8 %4, 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15, !prof !10

15:                                               ; preds = %12
  tail call void (ptr, ptr, ptr, ...) @scmd_printk(ptr noundef nonnull @.str.33, ptr noundef %0, ptr noundef nonnull @.str.88) #17
  br label %38

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  store i16 6, ptr %17, align 4
  %18 = select i1 %1, i8 10, i8 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %20 = load ptr, ptr %19, align 4
  store i8 %18, ptr %20, align 1
  %21 = lshr i64 %2, 16
  %22 = trunc i64 %21 to i8
  %23 = and i8 %22, 31
  %24 = load ptr, ptr %19, align 4
  %25 = getelementptr i8, ptr %24, i32 1
  store i8 %23, ptr %25, align 1
  %26 = lshr i64 %2, 8
  %27 = trunc i64 %26 to i8
  %28 = load ptr, ptr %19, align 4
  %29 = getelementptr i8, ptr %28, i32 2
  store i8 %27, ptr %29, align 1
  %30 = trunc i64 %2 to i8
  %31 = load ptr, ptr %19, align 4
  %32 = getelementptr i8, ptr %31, i32 3
  store i8 %30, ptr %32, align 1
  %33 = trunc i32 %3 to i8
  %34 = load ptr, ptr %19, align 4
  %35 = getelementptr i8, ptr %34, i32 4
  store i8 %33, ptr %35, align 1
  %36 = load ptr, ptr %19, align 4
  %37 = getelementptr i8, ptr %36, i32 5
  store i8 0, ptr %37, align 1
  br label %38

38:                                               ; preds = %16, %15, %11
  %39 = phi i8 [ 10, %15 ], [ 0, %16 ], [ 10, %11 ]
  ret i8 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_free_sgtables(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_command(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_command_normalize_sense(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_get_sense_info_fld(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scsi_disk_release(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr i8, ptr %0, i32 472
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 524
  %8 = load i32, ptr %7, align 4
  tail call void @ida_free(ptr noundef nonnull @sd_index_ida, i32 noundef %8) #17
  tail call void @blk_mq_freeze_queue(ptr noundef %6) #17
  tail call void @blk_mq_unfreeze_queue(ptr noundef %6) #17
  %9 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 10
  store ptr null, ptr %9, align 8
  tail call void @put_disk(ptr noundef %4) #17
  %10 = getelementptr i8, ptr %0, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.scsi_device, ptr %11, i32 0, i32 54
  tail call void @put_device(ptr noundef %12) #17
  tail call void @kfree(ptr noundef %2) #17
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 546
  %5 = load i32, ptr %4, align 2
  %6 = lshr i32 %5, 3
  %7 = and i32 %6, 1
  %8 = lshr i32 %5, 1
  %9 = and i32 %8, 2
  %10 = or i32 %7, %9
  %11 = getelementptr [4 x ptr], ptr @sd_cache_types, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.93, ptr noundef %12)
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_type_store(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = alloca [64 x i8], align 1
  %6 = alloca %struct.scsi_mode_data, align 4
  %7 = alloca %struct.scsi_sense_hdr, align 8
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store i64 0, ptr %7, align 8, !annotation !13
  %10 = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 22
  %11 = load i8, ptr %10, align 4
  switch i8 %11, label %101 [
    i8 0, label %12
    i8 20, label %12
  ]

12:                                               ; preds = %4, %4
  %13 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(11) @cache_type_store.temp, i32 noundef 10)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %2, i32 10
  %17 = getelementptr i8, ptr %0, i32 546
  %18 = load i32, ptr %17, align 2
  %19 = or i32 %18, 2
  store i32 %19, ptr %17, align 2
  br label %24

20:                                               ; preds = %12
  %21 = getelementptr i8, ptr %0, i32 546
  %22 = load i32, ptr %21, align 2
  %23 = and i32 %22, -3
  store i32 %23, ptr %21, align 2
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi ptr [ %16, %15 ], [ %2, %20 ]
  %26 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @sd_cache_types, i32 noundef 4, ptr noundef %25) #17
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %101, label %28

28:                                               ; preds = %24
  %29 = and i32 %26, 1
  %30 = and i32 %26, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %0, i32 541
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 4, i32 0
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i32 [ 0, %28 ], [ %36, %32 ]
  %39 = getelementptr i8, ptr %0, i32 546
  %40 = load i32, ptr %39, align 2
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = and i32 %40, -13
  %45 = or i32 %44, %38
  %46 = shl nuw nsw i32 %29, 3
  %47 = or i32 %45, %46
  store i32 %47, ptr %39, align 2
  %48 = icmp ne i32 %38, 0
  %49 = and i32 %45, 20
  %50 = icmp eq i32 %49, 20
  %51 = getelementptr i8, ptr %0, i32 472
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.gendisk, ptr %52, i32 0, i32 9
  %54 = load ptr, ptr %53, align 4
  tail call void @blk_queue_write_cache(ptr noundef %54, i1 noundef zeroext %48, i1 noundef zeroext %50) #17
  br label %101

55:                                               ; preds = %37
  %56 = getelementptr i8, ptr %0, i32 496
  %57 = load i32, ptr %56, align 8
  %58 = call i32 @scsi_mode_sense(ptr noundef %9, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %5, i32 noundef 64, i32 noundef 3000, i32 noundef %57, ptr noundef nonnull %6, ptr noundef null) #17
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %101

60:                                               ; preds = %55
  %61 = load i32, ptr %6, align 4
  %62 = getelementptr inbounds %struct.scsi_mode_data, ptr %6, i32 0, i32 4
  %63 = load i8, ptr %62, align 4
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds %struct.scsi_mode_data, ptr %6, i32 0, i32 1
  %66 = load i16, ptr %65, align 4
  %67 = zext i16 %66 to i32
  %68 = add nuw nsw i32 %64, %67
  %69 = sub i32 %61, %68
  %70 = call i32 @llvm.umin.i32(i32 %69, i32 64)
  %71 = getelementptr i8, ptr %5, i32 %64
  %72 = getelementptr i8, ptr %71, i32 %67
  %73 = getelementptr i8, ptr %72, i32 2
  %74 = load i8, ptr %73, align 1
  %75 = and i8 %74, -6
  %76 = or i32 %38, %29
  %77 = trunc i32 %76 to i8
  %78 = or i8 %75, %77
  store i8 %78, ptr %73, align 1
  %79 = load i8, ptr %72, align 1
  %80 = lshr i8 %79, 7
  %81 = zext i8 %80 to i32
  %82 = and i8 %79, 127
  store i8 %82, ptr %72, align 1
  %83 = getelementptr inbounds %struct.scsi_mode_data, ptr %6, i32 0, i32 3
  store i8 0, ptr %83, align 1
  %84 = load i32, ptr %56, align 8
  %85 = call i32 @scsi_mode_select(ptr noundef %9, i32 noundef 1, i32 noundef %81, ptr noundef %72, i32 noundef %70, i32 noundef 3000, i32 noundef %84, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %60
  %88 = load i8, ptr %7, align 8
  %89 = and i8 %88, 112
  %90 = icmp eq i8 %89, 112
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load ptr, ptr %8, align 4
  %93 = getelementptr i8, ptr %0, i32 472
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, null
  %96 = getelementptr inbounds %struct.gendisk, ptr %94, i32 0, i32 3
  %97 = select i1 %95, ptr null, ptr %96
  call void @scsi_print_sense_hdr(ptr noundef %92, ptr noundef %97, ptr noundef nonnull %7) #17
  br label %101

98:                                               ; preds = %60
  %99 = getelementptr i8, ptr %0, i32 472
  %100 = load ptr, ptr %99, align 8
  call fastcc void @sd_revalidate_disk(ptr noundef %100)
  br label %101

101:                                              ; preds = %98, %91, %87, %55, %43, %24, %4
  %102 = phi i32 [ %3, %43 ], [ %3, %98 ], [ -22, %4 ], [ -22, %24 ], [ -22, %55 ], [ -22, %91 ], [ -22, %87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #17
  ret i32 %102
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_mode_select(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @FUA_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 546
  %5 = load i32, ptr %4, align 2
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 1
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.99, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @allow_restart_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 41
  %7 = load i64, ptr %6, align 4
  %8 = trunc i64 %7 to i32
  %9 = lshr i32 %8, 27
  %10 = and i32 %9, 1
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.99, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @allow_restart_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #17
  store i8 0, ptr %5, align 1, !annotation !13
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %8, label %9, label %23

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 22
  %11 = load i8, ptr %10, align 4
  switch i8 %11, label %23 [
    i8 0, label %12
    i8 20, label %12
  ]

12:                                               ; preds = %9, %9
  %13 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i8, ptr %5, align 1, !range !23
  %17 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 41
  %18 = zext i8 %16 to i64
  %19 = load i64, ptr %17, align 4
  %20 = shl nuw nsw i64 %18, 27
  %21 = and i64 %19, -134217729
  %22 = or i64 %21, %20
  store i64 %22, ptr %17, align 4
  br label %23

23:                                               ; preds = %15, %12, %9, %4
  %24 = phi i32 [ %3, %15 ], [ -13, %4 ], [ -22, %9 ], [ -22, %12 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #17
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @manage_start_stop_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 41
  %7 = load i64, ptr %6, align 4
  %8 = trunc i64 %7 to i32
  %9 = lshr i32 %8, 28
  %10 = and i32 %9, 1
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.99, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @manage_start_stop_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = alloca i8, align 1
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #17
  store i8 0, ptr %5, align 1, !annotation !13
  %8 = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i8, ptr %5, align 1, !range !23
  %14 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 41
  %15 = zext i8 %13 to i64
  %16 = load i64, ptr %14, align 4
  %17 = shl nuw nsw i64 %15, 28
  %18 = and i64 %16, -268435457
  %19 = or i64 %18, %17
  store i64 %19, ptr %14, align 4
  br label %20

20:                                               ; preds = %12, %9, %4
  %21 = phi i32 [ %3, %12 ], [ -13, %4 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #17
  ret i32 %21
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @protection_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 542
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.99, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @protection_type_store(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !13
  %6 = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i32, ptr %5, align 4
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = trunc i32 %11 to i8
  %15 = getelementptr i8, ptr %0, i32 542
  store i8 %14, ptr %15, align 2
  br label %16

16:                                               ; preds = %13, %10, %7, %4
  %17 = phi i32 [ -13, %4 ], [ %8, %7 ], [ %3, %13 ], [ %3, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @protection_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 542
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = icmp ugt i8 %5, 3
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 -4
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 41
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr [4 x i8], ptr @scsi_host_dif_capable.cap, i32 0, i32 %6
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %13, %16
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq i8 %5, 0
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %8, %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.104, i32 6, i1 false)
  br label %24

22:                                               ; preds = %8
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.107, i32 noundef %6)
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ %23, %22 ], [ 5, %21 ]
  ret i32 %25
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @app_tag_own_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 546
  %5 = load i32, ptr %4, align 2
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.99, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @thin_provisioning_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 546
  %5 = load i32, ptr %4, align 2
  %6 = lshr i32 %5, 6
  %7 = and i32 %6, 1
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.99, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @provisioning_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 543
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr [6 x ptr], ptr @lbp_mode, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.93, ptr noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @provisioning_mode_store(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %8, label %9, label %46

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 546
  %11 = load i32, ptr %10, align 2
  %12 = and i32 %11, 196608
  %13 = icmp eq i32 %12, 65536
  %14 = load ptr, ptr %6, align 4
  br i1 %13, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 22
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 20
  br i1 %18, label %19, label %38

19:                                               ; preds = %15, %9
  %20 = getelementptr i8, ptr %0, i32 472
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.gendisk, ptr %21, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 20
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %0, i32 520
  %27 = load i32, ptr %26, align 8
  %28 = mul i32 %27, %25
  %29 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 32, i32 19
  store i32 %28, ptr %29, align 4
  %30 = getelementptr i8, ptr %0, i32 528
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr i8, ptr %0, i32 516
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %33, %25
  %35 = tail call i32 @llvm.umax.i32(i32 %31, i32 %34) #17
  %36 = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 32, i32 18
  store i32 %35, ptr %36, align 4
  %37 = getelementptr i8, ptr %0, i32 543
  store i8 5, ptr %37, align 1
  tail call void @blk_queue_max_discard_sectors(ptr noundef %23, i32 noundef 0) #17
  tail call void @blk_queue_flag_clear(i32 noundef 8, ptr noundef %23) #17
  br label %46

38:                                               ; preds = %15
  %39 = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 22
  %40 = load i8, ptr %39, align 4
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @lbp_mode, i32 noundef 6, ptr noundef %2) #17
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call fastcc void @sd_config_discard(ptr noundef %5, i32 noundef %43)
  br label %46

46:                                               ; preds = %45, %42, %38, %19, %4
  %47 = phi i32 [ %3, %19 ], [ %3, %45 ], [ -13, %4 ], [ -22, %38 ], [ -22, %42 ]
  ret i32 %47
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zeroing_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 544
  %5 = load i8, ptr %4, align 8
  %6 = zext i8 %5 to i32
  %7 = getelementptr [4 x ptr], ptr @zeroing_mode, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.93, ptr noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zeroing_mode_store(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @zeroing_mode, i32 noundef 4, ptr noundef %2) #17
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = trunc i32 %7 to i8
  %11 = getelementptr i8, ptr %0, i32 544
  store i8 %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %9, %6, %4
  %13 = phi i32 [ %3, %9 ], [ -13, %4 ], [ -22, %6 ]
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_write_same_blocks_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 508
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.99, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_write_same_blocks_store(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -8
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !13
  %9 = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %9, label %10, label %31

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 22
  %12 = load i8, ptr %11, align 4
  switch i8 %12, label %31 [
    i8 0, label %13
    i8 20, label %13
  ]

13:                                               ; preds = %10, %10
  %14 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #17
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i32, ptr %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 41
  %21 = load i64, ptr %20, align 4
  %22 = or i64 %21, 524288
  store i64 %22, ptr %20, align 4
  br label %30

23:                                               ; preds = %16
  %24 = icmp ult i32 %17, 8388608
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 41
  %27 = load i64, ptr %26, align 4
  %28 = and i64 %27, -524289
  store i64 %28, ptr %26, align 4
  %29 = getelementptr i8, ptr %0, i32 508
  store i32 %17, ptr %29, align 4
  br label %30

30:                                               ; preds = %25, %23, %19
  call fastcc void @sd_config_write_same(ptr noundef %6)
  br label %31

31:                                               ; preds = %30, %13, %10, %4
  %32 = phi i32 [ %3, %30 ], [ -13, %4 ], [ -22, %10 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_medium_access_timeouts_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 532
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.99, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_medium_access_timeouts_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = tail call zeroext i1 @capable(i32 noundef 21) #17
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %7 = getelementptr i8, ptr %0, i32 532
  %8 = tail call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef %7) #17
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 %3, i32 %8
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi i32 [ %10, %6 ], [ -13, %4 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @zoned_cap_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #15 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 22
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 20
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(14) %2, ptr noundef nonnull align 1 dereferenceable(14) @.str.124, i32 14, i1 false)
  br label %18

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 546
  %12 = load i32, ptr %11, align 2
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 3
  switch i32 %14, label %17 [
    i32 1, label %15
    i32 2, label %16
  ]

15:                                               ; preds = %10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(12) @.str.125, i32 12, i1 false)
  br label %18

16:                                               ; preds = %10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(15) %2, ptr noundef nonnull align 1 dereferenceable(15) @.str.126, i32 15, i1 false)
  br label %18

17:                                               ; preds = %10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.104, i32 6, i1 false)
  br label %18

18:                                               ; preds = %17, %16, %15, %9
  %19 = phi i32 [ 13, %9 ], [ 11, %15 ], [ 14, %16 ], [ 5, %17 ]
  ret i32 %19
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_retries_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.128, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_retries_store(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #3 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !13
  %8 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp slt i32 %11, 6
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %0, i32 496
  store i32 %11, ptr %14, align 8
  br label %16

15:                                               ; preds = %10
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef %7, ptr noundef null, ptr noundef nonnull @.str.129, i32 noundef 5) #17
  br label %16

16:                                               ; preds = %15, %13, %4
  %17 = phi i32 [ %3, %13 ], [ -22, %15 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @sd_default_probe(i32 noundef %0) #16 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_pages(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_pages(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

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
!8 = !{i64 2153722356, i64 2153722838, i64 2153722393, i64 2153722449, i64 2153722483, i64 2153722507, i64 2153722548, i64 2153722569, i64 2153722597, i64 2153722631}
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2153790459, i64 2153795003, i64 2153790496, i64 2153790552, i64 2153790586, i64 2153790610, i64 2153790651, i64 2153790672, i64 2153790700, i64 2153790734}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"auto-init"}
!14 = !{i64 2148244867}
!15 = !{i64 645635, i64 2148135606, i64 2148135632, i64 2148135679, i64 2148135701, i64 2148135729, i64 2148135749}
!16 = !{i64 2148147705, i64 2148147737, i64 2148147766, i64 2148147800, i64 2148147831, i64 2148147854}
!17 = !{i64 2148245070}
!18 = !{i64 2148247700}
!19 = !{i64 2148150062, i64 2148150094, i64 2148150123, i64 2148150157, i64 2148150188, i64 2148150211}
!20 = !{i64 2148247903}
!21 = !{i64 2149148515}
!22 = !{i64 2149148732}
!23 = !{i8 0, i8 2}
