; ModuleID = '/llk/IR/drivers/mmc/core/block.c_pt.bc'
source_filename = "../drivers/mmc/core/block.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.73 }
%union.anon.73 = type { ptr }
%struct.mmc_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_fixup = type { ptr, i64, i64, i32, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_queue = type { ptr, %struct.mmc_ctx, %struct.blk_mq_tag_set, ptr, ptr, %struct.spinlock, [3 x i32], i32, i8, i8, i8, i8, i8, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.mutex, %struct.work_struct }
%struct.mmc_ctx = type { ptr }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mmc_blk_data = type { ptr, ptr, %struct.mmc_queue, %struct.list_head, %struct.list_head, i32, %struct.kref, i32, i32, i32, i32, i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.35, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.36, %union.anon.37, %union.anon.38, %union.anon.43, ptr, ptr }
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%union.anon.37 = type { %struct.rb_node }
%union.anon.38 = type { %struct.anon.42 }
%struct.anon.42 = type { i32, %struct.list_head, ptr }
%union.anon.43 = type { i64, [8 x i8] }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_blk_request = type { %struct.mmc_request, %struct.mmc_command, %struct.mmc_command, %struct.mmc_command, %struct.mmc_data }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.mmc_blk_busy_data = type { ptr, i32 }
%struct.mmc_cqe_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_blk_ioc_data = type { %struct.mmc_ioc_cmd, ptr, i64, ptr }
%struct.mmc_ioc_cmd = type { i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mmc_rpmb_data = type { %struct.device, %struct.cdev, i32, i32, ptr, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.mmc_queue_req = type { %struct.mmc_blk_request, ptr, i32, i32, ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.mmc_ioc_multi_cmd = type { i64, [0 x %struct.mmc_ioc_cmd] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.75 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.77 = type { ptr }

@__UNIQUE_ID_alias271 = internal constant [26 x i8] c"mmc_block.alias=mmc:block\00", section ".modinfo", align 1
@__param_str_perdev_minors = internal constant [21 x i8] c"mmcblk.perdev_minors\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@perdev_minors = internal global i32 16, align 4
@__param_perdev_minors = internal constant %struct.kernel_param { ptr @__param_str_perdev_minors, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.73 { ptr @perdev_minors } }, section "__param", align 4
@__UNIQUE_ID_perdev_minorstype272 = internal constant [37 x i8] c"mmc_block.parmtype=perdev_minors:int\00", section ".modinfo", align 1
@__UNIQUE_ID_perdev_minors273 = internal constant [67 x i8] c"mmc_block.parm=perdev_minors:Minors numbers to allocate per device\00", section ".modinfo", align 1
@mmc_blk_mq_issue_rq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [25 x i8] c"drivers/mmc/core/block.c\00", align 1
@mmc_blk_mq_issue_rq.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mmc_blk_mq_issue_rq.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mmc_driver = internal global %struct.mmc_driver { %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc_blk_pm_ops, ptr null, ptr null }, ptr @mmc_blk_probe, ptr @mmc_blk_remove, ptr @mmc_blk_shutdown }, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@mmc_rpmb_devt = internal global i32 0, align 4
@mmc_rpmb_bus_type = internal global %struct.bus_type { ptr @.str.54, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__initcall__kmod_mmc_block__276_3075_mmc_blk_init6 = internal global ptr @mmc_blk_init, section ".initcall6.init", align 4
@__exitcall_mmc_blk_exit = internal global ptr @mmc_blk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file277 = internal constant [42 x i8] c"mmc_block.file=drivers/mmc/core/mmc_block\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [22 x i8] c"mmc_block.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description279 = internal constant [64 x i8] c"mmc_block.description=Multimedia Card (MMC) block device driver\00", section ".modinfo", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"\013%s: recovery failed!\0A\00", align 1
@mmc_blk_clock_khz.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [64 x i8] c"\013%s: Locking boot partition ro until next power on failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"\013%s: unknown driver specific operation\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%s: cmd error %d\0A\00", align 1
@__func__.__mmc_blk_ioctl_cmd = private unnamed_addr constant [20 x i8] c"__mmc_blk_ioctl_cmd\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%s: data error %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"mmcblk\00", align 1
@mmc_blk_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @mmc_blk_suspend, ptr @mmc_blk_resume, ptr @mmc_blk_suspend, ptr @mmc_blk_resume, ptr @mmc_blk_suspend, ptr @mmc_blk_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mmc_blk_fixups = internal unnamed_addr constant [25 x %struct.mmc_fixup] [%struct.mmc_fixup { ptr @.str.12, i64 0, i64 -1, i32 2, i16 256, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk, i32 64 }, %struct.mmc_fixup { ptr @.str.13, i64 0, i64 -1, i32 2, i16 256, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk, i32 64 }, %struct.mmc_fixup { ptr @.str.14, i64 0, i64 -1, i32 2, i16 256, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk, i32 64 }, %struct.mmc_fixup { ptr @.str.15, i64 0, i64 -1, i32 2, i16 256, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk, i32 64 }, %struct.mmc_fixup { ptr @.str.16, i64 0, i64 -1, i32 2, i16 256, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk, i32 64 }, %struct.mmc_fixup { ptr @.str.17, i64 0, i64 -1, i32 2, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 128 }, %struct.mmc_fixup { ptr @.str.18, i64 0, i64 -1, i32 2, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 128 }, %struct.mmc_fixup { ptr @.str.19, i64 0, i64 -1, i32 17, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 128 }, %struct.mmc_fixup { ptr @.str.20, i64 0, i64 -1, i32 17, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 128 }, %struct.mmc_fixup { ptr @.str.21, i64 0, i64 -1, i32 17, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 128 }, %struct.mmc_fixup { ptr @.str.22, i64 0, i64 -1, i32 9, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_sd, i32 128 }, %struct.mmc_fixup { ptr @.str.23, i64 0, i64 -1, i32 39, i16 20552, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_sd, i32 128 }, %struct.mmc_fixup { ptr null, i64 0, i64 -1, i32 19, i16 512, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 512 }, %struct.mmc_fixup { ptr @.str.24, i64 0, i64 -1, i32 17, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 512 }, %struct.mmc_fixup { ptr @.str.25, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.26, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.27, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.28, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.29, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.30, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.31, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.32, i64 0, i64 -1, i32 21, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 1024 }, %struct.mmc_fixup { ptr @.str.33, i64 0, i64 -1, i32 112, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 4096 }, %struct.mmc_fixup { ptr @.str.34, i64 0, i64 -1, i32 112, i16 -1, i16 -1, i16 -1, i32 -1, ptr null, ptr @add_quirk_mmc, i32 4096 }, %struct.mmc_fixup zeroinitializer], align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"mmc_complete\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"\013Failed to create mmc completion workqueue\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"SEM02G\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"SEM04G\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"SEM08G\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"SEM16G\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"SEM32G\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"SDMB-32\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"SDM032\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"MMC08G\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"MMC16G\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"MMC32G\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"AF SD\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"APUSD\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"008GE0\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"M8G2FA\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"MAG4FA\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"MBG8FA\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"MCGAFA\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"VAL00M\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"VYL00M\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"KYL00M\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"VZL00M\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"V10008\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"V10016\00", align 1
@mmc_blk_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@max_devices = internal unnamed_addr global i32 0, align 4
@.str.35 = private unnamed_addr constant [30 x i8] c"no more device IDs available\0A\00", align 1
@mmc_bdops = internal constant %struct.block_device_operations { ptr null, ptr @mmc_blk_open, ptr @mmc_blk_release, ptr null, ptr @mmc_blk_ioctl, ptr null, ptr null, ptr null, ptr @mmc_blk_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc_blk_alternative_gpt_sector }, align 4
@.str.36 = private unnamed_addr constant [11 x i8] c"mmcblk%u%s\00", align 1
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"\016%s: %s %s %s %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"(ro)\00", align 1
@mmc_disk_attr_groups = internal global [2 x ptr] [ptr @mmc_disk_attr_group, ptr null], align 4
@block_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @block_mutex, i64 12), ptr getelementptr (i8, ptr @block_mutex, i64 12) } }, align 4
@open_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @open_lock, i64 12), ptr getelementptr (i8, ptr @open_lock, i64 12) } }, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@mmc_disk_attr_group = internal constant %struct.attribute_group { ptr null, ptr @mmc_disk_attrs_is_visible, ptr null, ptr @mmc_disk_attrs, ptr null }, align 4
@mmc_disk_attrs = internal global [3 x ptr] [ptr @dev_attr_force_ro, ptr @dev_attr_ro_lock_until_next_power_on, ptr null], align 4
@dev_attr_ro_lock_until_next_power_on = internal global %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 0 }, ptr @power_ro_lock_show, ptr @power_ro_lock_store }, align 4
@.str.42 = private unnamed_addr constant [28 x i8] c"ro_lock_until_next_power_on\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c"\016%s: Locking boot partition ro until next power on\0A\00", align 1
@dev_attr_force_ro = internal global %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420 }, ptr @force_ro_show, ptr @force_ro_store }, align 4
@.str.45 = private unnamed_addr constant [9 x i8] c"force_ro\00", align 1
@mmc_rpmb_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@mmc_rpmb_fileops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc_rpmb_ioctl, ptr null, ptr null, i32 0, ptr @mmc_rpmb_chrdev_open, ptr null, ptr @mmc_rpmb_chrdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.46 = private unnamed_addr constant [38 x i8] c"\013%s: could not add character device\0A\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"\016%s: %s %s %s, chardev (%d:%d)\0A\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@mmc_dbg_card_status_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mmc_dbg_card_status_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.49 = private unnamed_addr constant [8 x i8] c"ext_csd\00", align 1
@mmc_dbg_ext_csd_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @mmc_ext_csd_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mmc_ext_csd_open, ptr null, ptr @mmc_ext_csd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.50 = private unnamed_addr constant [8 x i8] c"%08llx\0A\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"\013FAILED %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"mmc_rpmb\00", align 1
@.str.55 = private unnamed_addr constant [44 x i8] c"\013mmcblk: could not register RPMB bus type\0A\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"rpmb\00", align 1
@.str.57 = private unnamed_addr constant [49 x i8] c"\013mmcblk: failed to allocate rpmb chrdev region\0A\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"\016mmcblk: using %d minors per device\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias271, ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__UNIQUE_ID_perdev_minors273, ptr @__UNIQUE_ID_perdev_minorstype272, ptr @__exitcall_mmc_blk_exit, ptr @__initcall__kmod_mmc_block__276_3075_mmc_blk_init6, ptr @__param_perdev_minors, ptr @mmc_blk_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_blk_cqe_recovery(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @mmc_cqe_recovery(ptr noundef %3) #16
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_blk_data, ptr %7, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  br i1 %5, label %29, label %10

10:                                               ; preds = %1
  %11 = and i32 %9, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = or i32 %9, 16
  store i32 %14, ptr %8, align 4
  %15 = tail call i32 @mmc_hw_reset(ptr noundef %3) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 37
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.mmc_card, ptr %19, i32 0, i32 1, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.mmc_blk_data, ptr %21, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.mmc_blk_data, ptr %21, i32 0, i32 10
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %18, align 8
  %26 = getelementptr inbounds %struct.mmc_blk_data, ptr %7, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = tail call fastcc i32 @mmc_blk_part_switch(ptr noundef %25, i32 noundef %27) #16
  br label %31

29:                                               ; preds = %1
  %30 = and i32 %9, -17
  store i32 %30, ptr %8, align 4
  br label %31

31:                                               ; preds = %29, %17, %13, %10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_cqe_recovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_blk_mq_complete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 64
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call fastcc void @mmc_blk_cqe_complete_rq(ptr noundef %4, ptr noundef %0)
  br label %12

11:                                               ; preds = %1
  tail call fastcc void @mmc_blk_mq_complete_rq(ptr noundef %4, ptr noundef %0)
  br label %12

12:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_cqe_complete_rq(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.request, ptr %1, i32 1
  %4 = load ptr, ptr %1, align 8
  %5 = load ptr, ptr %0, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @mmc_issue_type(ptr noundef %0, ptr noundef %1) #16
  tail call void @mmc_cqe_post_req(ptr noundef %6, ptr noundef %3) #16
  %8 = getelementptr %struct.request, ptr %1, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mmc_command, ptr %9, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11, %2
  %16 = getelementptr %struct.request, ptr %1, i32 1, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19, %11
  %24 = getelementptr %struct.request, ptr %1, i32 2, i32 24, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  %27 = icmp slt i32 %25, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call void @blk_mq_requeue_request(ptr noundef %1, i1 noundef zeroext true) #16
  br label %37

29:                                               ; preds = %23
  tail call void @blk_mq_end_request(ptr noundef %1, i8 noundef zeroext 10) #16
  br label %37

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = tail call zeroext i1 @blk_update_request(ptr noundef %1, i8 noundef zeroext 0, i32 noundef %32) #16
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void @blk_mq_requeue_request(ptr noundef %1, i1 noundef zeroext true) #16
  br label %37

35:                                               ; preds = %30
  tail call void @__blk_mq_end_request(ptr noundef %1, i8 noundef zeroext 0) #16
  br label %37

36:                                               ; preds = %15
  tail call void @blk_mq_end_request(ptr noundef %1, i8 noundef zeroext 0) #16
  br label %37

37:                                               ; preds = %36, %35, %34, %29, %28
  %38 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 5
  %39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %38) #16
  %40 = getelementptr %struct.mmc_queue, ptr %0, i32 0, i32 6, i32 %7
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, -1
  store i32 %42, ptr %40, align 4
  %43 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.mmc_queue, ptr %0, i32 0, i32 6, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %44
  %48 = getelementptr %struct.mmc_queue, ptr %0, i32 0, i32 6, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 0, %49
  %51 = icmp eq i32 %47, %50
  tail call void @mmc_cqe_check_busy(ptr noundef %0) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %39) #16
  %52 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %37
  tail call void @blk_mq_run_hw_queues(ptr noundef %4, i1 noundef zeroext true) #16
  br label %56

56:                                               ; preds = %55, %37
  br i1 %51, label %57, label %60

57:                                               ; preds = %56
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 1
  tail call void @mmc_put_card(ptr noundef %58, ptr noundef %59) #16
  br label %60

60:                                               ; preds = %57, %56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_mq_complete_rq(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr %struct.request, ptr %1, i32 2, i32 14
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @blk_update_request(ptr noundef %1, i8 noundef zeroext 0, i32 noundef %4) #16
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @blk_mq_requeue_request(ptr noundef %1, i1 noundef zeroext true) #16
  br label %34

9:                                                ; preds = %6
  tail call void @__blk_mq_end_request(ptr noundef %1, i8 noundef zeroext 0) #16
  br label %34

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @__blk_mq_end_request(ptr noundef %1, i8 noundef zeroext 10) #16
  br label %34

15:                                               ; preds = %10
  %16 = getelementptr %struct.request, ptr %1, i32 2, i32 24, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = icmp slt i32 %17, 5
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void @blk_mq_requeue_request(ptr noundef %1, i1 noundef zeroext true) #16
  br label %34

21:                                               ; preds = %15
  %22 = load ptr, ptr %0, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.mmc_card, ptr %22, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %31 = load i32, ptr %30, align 8
  %32 = or i32 %31, 2048
  store i32 %32, ptr %30, align 8
  br label %33

33:                                               ; preds = %29, %24, %21
  tail call void @blk_mq_end_request(ptr noundef %1, i8 noundef zeroext 10) #16
  br label %34

34:                                               ; preds = %33, %20, %14, %9, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_blk_mq_recovery(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.request, ptr %3, i32 1
  store ptr null, ptr %2, align 4
  %7 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 11
  store i8 0, ptr %7, align 1
  %8 = getelementptr %struct.request, ptr %3, i32 2, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = getelementptr %struct.request, ptr %3, i32 2, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, -466092032
  %15 = icmp sgt i32 %13, -1
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %6, align 4
  %18 = icmp eq ptr %17, null
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i1 [ false, %11 ], [ %18, %16 ]
  %21 = icmp eq i32 %14, 0
  %22 = select i1 %21, i1 true, i1 %20
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 -5, ptr %8, align 4
  br label %24

24:                                               ; preds = %23, %19, %1
  %25 = phi i32 [ %9, %1 ], [ 0, %19 ], [ -5, %23 ]
  %26 = getelementptr %struct.request, ptr %3, i32 1, i32 21
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.mmc_blk_request, ptr %6, i32 0, i32 2, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = icmp eq i32 %25, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = getelementptr %struct.request, ptr %3, i32 2, i32 13
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = getelementptr %struct.request, ptr %3, i32 1, i32 24, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -466092032
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39, %35, %29, %24
  %45 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 29
  %46 = load i16, ptr %45, align 8
  %47 = and i16 %46, -33
  store i16 %47, ptr %45, align 8
  %48 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 33
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 8
  tail call fastcc void @mmc_blk_mq_rw_recovery(ptr noundef %0, ptr noundef %3)
  br label %51

51:                                               ; preds = %44, %39
  %52 = load ptr, ptr %0, align 4
  %53 = getelementptr inbounds %struct.mmc_card, ptr %52, i32 0, i32 4
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load ptr, ptr %52, align 8
  %58 = getelementptr inbounds %struct.mmc_host, ptr %57, i32 0, i32 16
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = getelementptr %struct.request, ptr %3, i32 1, i32 24, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = getelementptr %struct.request, ptr %3, i32 2, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 64
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67, %62
  tail call void @mmc_run_bkops(ptr noundef %52) #16
  br label %73

73:                                               ; preds = %72, %67, %56, %51
  tail call fastcc void @mmc_blk_mq_post_req(ptr noundef %0, ptr noundef %3, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_mq_rw_recovery(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.mmc_request, align 4
  %4 = alloca %struct.mmc_command, align 4
  %5 = alloca %struct.mmc_data, align 4
  %6 = alloca %struct.scatterlist, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 2
  %13 = getelementptr %struct.request, ptr %1, i32 1
  %14 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !9
  %17 = call i32 @__mmc_send_status(ptr noundef %16, ptr noundef nonnull %7, i32 noundef 0) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %2
  %20 = load i32, ptr %7, align 4
  %21 = load ptr, ptr %1, align 8
  %22 = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 16
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %19
  %31 = getelementptr %struct.request, ptr %1, i32 1, i32 24, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, -466092032
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load ptr, ptr %13, align 4
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, i32 1681391616, i32 -466092032
  %39 = getelementptr %struct.request, ptr %1, i32 2, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, %20
  %42 = and i32 %38, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load i32, ptr %8, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  %48 = and i32 %20, 7936
  %49 = icmp ne i32 %48, 2304
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %76

51:                                               ; preds = %44, %35, %30
  %52 = getelementptr %struct.request, ptr %1, i32 2, i32 14
  store i32 0, ptr %52, align 4
  br label %76

53:                                               ; preds = %2
  %54 = getelementptr %struct.request, ptr %1, i32 2, i32 14
  store i32 0, ptr %54, align 4
  %55 = load ptr, ptr %16, align 8
  call void @mmc_retune_release(ptr noundef %55) #16
  %56 = call i32 @__mmc_send_status(ptr noundef %16, ptr noundef nonnull %7, i32 noundef 0) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %16, align 8
  %60 = call i32 @mmc_detect_card_removed(ptr noundef %59) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %255

62:                                               ; preds = %53
  %63 = load ptr, ptr %0, align 4
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.mmc_host, ptr %64, i32 0, i32 16
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %84, label %92

69:                                               ; preds = %58
  %70 = load ptr, ptr %0, align 4
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.mmc_host, ptr %71, i32 0, i32 16
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %89, label %161

76:                                               ; preds = %51, %44, %19
  %77 = load ptr, ptr %16, align 8
  call void @mmc_retune_release(ptr noundef %77) #16
  %78 = load ptr, ptr %0, align 4
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.mmc_host, ptr %79, i32 0, i32 16
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %76, %62
  %85 = phi ptr [ %78, %76 ], [ %63, %62 ]
  %86 = load i32, ptr %7, align 4
  %87 = and i32 %86, 7936
  %88 = icmp eq i32 %87, 2304
  br i1 %88, label %95, label %89

89:                                               ; preds = %84, %69
  %90 = phi ptr [ %85, %84 ], [ %70, %69 ]
  %91 = call fastcc i32 @mmc_blk_fix_state(ptr noundef %90, ptr noundef %1)
  br label %92

92:                                               ; preds = %89, %62
  %93 = phi i32 [ %56, %62 ], [ %91, %89 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %161

95:                                               ; preds = %92, %84, %76
  %96 = getelementptr %struct.request, ptr %1, i32 1, i32 21
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %200

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.mmc_blk_request, ptr %13, i32 0, i32 2, i32 5
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %200

103:                                              ; preds = %99
  %104 = getelementptr %struct.request, ptr %1, i32 1, i32 24, i32 0, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, -466092032
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %200

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.mmc_card, ptr %16, i32 0, i32 4
  %110 = load i32, ptr %109, align 8
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %200

112:                                              ; preds = %108
  %113 = load i32, ptr %8, align 4
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %200, label %116

116:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i32 68, i1 false) #16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #16
  %117 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %117, i8 0, i32 40, i1 false) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %5, i8 0, i32 56, i1 false) #16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #16, !annotation !9
  store i32 55, ptr %4, align 4
  %118 = getelementptr inbounds %struct.mmc_card, ptr %16, i32 0, i32 3
  %119 = load i32, ptr %118, align 4
  %120 = shl i32 %119, 16
  %121 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 1
  store i32 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 3
  store i32 149, ptr %122, align 4
  %123 = load ptr, ptr %16, align 8
  %124 = call i32 @mmc_wait_for_cmd(ptr noundef %123, ptr noundef nonnull %4, i32 noundef 0) #16
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %157

126:                                              ; preds = %116
  %127 = load ptr, ptr %16, align 8
  %128 = getelementptr inbounds %struct.mmc_host, ptr %127, i32 0, i32 16
  %129 = load i32, ptr %128, align 8
  %130 = and i32 %129, 16
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i32, ptr %117, align 4
  %134 = and i32 %133, 32
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %157, label %136

136:                                              ; preds = %132, %126
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %117, i8 0, i32 40, i1 false) #16
  store i32 22, ptr %4, align 4
  store i32 0, ptr %121, align 4
  store i32 181, ptr %122, align 4
  %137 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  store i32 4, ptr %137, align 4
  %138 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  store i32 1, ptr %138, align 4
  %139 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  store i32 512, ptr %139, align 4
  %140 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  store ptr %6, ptr %140, align 4
  %141 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  store i32 1, ptr %141, align 4
  call void @mmc_set_data_timeout(ptr noundef nonnull %5, ptr noundef %16) #16
  %142 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 1
  store ptr %4, ptr %142, align 4
  %143 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 2
  store ptr %5, ptr %143, align 4
  %144 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %145 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %144, i32 noundef 3264, i32 noundef 4) #17
  %146 = icmp eq ptr %145, null
  br i1 %146, label %157, label %147

147:                                              ; preds = %136
  call void @sg_init_one(ptr noundef nonnull %6, ptr noundef nonnull %145, i32 noundef 4) #16
  %148 = load ptr, ptr %16, align 8
  call void @mmc_wait_for_req(ptr noundef %148, ptr noundef nonnull %3) #16
  %149 = load i32, ptr %145, align 8
  call void @kfree(ptr noundef nonnull %145) #16
  %150 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 5
  %151 = load i32, ptr %150, align 4
  %152 = icmp ne i32 %151, 0
  %153 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 5
  %154 = load i32, ptr %153, align 4
  %155 = icmp ne i32 %154, 0
  %156 = select i1 %152, i1 true, i1 %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %147, %136, %132, %116
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #16
  br label %197

158:                                              ; preds = %147
  %159 = call i32 @llvm.bswap.i32(i32 %149) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #16
  %160 = shl i32 %159, 9
  br label %197

161:                                              ; preds = %92, %69
  %162 = load ptr, ptr %0, align 4
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr inbounds %struct.mmc_host, ptr %163, i32 0, i32 16
  %165 = load i32, ptr %164, align 8
  %166 = and i32 %165, 16
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %200

168:                                              ; preds = %161
  %169 = load ptr, ptr %16, align 8
  %170 = getelementptr inbounds %struct.mmc_blk_data, ptr %15, i32 0, i32 9
  %171 = load i32, ptr %170, align 4
  %172 = and i32 %171, %12
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %190

174:                                              ; preds = %168
  %175 = or i32 %171, %12
  store i32 %175, ptr %170, align 4
  %176 = call i32 @mmc_hw_reset(ptr noundef %169) #16
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %200, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.mmc_host, ptr %169, i32 0, i32 37
  %180 = load ptr, ptr %179, align 8
  %181 = getelementptr inbounds %struct.mmc_card, ptr %180, i32 0, i32 1, i32 8
  %182 = load ptr, ptr %181, align 8
  %183 = getelementptr inbounds %struct.mmc_blk_data, ptr %182, i32 0, i32 8
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr inbounds %struct.mmc_blk_data, ptr %182, i32 0, i32 10
  store i32 %184, ptr %185, align 4
  %186 = load ptr, ptr %179, align 8
  %187 = getelementptr inbounds %struct.mmc_blk_data, ptr %15, i32 0, i32 8
  %188 = load i32, ptr %187, align 4
  %189 = call fastcc i32 @mmc_blk_part_switch(ptr noundef %186, i32 noundef %188) #16
  br label %190

190:                                              ; preds = %178, %168
  %191 = load ptr, ptr %1, align 8
  %192 = getelementptr inbounds %struct.request_queue, ptr %191, i32 0, i32 15
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr inbounds %struct.gendisk, ptr %193, i32 0, i32 3
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %194) #18
  %196 = getelementptr %struct.request, ptr %1, i32 2, i32 24, i32 0, i32 1
  store i32 6, ptr %196, align 4
  br label %255

197:                                              ; preds = %158, %157
  %198 = phi i32 [ %160, %158 ], [ 0, %157 ]
  %199 = getelementptr %struct.request, ptr %1, i32 2, i32 14
  store i32 %198, ptr %199, align 4
  br label %200

200:                                              ; preds = %197, %174, %161, %112, %108, %103, %99, %95
  %201 = getelementptr %struct.request, ptr %1, i32 2, i32 14
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %255

204:                                              ; preds = %200
  %205 = getelementptr %struct.request, ptr %1, i32 2, i32 24, i32 0, i32 1
  %206 = load i32, ptr %205, align 4
  %207 = icmp eq i32 %206, 4
  br i1 %207, label %208, label %230

208:                                              ; preds = %204
  %209 = load ptr, ptr %16, align 8
  %210 = getelementptr inbounds %struct.mmc_blk_data, ptr %15, i32 0, i32 9
  %211 = load i32, ptr %210, align 4
  %212 = and i32 %211, %12
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %230

214:                                              ; preds = %208
  %215 = or i32 %211, %12
  store i32 %215, ptr %210, align 4
  %216 = call i32 @mmc_hw_reset(ptr noundef %209) #16
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %230, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.mmc_host, ptr %209, i32 0, i32 37
  %220 = load ptr, ptr %219, align 8
  %221 = getelementptr inbounds %struct.mmc_card, ptr %220, i32 0, i32 1, i32 8
  %222 = load ptr, ptr %221, align 8
  %223 = getelementptr inbounds %struct.mmc_blk_data, ptr %222, i32 0, i32 8
  %224 = load i32, ptr %223, align 4
  %225 = getelementptr inbounds %struct.mmc_blk_data, ptr %222, i32 0, i32 10
  store i32 %224, ptr %225, align 4
  %226 = load ptr, ptr %219, align 8
  %227 = getelementptr inbounds %struct.mmc_blk_data, ptr %15, i32 0, i32 8
  %228 = load i32, ptr %227, align 4
  %229 = call fastcc i32 @mmc_blk_part_switch(ptr noundef %226, i32 noundef %228) #16
  br label %230

230:                                              ; preds = %218, %214, %208, %204
  %231 = getelementptr %struct.request, ptr %1, i32 1, i32 21
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %255

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.mmc_blk_request, ptr %13, i32 0, i32 2, i32 5
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %255

238:                                              ; preds = %234
  %239 = load i32, ptr %205, align 4
  %240 = icmp slt i32 %239, 3
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  store i32 3, ptr %205, align 4
  br label %255

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.mmc_card, ptr %16, i32 0, i32 21, i32 35
  %244 = load i32, ptr %243, align 4
  %245 = icmp eq i32 %244, 4096
  br i1 %245, label %255, label %246

246:                                              ; preds = %242
  %247 = load i32, ptr %8, align 4
  %248 = and i32 %247, 1
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %246
  %251 = getelementptr %struct.request, ptr %1, i32 2, i32 12
  %252 = load i32, ptr %251, align 4
  %253 = icmp ugt i32 %252, 1
  br i1 %253, label %254, label %255

254:                                              ; preds = %250
  call fastcc void @mmc_blk_read_single(ptr noundef %0, ptr noundef %1)
  br label %255

255:                                              ; preds = %254, %250, %246, %242, %241, %234, %230, %200, %190, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_mq_post_req(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr %struct.request, ptr %1, i32 1
  tail call void %8(ptr noundef %5, ptr noundef %11, i32 noundef 0) #16
  br label %12

12:                                               ; preds = %10, %3
  %13 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 10
  %14 = load i8, ptr %13, align 2, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call fastcc void @mmc_blk_mq_complete_rq(ptr noundef %0, ptr noundef %1)
  br label %31

17:                                               ; preds = %12
  br i1 %2, label %18, label %30

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 20
  store volatile i32 2, ptr %19, align 8
  %20 = load ptr, ptr %1, align 8
  %21 = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.mmc_host, ptr %24, i32 0, i32 64
  %26 = load i8, ptr %25, align 8, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  tail call fastcc void @mmc_blk_cqe_complete_rq(ptr noundef %22, ptr noundef %1) #16
  br label %31

29:                                               ; preds = %18
  tail call fastcc void @mmc_blk_mq_complete_rq(ptr noundef %22, ptr noundef %1) #16
  br label %31

30:                                               ; preds = %17
  tail call void @blk_mq_complete_request(ptr noundef %1) #16
  br label %31

31:                                               ; preds = %30, %29, %28, %16
  %32 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 5
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #16
  %34 = tail call i32 @mmc_issue_type(ptr noundef %0, ptr noundef %1) #16
  %35 = getelementptr %struct.mmc_queue, ptr %0, i32 0, i32 6, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, -1
  store i32 %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.mmc_queue, ptr %0, i32 0, i32 6, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  %43 = getelementptr %struct.mmc_queue, ptr %0, i32 0, i32 6, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = sub i32 0, %44
  %46 = icmp eq i32 %42, %45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %33) #16
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = load ptr, ptr %0, align 4
  %49 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 1
  tail call void @mmc_put_card(ptr noundef %48, ptr noundef %49) #16
  br label %50

50:                                               ; preds = %47, %31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmc_blk_mq_complete_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -212
  tail call fastcc void @mmc_blk_mq_complete_prev_req(ptr noundef %2, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_mq_complete_prev_req(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca %struct.mmc_blk_busy_data, align 8
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 16
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 134217728
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %135

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %11) #16
  %12 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 16
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %134, label %15

15:                                               ; preds = %10
  %16 = getelementptr %struct.request, ptr %13, i32 1
  %17 = load ptr, ptr %0, align 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr %struct.request, ptr %13, i32 2, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = getelementptr %struct.request, ptr %13, i32 2, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, -466092032
  %26 = icmp sgt i32 %24, -1
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %16, align 4
  %29 = icmp eq ptr %28, null
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi i1 [ false, %22 ], [ %29, %27 ]
  %32 = icmp eq i32 %25, 0
  %33 = select i1 %32, i1 true, i1 %31
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 -5, ptr %19, align 4
  br label %35

35:                                               ; preds = %34, %30, %15
  %36 = phi i32 [ %20, %15 ], [ 0, %30 ], [ -5, %34 ]
  %37 = getelementptr %struct.request, ptr %13, i32 1, i32 21
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %94

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.mmc_blk_request, ptr %16, i32 0, i32 2, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  %44 = icmp eq i32 %36, 0
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %94

46:                                               ; preds = %40
  %47 = getelementptr %struct.request, ptr %13, i32 2, i32 13
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %94

50:                                               ; preds = %46
  %51 = getelementptr %struct.request, ptr %13, i32 1, i32 24, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, -466092032
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %94

55:                                               ; preds = %50
  %56 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.mmc_host, ptr %57, i32 0, i32 16
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.request, ptr %13, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %91, label %67

67:                                               ; preds = %62
  store ptr %56, ptr %3, align 8
  %68 = getelementptr inbounds %struct.mmc_blk_busy_data, ptr %3, i32 0, i32 1
  store i32 0, ptr %68, align 4
  %69 = call i32 @__mmc_poll_for_busy(ptr noundef %57, i32 noundef 0, i32 noundef 10000, ptr noundef nonnull @mmc_blk_busy_cb, ptr noundef nonnull %3) #16
  %70 = load i32, ptr %68, align 4
  %71 = load ptr, ptr %16, align 4
  %72 = icmp eq ptr %71, null
  %73 = select i1 %72, i32 1681391616, i32 -466092032
  %74 = and i32 %73, %70
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %67
  %77 = getelementptr %struct.request, ptr %13, i32 2, i32 14
  store i32 0, ptr %77, align 4
  %78 = icmp eq i32 %69, 0
  %79 = select i1 %78, i32 -5, i32 %69
  br label %80

80:                                               ; preds = %76, %67
  %81 = phi i32 [ %79, %76 ], [ %69, %67 ]
  %82 = getelementptr inbounds %struct.mmc_card, ptr %56, i32 0, i32 4
  %83 = load i32, ptr %82, align 8
  %84 = icmp ne i32 %83, 0
  %85 = and i32 %70, 64
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %84, i1 true, i1 %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = load i32, ptr %51, align 4
  %90 = or i32 %89, 64
  store i32 %90, ptr %51, align 4
  br label %92

91:                                               ; preds = %62, %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %95

92:                                               ; preds = %88, %80
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %93 = icmp eq i32 %81, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %92, %50, %46, %40, %35
  call fastcc void @mmc_blk_mq_rw_recovery(ptr noundef %0, ptr noundef nonnull %13) #16
  br label %106

95:                                               ; preds = %92, %91
  %96 = getelementptr inbounds %struct.request, ptr %13, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  %100 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = select i1 %99, i32 -2, i32 -3
  %103 = getelementptr inbounds %struct.mmc_blk_data, ptr %101, i32 0, i32 9
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %102, %104
  store i32 %105, ptr %103, align 4
  call void @mmc_retune_release(ptr noundef %18) #16
  br label %106

106:                                              ; preds = %95, %94
  %107 = load ptr, ptr %0, align 4
  %108 = getelementptr inbounds %struct.mmc_card, ptr %107, i32 0, i32 4
  %109 = load i32, ptr %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %106
  %112 = load ptr, ptr %107, align 8
  %113 = getelementptr inbounds %struct.mmc_host, ptr %112, i32 0, i32 16
  %114 = load i32, ptr %113, align 8
  %115 = and i32 %114, 16
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = getelementptr %struct.request, ptr %13, i32 1, i32 24, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 64
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = getelementptr %struct.request, ptr %13, i32 2, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 64
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %122, %117
  call void @mmc_run_bkops(ptr noundef %107) #16
  br label %128

128:                                              ; preds = %127, %122, %111, %106
  %129 = icmp eq ptr %1, null
  %130 = load ptr, ptr %12, align 4
  br i1 %129, label %132, label %131

131:                                              ; preds = %128
  store ptr %130, ptr %1, align 4
  br label %133

132:                                              ; preds = %128
  call fastcc void @mmc_blk_mq_post_req(ptr noundef %0, ptr noundef %130, i1 noundef zeroext true)
  br label %133

133:                                              ; preds = %132, %131
  store ptr null, ptr %12, align 4
  br label %134

134:                                              ; preds = %133, %10
  call void @mutex_unlock(ptr noundef %11) #16
  br label %135

135:                                              ; preds = %134, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmc_blk_mq_issue_rq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_blk_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mmc_blk_data, ptr %5, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = tail call fastcc i32 @mmc_blk_part_switch(ptr noundef %7, i32 noundef %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %148

13:                                               ; preds = %2
  %14 = tail call i32 @mmc_issue_type(ptr noundef %0, ptr noundef %1) #16
  switch i32 %14, label %145 [
    i32 0, label %15
    i32 1, label %41
    i32 2, label %41
  ]

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 64
  %17 = load i8, ptr %16, align 8, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 61
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.mmc_cqe_ops, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %8) #16
  br label %27

25:                                               ; preds = %15
  %26 = tail call fastcc i32 @mmc_blk_rw_wait(ptr noundef %0, ptr noundef null) #16
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi i32 [ %24, %19 ], [ %26, %25 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %148

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = trunc i32 %32 to i8
  switch i8 %33, label %38 [
    i8 34, label %34
    i8 35, label %34
    i8 3, label %35
    i8 5, label %36
    i8 2, label %37
  ]

34:                                               ; preds = %30, %30
  tail call fastcc void @mmc_blk_issue_drv_op(ptr noundef %0, ptr noundef %1)
  br label %148

35:                                               ; preds = %30
  tail call fastcc void @mmc_blk_issue_discard_rq(ptr noundef %0, ptr noundef %1)
  br label %148

36:                                               ; preds = %30
  tail call fastcc void @mmc_blk_issue_secdiscard_rq(ptr noundef %0, ptr noundef %1)
  br label %148

37:                                               ; preds = %30
  tail call fastcc void @mmc_blk_issue_flush(ptr noundef %0, ptr noundef %1)
  br label %148

38:                                               ; preds = %30
  %39 = load i1, ptr @mmc_blk_mq_issue_rq.__already_done, align 1
  br i1 %39, label %148, label %40, !prof !10

40:                                               ; preds = %38
  store i1 true, ptr @mmc_blk_mq_issue_rq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2302, i32 noundef 9, ptr noundef null) #16
  br label %148

41:                                               ; preds = %13, %13
  %42 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = trunc i32 %43 to i8
  switch i8 %44, label %135 [
    i8 2, label %45
    i8 0, label %68
    i8 1, label %68
  ]

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 45
  %47 = load ptr, ptr %46, align 32
  %48 = getelementptr inbounds %struct.mmc_bus_ops, ptr %47, i32 0, i32 11
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = tail call zeroext i1 %49(ptr noundef %8) #16
  br i1 %52, label %54, label %53

53:                                               ; preds = %51, %45
  tail call void @blk_mq_end_request(ptr noundef %1, i8 noundef zeroext 0) #16
  br label %148

54:                                               ; preds = %51
  %55 = getelementptr %struct.request, ptr %1, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(268) %55, i8 0, i32 268, i1 false) #16
  %56 = getelementptr %struct.request, ptr %1, i32 1, i32 24
  %57 = getelementptr %struct.request, ptr %1, i32 1, i32 1
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr %struct.request, ptr %1, i32 1, i32 13
  store i32 %59, ptr %60, align 4
  store i32 6, ptr %56, align 4
  %61 = getelementptr %struct.request, ptr %1, i32 1, i32 24, i32 0, i32 1
  store i32 52429057, ptr %61, align 4
  %62 = getelementptr %struct.request, ptr %1, i32 1, i32 25, i32 0, i32 2
  store i32 29, ptr %62, align 4
  %63 = load ptr, ptr %0, align 4
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr %struct.request, ptr %1, i32 1, i32 10
  store ptr @mmc_blk_cqe_req_done, ptr %65, align 4
  %66 = getelementptr %struct.request, ptr %1, i32 1, i32 11
  store ptr @mmc_cqe_recovery_notifier, ptr %66, align 4
  %67 = tail call i32 @mmc_cqe_start_req(ptr noundef %64, ptr noundef %55) #16
  br label %138

68:                                               ; preds = %41, %41
  %69 = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 64
  %70 = load i8, ptr %69, align 8, !range !8
  %71 = icmp eq i8 %70, 0
  %72 = getelementptr %struct.request, ptr %1, i32 1
  %73 = load ptr, ptr %0, align 4
  %74 = load ptr, ptr %73, align 8
  br i1 %71, label %101, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 66
  %77 = load i8, ptr %76, align 2, !range !8
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %75
  tail call fastcc void @mmc_blk_rw_rq_prep(ptr noundef %72, ptr noundef %73, i32 noundef 0, ptr noundef %0) #16
  %80 = getelementptr %struct.request, ptr %1, i32 1, i32 10
  store ptr @mmc_blk_hsq_req_done, ptr %80, align 4
  %81 = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.mmc_host_ops, ptr %82, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  tail call void %84(ptr noundef %74, ptr noundef %72) #16
  br label %87

87:                                               ; preds = %86, %79
  %88 = tail call i32 @mmc_cqe_start_req(ptr noundef %74, ptr noundef %72) #16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %148, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %81, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %141, label %94

94:                                               ; preds = %90
  tail call void %92(ptr noundef %74, ptr noundef %72, i32 noundef %88) #16
  br label %141

95:                                               ; preds = %75
  tail call fastcc void @mmc_blk_data_prep(ptr noundef %0, ptr noundef %72, i32 noundef 0, ptr noundef null, ptr noundef null) #16
  %96 = load ptr, ptr %0, align 4
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr %struct.request, ptr %1, i32 1, i32 10
  store ptr @mmc_blk_cqe_req_done, ptr %98, align 4
  %99 = getelementptr %struct.request, ptr %1, i32 1, i32 11
  store ptr @mmc_cqe_recovery_notifier, ptr %99, align 4
  %100 = tail call i32 @mmc_cqe_start_req(ptr noundef %97, ptr noundef %72) #16
  br label %138

101:                                              ; preds = %68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4
  tail call fastcc void @mmc_blk_rw_rq_prep(ptr noundef %72, ptr noundef %73, i32 noundef 0, ptr noundef %0) #16
  %102 = getelementptr %struct.request, ptr %1, i32 1, i32 10
  store ptr @mmc_blk_mq_req_done, ptr %102, align 4
  %103 = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.mmc_host_ops, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  tail call void %106(ptr noundef %74, ptr noundef %72) #16
  br label %109

109:                                              ; preds = %108, %101
  %110 = call fastcc i32 @mmc_blk_rw_wait(ptr noundef %0, ptr noundef nonnull %3) #16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 11
  store i8 1, ptr %113, align 1
  %114 = call i32 @mmc_start_request(ptr noundef %74, ptr noundef %72) #16
  %115 = load ptr, ptr %3, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  call fastcc void @mmc_blk_mq_post_req(ptr noundef %0, ptr noundef nonnull %115, i1 noundef zeroext true) #16
  br label %118

118:                                              ; preds = %117, %112
  %119 = icmp eq i32 %114, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 16
  %122 = load i32, ptr %121, align 8
  %123 = and i32 %122, 134217728
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %120
  call void @mmc_retune_release(ptr noundef %74) #16
  br label %133

126:                                              ; preds = %118
  store i8 0, ptr %113, align 1
  call void @mmc_retune_release(ptr noundef %74) #16
  br label %127

127:                                              ; preds = %126, %109
  %128 = phi i32 [ %114, %126 ], [ %110, %109 ]
  %129 = load ptr, ptr %103, align 4
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  call void %130(ptr noundef %74, ptr noundef %72, i32 noundef %128) #16
  br label %133

133:                                              ; preds = %132, %127, %125, %120
  %134 = phi i32 [ 0, %125 ], [ %128, %127 ], [ %128, %132 ], [ 0, %120 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %138

135:                                              ; preds = %41
  %136 = load i1, ptr @mmc_blk_mq_issue_rq.__already_done.1, align 1
  br i1 %136, label %148, label %137, !prof !10

137:                                              ; preds = %135
  store i1 true, ptr @mmc_blk_mq_issue_rq.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2324, i32 noundef 9, ptr noundef null) #16
  br label %148

138:                                              ; preds = %133, %95, %54
  %139 = phi i32 [ %134, %133 ], [ %67, %54 ], [ %100, %95 ]
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %138, %94, %90
  %142 = phi i32 [ %139, %138 ], [ %88, %94 ], [ %88, %90 ]
  %143 = icmp eq i32 %142, -16
  %144 = select i1 %143, i32 1, i32 2
  br label %148

145:                                              ; preds = %13
  %146 = load i1, ptr @mmc_blk_mq_issue_rq.__already_done.2, align 1
  br i1 %146, label %148, label %147, !prof !10

147:                                              ; preds = %145
  store i1 true, ptr @mmc_blk_mq_issue_rq.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2331, i32 noundef 9, ptr noundef null) #16
  br label %148

148:                                              ; preds = %147, %145, %141, %138, %137, %135, %87, %53, %40, %38, %37, %36, %35, %34, %27, %2
  %149 = phi i32 [ 3, %53 ], [ 2, %2 ], [ 1, %27 ], [ 2, %40 ], [ 2, %38 ], [ 3, %37 ], [ 3, %36 ], [ 3, %35 ], [ 3, %34 ], [ 0, %138 ], [ 2, %147 ], [ 2, %145 ], [ 0, %87 ], [ 2, %135 ], [ 2, %137 ], [ %144, %141 ]
  ret i32 %149
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_blk_part_switch(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %61, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %59

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 6
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i32 %1, 3
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 40
  %18 = load i8, ptr %17, align 2, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @mmc_cmdq_disable(ptr noundef %0) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %20, %16
  %24 = load ptr, ptr %0, align 8
  tail call void @mmc_retune_pause(ptr noundef %24) #16
  br label %25

25:                                               ; preds = %23, %12
  %26 = and i8 %14, -8
  %27 = trunc i32 %1 to i8
  %28 = or i8 %26, %27
  %29 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 12
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @mmc_switch(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext -77, i8 noundef zeroext %28, i32 noundef %30) #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %25
  br i1 %15, label %34, label %61

34:                                               ; preds = %33
  %35 = load ptr, ptr %0, align 8
  tail call void @mmc_retune_unpause(ptr noundef %35) #16
  %36 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 8
  %37 = load i8, ptr %36, align 8, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %61, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 40
  %41 = load i8, ptr %40, align 2, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = tail call i32 @mmc_cmdq_enable(ptr noundef %0) #16
  br label %61

45:                                               ; preds = %25
  store i8 %28, ptr %13, align 2
  %46 = load i32, ptr %5, align 4
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load ptr, ptr %0, align 8
  tail call void @mmc_retune_unpause(ptr noundef %49) #16
  %50 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 8
  %51 = load i8, ptr %50, align 8, !range !8
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 40
  %55 = load i8, ptr %54, align 2, !range !8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = tail call i32 @mmc_cmdq_enable(ptr noundef %0) #16
  br label %59

59:                                               ; preds = %57, %53, %48, %45, %8
  %60 = phi i32 [ 0, %8 ], [ 0, %53 ], [ %58, %57 ], [ 0, %48 ], [ 0, %45 ]
  store i32 %1, ptr %5, align 4
  br label %61

61:                                               ; preds = %59, %43, %39, %34, %33, %20, %2
  %62 = phi i32 [ %60, %59 ], [ 0, %2 ], [ %31, %43 ], [ %31, %39 ], [ %31, %34 ], [ %31, %33 ], [ %21, %20 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_issue_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_issue_drv_op(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.mmc_command, align 4
  %4 = alloca %struct.mmc_command, align 4
  %5 = alloca %struct.mmc_data, align 4
  %6 = alloca %struct.mmc_request, align 4
  %7 = alloca %struct.scatterlist, align 4
  %8 = alloca i32, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !9
  %12 = getelementptr %struct.request, ptr %1, i32 2, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  switch i32 %13, label %264 [
    i32 0, label %15
    i32 1, label %22
    i32 2, label %237
    i32 3, label %255
    i32 4, label %260
  ]

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 21, i32 40
  %17 = load i8, ptr %16, align 2, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @mmc_cmdq_disable(ptr noundef %9) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %269

22:                                               ; preds = %19, %15, %2
  %23 = getelementptr %struct.request, ptr %1, i32 2, i32 23, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr %struct.request, ptr %1, i32 2, i32 24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %192, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds i8, ptr %3, i32 8
  %30 = icmp ne ptr %9, null
  %31 = icmp ne ptr %11, null
  %32 = and i1 %30, %31
  %33 = getelementptr inbounds %struct.mmc_blk_data, ptr %11, i32 0, i32 8
  %34 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 1
  %35 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  %36 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %37 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %38 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %39 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %40 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %41 = getelementptr inbounds %struct.mmc_request, ptr %6, i32 0, i32 2
  %42 = getelementptr inbounds %struct.mmc_request, ptr %6, i32 0, i32 1
  %43 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 1
  %44 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 3
  %45 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %46 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 5
  %47 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 21, i32 7
  %48 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 1, i32 8
  %49 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 21, i32 6
  br label %50

50:                                               ; preds = %188, %28
  %51 = phi i32 [ 0, %28 ], [ %189, %188 ]
  %52 = getelementptr ptr, ptr %24, i32 %51
  %53 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %29, i8 0, i32 40, i1 false) #16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %5, i8 0, i32 56, i1 false) #16
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %6, i8 0, i32 68, i1 false) #16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false) #16, !annotation !9
  %54 = icmp ne ptr %53, null
  %55 = and i1 %32, %54
  br i1 %55, label %56, label %183

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %53, i32 0, i32 3
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.mmc_rpmb_data, ptr %58, i32 0, i32 3
  %62 = load i32, ptr %61, align 8
  %63 = or i32 %62, 3
  br label %66

64:                                               ; preds = %56
  %65 = load i32, ptr %33, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %63, %60 ], [ %65, %64 ]
  %68 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %53, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  store i32 %69, ptr %3, align 4
  %70 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %53, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  store i32 %71, ptr %34, align 4
  %72 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %53, i32 0, i32 5
  %73 = load i32, ptr %72, align 8
  store i32 %73, ptr %35, align 4
  %74 = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %53, i32 0, i32 2
  %75 = load i64, ptr %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %100, label %77

77:                                               ; preds = %66
  store ptr %7, ptr %36, align 4
  store i32 1, ptr %37, align 4
  %78 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %53, i32 0, i32 6
  %79 = load i32, ptr %78, align 4
  store i32 %79, ptr %38, align 4
  %80 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %53, i32 0, i32 7
  %81 = load i32, ptr %80, align 8
  store i32 %81, ptr %39, align 4
  %82 = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %53, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8
  %84 = trunc i64 %75 to i32
  call void @sg_init_one(ptr noundef nonnull %7, ptr noundef %83, i32 noundef %84) #16
  %85 = load i32, ptr %53, align 8
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 512, i32 256
  store i32 %87, ptr %40, align 4
  call void @mmc_set_data_timeout(ptr noundef nonnull %5, ptr noundef nonnull %9) #16
  %88 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %53, i32 0, i32 10
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %77
  store i32 %89, ptr %5, align 4
  br label %92

92:                                               ; preds = %91, %77
  %93 = and i32 %73, 29
  %94 = icmp eq i32 %93, 29
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %53, i32 0, i32 11
  %97 = load i32, ptr %96, align 8
  %98 = mul i32 %97, 1000000
  store i32 %98, ptr %5, align 4
  br label %99

99:                                               ; preds = %95, %92
  store ptr %5, ptr %41, align 4
  br label %100

100:                                              ; preds = %99, %66
  store ptr %3, ptr %42, align 4
  %101 = call fastcc i32 @mmc_blk_part_switch(ptr noundef nonnull %9, i32 noundef %67) #16
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %183

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %53, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %9, align 8
  %109 = call i32 @mmc_app_cmd(ptr noundef %108, ptr noundef nonnull %9) #16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %183

111:                                              ; preds = %107, %103
  %112 = load ptr, ptr %57, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  store i32 23, ptr %4, align 4
  %115 = load i32, ptr %39, align 4
  %116 = load i32, ptr %53, align 8
  %117 = and i32 %116, -2147483648
  %118 = or i32 %117, %115
  store i32 %118, ptr %43, align 4
  store i32 21, ptr %44, align 4
  store ptr %4, ptr %6, align 4
  br label %119

119:                                              ; preds = %114, %111
  %120 = load i32, ptr %34, align 4
  %121 = and i32 %120, 16711680
  %122 = icmp eq i32 %121, 10813440
  %123 = load i32, ptr %3, align 4
  %124 = icmp eq i32 %123, 6
  %125 = select i1 %122, i1 %124, i1 false
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %53, i32 0, i32 11
  %128 = load i32, ptr %127, align 8
  %129 = call i32 @mmc_sanitize(ptr noundef nonnull %9, i32 noundef %128) #16
  br label %185

130:                                              ; preds = %119
  %131 = load ptr, ptr %9, align 8
  call void @mmc_wait_for_req(ptr noundef %131, ptr noundef nonnull %6) #16
  %132 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %53, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %132, ptr noundef align 4 dereferenceable(16) %29, i32 16, i1 false) #16
  %133 = load i32, ptr %45, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %130
  %136 = load ptr, ptr %9, align 8
  %137 = load ptr, ptr %136, align 64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__mmc_blk_ioctl_cmd, i32 noundef %133) #18
  %138 = load i32, ptr %45, align 4
  br label %185

139:                                              ; preds = %130
  %140 = load i32, ptr %46, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr %9, align 8
  %144 = load ptr, ptr %143, align 64
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.__mmc_blk_ioctl_cmd, i32 noundef %140) #18
  %145 = load i32, ptr %46, align 4
  br label %185

146:                                              ; preds = %139
  %147 = load i32, ptr %34, align 4
  %148 = and i32 %147, 16711680
  %149 = icmp eq i32 %148, 11730944
  %150 = load i32, ptr %3, align 4
  %151 = icmp eq i32 %150, 6
  %152 = select i1 %149, i1 %151, i1 false
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = load ptr, ptr %48, align 8
  %155 = lshr i32 %147, 8
  %156 = trunc i32 %155 to i8
  store i8 %156, ptr %49, align 2
  %157 = and i32 %155, 7
  %158 = getelementptr inbounds %struct.mmc_blk_data, ptr %154, i32 0, i32 10
  store i32 %157, ptr %158, align 4
  br label %166

159:                                              ; preds = %146
  %160 = icmp eq i32 %148, 2162688
  %161 = select i1 %160, i1 %151, i1 false
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = lshr i32 %147, 8
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  store i8 %165, ptr %47, align 1
  br label %166

166:                                              ; preds = %162, %159, %153
  %167 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %53, i32 0, i32 8
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %53, i32 0, i32 9
  %172 = load i32, ptr %171, align 8
  call void @usleep_range_state(i32 noundef %168, i32 noundef %172, i32 noundef 2) #16
  br label %173

173:                                              ; preds = %170, %166
  %174 = load ptr, ptr %57, align 8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load i32, ptr %35, align 4
  %178 = and i32 %177, 29
  %179 = icmp eq i32 %178, 29
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #16
  br label %188

181:                                              ; preds = %176, %173
  %182 = call i32 @mmc_poll_for_busy(ptr noundef nonnull %9, i32 noundef 10000, i1 noundef zeroext false, i32 noundef 4) #16
  br label %185

183:                                              ; preds = %107, %100, %50
  %184 = phi i32 [ %109, %107 ], [ %101, %100 ], [ -22, %50 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #16
  br label %192

185:                                              ; preds = %181, %142, %135, %126
  %186 = phi i32 [ %129, %126 ], [ %138, %135 ], [ %145, %142 ], [ %182, %181 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #16
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %185, %180
  %189 = add nuw i32 %51, 1
  %190 = load i32, ptr %25, align 4
  %191 = icmp ult i32 %189, %190
  br i1 %191, label %50, label %192

192:                                              ; preds = %188, %185, %183, %22
  %193 = phi i32 [ %184, %183 ], [ 0, %22 ], [ 0, %188 ], [ %186, %185 ]
  br i1 %14, label %194, label %227

194:                                              ; preds = %192
  %195 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 1, i32 8
  %196 = load ptr, ptr %195, align 8
  %197 = getelementptr inbounds %struct.mmc_blk_data, ptr %196, i32 0, i32 10
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %272, label %200

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 4
  %202 = load i32, ptr %201, align 8
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %226

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 21, i32 6
  %206 = load i8, ptr %205, align 2
  %207 = and i8 %206, -8
  %208 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 21, i32 12
  %209 = load i32, ptr %208, align 4
  %210 = call i32 @mmc_switch(ptr noundef %9, i8 noundef zeroext 1, i8 noundef zeroext -77, i8 noundef zeroext %207, i32 noundef %209) #16
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %272

212:                                              ; preds = %204
  store i8 %207, ptr %205, align 2
  %213 = load i32, ptr %197, align 4
  %214 = icmp eq i32 %213, 3
  br i1 %214, label %215, label %226

215:                                              ; preds = %212
  %216 = load ptr, ptr %9, align 8
  call void @mmc_retune_unpause(ptr noundef %216) #16
  %217 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 8
  %218 = load i8, ptr %217, align 8, !range !8
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 21, i32 40
  %222 = load i8, ptr %221, align 2, !range !8
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = call i32 @mmc_cmdq_enable(ptr noundef %9) #16
  br label %226

226:                                              ; preds = %224, %220, %215, %212, %200
  store i32 0, ptr %197, align 4
  br label %272

227:                                              ; preds = %192
  %228 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 8
  %229 = load i8, ptr %228, align 8, !range !8
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %272, label %231

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 21, i32 40
  %233 = load i8, ptr %232, align 2, !range !8
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %235, label %272

235:                                              ; preds = %231
  %236 = call i32 @mmc_cmdq_enable(ptr noundef %9) #16
  br label %272

237:                                              ; preds = %2
  %238 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 21, i32 37
  %239 = load i32, ptr %238, align 4
  %240 = trunc i32 %239 to i8
  %241 = or i8 %240, 1
  %242 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 21, i32 12
  %243 = load i32, ptr %242, align 4
  %244 = tail call i32 @mmc_switch(ptr noundef %9, i8 noundef zeroext 1, i8 noundef zeroext -83, i8 noundef zeroext %241, i32 noundef %243) #16
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %251, label %246

246:                                              ; preds = %237
  %247 = getelementptr inbounds %struct.mmc_blk_data, ptr %11, i32 0, i32 1
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.gendisk, ptr %248, i32 0, i32 3
  %250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %249, i32 noundef %244) #18
  br label %269

251:                                              ; preds = %237
  %252 = load i32, ptr %238, align 4
  %253 = or i32 %252, 1
  store i32 %253, ptr %238, align 4
  %254 = getelementptr %struct.request, ptr %1, i32 2, i32 23
  store i32 0, ptr %254, align 4
  br label %276

255:                                              ; preds = %2
  %256 = call i32 @mmc_send_status(ptr noundef %9, ptr noundef nonnull %8) #16
  %257 = icmp eq i32 %256, 0
  %258 = load i32, ptr %8, align 4
  %259 = select i1 %257, i32 %258, i32 %256
  br label %272

260:                                              ; preds = %2
  %261 = getelementptr %struct.request, ptr %1, i32 2, i32 23, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = tail call i32 @mmc_get_ext_csd(ptr noundef %9, ptr noundef %262) #16
  br label %272

264:                                              ; preds = %2
  %265 = getelementptr inbounds %struct.mmc_blk_data, ptr %11, i32 0, i32 1
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr inbounds %struct.gendisk, ptr %266, i32 0, i32 3
  %268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %267) #18
  br label %269

269:                                              ; preds = %264, %246, %19
  %270 = phi i32 [ %20, %19 ], [ %244, %246 ], [ -22, %264 ]
  %271 = getelementptr %struct.request, ptr %1, i32 2, i32 23
  store i32 %270, ptr %271, align 4
  br label %277

272:                                              ; preds = %260, %255, %235, %231, %227, %226, %204, %194
  %273 = phi i32 [ %263, %260 ], [ %193, %231 ], [ %193, %235 ], [ %193, %227 ], [ %259, %255 ], [ %193, %204 ], [ %193, %194 ], [ %193, %226 ]
  %274 = getelementptr %struct.request, ptr %1, i32 2, i32 23
  store i32 %273, ptr %274, align 4
  %275 = icmp eq i32 %273, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %272, %251
  br label %277

277:                                              ; preds = %276, %272, %269
  %278 = phi i8 [ 0, %276 ], [ 10, %272 ], [ 10, %269 ]
  call void @blk_mq_end_request(ptr noundef %1, i8 noundef zeroext %278) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_issue_discard_rq(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @mmc_can_erase(ptr noundef %6) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %60, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 9
  %16 = getelementptr inbounds %struct.mmc_card, ptr %6, i32 0, i32 6
  %17 = getelementptr inbounds %struct.mmc_card, ptr %6, i32 0, i32 13
  %18 = getelementptr inbounds %struct.mmc_card, ptr %6, i32 0, i32 21, i32 14
  %19 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 9
  br label %20

20:                                               ; preds = %40, %9
  %21 = load i32, ptr %16, align 8
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %17, align 4
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i8
  %28 = load i32, ptr %18, align 4
  %29 = tail call i32 @mmc_switch(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 113, i8 noundef zeroext %27, i32 noundef %28) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24, %20
  %32 = load i32, ptr %17, align 4
  %33 = tail call i32 @mmc_erase(ptr noundef %6, i32 noundef %12, i32 noundef %15, i32 noundef %32) #16
  br label %34

34:                                               ; preds = %31, %24
  %35 = phi i32 [ %29, %24 ], [ %33, %31 ]
  switch i32 %35, label %60 [
    i32 -5, label %36
    i32 0, label %57
  ]

36:                                               ; preds = %34
  %37 = load i32, ptr %19, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load ptr, ptr %6, align 8
  %42 = or i32 %37, 4
  store i32 %42, ptr %19, align 4
  %43 = tail call i32 @mmc_hw_reset(ptr noundef %41) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %20, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 37
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.mmc_card, ptr %47, i32 0, i32 1, i32 8
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.mmc_blk_data, ptr %49, i32 0, i32 8
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.mmc_blk_data, ptr %49, i32 0, i32 10
  store i32 %51, ptr %52, align 4
  %53 = load ptr, ptr %46, align 8
  %54 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 8
  %55 = load i32, ptr %54, align 4
  %56 = tail call fastcc i32 @mmc_blk_part_switch(ptr noundef %53, i32 noundef %55) #16
  br label %60

57:                                               ; preds = %34
  %58 = load i32, ptr %19, align 4
  %59 = and i32 %58, -5
  store i32 %59, ptr %19, align 4
  br label %60

60:                                               ; preds = %57, %45, %36, %34, %2
  %61 = phi i8 [ 0, %57 ], [ 1, %2 ], [ 10, %45 ], [ 10, %34 ], [ 10, %36 ]
  tail call void @blk_mq_end_request(ptr noundef %1, i8 noundef zeroext %61) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_issue_secdiscard_rq(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @mmc_can_secure_erase_trim(ptr noundef %6) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %74, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 9
  %16 = tail call i32 @mmc_can_trim(ptr noundef %6) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %9
  %19 = tail call i32 @mmc_erase_group_aligned(ptr noundef %6, i32 noundef %12, i32 noundef %15) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %21, %18, %9
  %23 = phi i32 [ -2147483647, %21 ], [ -2147483648, %9 ], [ -2147483648, %18 ]
  %24 = phi i1 [ true, %21 ], [ false, %9 ], [ false, %18 ]
  %25 = phi i8 [ -127, %21 ], [ -128, %9 ], [ -128, %18 ]
  %26 = getelementptr inbounds %struct.mmc_card, ptr %6, i32 0, i32 6
  %27 = getelementptr inbounds %struct.mmc_card, ptr %6, i32 0, i32 21, i32 14
  %28 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 9
  br label %29

29:                                               ; preds = %54, %22
  %30 = load i32, ptr %26, align 8
  %31 = and i32 %30, 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %27, align 4
  %35 = tail call i32 @mmc_switch(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 113, i8 noundef zeroext %25, i32 noundef %34) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33, %29
  %38 = tail call i32 @mmc_erase(ptr noundef %6, i32 noundef %12, i32 noundef %15, i32 noundef %23) #16
  switch i32 %38, label %74 [
    i32 -5, label %50
    i32 0, label %39
  ]

39:                                               ; preds = %37
  br i1 %24, label %40, label %71

40:                                               ; preds = %39
  %41 = load i32, ptr %26, align 8
  %42 = and i32 %41, 64
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %27, align 4
  %46 = tail call i32 @mmc_switch(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 113, i8 noundef zeroext -120, i32 noundef %45) #16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40
  %49 = tail call i32 @mmc_erase(ptr noundef %6, i32 noundef %12, i32 noundef %15, i32 noundef -2147450880) #16
  switch i32 %49, label %74 [
    i32 0, label %71
    i32 -5, label %50
  ]

50:                                               ; preds = %48, %44, %37, %33
  %51 = load i32, ptr %28, align 4
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load ptr, ptr %6, align 8
  %56 = or i32 %51, 8
  store i32 %56, ptr %28, align 4
  %57 = tail call i32 @mmc_hw_reset(ptr noundef %55) #16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %29, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.mmc_host, ptr %55, i32 0, i32 37
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.mmc_card, ptr %61, i32 0, i32 1, i32 8
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.mmc_blk_data, ptr %63, i32 0, i32 8
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.mmc_blk_data, ptr %63, i32 0, i32 10
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr %60, align 8
  %68 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 8
  %69 = load i32, ptr %68, align 4
  %70 = tail call fastcc i32 @mmc_blk_part_switch(ptr noundef %67, i32 noundef %69) #16
  br label %74

71:                                               ; preds = %48, %39
  %72 = load i32, ptr %28, align 4
  %73 = and i32 %72, -9
  store i32 %73, ptr %28, align 4
  br label %74

74:                                               ; preds = %71, %59, %50, %48, %37, %2
  %75 = phi i8 [ 0, %71 ], [ 1, %2 ], [ 0, %59 ], [ 0, %50 ], [ 10, %48 ], [ 10, %37 ]
  tail call void @blk_mq_end_request(ptr noundef %1, i8 noundef zeroext %75) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_issue_flush(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 45
  %9 = load ptr, ptr %8, align 32
  %10 = getelementptr inbounds %struct.mmc_bus_ops, ptr %9, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = tail call i32 %11(ptr noundef %7) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i8 [ 0, %16 ], [ 10, %13 ]
  tail call void @blk_mq_end_request(ptr noundef %1, i8 noundef zeroext %18) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mmc_blk_exit() #4 section ".exit.text" {
  tail call void @mmc_unregister_driver(ptr noundef nonnull @mmc_driver) #16
  tail call void @unregister_blkdev(i32 noundef 179, ptr noundef nonnull @.str.3) #16
  %1 = load i32, ptr @mmc_rpmb_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef 256) #16
  tail call void @bus_unregister(ptr noundef nonnull @mmc_rpmb_bus_type) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mmc_blk_init() #4 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @mmc_rpmb_bus_type) #16
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #18
  br label %31

5:                                                ; preds = %0
  %6 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @mmc_rpmb_devt, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.56) #16
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #18
  br label %29

10:                                               ; preds = %5
  %11 = load i32, ptr @perdev_minors, align 4
  %12 = icmp eq i32 %11, 16
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %11) #18
  %15 = load i32, ptr @perdev_minors, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ %15, %13 ], [ 16, %10 ]
  %18 = sdiv i32 1048576, %17
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 256)
  store i32 %19, ptr @max_devices, align 4
  %20 = tail call i32 @__register_blkdev(i32 noundef 179, ptr noundef nonnull @.str.3, ptr noundef null) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = tail call i32 @mmc_register_driver(ptr noundef nonnull @mmc_driver) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  tail call void @unregister_blkdev(i32 noundef 179, ptr noundef nonnull @.str.3) #16
  br label %26

26:                                               ; preds = %25, %16
  %27 = phi i32 [ %20, %16 ], [ %23, %25 ]
  %28 = load i32, ptr @mmc_rpmb_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %28, i32 noundef 256) #16
  br label %29

29:                                               ; preds = %26, %8
  %30 = phi i32 [ %6, %8 ], [ %27, %26 ]
  tail call void @bus_unregister(ptr noundef nonnull @mmc_rpmb_bus_type) #16
  br label %31

31:                                               ; preds = %29, %22, %3
  %32 = phi i32 [ %1, %3 ], [ %30, %29 ], [ 0, %22 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_hw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_cqe_post_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_requeue_request(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_cqe_check_busy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_put_card(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_send_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_detect_card_removed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_blk_fix_state(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.mmc_command, align 4
  %4 = getelementptr %struct.request, ptr %1, i32 1
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.mmc_blk_request, ptr %4, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 999999
  %9 = udiv i32 %8, 1000000
  %10 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 57
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = udiv i32 %15, 1000
  br label %30

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 28
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = udiv i32 %21, 2000
  br label %30

25:                                               ; preds = %19
  %26 = load i1, ptr @mmc_blk_clock_khz.__already_done, align 1
  br i1 %26, label %30, label %27, !prof !10

27:                                               ; preds = %25
  store i1 true, ptr @mmc_blk_clock_khz.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 969, i32 noundef 9, ptr noundef null) #16
  %28 = load i32, ptr %10, align 4
  %29 = load ptr, ptr %0, align 8
  br label %30

30:                                               ; preds = %27, %25, %23, %17
  %31 = phi ptr [ %5, %17 ], [ %5, %23 ], [ %29, %27 ], [ %5, %25 ]
  %32 = phi i32 [ %11, %17 ], [ %11, %23 ], [ %28, %27 ], [ %11, %25 ]
  %33 = phi i32 [ %18, %17 ], [ %24, %23 ], [ 100, %27 ], [ 100, %25 ]
  %34 = add i32 %32, -1
  %35 = add i32 %34, %33
  %36 = udiv i32 %35, %33
  %37 = add i32 %36, %9
  br label %38

38:                                               ; preds = %30, %2
  %39 = phi ptr [ %31, %30 ], [ %5, %2 ]
  %40 = phi i32 [ %37, %30 ], [ %9, %2 ]
  %41 = getelementptr inbounds %struct.mmc_host, ptr %39, i32 0, i32 29
  %42 = load i16, ptr %41, align 8
  %43 = and i16 %42, -33
  store i16 %43, ptr %41, align 8
  %44 = getelementptr inbounds %struct.mmc_host, ptr %39, i32 0, i32 33
  %45 = load i32, ptr %44, align 8
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #16
  %47 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %47, i8 0, i64 44, i1 false) #16
  store i32 12, ptr %3, align 4
  %48 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 149, ptr %48, align 4
  %49 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 6
  store i32 %40, ptr %49, align 4
  %50 = load ptr, ptr %0, align 8
  %51 = call i32 @mmc_wait_for_cmd(ptr noundef %50, ptr noundef nonnull %3, i32 noundef 5) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #16
  %52 = call i32 @mmc_poll_for_busy(ptr noundef %0, i32 noundef %40, i1 noundef zeroext false, i32 noundef 4) #16
  %53 = load ptr, ptr %0, align 8
  call void @mmc_retune_release(ptr noundef %53) #16
  ret i32 %52
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_read_single(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr %struct.request, ptr %1, i32 1
  %5 = load ptr, ptr %0, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 16
  %8 = getelementptr %struct.request, ptr %1, i32 1, i32 1
  %9 = getelementptr %struct.request, ptr %1, i32 1, i32 2
  br label %10

10:                                               ; preds = %87, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  call fastcc void @mmc_blk_rw_rq_prep(ptr noundef %4, ptr noundef %5, i32 noundef 1, ptr noundef %0)
  call void @mmc_wait_for_req(ptr noundef %6, ptr noundef %4) #16
  %11 = call i32 @mmc_send_status(ptr noundef %5, ptr noundef nonnull %3) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %90

13:                                               ; preds = %10
  %14 = load i32, ptr %7, align 8
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i32, ptr %3, align 4
  %19 = and i32 %18, 7936
  %20 = icmp eq i32 %19, 2304
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = call fastcc i32 @mmc_blk_fix_state(ptr noundef %5, ptr noundef %1)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %90

24:                                               ; preds = %21, %17, %13
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.mmc_command, ptr %25, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %67, label %29

29:                                               ; preds = %24
  call fastcc void @mmc_blk_rw_rq_prep(ptr noundef %4, ptr noundef %5, i32 noundef 1, ptr noundef %0)
  call void @mmc_wait_for_req(ptr noundef %6, ptr noundef %4) #16
  %30 = call i32 @mmc_send_status(ptr noundef %5, ptr noundef nonnull %3) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %90

32:                                               ; preds = %29
  %33 = load i32, ptr %7, align 8
  %34 = and i32 %33, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, ptr %3, align 4
  %38 = and i32 %37, 7936
  %39 = icmp eq i32 %38, 2304
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = call fastcc i32 @mmc_blk_fix_state(ptr noundef %5, ptr noundef %1)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %90

43:                                               ; preds = %40, %36, %32
  %44 = load ptr, ptr %8, align 4
  %45 = getelementptr inbounds %struct.mmc_command, ptr %44, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %43
  call fastcc void @mmc_blk_rw_rq_prep(ptr noundef %4, ptr noundef %5, i32 noundef 1, ptr noundef %0)
  call void @mmc_wait_for_req(ptr noundef %6, ptr noundef %4) #16
  %49 = call i32 @mmc_send_status(ptr noundef %5, ptr noundef nonnull %3) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %48
  %52 = load i32, ptr %7, align 8
  %53 = and i32 %52, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, ptr %3, align 4
  %57 = and i32 %56, 7936
  %58 = icmp eq i32 %57, 2304
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = call fastcc i32 @mmc_blk_fix_state(ptr noundef %5, ptr noundef %1)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %59, %55, %51
  %63 = load ptr, ptr %8, align 4
  %64 = getelementptr inbounds %struct.mmc_command, ptr %63, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %62, %43, %24
  %68 = phi ptr [ %25, %24 ], [ %44, %43 ], [ %63, %62 ]
  %69 = load ptr, ptr %9, align 4
  %70 = getelementptr inbounds %struct.mmc_data, ptr %69, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %67
  %74 = load i32, ptr %7, align 8
  %75 = and i32 %74, 16
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.mmc_command, ptr %68, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, -466092032
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, ptr %3, align 4
  %84 = and i32 %83, -466092032
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %73
  br label %87

87:                                               ; preds = %86, %82, %77, %67, %62
  %88 = phi i8 [ 10, %67 ], [ 10, %77 ], [ 10, %82 ], [ 0, %86 ], [ 10, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %89 = call zeroext i1 @blk_update_request(ptr noundef %1, i8 noundef zeroext %88, i32 noundef 512) #16
  br i1 %89, label %10, label %98

90:                                               ; preds = %59, %48, %40, %29, %21, %10
  %91 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %92 = getelementptr inbounds %struct.mmc_data, ptr %91, i32 0, i32 7
  store i32 0, ptr %92, align 4
  %93 = call zeroext i1 @blk_update_request(ptr noundef %1, i8 noundef zeroext 10, i32 noundef 512) #16
  %94 = getelementptr %struct.request, ptr %1, i32 2, i32 24, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = icmp sgt i32 %95, 4
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i32 4, ptr %94, align 4
  br label %98

98:                                               ; preds = %97, %90, %87
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_poll_for_busy(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_wait_for_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_data_timeout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_wait_for_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_rw_rq_prep(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  store i8 0, ptr %5, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  store i8 0, ptr %6, align 1, !annotation !9
  call fastcc void @mmc_blk_data_prep(ptr noundef %3, ptr noundef %0, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %9 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.mmc_request, ptr %0, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 -128
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 2, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = shl i32 %13, 9
  store i32 %20, ptr %14, align 4
  br label %21

21:                                               ; preds = %19, %4
  %22 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 2, i32 3
  store i32 181, ptr %22, align 4
  %23 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 4, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, 2
  %26 = load i8, ptr %5, align 1
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %42, label %29

29:                                               ; preds = %21
  %30 = load ptr, ptr %1, align 8
  %31 = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 16
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = getelementptr i8, ptr %0, i32 -156
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35, %29
  %41 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 3
  br label %42

42:                                               ; preds = %40, %21
  %43 = phi ptr [ %41, %40 ], [ null, %21 ]
  %44 = phi i32 [ 18, %40 ], [ 17, %21 ]
  %45 = phi i32 [ 25, %40 ], [ 24, %21 ]
  %46 = getelementptr inbounds %struct.mmc_request, ptr %0, i32 0, i32 3
  store ptr %43, ptr %46, align 4
  br label %47

47:                                               ; preds = %42, %35
  %48 = phi i32 [ 18, %35 ], [ %44, %42 ]
  %49 = phi i32 [ 25, %35 ], [ %45, %42 ]
  %50 = getelementptr i8, ptr %0, i32 -156
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 %48, i32 %49
  store i32 %54, ptr %9, align 4
  %55 = getelementptr inbounds %struct.mmc_blk_data, ptr %8, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %47
  switch i32 %54, label %81 [
    i32 25, label %60
    i32 18, label %60
  ]

60:                                               ; preds = %59, %59
  br i1 %27, label %63, label %61

61:                                               ; preds = %60
  %62 = load i8, ptr %6, align 1, !range !8
  br label %71

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 6
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 128
  %67 = icmp ne i32 %66, 0
  %68 = load i8, ptr %6, align 1
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %81, label %71

71:                                               ; preds = %63, %61
  %72 = phi i8 [ %68, %63 ], [ %62, %61 ]
  %73 = phi i32 [ 0, %63 ], [ -2147483648, %61 ]
  %74 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 1
  store i32 23, ptr %74, align 4
  %75 = or i32 %73, %24
  %76 = icmp eq i8 %72, 0
  %77 = select i1 %76, i32 0, i32 536870912
  %78 = or i32 %75, %77
  %79 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 1, i32 1
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 1, i32 3
  store i32 21, ptr %80, align 4
  store ptr %74, ptr %0, align 4
  br label %81

81:                                               ; preds = %71, %63, %59, %47
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_data_prep(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly %3, ptr noundef writeonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_blk_data, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %1, i32 -156
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 131073
  %13 = icmp eq i32 %12, 131073
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.mmc_blk_data, ptr %7, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %14, %5
  %20 = phi i1 [ false, %5 ], [ %18, %14 ]
  %21 = zext i1 %20 to i8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(268) %1, i8 0, i32 268, i1 false)
  %22 = getelementptr inbounds %struct.mmc_blk_request, ptr %1, i32 0, i32 4
  %23 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %1, i32 -148
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 10
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.mmc_blk_request, ptr %1, i32 0, i32 3
  store i32 12, ptr %27, align 4
  %28 = and i32 %11, 1
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %29, i32 256, i32 512
  %31 = select i1 %29, i32 1181, i32 149
  %32 = getelementptr inbounds %struct.mmc_blk_request, ptr %1, i32 0, i32 4, i32 6
  store i32 %30, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mmc_blk_request, ptr %1, i32 0, i32 3, i32 3
  store i32 %31, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mmc_blk_request, ptr %1, i32 0, i32 4, i32 2
  store i32 512, ptr %34, align 4
  %35 = getelementptr i8, ptr %1, i32 -136
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 9
  %38 = getelementptr inbounds %struct.mmc_blk_request, ptr %1, i32 0, i32 4, i32 3
  store i32 %37, ptr %38, align 4
  %39 = getelementptr i8, ptr %1, i32 -128
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.mmc_blk_request, ptr %1, i32 0, i32 4, i32 4
  store i32 %41, ptr %42, align 4
  %43 = load ptr, ptr %9, align 8
  %44 = getelementptr inbounds %struct.mmc_host, ptr %43, i32 0, i32 25
  %45 = load i32, ptr %44, align 8
  %46 = icmp ugt i32 %37, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %19
  store i32 %45, ptr %38, align 4
  br label %48

48:                                               ; preds = %47, %19
  %49 = phi i32 [ %45, %47 ], [ %37, %19 ]
  %50 = icmp ugt i32 %49, 1
  br i1 %50, label %51, label %85

51:                                               ; preds = %48
  %52 = load ptr, ptr %9, align 8
  %53 = getelementptr inbounds %struct.mmc_host, ptr %52, i32 0, i32 16
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 16
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i1 true, i1 %29
  br i1 %57, label %70, label %58

58:                                               ; preds = %51
  %59 = zext i32 %37 to i64
  %60 = add i64 %40, %59
  %61 = getelementptr inbounds %struct.mmc_blk_data, ptr %7, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.gendisk, ptr %62, i32 0, i32 7
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.block_device, ptr %64, i32 0, i32 1
  %66 = load i64, ptr %65, align 8
  %67 = icmp eq i64 %60, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = add i32 %49, -1
  store i32 %69, ptr %38, align 4
  br label %70

70:                                               ; preds = %68, %58, %51
  %71 = phi i32 [ %49, %51 ], [ %69, %68 ], [ %49, %58 ]
  %72 = icmp eq i32 %2, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i32 1, ptr %38, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i32 [ 1, %73 ], [ %71, %70 ]
  %76 = load ptr, ptr %9, align 8
  %77 = getelementptr inbounds %struct.mmc_host, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.mmc_host_ops, ptr %78, i32 0, i32 22
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = select i1 %29, i32 256, i32 512
  %84 = tail call i32 %80(ptr noundef %9, i32 noundef %83, i32 noundef %75) #16
  store i32 %84, ptr %38, align 4
  br label %85

85:                                               ; preds = %82, %74, %48
  %86 = phi i32 [ %75, %74 ], [ %84, %82 ], [ %49, %48 ]
  br i1 %20, label %87, label %115

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 21, i32 4
  %89 = load i8, ptr %88, align 4
  %90 = and i8 %89, 4
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %87
  %93 = load i64, ptr %39, align 8
  %94 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 21, i32 3
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i64
  %97 = add nsw i64 %96, -1
  %98 = and i64 %97, %93
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %92
  store i32 1, ptr %38, align 4
  %101 = load i8, ptr %94, align 1
  br label %102

102:                                              ; preds = %100, %92
  %103 = phi i8 [ %101, %100 ], [ %95, %92 ]
  %104 = phi i32 [ 1, %100 ], [ %86, %92 ]
  %105 = zext i8 %103 to i32
  %106 = icmp ugt i32 %104, %105
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = icmp ult i32 %104, %105
  br i1 %108, label %109, label %111

109:                                              ; preds = %107, %102
  %110 = phi i32 [ %105, %102 ], [ 1, %107 ]
  store i32 %110, ptr %38, align 4
  br label %111

111:                                              ; preds = %109, %107, %87
  %112 = phi i32 [ %86, %87 ], [ %104, %107 ], [ %110, %109 ]
  %113 = load i32, ptr %32, align 4
  %114 = or i32 %113, 4096
  store i32 %114, ptr %32, align 4
  br label %115

115:                                              ; preds = %111, %85
  %116 = phi i32 [ %112, %111 ], [ %86, %85 ]
  %117 = getelementptr inbounds %struct.mmc_card, ptr %9, i32 0, i32 21, i32 36
  %118 = load i32, ptr %117, align 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %115
  %121 = load i32, ptr %10, align 4
  %122 = and i32 %121, 4097
  %123 = icmp eq i32 %122, 4097
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load i32, ptr %34, align 4
  %126 = mul i32 %125, %116
  %127 = icmp ult i32 %126, %118
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr %32, align 4
  %130 = or i32 %129, 8192
  store i32 %130, ptr %32, align 4
  br label %131

131:                                              ; preds = %128, %124, %120, %115
  %132 = phi i8 [ 1, %128 ], [ 0, %124 ], [ 0, %120 ], [ 0, %115 ]
  tail call void @mmc_set_data_timeout(ptr noundef %22, ptr noundef %9) #16
  %133 = getelementptr inbounds %struct.mmc_queue_req, ptr %1, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.mmc_blk_request, ptr %1, i32 0, i32 4, i32 12
  store ptr %134, ptr %135, align 4
  %136 = tail call i32 @mmc_queue_map_sg(ptr noundef %0, ptr noundef %1) #16
  %137 = getelementptr inbounds %struct.mmc_blk_request, ptr %1, i32 0, i32 4, i32 10
  store i32 %136, ptr %137, align 4
  %138 = load i32, ptr %38, align 4
  %139 = load i32, ptr %35, align 8
  %140 = lshr i32 %139, 9
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %165, label %142

142:                                              ; preds = %131
  %143 = icmp eq i32 %136, 0
  br i1 %143, label %163, label %144

144:                                              ; preds = %142
  %145 = load ptr, ptr %135, align 4
  %146 = shl i32 %138, 9
  br label %147

147:                                              ; preds = %158, %144
  %148 = phi ptr [ %160, %158 ], [ %145, %144 ]
  %149 = phi i32 [ %153, %158 ], [ %146, %144 ]
  %150 = phi i32 [ %159, %158 ], [ 0, %144 ]
  %151 = getelementptr inbounds %struct.scatterlist, ptr %148, i32 0, i32 2
  %152 = load i32, ptr %151, align 4
  %153 = sub i32 %149, %152
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.scatterlist, ptr %148, i32 0, i32 2
  store i32 %149, ptr %156, align 4
  %157 = add nuw i32 %150, 1
  br label %163

158:                                              ; preds = %147
  %159 = add nuw i32 %150, 1
  %160 = tail call ptr @sg_next(ptr noundef %148) #16
  %161 = load i32, ptr %137, align 4
  %162 = icmp ult i32 %159, %161
  br i1 %162, label %147, label %163

163:                                              ; preds = %158, %155, %142
  %164 = phi i32 [ %157, %155 ], [ 0, %142 ], [ %159, %158 ]
  store i32 %164, ptr %137, align 4
  br label %165

165:                                              ; preds = %163, %131
  %166 = icmp eq ptr %3, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %165
  store i8 %21, ptr %3, align 1
  br label %168

168:                                              ; preds = %167, %165
  %169 = icmp eq ptr %4, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %168
  store i8 %132, ptr %4, align 1
  br label %171

171:                                              ; preds = %170, %168
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_queue_map_sg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_run_bkops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_poll_for_busy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_blk_busy_cb(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = call i32 @mmc_send_status(ptr noundef %4, ptr noundef nonnull %3) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 4
  %9 = getelementptr inbounds %struct.mmc_blk_busy_data, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, %8
  store i32 %11, ptr %9, align 4
  %12 = and i32 %8, 7936
  %13 = icmp ne i32 %12, 2304
  %14 = zext i1 %13 to i8
  store i8 %14, ptr %1, align 1
  br label %15

15:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_switch(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_cmdq_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_unpause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_cmdq_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_blk_rw_wait(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %6 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 9
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 11
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp ne i8 %11, 1
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i32 [ 0, %9 ], [ -16, %2 ]
  %15 = phi i1 [ %12, %9 ], [ true, %2 ]
  %16 = xor i1 %15, true
  %17 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 12
  %18 = zext i1 %16 to i8
  store i8 %18, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #16
  br i1 %15, label %38, label %19

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #16
  %20 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 14
  %21 = getelementptr inbounds %struct.mmc_queue, ptr %0, i32 0, i32 11
  br label %22

22:                                               ; preds = %36, %19
  %23 = phi i32 [ %14, %19 ], [ %32, %36 ]
  %24 = call i32 @prepare_to_wait_event(ptr noundef %20, ptr noundef nonnull %3, i32 noundef 2) #16
  %25 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #16
  %26 = load i8, ptr %6, align 1, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i8, ptr %21, align 1, !range !8
  %30 = icmp ne i8 %29, 1
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi i32 [ %23, %28 ], [ -16, %22 ]
  %33 = phi i1 [ %30, %28 ], [ true, %22 ]
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i8
  store i8 %35, ptr %17, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %25) #16
  br i1 %33, label %37, label %36

36:                                               ; preds = %31
  call void @schedule() #16
  br label %22

37:                                               ; preds = %31
  call void @finish_wait(ptr noundef %20, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #16
  br label %38

38:                                               ; preds = %37, %13
  %39 = phi i32 [ %14, %13 ], [ %32, %37 ]
  call fastcc void @mmc_blk_mq_complete_prev_req(ptr noundef %0, ptr noundef %1)
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_get_ext_csd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_app_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_sanitize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_erase(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_erase(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_secure_erase_trim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_trim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_erase_group_aligned(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_blk_cqe_req_done(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -168
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 10
  %7 = load i8, ptr %6, align 2, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call fastcc void @mmc_blk_cqe_complete_rq(ptr noundef %5, ptr noundef %2)
  br label %11

10:                                               ; preds = %1
  tail call void @blk_mq_complete_request(ptr noundef %2) #16
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_cqe_recovery_notifier(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_cqe_start_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_blk_hsq_req_done(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -168
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 3, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 3, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, -466092032
  %15 = icmp sgt i32 %13, -1
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %0, align 4
  %18 = icmp eq ptr %17, null
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i1 [ false, %11 ], [ %18, %16 ]
  %21 = icmp eq i32 %14, 0
  %22 = select i1 %21, i1 true, i1 %20
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 -5, ptr %8, align 4
  br label %24

24:                                               ; preds = %23, %19, %1
  %25 = phi i32 [ %9, %1 ], [ 0, %19 ], [ -5, %23 ]
  %26 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 1, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 2, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = icmp eq i32 %25, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 4, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 2, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -466092032
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr inbounds %struct.mmc_card, ptr %45, i32 0, i32 4
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %44
  %50 = load ptr, ptr %45, align 8
  %51 = getelementptr inbounds %struct.mmc_host, ptr %50, i32 0, i32 16
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %49
  %56 = and i32 %41, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 3, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 64
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %58, %55, %39, %35, %29, %24
  %64 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 5
  %65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %64) #16
  %66 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 9
  store i8 1, ptr %66, align 1
  %67 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 15
  store ptr %2, ptr %67, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %65) #16
  %68 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 61
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.mmc_cqe_ops, ptr %69, i32 0, i32 7
  %71 = load ptr, ptr %70, align 4
  tail call void %71(ptr noundef %7) #16
  %72 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 13
  %73 = load ptr, ptr @system_wq, align 4
  %74 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %73, ptr noundef %72) #16
  br label %91

75:                                               ; preds = %58, %49, %44
  %76 = getelementptr i8, ptr %0, i32 -156
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = select i1 %79, i32 -2, i32 -3
  %83 = getelementptr inbounds %struct.mmc_blk_data, ptr %81, i32 0, i32 9
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %82, %84
  store i32 %85, ptr %83, align 4
  %86 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 10
  %87 = load i8, ptr %86, align 2, !range !8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %75
  tail call fastcc void @mmc_blk_cqe_complete_rq(ptr noundef %5, ptr noundef %2)
  br label %91

90:                                               ; preds = %75
  tail call void @blk_mq_complete_request(ptr noundef %2) #16
  br label %91

91:                                               ; preds = %90, %89, %63
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_blk_mq_req_done(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -168
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 16
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 134217728
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 5
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #16
  %15 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 16
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 11
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 12
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = icmp eq i8 %18, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #16
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %21, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %106

22:                                               ; preds = %12
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.mmc_card, ptr %23, i32 0, i32 44
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 18
  %27 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %26) #16
  br label %106

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 3, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 3, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, -466092032
  %36 = icmp sgt i32 %34, -1
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %0, align 4
  %39 = icmp eq ptr %38, null
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi i1 [ false, %32 ], [ %39, %37 ]
  %42 = icmp eq i32 %35, 0
  %43 = select i1 %42, i1 true, i1 %41
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 -5, ptr %29, align 4
  br label %45

45:                                               ; preds = %44, %40, %28
  %46 = phi i32 [ %30, %28 ], [ 0, %40 ], [ -5, %44 ]
  %47 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 1, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %84

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 2, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  %54 = icmp eq i32 %46, 0
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %84

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 4, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 2, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, -466092032
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %60
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr inbounds %struct.mmc_card, ptr %66, i32 0, i32 4
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %65
  %71 = load ptr, ptr %66, align 8
  %72 = getelementptr inbounds %struct.mmc_host, ptr %71, i32 0, i32 16
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %70
  %77 = and i32 %62, 64
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.mmc_blk_request, ptr %0, i32 0, i32 3, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 64
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %79, %76, %60, %56, %50, %45
  %85 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 5
  %86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %85) #16
  %87 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 9
  store i8 1, ptr %87, align 1
  %88 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 15
  store ptr %2, ptr %88, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %85, i32 noundef %86) #16
  %89 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %89, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  %90 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 13
  %91 = load ptr, ptr @system_wq, align 4
  %92 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %91, ptr noundef %90) #16
  br label %106

93:                                               ; preds = %79, %70, %65
  %94 = getelementptr i8, ptr %0, i32 -156
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = select i1 %97, i32 -2, i32 -3
  %101 = getelementptr inbounds %struct.mmc_blk_data, ptr %99, i32 0, i32 9
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %100, %102
  store i32 %103, ptr %101, align 4
  %104 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 11
  store i8 0, ptr %104, align 1
  %105 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %105, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  tail call fastcc void @mmc_blk_mq_post_req(ptr noundef %5, ptr noundef %2, i1 noundef zeroext false)
  br label %106

106:                                              ; preds = %93, %84, %22, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_start_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_blk_probe(ptr noundef %0) #0 {
  %2 = alloca [32 x i8], align 1
  %3 = alloca [10 x i8], align 1
  %4 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 2
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %284, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19
  %10 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 6
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 40
  %14 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 7
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 32
  %18 = or i64 %17, %13
  %19 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 5
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i64
  %22 = shl nuw nsw i64 %21, 16
  %23 = or i64 %18, %22
  %24 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 8
  %25 = load i8, ptr %24, align 2
  %26 = zext i8 %25 to i64
  %27 = or i64 %23, %26
  %28 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 4
  %29 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1
  %30 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 30
  %31 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 30, i32 1
  %32 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21
  br label %33

33:                                               ; preds = %111, %8
  %34 = phi ptr [ getelementptr inbounds ([25 x %struct.mmc_fixup], ptr @mmc_blk_fixups, i32 0, i32 0, i32 9), %8 ], [ %113, %111 ]
  %35 = phi ptr [ @mmc_blk_fixups, %8 ], [ %112, %111 ]
  %36 = getelementptr inbounds %struct.mmc_fixup, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, ptr %9, align 4
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %111

42:                                               ; preds = %39, %33
  %43 = getelementptr inbounds %struct.mmc_fixup, ptr %35, i32 0, i32 4
  %44 = load i16, ptr %43, align 4
  %45 = icmp eq i16 %44, -1
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i16, ptr %28, align 4
  %48 = icmp eq i16 %44, %47
  br i1 %48, label %49, label %111

49:                                               ; preds = %46, %42
  %50 = load ptr, ptr %35, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @strncmp(ptr noundef nonnull %50, ptr noundef %29, i32 noundef 8) #16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %111

55:                                               ; preds = %52, %49
  %56 = getelementptr inbounds %struct.mmc_fixup, ptr %35, i32 0, i32 5
  %57 = load i16, ptr %56, align 2
  %58 = icmp eq i16 %57, -1
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i16, ptr %30, align 4
  %61 = icmp eq i16 %57, %60
  br i1 %61, label %62, label %111

62:                                               ; preds = %59, %55
  %63 = getelementptr inbounds %struct.mmc_fixup, ptr %35, i32 0, i32 6
  %64 = load i16, ptr %63, align 8
  %65 = icmp eq i16 %64, -1
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i16, ptr %31, align 2
  %68 = icmp eq i16 %64, %67
  br i1 %68, label %69, label %111

69:                                               ; preds = %66, %62
  %70 = getelementptr inbounds %struct.mmc_fixup, ptr %35, i32 0, i32 7
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i8, ptr %32, align 8
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %71, %75
  br i1 %76, label %77, label %111

77:                                               ; preds = %73, %69
  %78 = getelementptr inbounds %struct.mmc_fixup, ptr %35, i32 0, i32 1
  %79 = load i64, ptr %78, align 8
  %80 = icmp ult i64 %27, %79
  br i1 %80, label %111, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.mmc_fixup, ptr %35, i32 0, i32 2
  %83 = load i64, ptr %82, align 8
  %84 = icmp ugt i64 %27, %83
  br i1 %84, label %111, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.mmc_fixup, ptr %35, i32 0, i32 8
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %107, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %0, align 8
  %91 = load ptr, ptr %90, align 64
  %92 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 25
  %93 = load ptr, ptr %92, align 8
  %94 = tail call ptr @of_get_next_child(ptr noundef %93, ptr noundef null) #16
  %95 = icmp eq ptr %94, null
  br i1 %95, label %111, label %96

96:                                               ; preds = %100, %89
  %97 = phi ptr [ %105, %100 ], [ %94, %89 ]
  %98 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %97, ptr noundef nonnull %87) #16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load ptr, ptr %0, align 8
  %102 = load ptr, ptr %101, align 64
  %103 = getelementptr inbounds %struct.device, ptr %102, i32 0, i32 25
  %104 = load ptr, ptr %103, align 8
  %105 = tail call ptr @of_get_next_child(ptr noundef %104, ptr noundef nonnull %97) #16
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %96

107:                                              ; preds = %96, %85
  %108 = load ptr, ptr %34, align 4
  %109 = getelementptr inbounds %struct.mmc_fixup, ptr %35, i32 0, i32 10
  %110 = load i32, ptr %109, align 8
  tail call void %108(ptr noundef %0, i32 noundef %110) #16
  br label %111

111:                                              ; preds = %107, %100, %89, %81, %77, %73, %66, %59, %52, %46, %39
  %112 = getelementptr %struct.mmc_fixup, ptr %35, i32 1
  %113 = getelementptr %struct.mmc_fixup, ptr %35, i32 1, i32 9
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %33

116:                                              ; preds = %111
  %117 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.10, i32 noundef 24, i32 noundef 0) #16
  %118 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 44
  store ptr %117, ptr %118, align 4
  %119 = icmp eq ptr %117, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #18
  br label %284

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %124 = load i32, ptr %123, align 8
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %135, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 5
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 19
  %133 = load i32, ptr %132, align 8
  %134 = zext i32 %133 to i64
  br label %144

135:                                              ; preds = %126, %122
  %136 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 11
  %137 = load i32, ptr %136, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 9
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, -9
  %142 = zext i32 %141 to i64
  %143 = shl i64 %138, %142
  br label %144

144:                                              ; preds = %135, %131
  %145 = phi i64 [ %143, %135 ], [ %134, %131 ]
  %146 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1
  %147 = tail call fastcc ptr @mmc_blk_alloc_req(ptr noundef %0, ptr noundef %146, i64 noundef %145, i1 noundef zeroext false, ptr noundef null, i32 noundef 1, i32 noundef 0) #16
  %148 = icmp ugt ptr %147, inttoptr (i32 -4096 to ptr)
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = ptrtoint ptr %147 to i32
  br label %281

151:                                              ; preds = %144
  %152 = load i32, ptr %123, align 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %255

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 43
  %156 = load i32, ptr %155, align 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %255, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.mmc_blk_data, ptr %147, i32 0, i32 4
  %160 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1, i32 3
  %161 = getelementptr inbounds %struct.mmc_blk_data, ptr %147, i32 0, i32 1
  %162 = getelementptr inbounds %struct.mmc_blk_data, ptr %147, i32 0, i32 3
  br label %163

163:                                              ; preds = %249, %158
  %164 = phi i32 [ 0, %158 ], [ %250, %249 ]
  %165 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %164
  %166 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %164, i32 4
  %167 = load i32, ptr %166, align 4
  %168 = and i32 %167, 8
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %227, label %170

170:                                              ; preds = %163
  %171 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %164, i32 1
  %172 = load i32, ptr %171, align 8
  %173 = load i64, ptr %165, align 8
  %174 = lshr i64 %173, 9
  %175 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %164, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false) #16, !annotation !9
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %3, i8 0, i32 10, i1 false) #16, !annotation !9
  %176 = load i32, ptr @max_devices, align 4
  %177 = add i32 %176, -1
  %178 = call i32 @ida_alloc_range(ptr noundef nonnull @mmc_rpmb_ida, i32 noundef 0, i32 noundef %177, i32 noundef 3264) #16
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %219, label %180

180:                                              ; preds = %170
  %181 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %182 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %181, i32 noundef 3520, i32 noundef 552) #17
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  call void @ida_free(ptr noundef nonnull @mmc_rpmb_ida, i32 noundef %178) #16
  br label %219

185:                                              ; preds = %180
  %186 = load ptr, ptr %0, align 8
  %187 = getelementptr inbounds %struct.mmc_host, ptr %186, i32 0, i32 2
  %188 = load i32, ptr %187, align 32
  %189 = icmp eq ptr %175, null
  %190 = select i1 %189, ptr @.str.37, ptr %175
  %191 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.36, i32 noundef %188, ptr noundef %190) #16
  %192 = getelementptr inbounds %struct.mmc_rpmb_data, ptr %182, i32 0, i32 2
  store i32 %178, ptr %192, align 4
  %193 = getelementptr inbounds %struct.mmc_rpmb_data, ptr %182, i32 0, i32 3
  store i32 %172, ptr %193, align 8
  %194 = getelementptr inbounds %struct.device, ptr %182, i32 0, i32 3
  store ptr %2, ptr %194, align 4
  %195 = getelementptr inbounds %struct.device, ptr %182, i32 0, i32 5
  store ptr @mmc_rpmb_bus_type, ptr %195, align 4
  %196 = load i32, ptr @mmc_rpmb_devt, align 4
  %197 = and i32 %196, -1048576
  %198 = or i32 %197, %178
  %199 = getelementptr inbounds %struct.device, ptr %182, i32 0, i32 27
  store i32 %198, ptr %199, align 8
  %200 = getelementptr inbounds %struct.device, ptr %182, i32 0, i32 1
  store ptr %146, ptr %200, align 4
  %201 = getelementptr inbounds %struct.device, ptr %182, i32 0, i32 33
  store ptr @mmc_blk_rpmb_device_release, ptr %201, align 4
  call void @device_initialize(ptr noundef nonnull %182) #16
  %202 = getelementptr inbounds %struct.device, ptr %182, i32 0, i32 8
  store ptr %182, ptr %202, align 8
  %203 = getelementptr inbounds %struct.mmc_rpmb_data, ptr %182, i32 0, i32 4
  store ptr %147, ptr %203, align 4
  %204 = getelementptr inbounds %struct.mmc_rpmb_data, ptr %182, i32 0, i32 1
  call void @cdev_init(ptr noundef %204, ptr noundef nonnull @mmc_rpmb_fileops) #16
  %205 = getelementptr inbounds %struct.mmc_rpmb_data, ptr %182, i32 0, i32 1, i32 1
  store ptr null, ptr %205, align 4
  %206 = call i32 @cdev_device_add(ptr noundef %204, ptr noundef nonnull %182) #16
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %185
  %209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull %2) #18
  call void @put_device(ptr noundef nonnull %182) #16
  br label %219

210:                                              ; preds = %185
  %211 = getelementptr inbounds %struct.mmc_rpmb_data, ptr %182, i32 0, i32 5
  %212 = load ptr, ptr %159, align 4
  %213 = getelementptr inbounds %struct.list_head, ptr %212, i32 0, i32 1
  store ptr %211, ptr %213, align 4
  store ptr %212, ptr %211, align 8
  %214 = getelementptr inbounds %struct.mmc_rpmb_data, ptr %182, i32 0, i32 5, i32 1
  store ptr %159, ptr %214, align 4
  store volatile ptr %211, ptr %159, align 4
  call void @string_get_size(i64 noundef %174, i64 noundef 512, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 10) #16
  %215 = load ptr, ptr %160, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %221

217:                                              ; preds = %210
  %218 = load ptr, ptr %146, align 4
  br label %221

219:                                              ; preds = %208, %184, %170
  %220 = phi i32 [ -12, %184 ], [ %206, %208 ], [ %178, %170 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  br label %277

221:                                              ; preds = %217, %210
  %222 = phi ptr [ %218, %217 ], [ %215, %210 ]
  %223 = load i32, ptr @mmc_rpmb_devt, align 4
  %224 = lshr i32 %223, 20
  %225 = load i32, ptr %192, align 4
  %226 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull %2, ptr noundef %222, ptr noundef %29, ptr noundef nonnull %3, i32 noundef %224, i32 noundef %225) #18
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  br label %249

227:                                              ; preds = %163
  %228 = load i64, ptr %165, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %249, label %230

230:                                              ; preds = %227
  %231 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %164, i32 1
  %232 = load i32, ptr %231, align 8
  %233 = lshr i64 %228, 9
  %234 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %164, i32 3
  %235 = load i8, ptr %234, align 8, !range !8
  %236 = icmp ne i8 %235, 0
  %237 = getelementptr %struct.mmc_card, ptr %0, i32 0, i32 42, i32 %164, i32 2
  %238 = load ptr, ptr %161, align 4
  %239 = getelementptr inbounds %struct.gendisk, ptr %238, i32 0, i32 7
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr inbounds %struct.block_device, ptr %240, i32 0, i32 10
  %242 = call fastcc ptr @mmc_blk_alloc_req(ptr noundef %0, ptr noundef %241, i64 noundef %233, i1 noundef zeroext %236, ptr noundef %237, i32 noundef %167, i32 noundef %232) #16
  %243 = icmp ugt ptr %242, inttoptr (i32 -4096 to ptr)
  br i1 %243, label %253, label %244

244:                                              ; preds = %230
  %245 = getelementptr inbounds %struct.mmc_blk_data, ptr %242, i32 0, i32 3
  %246 = load ptr, ptr %162, align 4
  %247 = getelementptr inbounds %struct.list_head, ptr %246, i32 0, i32 1
  store ptr %245, ptr %247, align 4
  store ptr %246, ptr %245, align 4
  %248 = getelementptr inbounds %struct.mmc_blk_data, ptr %242, i32 0, i32 3, i32 1
  store ptr %162, ptr %248, align 4
  store volatile ptr %245, ptr %162, align 4
  br label %249

249:                                              ; preds = %244, %227, %221
  %250 = add nuw i32 %164, 1
  %251 = load i32, ptr %155, align 8
  %252 = icmp ult i32 %250, %251
  br i1 %252, label %163, label %255

253:                                              ; preds = %230
  %254 = ptrtoint ptr %242 to i32
  br label %277

255:                                              ; preds = %249, %154, %151
  %256 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 41
  %257 = load ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %272, label %259

259:                                              ; preds = %255
  %260 = load i32, ptr %123, align 8
  %261 = icmp ult i32 %260, 2
  br i1 %261, label %262, label %272

262:                                              ; preds = %259
  %263 = call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.48, i16 noundef zeroext 256, ptr noundef nonnull %257, ptr noundef %0, ptr noundef nonnull @mmc_dbg_card_status_fops) #16
  %264 = getelementptr inbounds %struct.mmc_blk_data, ptr %147, i32 0, i32 12
  store ptr %263, ptr %264, align 4
  %265 = icmp eq ptr %263, null
  br i1 %265, label %272, label %266

266:                                              ; preds = %262
  %267 = load i32, ptr %123, align 8
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext 256, ptr noundef nonnull %257, ptr noundef %0, ptr noundef nonnull @mmc_dbg_ext_csd_fops) #16
  %271 = getelementptr inbounds %struct.mmc_blk_data, ptr %147, i32 0, i32 13
  store ptr %270, ptr %271, align 4
  br label %272

272:                                              ; preds = %269, %266, %262, %259, %255
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %146, i32 noundef 3000) #16
  call void @__pm_runtime_use_autosuspend(ptr noundef %146, i1 noundef zeroext true) #16
  %273 = load i32, ptr %123, align 8
  %274 = icmp eq i32 %273, 3
  br i1 %274, label %284, label %275

275:                                              ; preds = %272
  %276 = call i32 @__pm_runtime_set_status(ptr noundef %146, i32 noundef 0) #16
  call void @pm_runtime_enable(ptr noundef %146) #16
  br label %284

277:                                              ; preds = %253, %219
  %278 = phi i32 [ %220, %219 ], [ %254, %253 ]
  call fastcc void @mmc_blk_remove_parts(ptr noundef %147)
  %279 = load ptr, ptr %161, align 4
  call void @del_gendisk(ptr noundef %279) #16
  %280 = getelementptr inbounds %struct.mmc_blk_data, ptr %147, i32 0, i32 2
  call void @mmc_cleanup_queue(ptr noundef %280) #16
  call fastcc void @mmc_blk_put(ptr noundef %147) #16
  br label %281

281:                                              ; preds = %277, %149
  %282 = phi i32 [ %150, %149 ], [ %278, %277 ]
  %283 = load ptr, ptr %118, align 4
  call void @destroy_workqueue(ptr noundef %283) #16
  br label %284

284:                                              ; preds = %281, %275, %272, %120, %1
  %285 = phi i32 [ %282, %281 ], [ -12, %120 ], [ -19, %1 ], [ 0, %275 ], [ 0, %272 ]
  ret i32 %285
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_blk_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 41
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %13 = or i1 %11, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void @debugfs_remove(ptr noundef nonnull %10) #16
  store ptr null, ptr %9, align 4
  br label %15

15:                                               ; preds = %14, %8
  %16 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %20 = or i1 %18, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void @debugfs_remove(ptr noundef nonnull %17) #16
  store ptr null, ptr %16, align 4
  br label %22

22:                                               ; preds = %21, %15, %1
  tail call fastcc void @mmc_blk_remove_parts(ptr noundef %4)
  %23 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #16
  %24 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %0, align 8
  %31 = tail call i32 @__mmc_claim_host(ptr noundef %30, ptr noundef null, ptr noundef null) #16
  %32 = load i32, ptr %26, align 4
  %33 = tail call fastcc i32 @mmc_blk_part_switch(ptr noundef %0, i32 noundef %32)
  %34 = load ptr, ptr %0, align 8
  tail call void @mmc_release_host(ptr noundef %34) #16
  br label %35

35:                                               ; preds = %29, %22
  %36 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #16
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #16, !srcloc !12
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 0, i32 -1, ptr elementtype(i32) %41) #16, !srcloc !13
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  br label %46

46:                                               ; preds = %45, %40
  %47 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void @del_gendisk(ptr noundef %48) #16
  %49 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 2
  tail call void @mmc_cleanup_queue(ptr noundef %49) #16
  tail call fastcc void @mmc_blk_put(ptr noundef %4) #16
  store ptr null, ptr %3, align 8
  %50 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 44
  %51 = load ptr, ptr %50, align 4
  tail call void @destroy_workqueue(ptr noundef %51) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_blk_shutdown(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 2
  tail call void @mmc_queue_suspend(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %15, label %10

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %13, %10 ], [ %8, %5 ]
  %12 = getelementptr i8, ptr %11, i32 -228
  tail call void @mmc_queue_suspend(ptr noundef %12) #16
  %13 = load ptr, ptr %11, align 4
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %15, label %10

15:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_blk_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 2
  tail call void @mmc_queue_suspend(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %15, label %10

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %13, %10 ], [ %8, %5 ]
  %12 = getelementptr i8, ptr %11, i32 -228
  tail call void @mmc_queue_suspend(ptr noundef %12) #16
  %13 = load ptr, ptr %11, align 4
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %15, label %10

15:                                               ; preds = %10, %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_blk_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 10
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 2
  tail call void @mmc_queue_resume(ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.mmc_blk_data, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %18, label %13

13:                                               ; preds = %13, %5
  %14 = phi ptr [ %16, %13 ], [ %11, %5 ]
  %15 = getelementptr i8, ptr %14, i32 -228
  tail call void @mmc_queue_resume(ptr noundef %15) #16
  %16 = load ptr, ptr %14, align 4
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %18, label %13

18:                                               ; preds = %13, %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_queue_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_queue_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_remove_parts(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_blk_data, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %14, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %6, i32 -544
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %7, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %12 = getelementptr i8, ptr %6, i32 -72
  tail call void @cdev_device_del(ptr noundef %12, ptr noundef %8) #16
  tail call void @put_device(ptr noundef %8) #16
  %13 = icmp eq ptr %7, %2
  br i1 %13, label %14, label %5

14:                                               ; preds = %5, %1
  %15 = getelementptr inbounds %struct.mmc_blk_data, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %29, label %18

18:                                               ; preds = %18, %14
  %19 = phi ptr [ %20, %18 ], [ %16, %14 ]
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %19, i32 -236
  %22 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %20, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  %25 = getelementptr i8, ptr %19, i32 -232
  %26 = load ptr, ptr %25, align 4
  tail call void @del_gendisk(ptr noundef %26) #16
  %27 = getelementptr i8, ptr %19, i32 -228
  tail call void @mmc_cleanup_queue(ptr noundef %27) #16
  tail call fastcc void @mmc_blk_put(ptr noundef %21) #16
  %28 = icmp eq ptr %20, %15
  br i1 %28, label %29, label %18

29:                                               ; preds = %18, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @add_quirk(ptr nocapture noundef %0, i32 noundef %1) #12 {
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 8
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @add_quirk_mmc(ptr nocapture noundef %0, i32 noundef %1) #12 {
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = or i32 %8, %1
  store i32 %9, ptr %7, align 8
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @add_quirk_sd(ptr nocapture noundef %0, i32 noundef %1) #12 {
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = or i32 %8, %1
  store i32 %9, ptr %7, align 8
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @mmc_blk_alloc_req(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %8) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %8, i8 0, i32 10, i1 false), !annotation !9
  %9 = load i32, ptr @max_devices, align 4
  %10 = add i32 %9, -1
  %11 = tail call i32 @ida_alloc_range(ptr noundef nonnull @mmc_blk_ida, i32 noundef 0, i32 noundef %10, i32 noundef 3264) #16
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = icmp eq i32 %11, -28
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = load ptr, ptr %0, align 8
  %17 = load ptr, ptr %16, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.35) #18
  br label %18

18:                                               ; preds = %15, %13
  %19 = inttoptr i32 %11 to ptr
  br label %160

20:                                               ; preds = %7
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 288) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %157, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mmc_blk_data, ptr %22, i32 0, i32 11
  store i32 %5, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 2
  %32 = load i16, ptr %31, align 2
  %33 = lshr i16 %32, 4
  %34 = and i16 %33, 1
  %35 = xor i16 %34, 1
  %36 = zext i16 %35 to i32
  br label %37

37:                                               ; preds = %30, %24
  %38 = phi i32 [ 1, %24 ], [ %36, %30 ]
  %39 = getelementptr inbounds %struct.mmc_blk_data, ptr %22, i32 0, i32 7
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mmc_blk_data, ptr %22, i32 0, i32 2
  %41 = tail call ptr @mmc_init_queue(ptr noundef %40, ptr noundef %0) #16
  %42 = getelementptr inbounds %struct.mmc_blk_data, ptr %22, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = ptrtoint ptr %41 to i32
  br label %155

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.mmc_blk_data, ptr %22, i32 0, i32 3
  store volatile ptr %47, ptr %47, align 4
  %48 = getelementptr inbounds %struct.mmc_blk_data, ptr %22, i32 0, i32 3, i32 1
  store ptr %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.mmc_blk_data, ptr %22, i32 0, i32 4
  store volatile ptr %49, ptr %49, align 4
  %50 = getelementptr inbounds %struct.mmc_blk_data, ptr %22, i32 0, i32 4, i32 1
  store ptr %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.mmc_blk_data, ptr %22, i32 0, i32 6
  store volatile i32 1, ptr %51, align 8
  %52 = getelementptr inbounds %struct.mmc_blk_data, ptr %22, i32 0, i32 2, i32 3
  store ptr %22, ptr %52, align 8
  %53 = getelementptr inbounds %struct.mmc_blk_data, ptr %22, i32 0, i32 8
  store i32 %6, ptr %53, align 8
  store i32 179, ptr %41, align 8
  %54 = load i32, ptr @perdev_minors, align 4
  %55 = load ptr, ptr %42, align 4
  %56 = getelementptr inbounds %struct.gendisk, ptr %55, i32 0, i32 2
  store i32 %54, ptr %56, align 8
  %57 = mul i32 %54, %11
  %58 = load ptr, ptr %42, align 4
  %59 = getelementptr inbounds %struct.gendisk, ptr %58, i32 0, i32 1
  store i32 %57, ptr %59, align 4
  %60 = load ptr, ptr %42, align 4
  %61 = getelementptr inbounds %struct.gendisk, ptr %60, i32 0, i32 8
  store ptr @mmc_bdops, ptr %61, align 8
  %62 = load ptr, ptr %42, align 4
  %63 = getelementptr inbounds %struct.gendisk, ptr %62, i32 0, i32 10
  store ptr %22, ptr %63, align 8
  store ptr %1, ptr %22, align 8
  %64 = load ptr, ptr %42, align 4
  %65 = load i32, ptr %39, align 4
  %66 = icmp ne i32 %65, 0
  %67 = or i1 %66, %3
  tail call void @set_disk_ro(ptr noundef %64, i1 noundef zeroext %67) #16
  %68 = and i32 %5, 10
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %46
  %71 = load ptr, ptr %42, align 4
  %72 = getelementptr inbounds %struct.gendisk, ptr %71, i32 0, i32 11
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 4
  store i32 %74, ptr %72, align 4
  br label %75

75:                                               ; preds = %70, %46
  %76 = load ptr, ptr %42, align 4
  %77 = getelementptr inbounds %struct.gendisk, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %0, align 8
  %79 = getelementptr inbounds %struct.mmc_host, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 32
  %81 = icmp eq ptr %4, null
  %82 = select i1 %81, ptr @.str.37, ptr %4
  %83 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %77, i32 noundef 32, ptr noundef nonnull @.str.36, i32 noundef %80, ptr noundef %82)
  %84 = load ptr, ptr %42, align 4
  tail call void @set_capacity(ptr noundef %84, i64 noundef %2) #16
  %85 = load ptr, ptr %0, align 8
  %86 = getelementptr inbounds %struct.mmc_host, ptr %85, i32 0, i32 16
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 1073741824
  %89 = icmp eq i32 %88, 0
  %90 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 4
  %91 = load i32, ptr %90, align 8
  br i1 %89, label %106, label %92

92:                                               ; preds = %75
  switch i32 %91, label %126 [
    i32 0, label %93
    i32 1, label %97
  ]

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 20, i32 1
  %95 = load i8, ptr %94, align 1
  %96 = icmp ugt i8 %95, 2
  br i1 %96, label %102, label %108

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 22, i32 5
  %99 = load i8, ptr %98, align 1
  %100 = and i8 %99, 2
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %126, label %102

102:                                              ; preds = %97, %93
  %103 = getelementptr inbounds %struct.mmc_blk_data, ptr %22, i32 0, i32 5
  %104 = load i32, ptr %103, align 4
  %105 = or i32 %104, 1
  store i32 %105, ptr %103, align 4
  br label %106

106:                                              ; preds = %102, %75
  %107 = icmp eq i32 %91, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %106, %93
  %109 = getelementptr inbounds %struct.mmc_blk_data, ptr %22, i32 0, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 4
  %115 = load i8, ptr %114, align 4
  %116 = and i8 %115, 4
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 21, i32 3
  %120 = load i8, ptr %119, align 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118, %113
  %123 = or i32 %110, 2
  store i32 %123, ptr %109, align 4
  %124 = getelementptr inbounds %struct.mmc_blk_data, ptr %22, i32 0, i32 2, i32 4
  %125 = load ptr, ptr %124, align 4
  tail call void @blk_queue_write_cache(ptr noundef %125, i1 noundef zeroext true, i1 noundef zeroext true) #16
  br label %126

126:                                              ; preds = %122, %118, %108, %106, %97, %92
  call void @string_get_size(i64 noundef %2, i64 noundef 512, i32 noundef 1, ptr noundef nonnull %8, i32 noundef 10) #16
  %127 = load ptr, ptr %42, align 4
  %128 = getelementptr inbounds %struct.gendisk, ptr %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1, i32 3
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  br label %135

135:                                              ; preds = %132, %126
  %136 = phi ptr [ %134, %132 ], [ %130, %126 ]
  %137 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 19, i32 1
  %138 = load i32, ptr %39, align 4
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, ptr @.str.37, ptr @.str.39
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %128, ptr noundef %136, ptr noundef %137, ptr noundef nonnull %8, ptr noundef nonnull %140) #18
  %142 = icmp eq i32 %5, 1
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1, i32 8
  store ptr %22, ptr %144, align 8
  br label %145

145:                                              ; preds = %143, %135
  %146 = load ptr, ptr %22, align 8
  %147 = load ptr, ptr %42, align 4
  %148 = call i32 @device_add_disk(ptr noundef %146, ptr noundef %147, ptr noundef nonnull @mmc_disk_attr_groups) #16
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %145
  %151 = load ptr, ptr %42, align 4
  %152 = getelementptr inbounds %struct.gendisk, ptr %151, i32 0, i32 9
  %153 = load ptr, ptr %152, align 4
  call void @blk_cleanup_queue(ptr noundef %153) #16
  %154 = getelementptr inbounds %struct.mmc_blk_data, ptr %22, i32 0, i32 2, i32 2
  call void @blk_mq_free_tag_set(ptr noundef %154) #16
  br label %155

155:                                              ; preds = %150, %44
  %156 = phi i32 [ %45, %44 ], [ %148, %150 ]
  call void @kfree(ptr noundef nonnull %22) #16
  br label %157

157:                                              ; preds = %155, %20
  %158 = phi i32 [ %156, %155 ], [ -12, %20 ]
  call void @ida_free(ptr noundef nonnull @mmc_blk_ida, i32 noundef %11) #16
  %159 = inttoptr i32 %158 to ptr
  br label %160

160:                                              ; preds = %157, %145, %18
  %161 = phi ptr [ %19, %18 ], [ %159, %157 ], [ %22, %145 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %8) #16
  ret ptr %161
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_init_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_write_cache(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @string_get_size(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_blk_open(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @open_lock) #16
  %5 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mmc_blk_data, ptr %6, i32 0, i32 6
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %22, %8
  %13 = phi i32 [ %20, %22 ], [ %10, %8 ]
  %14 = add i32 %13, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #16, !srcloc !12
  br label %15

15:                                               ; preds = %15, %12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 %13, i32 %14, ptr elementtype(i32) %9) #16, !srcloc !15
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = extractvalue { i32, i32 } %16, 1
  %21 = icmp eq i32 %20, %13
  br i1 %21, label %24, label %22, !prof !10

22:                                               ; preds = %19
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %24, label %12

24:                                               ; preds = %22, %19, %8
  %25 = phi i32 [ 0, %8 ], [ 0, %22 ], [ %13, %19 ]
  %26 = add i32 %25, 1
  %27 = or i32 %26, %25
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %30, label %29, !prof !10

29:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 0) #16
  br label %30

30:                                               ; preds = %29, %24
  %31 = icmp eq i32 %25, 0
  %32 = select i1 %31, ptr null, ptr %6
  br label %33

33:                                               ; preds = %30, %2
  %34 = phi ptr [ null, %2 ], [ %32, %30 ]
  tail call void @mutex_unlock(ptr noundef nonnull @open_lock) #16
  tail call void @mutex_lock(ptr noundef nonnull @block_mutex) #16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = and i32 %1, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.mmc_blk_data, ptr %34, i32 0, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call fastcc void @mmc_blk_put(ptr noundef nonnull %34)
  br label %44

44:                                               ; preds = %43, %39, %36, %33
  %45 = phi i32 [ -30, %43 ], [ 0, %39 ], [ 0, %36 ], [ -6, %33 ]
  tail call void @mutex_unlock(ptr noundef nonnull @block_mutex) #16
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_blk_release(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @block_mutex) #16
  tail call fastcc void @mmc_blk_put(ptr noundef %4)
  tail call void @mutex_unlock(ptr noundef nonnull @block_mutex) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_blk_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  switch i32 %2, label %85 [
    i32 -1068977408, label %5
    i32 -1073171711, label %45
  ]

5:                                                ; preds = %4
  %6 = tail call zeroext i1 @capable(i32 noundef 17) #16
  br i1 %6, label %7, label %85

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 15
  %9 = load i8, ptr %8, align 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %85

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %13 = load ptr, ptr %12, align 8
  tail call void @mutex_lock(ptr noundef nonnull @open_lock) #16
  %14 = getelementptr inbounds %struct.gendisk, ptr %13, i32 0, i32 10
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.mmc_blk_data, ptr %15, i32 0, i32 6
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %31, %17
  %22 = phi i32 [ %29, %31 ], [ %19, %17 ]
  %23 = add i32 %22, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #16, !srcloc !12
  br label %24

24:                                               ; preds = %24, %21
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 %22, i32 %23, ptr elementtype(i32) %18) #16, !srcloc !15
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %24

28:                                               ; preds = %24
  %29 = extractvalue { i32, i32 } %25, 1
  %30 = icmp eq i32 %29, %22
  br i1 %30, label %33, label %31, !prof !10

31:                                               ; preds = %28
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %33, label %21

33:                                               ; preds = %31, %28, %17
  %34 = phi i32 [ 0, %17 ], [ 0, %31 ], [ %22, %28 ]
  %35 = add i32 %34, 1
  %36 = or i32 %35, %34
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %39, label %38, !prof !10

38:                                               ; preds = %33
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef 0) #16
  br label %39

39:                                               ; preds = %38, %33
  %40 = icmp eq i32 %34, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %39, %11
  tail call void @mutex_unlock(ptr noundef nonnull @open_lock) #16
  br label %85

42:                                               ; preds = %39
  tail call void @mutex_unlock(ptr noundef nonnull @open_lock) #16
  %43 = inttoptr i32 %3 to ptr
  %44 = tail call fastcc i32 @mmc_blk_ioctl_cmd(ptr noundef nonnull %15, ptr noundef %43, ptr noundef null)
  tail call fastcc void @mmc_blk_put(ptr noundef nonnull %15)
  br label %85

45:                                               ; preds = %4
  %46 = tail call zeroext i1 @capable(i32 noundef 17) #16
  br i1 %46, label %47, label %85

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 15
  %49 = load i8, ptr %48, align 8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %53 = load ptr, ptr %52, align 8
  tail call void @mutex_lock(ptr noundef nonnull @open_lock) #16
  %54 = getelementptr inbounds %struct.gendisk, ptr %53, i32 0, i32 10
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %81, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.mmc_blk_data, ptr %55, i32 0, i32 6
  %59 = load volatile i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %71, %57
  %62 = phi i32 [ %69, %71 ], [ %59, %57 ]
  %63 = add i32 %62, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #16, !srcloc !12
  br label %64

64:                                               ; preds = %64, %61
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 %62, i32 %63, ptr elementtype(i32) %58) #16, !srcloc !15
  %66 = extractvalue { i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %64

68:                                               ; preds = %64
  %69 = extractvalue { i32, i32 } %65, 1
  %70 = icmp eq i32 %69, %62
  br i1 %70, label %73, label %71, !prof !10

71:                                               ; preds = %68
  %72 = icmp eq i32 %69, 0
  br i1 %72, label %73, label %61

73:                                               ; preds = %71, %68, %57
  %74 = phi i32 [ 0, %57 ], [ 0, %71 ], [ %62, %68 ]
  %75 = add i32 %74, 1
  %76 = or i32 %75, %74
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %79, label %78, !prof !10

78:                                               ; preds = %73
  tail call void @refcount_warn_saturate(ptr noundef %58, i32 noundef 0) #16
  br label %79

79:                                               ; preds = %78, %73
  %80 = icmp eq i32 %74, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %79, %51
  tail call void @mutex_unlock(ptr noundef nonnull @open_lock) #16
  br label %85

82:                                               ; preds = %79
  tail call void @mutex_unlock(ptr noundef nonnull @open_lock) #16
  %83 = inttoptr i32 %3 to ptr
  %84 = tail call fastcc i32 @mmc_blk_ioctl_multi_cmd(ptr noundef nonnull %55, ptr noundef %83, ptr noundef null)
  tail call fastcc void @mmc_blk_put(ptr noundef nonnull %55)
  br label %85

85:                                               ; preds = %82, %81, %47, %45, %42, %41, %7, %5, %4
  %86 = phi i32 [ %84, %82 ], [ %44, %42 ], [ -1, %7 ], [ -1, %47 ], [ -22, %4 ], [ -22, %41 ], [ -22, %81 ], [ -1, %5 ], [ -1, %45 ]
  ret i32 %86
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mmc_blk_getgeo(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #14 {
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = lshr i64 %8, 6
  %10 = trunc i64 %9 to i16
  %11 = getelementptr inbounds %struct.hd_geometry, ptr %1, i32 0, i32 2
  store i16 %10, ptr %11, align 2
  store i8 4, ptr %1, align 4
  %12 = getelementptr inbounds %struct.hd_geometry, ptr %1, i32 0, i32 1
  store i8 16, ptr %12, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_blk_alternative_gpt_sector(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @open_lock) #16
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 6
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %20, %6
  %11 = phi i32 [ %18, %20 ], [ %8, %6 ]
  %12 = add i32 %11, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #16, !srcloc !12
  br label %13

13:                                               ; preds = %13, %10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 %11, i32 %12, ptr elementtype(i32) %7) #16, !srcloc !15
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %13

17:                                               ; preds = %13
  %18 = extractvalue { i32, i32 } %14, 1
  %19 = icmp eq i32 %18, %11
  br i1 %19, label %22, label %20, !prof !10

20:                                               ; preds = %17
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %22, label %10

22:                                               ; preds = %20, %17, %6
  %23 = phi i32 [ 0, %6 ], [ 0, %20 ], [ %11, %17 ]
  %24 = add i32 %23, 1
  %25 = or i32 %24, %23
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %28, label %27, !prof !10

27:                                               ; preds = %22
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 0) #16
  br label %28

28:                                               ; preds = %27, %22
  %29 = icmp eq i32 %23, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %28, %2
  tail call void @mutex_unlock(ptr noundef nonnull @open_lock) #16
  br label %39

31:                                               ; preds = %28
  tail call void @mutex_unlock(ptr noundef nonnull @open_lock) #16
  %32 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @mmc_card_alternative_gpt_sector(ptr noundef nonnull %33, ptr noundef %1) #16
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %36, %35 ], [ -19, %31 ]
  tail call fastcc void @mmc_blk_put(ptr noundef nonnull %4)
  br label %39

39:                                               ; preds = %37, %30
  %40 = phi i32 [ %38, %37 ], [ -22, %30 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmc_blk_put(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmc_blk_data, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #16, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #16, !srcloc !17
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %19, label %8, !prof !10

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #16
  br label %19

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !18
  %10 = getelementptr %struct.mmc_blk_data, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr @perdev_minors, align 4
  %15 = sdiv i32 %13, %14
  tail call void @ida_free(ptr noundef nonnull @mmc_blk_ida, i32 noundef %15) #16
  tail call void @mutex_lock(ptr noundef nonnull @open_lock) #16
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 10
  store ptr null, ptr %17, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @open_lock) #16
  %18 = load ptr, ptr %10, align 4
  tail call void @put_disk(ptr noundef %18) #16
  tail call void @kfree(ptr noundef %0) #16
  br label %19

19:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_blk_ioctl_cmd(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [1 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = tail call fastcc ptr @mmc_blk_ioctl_copy_from_user(ptr noundef %1)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = ptrtoint ptr %5 to i32
  br label %43

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %5, i32 0, i32 3
  store ptr %2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.mmc_blk_data, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = ptrtoint ptr %12 to i32
  br label %36

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.mmc_blk_data, ptr %0, i32 0, i32 2, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %5, align 8
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 34, i32 35
  %22 = tail call ptr @blk_mq_alloc_request(ptr noundef %18, i32 noundef %21, i32 noundef 0) #16
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = ptrtoint ptr %22 to i32
  br label %36

26:                                               ; preds = %16
  store ptr %5, ptr %4, align 4
  %27 = icmp ne ptr %2, null
  %28 = zext i1 %27 to i32
  %29 = getelementptr %struct.request, ptr %22, i32 2, i32 22
  store i32 %28, ptr %29, align 4
  %30 = getelementptr %struct.request, ptr %22, i32 2, i32 23, i32 0, i32 1
  store ptr %4, ptr %30, align 4
  %31 = getelementptr %struct.request, ptr %22, i32 2, i32 24
  store i32 1, ptr %31, align 4
  %32 = call zeroext i8 @blk_execute_rq(ptr noundef %22, i1 noundef zeroext false) #16
  %33 = getelementptr %struct.request, ptr %22, i32 2, i32 23
  %34 = load i32, ptr %33, align 4
  %35 = call fastcc i32 @mmc_blk_ioctl_copy_to_user(ptr noundef %1, ptr noundef %5)
  call void @blk_mq_free_request(ptr noundef %22) #16
  br label %36

36:                                               ; preds = %26, %24, %14
  %37 = phi i32 [ %15, %14 ], [ %25, %24 ], [ %35, %26 ]
  %38 = phi i32 [ 0, %14 ], [ 0, %24 ], [ %34, %26 ]
  %39 = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %5, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  call void @kfree(ptr noundef %40) #16
  call void @kfree(ptr noundef %5) #16
  %41 = icmp eq i32 %38, 0
  %42 = select i1 %41, i32 %37, i32 %38
  br label %43

43:                                               ; preds = %36, %7
  %44 = phi i32 [ %8, %7 ], [ %42, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_blk_ioctl_multi_cmd(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.mmc_ioc_multi_cmd, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8, !annotation !9
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #19, !srcloc !19
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !10

9:                                                ; preds = %3
  %10 = tail call ptr @llvm.thread.pointer() #16
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #20, !srcloc !20
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %15 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 8) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #16, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !10

17:                                               ; preds = %9, %3
  %18 = phi i32 [ %15, %9 ], [ 8, %3 ]
  %19 = sub i32 8, %18
  %20 = getelementptr i8, ptr %4, i32 %19
  call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %18, i1 false) #16
  br label %116

21:                                               ; preds = %9
  %22 = load i64, ptr %4, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %116, label %24

24:                                               ; preds = %21
  %25 = icmp ugt i64 %22, 255
  br i1 %25, label %116, label %26

26:                                               ; preds = %24
  %27 = trunc i64 %22 to i32
  %28 = shl nuw nsw i32 %27, 2
  %29 = call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %116, label %31

31:                                               ; preds = %26
  %32 = load i64, ptr %4, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %43, %31
  %35 = phi i64 [ %46, %43 ], [ 0, %31 ]
  %36 = trunc i64 %35 to i32
  %37 = getelementptr %struct.mmc_ioc_cmd, ptr %5, i32 %36
  %38 = call fastcc ptr @mmc_blk_ioctl_copy_from_user(ptr noundef %37)
  %39 = getelementptr ptr, ptr %29, i32 %36
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = ptrtoint ptr %38 to i32
  store i64 %35, ptr %4, align 8
  br label %97

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %38, i32 0, i32 3
  store ptr %2, ptr %44, align 8
  %45 = add i32 %36, 1
  %46 = sext i32 %45 to i64
  %47 = load i64, ptr %4, align 8
  %48 = icmp ugt i64 %47, %46
  br i1 %48, label %34, label %49

49:                                               ; preds = %43, %31
  %50 = getelementptr inbounds %struct.mmc_blk_data, ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = ptrtoint ptr %51 to i32
  br label %93

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.mmc_blk_data, ptr %0, i32 0, i32 2, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %29, align 64
  %59 = load i32, ptr %58, align 8
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 34, i32 35
  %62 = call ptr @blk_mq_alloc_request(ptr noundef %57, i32 noundef %61, i32 noundef 0) #16
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = ptrtoint ptr %62 to i32
  br label %93

66:                                               ; preds = %55
  %67 = icmp ne ptr %2, null
  %68 = zext i1 %67 to i32
  %69 = getelementptr %struct.request, ptr %62, i32 2, i32 22
  store i32 %68, ptr %69, align 4
  %70 = getelementptr %struct.request, ptr %62, i32 2, i32 23, i32 0, i32 1
  store ptr %29, ptr %70, align 4
  %71 = load i64, ptr %4, align 8
  %72 = trunc i64 %71 to i32
  %73 = getelementptr %struct.request, ptr %62, i32 2, i32 24
  store i32 %72, ptr %73, align 4
  %74 = call zeroext i8 @blk_execute_rq(ptr noundef %62, i1 noundef zeroext false) #16
  %75 = getelementptr %struct.request, ptr %62, i32 2, i32 23
  %76 = load i32, ptr %75, align 4
  %77 = load i64, ptr %4, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %79, %66
  %80 = phi i32 [ %85, %79 ], [ 0, %66 ]
  %81 = getelementptr %struct.mmc_ioc_cmd, ptr %5, i32 %80
  %82 = getelementptr ptr, ptr %29, i32 %80
  %83 = load ptr, ptr %82, align 4
  %84 = call fastcc i32 @mmc_blk_ioctl_copy_to_user(ptr noundef %81, ptr noundef %83)
  %85 = add i32 %80, 1
  %86 = sext i32 %85 to i64
  %87 = load i64, ptr %4, align 8
  %88 = icmp ugt i64 %87, %86
  %89 = icmp eq i32 %84, 0
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %79, label %91

91:                                               ; preds = %79, %66
  %92 = phi i32 [ 0, %66 ], [ %84, %79 ]
  call void @blk_mq_free_request(ptr noundef %62) #16
  br label %93

93:                                               ; preds = %91, %64, %53
  %94 = phi i32 [ %92, %91 ], [ %65, %64 ], [ %54, %53 ]
  %95 = phi i32 [ %76, %91 ], [ 0, %64 ], [ 0, %53 ]
  %96 = load i64, ptr %4, align 8
  br label %97

97:                                               ; preds = %93, %41
  %98 = phi i64 [ %96, %93 ], [ %35, %41 ]
  %99 = phi i32 [ %94, %93 ], [ %42, %41 ]
  %100 = phi i32 [ %95, %93 ], [ 0, %41 ]
  %101 = icmp eq i64 %98, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %102, %97
  %103 = phi i32 [ %109, %102 ], [ 0, %97 ]
  %104 = getelementptr ptr, ptr %29, i32 %103
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %105, i32 0, i32 1
  %107 = load ptr, ptr %106, align 8
  call void @kfree(ptr noundef %107) #16
  %108 = load ptr, ptr %104, align 4
  call void @kfree(ptr noundef %108) #16
  %109 = add i32 %103, 1
  %110 = sext i32 %109 to i64
  %111 = load i64, ptr %4, align 8
  %112 = icmp ugt i64 %111, %110
  br i1 %112, label %102, label %113

113:                                              ; preds = %102, %97
  call void @kfree(ptr noundef nonnull %29) #16
  %114 = icmp eq i32 %100, 0
  %115 = select i1 %114, i32 %99, i32 %100
  br label %116

116:                                              ; preds = %113, %26, %24, %21, %17
  %117 = phi i32 [ %115, %113 ], [ 0, %21 ], [ -22, %24 ], [ -12, %26 ], [ -14, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @mmc_blk_ioctl_copy_from_user(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 96) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %1
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 72, i32 -1090519040) #19, !srcloc !19
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !10

9:                                                ; preds = %5
  %10 = tail call ptr @llvm.thread.pointer() #16
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #20, !srcloc !20
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %15 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 72) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !10

17:                                               ; preds = %9, %5
  %18 = phi i32 [ %15, %9 ], [ 72, %5 ]
  %19 = sub i32 72, %18
  %20 = getelementptr i8, ptr %3, i32 %19
  tail call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %18, i1 false) #16
  br label %46

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %3, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %3, i32 0, i32 7
  %26 = load i32, ptr %25, align 8
  %27 = zext i32 %26 to i64
  %28 = mul nuw i64 %27, %24
  %29 = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %3, i32 0, i32 2
  store i64 %28, ptr %29, align 8
  %30 = icmp ugt i64 %28, 524288
  br i1 %30, label %46, label %31

31:                                               ; preds = %21
  %32 = icmp eq i64 %28, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %3, i32 0, i32 1
  store ptr null, ptr %34, align 8
  br label %51

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %3, i32 0, i32 13
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = inttoptr i32 %38 to ptr
  %40 = trunc i64 %28 to i32
  %41 = tail call ptr @memdup_user(ptr noundef %39, i32 noundef %40) #16
  %42 = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %3, i32 0, i32 1
  store ptr %41, ptr %42, align 8
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = ptrtoint ptr %41 to i32
  br label %46

46:                                               ; preds = %44, %21, %17
  %47 = phi i32 [ %45, %44 ], [ -75, %21 ], [ -14, %17 ]
  tail call void @kfree(ptr noundef nonnull %3) #16
  br label %48

48:                                               ; preds = %46, %1
  %49 = phi i32 [ %47, %46 ], [ -12, %1 ]
  %50 = inttoptr i32 %49 to ptr
  br label %51

51:                                               ; preds = %48, %35, %33
  %52 = phi ptr [ %50, %48 ], [ %3, %33 ], [ %3, %35 ]
  ret ptr %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_execute_rq(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmc_blk_ioctl_copy_to_user(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %0, i32 0, i32 4
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 16, i32 -1090519040) #19, !srcloc !23
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %1, i32 0, i32 4
  %9 = tail call ptr @llvm.thread.pointer() #16
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #20, !srcloc !20
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %14 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %8, i32 noundef 16) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %7
  %17 = load i32, ptr %1, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.mmc_ioc_cmd, ptr %1, i32 0, i32 13
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.mmc_blk_ioc_data, ptr %1, i32 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = icmp slt i32 %28, 0
  %30 = load i1, ptr @check_copy_size.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !24

33:                                               ; preds = %19
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %34

34:                                               ; preds = %33, %19
  br i1 %29, label %48, label %35, !prof !24

35:                                               ; preds = %34
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 %28, i32 -1090519040) #19, !srcloc !23
  %37 = extractvalue { i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #20, !srcloc !20
  %41 = and i32 %40, -13
  %42 = or i32 %41, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  %43 = tail call i32 @arm_copy_to_user(ptr noundef %23, ptr noundef %25, i32 noundef %28) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #16, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !22
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i32 [ %43, %39 ], [ %28, %35 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %16
  br label %48

48:                                               ; preds = %47, %44, %34, %7, %2
  %49 = phi i32 [ 0, %47 ], [ -14, %7 ], [ -14, %44 ], [ -14, %2 ], [ -14, %34 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_card_alternative_gpt_sector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @mmc_disk_attrs_is_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  tail call void @mutex_lock(ptr noundef nonnull @open_lock) #16
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mmc_blk_data, ptr %7, i32 0, i32 6
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %23, %9
  %14 = phi i32 [ %21, %23 ], [ %11, %9 ]
  %15 = add i32 %14, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #16, !srcloc !12
  br label %16

16:                                               ; preds = %16, %13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 %14, i32 %15, ptr elementtype(i32) %10) #16, !srcloc !15
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16
  %21 = extractvalue { i32, i32 } %17, 1
  %22 = icmp eq i32 %21, %14
  br i1 %22, label %25, label %23, !prof !10

23:                                               ; preds = %20
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %13

25:                                               ; preds = %23, %20, %9
  %26 = phi i32 [ 0, %9 ], [ 0, %23 ], [ %14, %20 ]
  %27 = add i32 %26, 1
  %28 = or i32 %27, %26
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %31, label %30, !prof !10

30:                                               ; preds = %25
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 0) #16
  br label %31

31:                                               ; preds = %30, %25
  %32 = icmp eq i32 %26, 0
  %33 = select i1 %32, ptr null, ptr %7
  br label %34

34:                                               ; preds = %31, %3
  %35 = phi ptr [ null, %3 ], [ %33, %31 ]
  tail call void @mutex_unlock(ptr noundef nonnull @open_lock) #16
  %36 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %37 = load i16, ptr %36, align 4
  %38 = icmp eq ptr %1, @dev_attr_ro_lock_until_next_power_on
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.mmc_blk_data, ptr %35, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.mmc_blk_data, ptr %35, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.mmc_card, ptr %46, i32 0, i32 21, i32 38
  %48 = load i8, ptr %47, align 8, !range !8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.mmc_card, ptr %46, i32 0, i32 21, i32 37
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 64
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i16 420, i16 292
  br label %56

56:                                               ; preds = %50, %44, %39, %34
  %57 = phi i16 [ %37, %44 ], [ %37, %39 ], [ %37, %34 ], [ %55, %50 ]
  tail call fastcc void @mmc_blk_put(ptr noundef %35)
  ret i16 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @power_ro_lock_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  tail call void @mutex_lock(ptr noundef nonnull @open_lock) #16
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mmc_blk_data, ptr %7, i32 0, i32 6
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %23, %9
  %14 = phi i32 [ %21, %23 ], [ %11, %9 ]
  %15 = add i32 %14, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #16, !srcloc !12
  br label %16

16:                                               ; preds = %16, %13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 %14, i32 %15, ptr elementtype(i32) %10) #16, !srcloc !15
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16
  %21 = extractvalue { i32, i32 } %17, 1
  %22 = icmp eq i32 %21, %14
  br i1 %22, label %25, label %23, !prof !10

23:                                               ; preds = %20
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %13

25:                                               ; preds = %23, %20, %9
  %26 = phi i32 [ 0, %9 ], [ 0, %23 ], [ %14, %20 ]
  %27 = add i32 %26, 1
  %28 = or i32 %27, %26
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %31, label %30, !prof !10

30:                                               ; preds = %25
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 0) #16
  br label %31

31:                                               ; preds = %30, %25
  %32 = icmp eq i32 %26, 0
  %33 = select i1 %32, ptr null, ptr %7
  br label %34

34:                                               ; preds = %31, %3
  %35 = phi ptr [ null, %3 ], [ %33, %31 ]
  tail call void @mutex_unlock(ptr noundef nonnull @open_lock) #16
  %36 = getelementptr inbounds %struct.mmc_blk_data, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.mmc_card, ptr %37, i32 0, i32 21, i32 37
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  %42 = and i32 %39, 1
  %43 = select i1 %41, i32 %42, i32 2
  %44 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.43, i32 noundef %43)
  tail call fastcc void @mmc_blk_put(ptr noundef %35)
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @power_ro_lock_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %81

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %81

11:                                               ; preds = %8
  %12 = getelementptr i8, ptr %0, i32 496
  %13 = load ptr, ptr %12, align 8
  call void @mutex_lock(ptr noundef nonnull @open_lock) #16
  %14 = getelementptr inbounds %struct.gendisk, ptr %13, i32 0, i32 10
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %42, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.mmc_blk_data, ptr %15, i32 0, i32 6
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %31, %17
  %22 = phi i32 [ %29, %31 ], [ %19, %17 ]
  %23 = add i32 %22, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #16, !srcloc !12
  br label %24

24:                                               ; preds = %24, %21
  %25 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 %22, i32 %23, ptr elementtype(i32) %18) #16, !srcloc !15
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %24

28:                                               ; preds = %24
  %29 = extractvalue { i32, i32 } %25, 1
  %30 = icmp eq i32 %29, %22
  br i1 %30, label %33, label %31, !prof !10

31:                                               ; preds = %28
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %33, label %21

33:                                               ; preds = %31, %28, %17
  %34 = phi i32 [ 0, %17 ], [ 0, %31 ], [ %22, %28 ]
  %35 = add i32 %34, 1
  %36 = or i32 %35, %34
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %39, label %38, !prof !10

38:                                               ; preds = %33
  call void @refcount_warn_saturate(ptr noundef %18, i32 noundef 0) #16
  br label %39

39:                                               ; preds = %38, %33
  %40 = icmp eq i32 %34, 0
  %41 = select i1 %40, ptr null, ptr %15
  br label %42

42:                                               ; preds = %39, %11
  %43 = phi ptr [ null, %11 ], [ %41, %39 ]
  call void @mutex_unlock(ptr noundef nonnull @open_lock) #16
  %44 = getelementptr inbounds %struct.mmc_blk_data, ptr %43, i32 0, i32 2, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = call ptr @blk_mq_alloc_request(ptr noundef %45, i32 noundef 35, i32 noundef 0) #16
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = ptrtoint ptr %46 to i32
  br label %79

50:                                               ; preds = %42
  %51 = getelementptr %struct.request, ptr %46, i32 2, i32 22
  store i32 2, ptr %51, align 4
  %52 = call zeroext i8 @blk_execute_rq(ptr noundef %46, i1 noundef zeroext false) #16
  %53 = getelementptr %struct.request, ptr %46, i32 2, i32 23
  %54 = load i32, ptr %53, align 4
  call void @blk_mq_free_request(ptr noundef %46) #16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.mmc_blk_data, ptr %43, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.gendisk, ptr %58, i32 0, i32 3
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %59) #18
  %61 = load ptr, ptr %57, align 4
  call void @set_disk_ro(ptr noundef %61, i1 noundef zeroext true) #16
  %62 = getelementptr inbounds %struct.mmc_blk_data, ptr %43, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %79, label %65

65:                                               ; preds = %76, %56
  %66 = phi ptr [ %77, %76 ], [ %63, %56 ]
  %67 = getelementptr i8, ptr %66, i32 40
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = getelementptr i8, ptr %66, i32 -232
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.gendisk, ptr %72, i32 0, i32 3
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %73) #18
  %75 = load ptr, ptr %71, align 4
  call void @set_disk_ro(ptr noundef %75, i1 noundef zeroext true) #16
  br label %76

76:                                               ; preds = %70, %65
  %77 = load ptr, ptr %66, align 4
  %78 = icmp eq ptr %77, %62
  br i1 %78, label %79, label %65

79:                                               ; preds = %76, %56, %50, %48
  %80 = phi i32 [ %49, %48 ], [ %3, %50 ], [ %3, %56 ], [ %3, %76 ]
  call fastcc void @mmc_blk_put(ptr noundef %43)
  br label %81

81:                                               ; preds = %79, %8, %4
  %82 = phi i32 [ %80, %79 ], [ -22, %4 ], [ %3, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @force_ro_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  tail call void @mutex_lock(ptr noundef nonnull @open_lock) #16
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.mmc_blk_data, ptr %7, i32 0, i32 6
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %23, %9
  %14 = phi i32 [ %21, %23 ], [ %11, %9 ]
  %15 = add i32 %14, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #16, !srcloc !12
  br label %16

16:                                               ; preds = %16, %13
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 %14, i32 %15, ptr elementtype(i32) %10) #16, !srcloc !15
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16
  %21 = extractvalue { i32, i32 } %17, 1
  %22 = icmp eq i32 %21, %14
  br i1 %22, label %25, label %23, !prof !10

23:                                               ; preds = %20
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %13

25:                                               ; preds = %23, %20, %9
  %26 = phi i32 [ 0, %9 ], [ 0, %23 ], [ %14, %20 ]
  %27 = add i32 %26, 1
  %28 = or i32 %27, %26
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %31, label %30, !prof !10

30:                                               ; preds = %25
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 0) #16
  br label %31

31:                                               ; preds = %30, %25
  %32 = icmp eq i32 %26, 0
  %33 = select i1 %32, ptr null, ptr %7
  br label %34

34:                                               ; preds = %31, %3
  %35 = phi ptr [ null, %3 ], [ %33, %31 ]
  tail call void @mutex_unlock(ptr noundef nonnull @open_lock) #16
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.gendisk, ptr %36, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.block_device, ptr %38, i32 0, i32 4
  %40 = load i8, ptr %39, align 8, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.gendisk, ptr %36, i32 0, i32 12
  %44 = load volatile i32, ptr %43, align 4
  %45 = lshr i32 %44, 1
  %46 = and i32 %45, 1
  br label %47

47:                                               ; preds = %42, %34
  %48 = phi i32 [ 1, %34 ], [ %46, %42 ]
  %49 = getelementptr inbounds %struct.mmc_blk_data, ptr %35, i32 0, i32 7
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, %48
  %52 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.43, i32 noundef %51)
  tail call fastcc void @mmc_blk_put(ptr noundef %35)
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @force_ro_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  %6 = getelementptr i8, ptr %0, i32 496
  %7 = load ptr, ptr %6, align 8
  tail call void @mutex_lock(ptr noundef nonnull @open_lock) #16
  %8 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.mmc_blk_data, ptr %9, i32 0, i32 6
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %25, %11
  %16 = phi i32 [ %23, %25 ], [ %13, %11 ]
  %17 = add i32 %16, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #16, !srcloc !12
  br label %18

18:                                               ; preds = %18, %15
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 %16, i32 %17, ptr elementtype(i32) %12) #16, !srcloc !15
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %18

22:                                               ; preds = %18
  %23 = extractvalue { i32, i32 } %19, 1
  %24 = icmp eq i32 %23, %16
  br i1 %24, label %27, label %25, !prof !10

25:                                               ; preds = %22
  %26 = icmp eq i32 %23, 0
  br i1 %26, label %27, label %15

27:                                               ; preds = %25, %22, %11
  %28 = phi i32 [ 0, %11 ], [ 0, %25 ], [ %16, %22 ]
  %29 = add i32 %28, 1
  %30 = or i32 %29, %28
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %33, label %32, !prof !10

32:                                               ; preds = %27
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 0) #16
  br label %33

33:                                               ; preds = %32, %27
  %34 = icmp eq i32 %28, 0
  %35 = select i1 %34, ptr null, ptr %9
  br label %36

36:                                               ; preds = %33, %4
  %37 = phi ptr [ null, %4 ], [ %35, %33 ]
  tail call void @mutex_unlock(ptr noundef nonnull @open_lock) #16
  %38 = call i32 @simple_strtoul(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 0) #16
  %39 = load ptr, ptr %5, align 4
  %40 = icmp eq ptr %39, %2
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %6, align 8
  %43 = icmp eq i32 %38, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.mmc_blk_data, ptr %37, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ true, %41 ], [ %47, %44 ]
  call void @set_disk_ro(ptr noundef %42, i1 noundef zeroext %49) #16
  br label %50

50:                                               ; preds = %48, %36
  %51 = phi i32 [ %3, %48 ], [ -22, %36 ]
  call fastcc void @mmc_blk_put(ptr noundef %37)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_blk_rpmb_device_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_rpmb_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  tail call void @ida_free(ptr noundef nonnull @mmc_rpmb_ida, i32 noundef %5) #16
  tail call void @kfree(ptr noundef %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_rpmb_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  switch i32 %1, label %16 [
    i32 -1068977408, label %6
    i32 -1073171711, label %11
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mmc_rpmb_data, ptr %5, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = inttoptr i32 %2 to ptr
  %10 = tail call fastcc i32 @mmc_blk_ioctl_cmd(ptr noundef %8, ptr noundef %9, ptr noundef %5)
  br label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.mmc_rpmb_data, ptr %5, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = inttoptr i32 %2 to ptr
  %15 = tail call fastcc i32 @mmc_blk_ioctl_multi_cmd(ptr noundef %13, ptr noundef %14, ptr noundef %5)
  br label %16

16:                                               ; preds = %11, %6, %3
  %17 = phi i32 [ %15, %11 ], [ %10, %6 ], [ -22, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_rpmb_chrdev_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -472
  %6 = tail call ptr @get_device(ptr noundef %5) #16
  %7 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %5, ptr %7, align 8
  %8 = getelementptr i8, ptr %4, i32 68
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mmc_blk_data, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @mutex_lock(ptr noundef nonnull @open_lock) #16
  %12 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 10
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.mmc_blk_data, ptr %13, i32 0, i32 6
  %17 = load volatile i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %29, %15
  %20 = phi i32 [ %27, %29 ], [ %17, %15 ]
  %21 = add i32 %20, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #16, !srcloc !12
  br label %22

22:                                               ; preds = %22, %19
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 %20, i32 %21, ptr elementtype(i32) %16) #16, !srcloc !15
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22
  %27 = extractvalue { i32, i32 } %23, 1
  %28 = icmp eq i32 %27, %20
  br i1 %28, label %31, label %29, !prof !10

29:                                               ; preds = %26
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %31, label %19

31:                                               ; preds = %29, %26, %15
  %32 = phi i32 [ 0, %15 ], [ 0, %29 ], [ %20, %26 ]
  %33 = add i32 %32, 1
  %34 = or i32 %33, %32
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %37, label %36, !prof !10

36:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef 0) #16
  br label %37

37:                                               ; preds = %36, %31, %2
  tail call void @mutex_unlock(ptr noundef nonnull @open_lock) #16
  %38 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #16
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_rpmb_chrdev_release(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -472
  %6 = getelementptr i8, ptr %4, i32 68
  %7 = load ptr, ptr %6, align 4
  tail call fastcc void @mmc_blk_put(ptr noundef %7)
  tail call void @put_device(ptr noundef %5) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_dbg_card_status_fops_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @mmc_dbg_card_status_get, ptr noundef null, ptr noundef nonnull @.str.50) #16
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_dbg_card_status_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_card, ptr %0, i32 0, i32 1, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_blk_data, ptr %4, i32 0, i32 2, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @blk_mq_alloc_request(ptr noundef %6, i32 noundef 34, i32 noundef 0) #16
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %7 to i32
  br label %21

11:                                               ; preds = %2
  %12 = getelementptr %struct.request, ptr %7, i32 2, i32 22
  store i32 3, ptr %12, align 4
  %13 = tail call zeroext i8 @blk_execute_rq(ptr noundef %7, i1 noundef zeroext false) #16
  %14 = getelementptr %struct.request, ptr %7, i32 2, i32 23
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = zext i32 %15 to i64
  store i64 %18, ptr %1, align 8
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi i32 [ 0, %17 ], [ %15, %11 ]
  tail call void @blk_mq_free_request(ptr noundef %7) #16
  br label %21

21:                                               ; preds = %19, %9
  %22 = phi i32 [ %10, %9 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_ext_csd_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %6, i32 noundef 1025) #16
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_ext_csd_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 1, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4, !annotation !9
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 1026) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mmc_blk_data, ptr %7, i32 0, i32 2, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @blk_mq_alloc_request(ptr noundef %13, i32 noundef 34, i32 noundef 0) #16
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = ptrtoint ptr %14 to i32
  br label %47

18:                                               ; preds = %11
  %19 = getelementptr %struct.request, ptr %14, i32 2, i32 22
  store i32 4, ptr %19, align 4
  %20 = getelementptr %struct.request, ptr %14, i32 2, i32 23, i32 0, i32 1
  store ptr %3, ptr %20, align 4
  %21 = call zeroext i8 @blk_execute_rq(ptr noundef %14, i1 noundef zeroext false) #16
  %22 = getelementptr %struct.request, ptr %14, i32 2, i32 23
  %23 = load i32, ptr %22, align 4
  call void @blk_mq_free_request(ptr noundef %14) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %23) #18
  br label %47

27:                                               ; preds = %27, %18
  %28 = phi i32 [ %37, %27 ], [ 0, %18 ]
  %29 = phi i32 [ %36, %27 ], [ 0, %18 ]
  %30 = getelementptr i8, ptr %9, i32 %29
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr i8, ptr %31, i32 %28
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %30, ptr noundef nonnull @.str.52, i32 noundef %34)
  %36 = add i32 %35, %29
  %37 = add nuw nsw i32 %28, 1
  %38 = icmp eq i32 %37, 512
  br i1 %38, label %39, label %27

39:                                               ; preds = %27
  %40 = getelementptr i8, ptr %9, i32 %36
  store i16 10, ptr %40, align 1
  %41 = icmp eq i32 %36, 1024
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %43) #16
  br label %47

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %9, ptr %45, align 8
  %46 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %46) #16
  br label %49

47:                                               ; preds = %42, %25, %16
  %48 = phi i32 [ %17, %16 ], [ %23, %25 ], [ -22, %42 ]
  call void @kfree(ptr noundef nonnull %9) #16
  br label %49

49:                                               ; preds = %47, %44, %2
  %50 = phi i32 [ %48, %47 ], [ 0, %44 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_ext_csd_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_cleanup_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind readonly }
attributes #21 = { nounwind allocsize(0) }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148022774}
!12 = !{i64 521084, i64 2148011055, i64 2148011081, i64 2148011128, i64 2148011150, i64 2148011178, i64 2148011198}
!13 = !{i64 507653, i64 507678, i64 507700, i64 507716, i64 507728, i64 507748, i64 507772, i64 507788, i64 507800}
!14 = !{i64 2148022900}
!15 = !{i64 507147, i64 507171, i64 507192, i64 507209, i64 507226}
!16 = !{i64 2148124923}
!17 = !{i64 2148027082, i64 2148027114, i64 2148027143, i64 2148027177, i64 2148027208, i64 2148027231}
!18 = !{i64 2149092506}
!19 = !{i64 2151304976, i64 2151305001}
!20 = !{i64 3801088}
!21 = !{i64 3801285}
!22 = !{i64 2151286564}
!23 = !{i64 2151305554, i64 2151305579}
!24 = !{!"branch_weights", i32 1, i32 2000}
