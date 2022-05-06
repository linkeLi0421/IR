; ModuleID = '/llk/IR/block/genhd.c_pt.bc'
source_filename = "../block/genhd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_capacity:\09\09\09\09\09"
module asm "\09.asciz \09\22set_capacity\22\09\09\09\09\09"
module asm "__kstrtabns_set_capacity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_capacity_and_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22set_capacity_and_notify\22\09\09\09\09\09"
module asm "__kstrtabns_set_capacity_and_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bdevname:\09\09\09\09\09"
module asm "\09.asciz \09\22bdevname\22\09\09\09\09\09"
module asm "__kstrtabns_bdevname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___register_blkdev:\09\09\09\09\09"
module asm "\09.asciz \09\22__register_blkdev\22\09\09\09\09\09"
module asm "__kstrtabns___register_blkdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_blkdev:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_blkdev\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_blkdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disk_uevent:\09\09\09\09\09"
module asm "\09.asciz \09\22disk_uevent\22\09\09\09\09\09"
module asm "__kstrtabns_disk_uevent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_add_disk:\09\09\09\09\09"
module asm "\09.asciz \09\22device_add_disk\22\09\09\09\09\09"
module asm "__kstrtabns_device_add_disk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mark_disk_dead:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mark_disk_dead\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mark_disk_dead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_del_gendisk:\09\09\09\09\09"
module asm "\09.asciz \09\22del_gendisk\22\09\09\09\09\09"
module asm "__kstrtabns_del_gendisk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_invalidate_disk:\09\09\09\09\09"
module asm "\09.asciz \09\22invalidate_disk\22\09\09\09\09\09"
module asm "__kstrtabns_invalidate_disk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___alloc_disk_node:\09\09\09\09\09"
module asm "\09.asciz \09\22__alloc_disk_node\22\09\09\09\09\09"
module asm "__kstrtabns___alloc_disk_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blk_alloc_disk:\09\09\09\09\09"
module asm "\09.asciz \09\22__blk_alloc_disk\22\09\09\09\09\09"
module asm "__kstrtabns___blk_alloc_disk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_disk:\09\09\09\09\09"
module asm "\09.asciz \09\22put_disk\22\09\09\09\09\09"
module asm "__kstrtabns_put_disk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_cleanup_disk:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_cleanup_disk\22\09\09\09\09\09"
module asm "__kstrtabns_blk_cleanup_disk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_disk_ro:\09\09\09\09\09"
module asm "\09.asciz \09\22set_disk_ro\22\09\09\09\09\09"
module asm "__kstrtabns_set_disk_ro:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.atomic64_t = type { i64 }
%struct.cpumask = type { [1 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.lockdep_map = type {}
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.77 = type { ptr }
%struct.blk_major_name = type { ptr, i32, [16 x i8], ptr }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.class_dev_iter = type { %struct.klist_iter, ptr }
%struct.klist_iter = type { ptr, ptr }
%struct.disk_stats = type { [4 x i64], [4 x i32], [4 x i32], [4 x i32], i32, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic_t }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__kstrtab_set_capacity = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_capacity = external dso_local constant [0 x i8], align 1
@__ksymtab_set_capacity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_capacity to i32), ptr @__kstrtab_set_capacity, ptr @__kstrtabns_set_capacity }, section "___ksymtab+set_capacity", align 4
@.str = private unnamed_addr constant [9 x i8] c"RESIZE=1\00", align 1
@__const.set_capacity_and_notify.envp = private unnamed_addr constant [2 x ptr] [ptr @.str, ptr null], align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"\016%s: detected capacity change from %lld to %lld\0A\00", align 1
@__kstrtab_set_capacity_and_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_capacity_and_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_set_capacity_and_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_capacity_and_notify to i32), ptr @__kstrtab_set_capacity_and_notify, ptr @__kstrtabns_set_capacity_and_notify }, section "___ksymtab_gpl+set_capacity_and_notify", align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%sp%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@__kstrtab_bdevname = external dso_local constant [0 x i8], align 1
@__kstrtabns_bdevname = external dso_local constant [0 x i8], align 1
@__ksymtab_bdevname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bdevname to i32), ptr @__kstrtab_bdevname, ptr @__kstrtabns_bdevname }, section "___ksymtab+bdevname", align 4
@major_names_spinlock = internal global %struct.spinlock zeroinitializer, align 4
@major_names = internal unnamed_addr global [255 x ptr] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"%3d %s\0A\00", align 1
@major_names_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @major_names_lock, i64 12), ptr getelementptr (i8, ptr @major_names_lock, i64 12) } }, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: failed to get major for %s\0A\00", align 1
@__func__.__register_blkdev = private unnamed_addr constant [18 x i8] c"__register_blkdev\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"\013%s: major requested (%u) is greater than the maximum (%u) for %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"register_blkdev: cannot get major %u for %s\0A\00", align 1
@__kstrtab___register_blkdev = external dso_local constant [0 x i8], align 1
@__kstrtabns___register_blkdev = external dso_local constant [0 x i8], align 1
@__ksymtab___register_blkdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__register_blkdev to i32), ptr @__kstrtab___register_blkdev, ptr @__kstrtabns___register_blkdev }, section "___ksymtab+__register_blkdev", align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"block/genhd.c\00", align 1
@__kstrtab_unregister_blkdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_blkdev = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_blkdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_blkdev to i32), ptr @__kstrtab_unregister_blkdev, ptr @__kstrtabns_unregister_blkdev }, section "___ksymtab+unregister_blkdev", align 4
@ext_devt_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@__kstrtab_disk_uevent = external dso_local constant [0 x i8], align 1
@__kstrtabns_disk_uevent = external dso_local constant [0 x i8], align 1
@__ksymtab_disk_uevent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disk_uevent to i32), ptr @__kstrtab_disk_uevent, ptr @__kstrtabns_disk_uevent }, section "___ksymtab_gpl+disk_uevent", align 4
@.str.10 = private unnamed_addr constant [49 x i8] c"\013block: can't allocate more than %d partitions\0A\00", align 1
@block_depr = internal unnamed_addr global ptr null, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"holders\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"slaves\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%u:%u\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"bdi\00", align 1
@__kstrtab_device_add_disk = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_add_disk = external dso_local constant [0 x i8], align 1
@__ksymtab_device_add_disk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_add_disk to i32), ptr @__kstrtab_device_add_disk, ptr @__kstrtabns_device_add_disk }, section "___ksymtab+device_add_disk", align 4
@__kstrtab_blk_mark_disk_dead = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mark_disk_dead = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mark_disk_dead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mark_disk_dead to i32), ptr @__kstrtab_blk_mark_disk_dead, ptr @__kstrtabns_blk_mark_disk_dead }, section "___ksymtab_gpl+blk_mark_disk_dead", align 4
@del_gendisk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_del_gendisk = external dso_local constant [0 x i8], align 1
@__kstrtabns_del_gendisk = external dso_local constant [0 x i8], align 1
@__ksymtab_del_gendisk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @del_gendisk to i32), ptr @__kstrtab_del_gendisk, ptr @__kstrtabns_del_gendisk }, section "___ksymtab+del_gendisk", align 4
@__kstrtab_invalidate_disk = external dso_local constant [0 x i8], align 1
@__kstrtabns_invalidate_disk = external dso_local constant [0 x i8], align 1
@__ksymtab_invalidate_disk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @invalidate_disk to i32), ptr @__kstrtab_invalidate_disk, ptr @__kstrtabns_invalidate_disk }, section "___ksymtab+invalidate_disk", align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"block-major-%d-%d\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"block-major-%d\00", align 1
@block_class = dso_local global %struct.class { ptr @.str.26, ptr null, ptr null, ptr null, ptr null, ptr @block_uevent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@disk_type = dso_local constant %struct.device_type { ptr @.str.27, ptr @disk_attr_groups, ptr null, ptr @block_devnode, ptr @disk_release, ptr null }, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"%s%s %10llu %pg %s\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c" driver: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c" (driver?)\0A\00", align 1
@__initcall__kmod_genhd__273_871_genhd_device_init4 = internal global ptr @genhd_device_init, section ".initcall4.init", align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.24 = private unnamed_addr constant [82 x i8] c"%8lu %8lu %8llu %8u %8lu %8lu %8llu %8u %8u %8u %8u %8lu %8lu %8llu %8u %8lu %8u\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"%8u %8u\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@disk_attr_groups = internal global [2 x ptr] [ptr @disk_attr_group, ptr null], align 4
@__initcall__kmod_genhd__274_1250_proc_genhd_init6 = internal global ptr @proc_genhd_init, section ".initcall6.init", align 4
@__alloc_disk_node.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"&disk->open_mutex\00", align 1
@__kstrtab___alloc_disk_node = external dso_local constant [0 x i8], align 1
@__kstrtabns___alloc_disk_node = external dso_local constant [0 x i8], align 1
@__ksymtab___alloc_disk_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__alloc_disk_node to i32), ptr @__kstrtab___alloc_disk_node, ptr @__kstrtabns___alloc_disk_node }, section "___ksymtab+__alloc_disk_node", align 4
@__kstrtab___blk_alloc_disk = external dso_local constant [0 x i8], align 1
@__kstrtabns___blk_alloc_disk = external dso_local constant [0 x i8], align 1
@__ksymtab___blk_alloc_disk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blk_alloc_disk to i32), ptr @__kstrtab___blk_alloc_disk, ptr @__kstrtabns___blk_alloc_disk }, section "___ksymtab+__blk_alloc_disk", align 4
@__kstrtab_put_disk = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_disk = external dso_local constant [0 x i8], align 1
@__ksymtab_put_disk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_disk to i32), ptr @__kstrtab_put_disk, ptr @__kstrtabns_put_disk }, section "___ksymtab+put_disk", align 4
@__kstrtab_blk_cleanup_disk = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_cleanup_disk = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_cleanup_disk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_cleanup_disk to i32), ptr @__kstrtab_blk_cleanup_disk, ptr @__kstrtabns_blk_cleanup_disk }, section "___ksymtab+blk_cleanup_disk", align 4
@__kstrtab_set_disk_ro = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_disk_ro = external dso_local constant [0 x i8], align 1
@__ksymtab_set_disk_ro = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_disk_ro to i32), ptr @__kstrtab_set_disk_ro, ptr @__kstrtabns_set_disk_ro }, section "___ksymtab+set_disk_ro", align 4
@diskseq = internal global %struct.atomic64_t zeroinitializer, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.30 = private unnamed_addr constant [9 x i8] c"%02x%02x\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%-9s\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"%03x:%05x\00", align 1
@sysfs_dev_block_kobj = external dso_local local_unnamed_addr global ptr, align 4
@genhd_device_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"blkext\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"DISKSEQ=%llu\00", align 1
@disk_attr_group = internal global %struct.attribute_group { ptr null, ptr @disk_visible, ptr null, ptr @disk_attrs, ptr null }, align 4
@disk_attrs = internal global [17 x ptr] [ptr @dev_attr_range, ptr @dev_attr_ext_range, ptr @dev_attr_removable, ptr @dev_attr_hidden, ptr @dev_attr_ro, ptr @dev_attr_size, ptr @dev_attr_alignment_offset, ptr @dev_attr_discard_alignment, ptr @dev_attr_capability, ptr @dev_attr_stat, ptr @dev_attr_inflight, ptr @dev_attr_badblocks, ptr @dev_attr_events, ptr @dev_attr_events_async, ptr @dev_attr_events_poll_msecs, ptr @dev_attr_diskseq, ptr null], align 4
@dev_attr_badblocks = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420 }, ptr @disk_badblocks_show, ptr @disk_badblocks_store }, align 4
@.str.35 = private unnamed_addr constant [10 x i8] c"badblocks\00", align 1
@dev_attr_range = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292 }, ptr @disk_range_show, ptr null }, align 4
@dev_attr_ext_range = internal global %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292 }, ptr @disk_ext_range_show, ptr null }, align 4
@dev_attr_removable = internal global %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292 }, ptr @disk_removable_show, ptr null }, align 4
@dev_attr_hidden = internal global %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292 }, ptr @disk_hidden_show, ptr null }, align 4
@dev_attr_ro = internal global %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292 }, ptr @disk_ro_show, ptr null }, align 4
@dev_attr_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292 }, ptr @part_size_show, ptr null }, align 4
@dev_attr_alignment_offset = internal global %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292 }, ptr @disk_alignment_offset_show, ptr null }, align 4
@dev_attr_discard_alignment = internal global %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292 }, ptr @disk_discard_alignment_show, ptr null }, align 4
@dev_attr_capability = internal global %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292 }, ptr @disk_capability_show, ptr null }, align 4
@dev_attr_stat = internal global %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292 }, ptr @part_stat_show, ptr null }, align 4
@dev_attr_inflight = internal global %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292 }, ptr @part_inflight_show, ptr null }, align 4
@dev_attr_events = external dso_local global %struct.device_attribute, align 4
@dev_attr_events_async = external dso_local global %struct.device_attribute, align 4
@dev_attr_events_poll_msecs = external dso_local global %struct.device_attribute, align 4
@dev_attr_diskseq = internal global %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292 }, ptr @diskseq_show, ptr null }, align 4
@.str.36 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"ext_range\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"removable\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"alignment_offset\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"discard_alignment\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"capability\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"inflight\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"diskseq\00", align 1
@disk_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"diskstats\00", align 1
@diskstats_op = internal constant %struct.seq_operations { ptr @disk_seqf_start, ptr @disk_seqf_stop, ptr @disk_seqf_next, ptr @diskstats_show }, align 4
@.str.51 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@partitions_op = internal constant %struct.seq_operations { ptr @show_partition_start, ptr @disk_seqf_stop, ptr @disk_seqf_next, ptr @show_partition }, align 4
@.str.52 = private unnamed_addr constant [74 x i8] c"%4d %7d %pg %lu %lu %lu %u %lu %lu %lu %u %u %u %u %lu %lu %lu %u %lu %u\0A\00", align 1
@.str.53 = private unnamed_addr constant [29 x i8] c"major minor  #blocks  name\0A\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"%4d  %7d %10llu %pg\0A\00", align 1
@__const.set_disk_ro_uevent.event = private unnamed_addr constant [10 x i8] c"DISK_RO=1\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__initcall__kmod_genhd__273_871_genhd_device_init4, ptr @__initcall__kmod_genhd__274_1250_proc_genhd_init6, ptr @__ksymtab___alloc_disk_node, ptr @__ksymtab___blk_alloc_disk, ptr @__ksymtab___register_blkdev, ptr @__ksymtab_bdevname, ptr @__ksymtab_blk_cleanup_disk, ptr @__ksymtab_blk_mark_disk_dead, ptr @__ksymtab_del_gendisk, ptr @__ksymtab_device_add_disk, ptr @__ksymtab_disk_uevent, ptr @__ksymtab_invalidate_disk, ptr @__ksymtab_put_disk, ptr @__ksymtab_set_capacity, ptr @__ksymtab_set_capacity_and_notify, ptr @__ksymtab_set_disk_ro, ptr @__ksymtab_unregister_blkdev], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_capacity(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = shl i64 %1, 9
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %9 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !9
  %12 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 13
  store i64 %8, ptr %12, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !10
  %13 = load i32, ptr %9, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %15 = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 1
  store i64 %1, ptr %15, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %16 = load i16, ptr %5, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @set_capacity_and_notify(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca [2 x ptr], align 8
  %4 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %8 = load i64, ptr @__const.set_capacity_and_notify.envp, align 8
  store i64 %8, ptr %3, align 8
  %9 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = shl i64 %1, 9
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %13 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 22
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !9
  %16 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 13
  store i64 %12, ptr %16, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !10
  %17 = load i32, ptr %13, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  store i64 %1, ptr %6, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %19 = load i16, ptr %9, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %21 = icmp eq i64 %7, %1
  br i1 %21, label %44, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 27, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 3
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %35, i64 noundef %7, i64 noundef %1) #16
  %37 = icmp ne i64 %7, 0
  %38 = icmp ne i64 %1, 0
  %39 = and i1 %38, %37
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.block_device, ptr %41, i32 0, i32 10
  %43 = call i32 @kobject_uevent_env(ptr noundef %42, i32 noundef 2, ptr noundef nonnull %3) #15
  br label %44

44:                                               ; preds = %40, %34, %29, %22, %2
  %45 = phi i1 [ true, %40 ], [ false, %29 ], [ false, %22 ], [ false, %2 ], [ false, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i1 %45
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bdevname(ptr nocapture noundef readonly %0, ptr noundef returned writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 15
  %6 = load i8, ptr %5, align 8
  %7 = zext i8 %6 to i32
  %8 = icmp eq i8 %6, 0
  %9 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 3
  br i1 %8, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %9)
  br label %24

12:                                               ; preds = %2
  %13 = tail call i32 @strlen(ptr noundef %9)
  %14 = add i32 %13, -1
  %15 = getelementptr %struct.gendisk, ptr %4, i32 0, i32 3, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = add nsw i32 %17, -58
  %19 = icmp ult i32 %18, -10
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %9, i32 noundef %7)
  br label %24

22:                                               ; preds = %12
  %23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef %9, i32 noundef %7)
  br label %24

24:                                               ; preds = %22, %20, %10
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blkdev_show(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @major_names_spinlock) #15
  %3 = urem i32 %1, 255
  %4 = getelementptr [255 x ptr], ptr @major_names, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %14, %2
  %8 = phi ptr [ %15, %14 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.blk_major_name, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.blk_major_name, ptr %8, i32 0, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %1, ptr noundef %13) #15
  br label %14

14:                                               ; preds = %12, %7
  %15 = load ptr, ptr %8, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7

17:                                               ; preds = %14, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %18 = load i16, ptr @major_names_spinlock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @major_names_spinlock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__register_blkdev(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @major_names_lock) #15
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %10, %3
  %6 = phi i32 [ %11, %10 ], [ 254, %3 ]
  %7 = getelementptr [255 x ptr], ptr @major_names, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = add nsw i32 %6, -1
  %12 = icmp ugt i32 %6, 1
  br i1 %12, label %5, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.__register_blkdev, ptr noundef %1) #16
  br label %50

15:                                               ; preds = %5, %3
  %16 = phi i32 [ 0, %3 ], [ %6, %5 ]
  %17 = phi i32 [ %0, %3 ], [ %6, %5 ]
  %18 = icmp ugt i32 %17, 511
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__register_blkdev, i32 noundef %17, i32 noundef 511, ptr noundef %1) #16
  br label %50

21:                                               ; preds = %15
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 28) #17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %50, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.blk_major_name, ptr %23, i32 0, i32 1
  store i32 %17, ptr %26, align 4
  %27 = getelementptr inbounds %struct.blk_major_name, ptr %23, i32 0, i32 3
  store ptr %2, ptr %27, align 8
  %28 = getelementptr inbounds %struct.blk_major_name, ptr %23, i32 0, i32 2
  %29 = tail call i32 @strlcpy(ptr noundef %28, ptr noundef %1, i32 noundef 16) #15
  store ptr null, ptr %23, align 8
  %30 = trunc i32 %17 to i16
  %31 = urem i16 %30, 255
  %32 = zext i16 %31 to i32
  tail call void @_raw_spin_lock(ptr noundef nonnull @major_names_spinlock) #15
  %33 = getelementptr [255 x ptr], ptr @major_names, i32 0, i32 %32
  br label %34

34:                                               ; preds = %38, %25
  %35 = phi ptr [ %33, %25 ], [ %36, %38 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.blk_major_name, ptr %36, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %17
  br i1 %41, label %43, label %34

42:                                               ; preds = %34
  store ptr %23, ptr %35, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %16, %42 ], [ -16, %38 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %45 = load i16, ptr @major_names_spinlock, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr @major_names_spinlock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %47 = icmp slt i32 %44, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %17, ptr noundef %1) #16
  tail call void @kfree(ptr noundef nonnull %23) #15
  br label %50

50:                                               ; preds = %48, %43, %21, %19, %13
  %51 = phi i32 [ -16, %13 ], [ -22, %19 ], [ %44, %48 ], [ %44, %43 ], [ -12, %21 ]
  tail call void @mutex_unlock(ptr noundef nonnull @major_names_lock) #15
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_blkdev(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = urem i32 %0, 255
  tail call void @mutex_lock(ptr noundef nonnull @major_names_lock) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @major_names_spinlock) #15
  %4 = getelementptr [255 x ptr], ptr @major_names, i32 0, i32 %3
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %4, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.blk_major_name, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %0
  br i1 %12, label %13, label %5

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.blk_major_name, ptr %7, i32 0, i32 2
  %15 = tail call i32 @strcmp(ptr noundef %14, ptr noundef %1)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 317, i32 noundef 9, ptr noundef null) #15
  br label %20

18:                                               ; preds = %13
  %19 = load ptr, ptr %7, align 4
  store ptr %19, ptr %6, align 4
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi ptr [ null, %17 ], [ %7, %18 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %22 = load i16, ptr @major_names_spinlock, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr @major_names_spinlock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  tail call void @mutex_unlock(ptr noundef nonnull @major_names_lock) #15
  tail call void @kfree(ptr noundef %21) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_alloc_ext_minor() local_unnamed_addr #0 {
  %1 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ext_devt_ida, i32 noundef 0, i32 noundef 1048576, i32 noundef 3264) #15
  %2 = icmp eq i32 %1, -28
  %3 = select i1 %2, i32 -16, i32 %1
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_free_ext_minor(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @ida_free(ptr noundef nonnull @ext_devt_ida, i32 noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disk_uevent(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 6
  %5 = call ptr @xa_find(ptr noundef %4, ptr noundef nonnull %3, i32 noundef -1, i32 noundef 8) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %22, %2
  %8 = phi ptr [ %23, %22 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 15
  %10 = load i8, ptr %9, align 8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12, %7
  %17 = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 10
  %18 = call ptr @kobject_get_unless_zero(ptr noundef %17) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  %21 = call i32 @kobject_uevent(ptr noundef %17, i32 noundef %1) #15
  call void @put_device(ptr noundef %17) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  br label %22

22:                                               ; preds = %20, %16, %12
  %23 = call ptr @xa_find_after(ptr noundef %4, ptr noundef nonnull %3, i32 noundef -1, i32 noundef 8) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7

25:                                               ; preds = %22, %2
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get_unless_zero(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @disk_scan_partitions(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 14
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %12) #15
  %13 = load i32, ptr %0, align 8
  %14 = shl i32 %13, 20
  %15 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %14, %16
  %18 = tail call ptr @blkdev_get_by_dev(i32 noundef %17, i32 noundef %1, ptr noundef null) #15
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = ptrtoint ptr %18 to i32
  br label %23

22:                                               ; preds = %11
  tail call void @blkdev_put(ptr noundef %18, i32 noundef %1) #15
  br label %23

23:                                               ; preds = %22, %20, %7, %2
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ], [ -22, %2 ], [ -16, %7 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_add_disk(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  %7 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  tail call void @elevator_init_mq(ptr noundef %8) #15
  %9 = load i32, ptr %1, align 8
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %10, label %26, label %14

14:                                               ; preds = %3
  br i1 %13, label %15, label %16, !prof !18

15:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 426, i32 noundef 9, ptr noundef null) #15
  br label %148

16:                                               ; preds = %14
  %17 = icmp sgt i32 %12, 256
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 256) #16
  store i32 256, ptr %11, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ 256, %18 ], [ %12, %16 ]
  %22 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %21, %23
  %25 = icmp ugt i32 %24, 1048576
  br i1 %25, label %148, label %35

26:                                               ; preds = %3
  br i1 %13, label %28, label %27, !prof !19

27:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 437, i32 noundef 9, ptr noundef null) #15
  br label %148

28:                                               ; preds = %26
  %29 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ext_devt_ida, i32 noundef 0, i32 noundef 1048576, i32 noundef 3264) #15
  %30 = icmp eq i32 %29, -28
  %31 = select i1 %30, i32 -16, i32 %29
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %148, label %33

33:                                               ; preds = %28
  store i32 259, ptr %1, align 8
  %34 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 1
  store i32 %31, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %20
  %36 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10, i32 0, i32 7
  %37 = load i8, ptr %36, align 8
  %38 = or i8 %37, 16
  store i8 %38, ptr %36, align 8
  %39 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10, i32 1
  store ptr %0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10, i32 32
  store ptr %2, ptr %40, align 8
  %41 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 3
  %42 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef %41) #15
  %43 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 11
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %35
  %48 = load i32, ptr %1, align 8
  %49 = shl i32 %48, 20
  %50 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %49, %51
  %53 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10, i32 27
  store i32 %52, ptr %53, align 8
  br label %54

54:                                               ; preds = %47, %35
  %55 = tail call i32 @device_add(ptr noundef %6) #15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %141

57:                                               ; preds = %54
  %58 = tail call i32 @disk_alloc_events(ptr noundef %1) #15
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %139

60:                                               ; preds = %57
  %61 = load ptr, ptr @block_depr, align 4
  %62 = load ptr, ptr %6, align 4
  %63 = tail call i32 @sysfs_create_link(ptr noundef %61, ptr noundef %6, ptr noundef %62) #15
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %139

65:                                               ; preds = %60
  tail call void @pm_runtime_set_memalloc_noio(ptr noundef %6, i1 noundef zeroext true) #15
  %66 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.11, ptr noundef %6) #15
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr inbounds %struct.block_device, ptr %67, i32 0, i32 14
  store ptr %66, ptr %68, align 4
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr inbounds %struct.block_device, ptr %69, i32 0, i32 14
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %129, label %73

73:                                               ; preds = %65
  %74 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.12, ptr noundef %6) #15
  %75 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 16
  store ptr %74, ptr %75, align 8
  %76 = icmp eq ptr %74, null
  br i1 %76, label %124, label %77

77:                                               ; preds = %73
  %78 = tail call i32 @blk_register_queue(ptr noundef %1) #15
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %121

80:                                               ; preds = %77
  %81 = load i32, ptr %43, align 4
  %82 = and i32 %81, 2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %112

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 15
  %86 = load ptr, ptr %85, align 4
  %87 = load i32, ptr %1, align 8
  %88 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = tail call i32 (ptr, ptr, ...) @bdi_register(ptr noundef %86, ptr noundef nonnull @.str.13, i32 noundef %87, i32 noundef %89) #15
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %119

92:                                               ; preds = %84
  %93 = load ptr, ptr %85, align 4
  tail call void @bdi_set_owner(ptr noundef %93, ptr noundef %6) #15
  %94 = load ptr, ptr %85, align 4
  %95 = getelementptr inbounds %struct.backing_dev_info, ptr %94, i32 0, i32 14
  %96 = load ptr, ptr %95, align 4
  %97 = tail call i32 @sysfs_create_link(ptr noundef %6, ptr noundef %96, ptr noundef nonnull @.str.14) #15
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %92
  %100 = load ptr, ptr %4, align 4
  %101 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10, i32 27
  %102 = load i32, ptr %101, align 8
  tail call void @bdev_add(ptr noundef %100, i32 noundef %102) #15
  %103 = load ptr, ptr %4, align 4
  %104 = getelementptr inbounds %struct.block_device, ptr %103, i32 0, i32 1
  %105 = load i64, ptr %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %99
  %108 = tail call i32 @disk_scan_partitions(ptr noundef %1, i32 noundef 1)
  br label %109

109:                                              ; preds = %107, %99
  %110 = load i8, ptr %36, align 8
  %111 = and i8 %110, -17
  store i8 %111, ptr %36, align 8
  tail call void @disk_uevent(ptr noundef %1, i32 noundef 0)
  br label %112

112:                                              ; preds = %109, %80
  tail call void @disk_update_readahead(ptr noundef %1) #15
  tail call void @disk_add_events(ptr noundef %1) #15
  br label %148

113:                                              ; preds = %92
  %114 = load i32, ptr %43, align 4
  %115 = and i32 %114, 2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load ptr, ptr %85, align 4
  tail call void @bdi_unregister(ptr noundef %118) #15
  br label %119

119:                                              ; preds = %117, %113, %84
  %120 = phi i32 [ %90, %84 ], [ %97, %113 ], [ %97, %117 ]
  tail call void @blk_unregister_queue(ptr noundef %1) #15
  br label %121

121:                                              ; preds = %119, %77
  %122 = phi i32 [ %78, %77 ], [ %120, %119 ]
  %123 = load ptr, ptr %75, align 8
  tail call void @kobject_put(ptr noundef %123) #15
  br label %124

124:                                              ; preds = %121, %73
  %125 = phi i32 [ %122, %121 ], [ -12, %73 ]
  %126 = load ptr, ptr %4, align 4
  %127 = getelementptr inbounds %struct.block_device, ptr %126, i32 0, i32 14
  %128 = load ptr, ptr %127, align 4
  tail call void @kobject_put(ptr noundef %128) #15
  br label %129

129:                                              ; preds = %124, %65
  %130 = phi i32 [ %125, %124 ], [ -12, %65 ]
  %131 = load ptr, ptr @block_depr, align 4
  %132 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10, i32 3
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load ptr, ptr %6, align 4
  br label %137

137:                                              ; preds = %135, %129
  %138 = phi ptr [ %136, %135 ], [ %133, %129 ]
  tail call void @sysfs_remove_link(ptr noundef %131, ptr noundef %138) #15
  br label %139

139:                                              ; preds = %137, %60, %57
  %140 = phi i32 [ %58, %57 ], [ %63, %60 ], [ %130, %137 ]
  tail call void @device_del(ptr noundef %6) #15
  br label %141

141:                                              ; preds = %139, %54
  %142 = phi i32 [ %55, %54 ], [ %140, %139 ]
  %143 = load i32, ptr %1, align 8
  %144 = icmp eq i32 %143, 259
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 1
  %147 = load i32, ptr %146, align 4
  tail call void @ida_free(ptr noundef nonnull @ext_devt_ida, i32 noundef %147) #15
  br label %148

148:                                              ; preds = %145, %141, %112, %28, %27, %20, %15
  %149 = phi i32 [ -22, %15 ], [ 0, %112 ], [ -22, %27 ], [ -22, %20 ], [ %31, %28 ], [ %142, %145 ], [ %142, %141 ]
  ret i32 %149
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @elevator_init_mq(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @disk_alloc_events(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_memalloc_noio(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_register_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdi_register(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_set_owner(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdev_add(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_update_readahead(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_add_events(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_unregister_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mark_disk_dead(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %2) #15
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  tail call void @blk_queue_start_drain(ptr noundef %4) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_start_drain(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @del_gendisk(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 27, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = load i1, ptr @del_gendisk.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !18

19:                                               ; preds = %11
  store i1 true, ptr @del_gendisk.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 590, i32 noundef 9, ptr noundef null) #15
  br label %101

20:                                               ; preds = %11
  br i1 %15, label %101, label %21

21:                                               ; preds = %20, %1
  tail call void @disk_del_events(ptr noundef %0) #15
  %22 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %22) #15
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 27, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 27
  %30 = icmp eq ptr %27, %29
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  tail call void @__remove_inode_hash(ptr noundef %25) #15
  br label %33

33:                                               ; preds = %32, %21
  tail call void @blk_drop_partitions(ptr noundef %0) #15
  tail call void @mutex_unlock(ptr noundef %22) #15
  %34 = load ptr, ptr %4, align 4
  %35 = tail call i32 @fsync_bdev(ptr noundef %34) #15
  %36 = load ptr, ptr %4, align 4
  %37 = tail call i32 @__invalidate_device(ptr noundef %36, i1 noundef zeroext true) #15
  %38 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %38) #15
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.block_device, ptr %39, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %40) #15
  %41 = getelementptr inbounds %struct.block_device, ptr %39, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %43 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 22
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !9
  %46 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 13
  store i64 0, ptr %46, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !10
  %47 = load i32, ptr %43, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %43, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %49 = getelementptr inbounds %struct.block_device, ptr %39, i32 0, i32 1
  store i64 0, ptr %49, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %50 = load i16, ptr %40, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %40, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  tail call void @blk_queue_start_drain(ptr noundef %3) #15
  %52 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 11
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %33
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr inbounds %struct.block_device, ptr %57, i32 0, i32 10
  tail call void @sysfs_remove_link(ptr noundef %58, ptr noundef nonnull @.str.14) #15
  %59 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 15
  %60 = load ptr, ptr %59, align 4
  tail call void @bdi_unregister(ptr noundef %60) #15
  br label %61

61:                                               ; preds = %56, %33
  tail call void @blk_unregister_queue(ptr noundef %0) #15
  %62 = load ptr, ptr %4, align 4
  %63 = getelementptr inbounds %struct.block_device, ptr %62, i32 0, i32 14
  %64 = load ptr, ptr %63, align 4
  tail call void @kobject_put(ptr noundef %64) #15
  %65 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 16
  %66 = load ptr, ptr %65, align 8
  tail call void @kobject_put(ptr noundef %66) #15
  %67 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  %68 = load i32, ptr @nr_cpu_ids, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %61
  %71 = load ptr, ptr %4, align 4
  %72 = getelementptr inbounds %struct.block_device, ptr %71, i32 0, i32 2
  br label %73

73:                                               ; preds = %73, %70
  %74 = phi i32 [ %67, %70 ], [ %81, %73 ]
  %75 = load ptr, ptr %72, align 8
  %76 = ptrtoint ptr %75 to i32
  %77 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %74
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, %76
  %80 = inttoptr i32 %79 to ptr
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(96) %80, i8 0, i32 96, i1 false) #15
  %81 = tail call i32 @cpumask_next(i32 noundef %74, ptr noundef nonnull @__cpu_possible_mask) #18
  %82 = load i32, ptr @nr_cpu_ids, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %73, label %84

84:                                               ; preds = %73, %61
  %85 = load ptr, ptr %4, align 4
  %86 = getelementptr inbounds %struct.block_device, ptr %85, i32 0, i32 3
  store i32 0, ptr %86, align 4
  %87 = load ptr, ptr @block_depr, align 4
  %88 = load ptr, ptr %4, align 4
  %89 = getelementptr inbounds %struct.block_device, ptr %88, i32 0, i32 10, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.block_device, ptr %88, i32 0, i32 10
  %94 = load ptr, ptr %93, align 4
  br label %95

95:                                               ; preds = %92, %84
  %96 = phi ptr [ %94, %92 ], [ %90, %84 ]
  tail call void @sysfs_remove_link(ptr noundef %87, ptr noundef %96) #15
  %97 = load ptr, ptr %4, align 4
  %98 = getelementptr inbounds %struct.block_device, ptr %97, i32 0, i32 10
  tail call void @pm_runtime_set_memalloc_noio(ptr noundef %98, i1 noundef zeroext false) #15
  %99 = load ptr, ptr %4, align 4
  %100 = getelementptr inbounds %struct.block_device, ptr %99, i32 0, i32 10
  tail call void @device_del(ptr noundef %100) #15
  tail call void @blk_mq_freeze_queue_wait(ptr noundef %3) #15
  tail call void @rq_qos_exit(ptr noundef %3) #15
  tail call void @blk_sync_queue(ptr noundef %3) #15
  tail call void @blk_queue_flag_clear(i32 noundef 14, ptr noundef %3) #15
  tail call void @__blk_mq_unfreeze_queue(ptr noundef %3, i1 noundef zeroext true) #15
  br label %101

101:                                              ; preds = %95, %20, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_del_events(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_drop_partitions(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsync_bdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__invalidate_device(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue_wait(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rq_qos_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_sync_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_mq_unfreeze_queue(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @invalidate_disk(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void @invalidate_bdev(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 11
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 22
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !9
  %16 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 13
  store i64 0, ptr %16, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !10
  %17 = load i32, ptr %13, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %19 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 1
  store i64 0, ptr %19, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %20 = load i16, ptr %10, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_request_module(i32 noundef %0) local_unnamed_addr #0 {
  %2 = lshr i32 %0, 20
  tail call void @mutex_lock(ptr noundef nonnull @major_names_lock) #15
  %3 = trunc i32 %2 to i16
  %4 = urem i16 %3, 255
  %5 = zext i16 %4 to i32
  %6 = getelementptr [255 x ptr], ptr @major_names, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %19, %1
  %10 = phi ptr [ %20, %19 ], [ %7, %1 ]
  %11 = getelementptr inbounds %struct.blk_major_name, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.blk_major_name, ptr %10, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void %16(i32 noundef %0) #15
  tail call void @mutex_unlock(ptr noundef nonnull @major_names_lock) #15
  br label %28

19:                                               ; preds = %14, %9
  %20 = load ptr, ptr %10, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %9

22:                                               ; preds = %19, %1
  tail call void @mutex_unlock(ptr noundef nonnull @major_names_lock) #15
  %23 = and i32 %0, 1048575
  %24 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.15, i32 noundef %2, i32 noundef %23) #15
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.16, i32 noundef %2) #15
  br label %28

28:                                               ; preds = %26, %22, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @printk_all_partitions() local_unnamed_addr #9 section ".init.text" {
  %1 = alloca [10 x i8], align 1
  %2 = alloca %struct.class_dev_iter, align 4
  %3 = alloca [10 x i8], align 1
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !20
  call void @class_dev_iter_init(ptr noundef nonnull %2, ptr noundef nonnull @block_class, ptr noundef null, ptr noundef nonnull @disk_type) #15
  %5 = call ptr @class_dev_iter_next(ptr noundef nonnull %2) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %80, label %7

7:                                                ; preds = %77, %0
  %8 = phi ptr [ %78, %77 ], [ %5, %0 ]
  %9 = getelementptr i8, ptr %8, i32 496
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %3, i8 0, i32 10, i1 false), !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !annotation !20
  %11 = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.block_device, ptr %12, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %77, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %77

21:                                               ; preds = %16
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  store i32 0, ptr %4, align 4
  %22 = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 6
  %23 = call ptr @xa_find(ptr noundef %22, ptr noundef nonnull %4, i32 noundef -1, i32 noundef 8) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %76, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  br label %27

27:                                               ; preds = %73, %25
  %28 = phi ptr [ %23, %25 ], [ %74, %73 ]
  %29 = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 1
  %30 = load i64, ptr %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %73, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 15
  %34 = load i8, ptr %33, align 8
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, ptr @.str.19, ptr @.str.18
  %37 = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %38, 20
  %40 = icmp ult i32 %38, 268435456
  %41 = and i32 %38, 1048575
  %42 = icmp ult i32 %41, 256
  %43 = and i1 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %1) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %1, i8 0, i32 10, i1 false) #15, !annotation !20
  %45 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %1, i32 noundef 10, ptr noundef nonnull @.str.30, i32 noundef %39, i32 noundef %41) #15
  %46 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 10, ptr noundef nonnull @.str.31, ptr noundef nonnull %1) #15
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %1) #15
  br label %49

47:                                               ; preds = %32
  %48 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 10, ptr noundef nonnull @.str.32, i32 noundef %39, i32 noundef %41) #15
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i64, ptr %29, align 8
  %51 = lshr i64 %50, 1
  %52 = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 22
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, ptr @.str.19, ptr %53
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %36, ptr noundef nonnull %3, i64 noundef %51, ptr noundef nonnull %28, ptr noundef nonnull %55) #16
  %57 = load i8, ptr %33, align 8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %49
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #16
  br label %73

61:                                               ; preds = %49
  %62 = load ptr, ptr %26, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 6
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %66, align 4
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %69) #16
  br label %73

71:                                               ; preds = %64, %61
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #16
  br label %73

73:                                               ; preds = %71, %68, %59, %27
  %74 = call ptr @xa_find_after(ptr noundef %22, ptr noundef nonnull %4, i32 noundef -1, i32 noundef 8) #15
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %27

76:                                               ; preds = %73, %21
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  br label %77

77:                                               ; preds = %76, %16, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #15
  %78 = call ptr @class_dev_iter_next(ptr noundef nonnull %2) #15
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %7

80:                                               ; preds = %77, %0
  call void @class_dev_iter_exit(ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_dev_iter_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_dev_iter_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_dev_iter_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @genhd_device_init() #9 section ".init.text" {
  %1 = load ptr, ptr @sysfs_dev_block_kobj, align 4
  store ptr %1, ptr getelementptr inbounds (%struct.class, ptr @block_class, i32 0, i32 4), align 4
  %2 = tail call i32 @__class_register(ptr noundef nonnull @block_class, ptr noundef nonnull @genhd_device_init.__key) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8, !prof !19

4:                                                ; preds = %0
  %5 = tail call i32 @blk_dev_init() #15
  %6 = tail call i32 @__register_blkdev(i32 noundef 259, ptr noundef nonnull @.str.33, ptr noundef null)
  %7 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.26, ptr noundef null) #15
  store ptr %7, ptr @block_depr, align 4
  br label %8

8:                                                ; preds = %4, %0
  ret i32 %2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @part_size_show(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 -40
  %5 = load i64, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.23, i64 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @part_stat_show(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.disk_stats, align 8
  %5 = getelementptr i8, ptr %0, i32 -48
  %6 = getelementptr i8, ptr %0, i32 500
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !20
  call fastcc void @part_stat_read_all(ptr noundef %5, ptr noundef nonnull %4)
  %8 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 @blk_mq_in_flight(ptr noundef %7, ptr noundef %5) #15
  br label %39

13:                                               ; preds = %3
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  %16 = icmp ult i32 %15, %14
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 -32
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %19 to i32
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi i32 [ %15, %17 ], [ %34, %21 ]
  %23 = phi i32 [ 0, %17 ], [ %33, %21 ]
  %24 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %20
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr inbounds %struct.disk_stats, ptr %27, i32 0, i32 5
  %29 = load volatile i32, ptr %28, align 4
  %30 = getelementptr %struct.disk_stats, ptr %27, i32 0, i32 5, i32 1
  %31 = load volatile i32, ptr %30, align 4
  %32 = add i32 %29, %23
  %33 = add i32 %32, %31
  %34 = tail call i32 @cpumask_next(i32 noundef %22, ptr noundef nonnull @__cpu_possible_mask) #18
  %35 = icmp ult i32 %34, %14
  br i1 %35, label %21, label %36

36:                                               ; preds = %21, %13
  %37 = phi i32 [ 0, %13 ], [ %33, %21 ]
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 0) #15
  br label %39

39:                                               ; preds = %36, %11
  %40 = phi i32 [ %12, %11 ], [ %38, %36 ]
  %41 = getelementptr inbounds %struct.disk_stats, ptr %4, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.disk_stats, ptr %4, i32 0, i32 3
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.disk_stats, ptr %4, i32 0, i32 1
  %46 = load i32, ptr %45, align 8
  %47 = zext i32 %46 to i64
  %48 = load i64, ptr %4, align 8
  %49 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %48) #19, !srcloc !21
  %50 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %48, i64 %49, i32 0) #19, !srcloc !22
  %51 = extractvalue { i64, i32 } %50, 0
  %52 = lshr i64 %51, 18
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds %struct.disk_stats, ptr %4, i32 0, i32 2, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.disk_stats, ptr %4, i32 0, i32 3, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.disk_stats, ptr %4, i32 0, i32 1, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i64], ptr %4, i32 0, i32 1
  %62 = load i64, ptr %61, align 8
  %63 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %62) #19, !srcloc !21
  %64 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %62, i64 %63, i32 0) #19, !srcloc !22
  %65 = extractvalue { i64, i32 } %64, 0
  %66 = lshr i64 %65, 18
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds %struct.disk_stats, ptr %4, i32 0, i32 4
  %69 = load i32, ptr %68, align 8
  %70 = tail call i32 @jiffies_to_msecs(i32 noundef %69) #15
  %71 = add i64 %62, %48
  %72 = getelementptr inbounds [4 x i64], ptr %4, i32 0, i32 2
  %73 = load i64, ptr %72, align 8
  %74 = add i64 %71, %73
  %75 = getelementptr inbounds [4 x i64], ptr %4, i32 0, i32 3
  %76 = load i64, ptr %75, align 8
  %77 = add i64 %74, %76
  %78 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %77) #19, !srcloc !21
  %79 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %77, i64 %78, i32 0) #19, !srcloc !22
  %80 = extractvalue { i64, i32 } %79, 0
  %81 = lshr i64 %80, 18
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds %struct.disk_stats, ptr %4, i32 0, i32 2, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr inbounds %struct.disk_stats, ptr %4, i32 0, i32 3, i32 2
  %86 = load i32, ptr %85, align 8
  %87 = getelementptr inbounds %struct.disk_stats, ptr %4, i32 0, i32 1, i32 2
  %88 = load i32, ptr %87, align 8
  %89 = zext i32 %88 to i64
  %90 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %73) #19, !srcloc !21
  %91 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %73, i64 %90, i32 0) #19, !srcloc !22
  %92 = extractvalue { i64, i32 } %91, 0
  %93 = lshr i64 %92, 18
  %94 = trunc i64 %93 to i32
  %95 = getelementptr inbounds %struct.disk_stats, ptr %4, i32 0, i32 2, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %76) #19, !srcloc !21
  %98 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %76, i64 %97, i32 0) #19, !srcloc !22
  %99 = extractvalue { i64, i32 } %98, 0
  %100 = lshr i64 %99, 18
  %101 = trunc i64 %100 to i32
  %102 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %42, i32 noundef %44, i64 noundef %47, i32 noundef %53, i32 noundef %55, i32 noundef %57, i64 noundef %60, i32 noundef %67, i32 noundef %40, i32 noundef %70, i32 noundef %82, i32 noundef %84, i32 noundef %86, i64 noundef %89, i32 noundef %94, i32 noundef %96, i32 noundef %101)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #15
  ret i32 %102
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @part_stat_read_all(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #5 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(96) %1, i8 0, i32 96, i1 false)
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %102

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.disk_stats, ptr %1, i32 0, i32 4
  %9 = getelementptr %struct.disk_stats, ptr %1, i32 0, i32 1, i32 0
  %10 = getelementptr %struct.disk_stats, ptr %1, i32 0, i32 2, i32 0
  %11 = getelementptr %struct.disk_stats, ptr %1, i32 0, i32 3, i32 0
  %12 = getelementptr [4 x i64], ptr %1, i32 0, i32 1
  %13 = getelementptr %struct.disk_stats, ptr %1, i32 0, i32 1, i32 1
  %14 = getelementptr %struct.disk_stats, ptr %1, i32 0, i32 2, i32 1
  %15 = getelementptr %struct.disk_stats, ptr %1, i32 0, i32 3, i32 1
  %16 = getelementptr [4 x i64], ptr %1, i32 0, i32 2
  %17 = getelementptr %struct.disk_stats, ptr %1, i32 0, i32 1, i32 2
  %18 = getelementptr %struct.disk_stats, ptr %1, i32 0, i32 2, i32 2
  %19 = getelementptr %struct.disk_stats, ptr %1, i32 0, i32 3, i32 2
  %20 = getelementptr [4 x i64], ptr %1, i32 0, i32 3
  %21 = getelementptr %struct.disk_stats, ptr %1, i32 0, i32 1, i32 3
  %22 = getelementptr %struct.disk_stats, ptr %1, i32 0, i32 2, i32 3
  %23 = getelementptr %struct.disk_stats, ptr %1, i32 0, i32 3, i32 3
  br label %24

24:                                               ; preds = %24, %6
  %25 = phi i32 [ 0, %6 ], [ %94, %24 ]
  %26 = phi i32 [ 0, %6 ], [ %91, %24 ]
  %27 = phi i32 [ 0, %6 ], [ %88, %24 ]
  %28 = phi i64 [ 0, %6 ], [ %85, %24 ]
  %29 = phi i32 [ 0, %6 ], [ %82, %24 ]
  %30 = phi i32 [ 0, %6 ], [ %79, %24 ]
  %31 = phi i32 [ 0, %6 ], [ %76, %24 ]
  %32 = phi i64 [ 0, %6 ], [ %73, %24 ]
  %33 = phi i32 [ 0, %6 ], [ %70, %24 ]
  %34 = phi i32 [ 0, %6 ], [ %67, %24 ]
  %35 = phi i32 [ 0, %6 ], [ %64, %24 ]
  %36 = phi i64 [ 0, %6 ], [ %61, %24 ]
  %37 = phi i32 [ 0, %6 ], [ %58, %24 ]
  %38 = phi i32 [ 0, %6 ], [ %55, %24 ]
  %39 = phi i32 [ 0, %6 ], [ %52, %24 ]
  %40 = phi i64 [ 0, %6 ], [ %49, %24 ]
  %41 = phi i32 [ %3, %6 ], [ %99, %24 ]
  %42 = load ptr, ptr %7, align 8
  %43 = ptrtoint ptr %42 to i32
  %44 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %43
  %47 = inttoptr i32 %46 to ptr
  %48 = load i64, ptr %47, align 8
  %49 = add i64 %40, %48
  store i64 %49, ptr %1, align 8
  %50 = getelementptr %struct.disk_stats, ptr %47, i32 0, i32 1, i32 0
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %39, %51
  store i32 %52, ptr %9, align 4
  %53 = getelementptr %struct.disk_stats, ptr %47, i32 0, i32 2, i32 0
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %38, %54
  store i32 %55, ptr %10, align 4
  %56 = getelementptr %struct.disk_stats, ptr %47, i32 0, i32 3, i32 0
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %37, %57
  store i32 %58, ptr %11, align 4
  %59 = getelementptr [4 x i64], ptr %47, i32 0, i32 1
  %60 = load i64, ptr %59, align 8
  %61 = add i64 %36, %60
  store i64 %61, ptr %12, align 8
  %62 = getelementptr %struct.disk_stats, ptr %47, i32 0, i32 1, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %35, %63
  store i32 %64, ptr %13, align 4
  %65 = getelementptr %struct.disk_stats, ptr %47, i32 0, i32 2, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %34, %66
  store i32 %67, ptr %14, align 4
  %68 = getelementptr %struct.disk_stats, ptr %47, i32 0, i32 3, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %33, %69
  store i32 %70, ptr %15, align 4
  %71 = getelementptr [4 x i64], ptr %47, i32 0, i32 2
  %72 = load i64, ptr %71, align 8
  %73 = add i64 %32, %72
  store i64 %73, ptr %16, align 8
  %74 = getelementptr %struct.disk_stats, ptr %47, i32 0, i32 1, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %31, %75
  store i32 %76, ptr %17, align 4
  %77 = getelementptr %struct.disk_stats, ptr %47, i32 0, i32 2, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %30, %78
  store i32 %79, ptr %18, align 4
  %80 = getelementptr %struct.disk_stats, ptr %47, i32 0, i32 3, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %29, %81
  store i32 %82, ptr %19, align 4
  %83 = getelementptr [4 x i64], ptr %47, i32 0, i32 3
  %84 = load i64, ptr %83, align 8
  %85 = add i64 %28, %84
  store i64 %85, ptr %20, align 8
  %86 = getelementptr %struct.disk_stats, ptr %47, i32 0, i32 1, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %27, %87
  store i32 %88, ptr %21, align 4
  %89 = getelementptr %struct.disk_stats, ptr %47, i32 0, i32 2, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %26, %90
  store i32 %91, ptr %22, align 4
  %92 = getelementptr %struct.disk_stats, ptr %47, i32 0, i32 3, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %25, %93
  store i32 %94, ptr %23, align 4
  %95 = getelementptr inbounds %struct.disk_stats, ptr %47, i32 0, i32 4
  %96 = load i32, ptr %95, align 8
  %97 = load i32, ptr %8, align 8
  %98 = add i32 %97, %96
  store i32 %98, ptr %8, align 8
  %99 = tail call i32 @cpumask_next(i32 noundef %41, ptr noundef nonnull @__cpu_possible_mask) #18
  %100 = load i32, ptr @nr_cpu_ids, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %24, label %102

102:                                              ; preds = %24, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_in_flight(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @part_inflight_show(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca [2 x i32], align 8
  %5 = getelementptr i8, ptr %0, i32 500
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store i64 0, ptr %4, align 8, !annotation !20
  %7 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %0, i32 -48
  call void @blk_mq_in_flight_rw(ptr noundef %6, ptr noundef %11, ptr noundef nonnull %4) #15
  %12 = load i32, ptr %4, align 8
  %13 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  br label %47

15:                                               ; preds = %3
  store i32 0, ptr %4, align 8
  %16 = getelementptr inbounds i32, ptr %4, i32 1
  store i32 0, ptr %16, align 4
  %17 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %0, i32 -32
  %22 = load ptr, ptr %21, align 8
  %23 = ptrtoint ptr %22 to i32
  br label %24

24:                                               ; preds = %24, %20
  %25 = phi i32 [ 0, %20 ], [ %34, %24 ]
  %26 = phi i32 [ %17, %20 ], [ %38, %24 ]
  %27 = phi i32 [ 0, %20 ], [ %37, %24 ]
  %28 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %23
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr inbounds %struct.disk_stats, ptr %31, i32 0, i32 5
  %33 = load volatile i32, ptr %32, align 4
  %34 = add i32 %33, %25
  store i32 %34, ptr %4, align 8
  %35 = getelementptr %struct.disk_stats, ptr %31, i32 0, i32 5, i32 1
  %36 = load volatile i32, ptr %35, align 4
  %37 = add i32 %36, %27
  store i32 %37, ptr %16, align 4
  %38 = tail call i32 @cpumask_next(i32 noundef %26, ptr noundef nonnull @__cpu_possible_mask) #18
  %39 = icmp ult i32 %38, %18
  br i1 %39, label %24, label %40

40:                                               ; preds = %24
  %41 = icmp slt i32 %34, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  store i32 0, ptr %4, align 8
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ 0, %42 ], [ %34, %40 ]
  %45 = icmp slt i32 %37, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, ptr %16, align 4
  br label %47

47:                                               ; preds = %46, %43, %15, %10
  %48 = phi i32 [ 0, %46 ], [ %37, %43 ], [ 0, %15 ], [ %14, %10 ]
  %49 = phi i32 [ %44, %46 ], [ %44, %43 ], [ 0, %15 ], [ %12, %10 ]
  %50 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %49, i32 noundef %48)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_in_flight_rw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @block_uevent(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 496
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 24
  %6 = load i64, ptr %5, align 8
  %7 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.34, i64 noundef %6) #15
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @block_devnode(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 496
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.block_device_operations, ptr %8, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = tail call ptr %10(ptr noundef %6, ptr noundef %1) #15
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @disk_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 496
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 27, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ne ptr %9, null
  %11 = load i1, ptr @disk_release.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !18

14:                                               ; preds = %1
  store i1 true, ptr @disk_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1122, i32 noundef 9, ptr noundef null) #15
  br label %15

15:                                               ; preds = %14, %1
  %16 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  tail call void @blk_mq_cancel_work_sync(ptr noundef %17) #15
  tail call void @disk_release_events(ptr noundef %3) #15
  %18 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #15
  %20 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 6
  tail call void @xa_destroy(ptr noundef %20) #15
  %21 = load ptr, ptr %16, align 4
  %22 = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 15
  store ptr null, ptr %22, align 8
  %23 = load ptr, ptr %16, align 4
  tail call void @blk_put_queue(ptr noundef %23) #15
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.block_device, ptr %24, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  tail call void @iput(ptr noundef %26) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @proc_genhd_init() #9 section ".init.text" {
  %1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.50, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @diskstats_op, i32 noundef 0, ptr noundef null) #15
  %2 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.51, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @partitions_op, i32 noundef 0, ptr noundef null) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @part_devt(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 6
  %4 = zext i8 %1 to i32
  %5 = tail call ptr @xa_load(ptr noundef %3, i32 noundef %4) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ 0, %2 ]
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_lookup_devt(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.class_dev_iter, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !20
  call void @class_dev_iter_init(ptr noundef nonnull %3, ptr noundef nonnull @block_class, ptr noundef null, ptr noundef nonnull @disk_type) #15
  %4 = call ptr @class_dev_iter_next(ptr noundef nonnull %3) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %2
  %7 = and i32 %1, 255
  br label %8

8:                                                ; preds = %42, %6
  %9 = phi ptr [ %4, %6 ], [ %44, %42 ]
  %10 = phi i32 [ 0, %6 ], [ %43, %42 ]
  %11 = getelementptr i8, ptr %9, i32 496
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load ptr, ptr %9, align 4
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi ptr [ %17, %16 ], [ %14, %8 ]
  %20 = call i32 @strcmp(ptr noundef %19, ptr noundef %0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = icmp sgt i32 %24, %1
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, -1048576
  %30 = and i32 %28, 1048575
  %31 = add i32 %30, %1
  %32 = or i32 %31, %29
  br label %42

33:                                               ; preds = %22
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %34 = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 6
  %35 = call ptr @xa_load(ptr noundef %34, i32 noundef %7) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  br label %42

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.block_device, ptr %35, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %37, %26, %18
  %43 = phi i32 [ %10, %18 ], [ %32, %26 ], [ 0, %38 ], [ 0, %37 ]
  %44 = call ptr @class_dev_iter_next(ptr noundef nonnull %3) #15
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %8

46:                                               ; preds = %42, %38, %2
  %47 = phi i32 [ 0, %2 ], [ %40, %38 ], [ %43, %42 ]
  call void @class_dev_iter_exit(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__alloc_disk_node(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call zeroext i1 @blk_get_queue(ptr noundef %0) #15
  br i1 %4, label %5, label %50

5:                                                ; preds = %3
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 152) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %49, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @bdi_alloc(i32 noundef %1) #15
  %11 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 15
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %48, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 9
  store ptr %0, ptr %14, align 4
  %15 = tail call ptr @bdev_alloc(ptr noundef nonnull %7, i8 noundef zeroext 0) #15
  %16 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 7
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 21
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str.28, ptr noundef nonnull @__alloc_disk_node.__key) #15
  %21 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 6
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 6, i32 1
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 6, i32 2
  store ptr null, ptr %23, align 8
  %24 = load ptr, ptr %16, align 4
  tail call void @_raw_spin_lock(ptr noundef %21) #15
  %25 = tail call i32 @__xa_insert(ptr noundef %21, i32 noundef 0, ptr noundef %24, i32 noundef 3264) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %26 = load i16, ptr %21, align 8
  %27 = add i16 %26, 1
  store i16 %27, ptr %21, align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !15
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %18
  tail call void @rand_initialize_disk(ptr noundef nonnull %7) #15
  %30 = load ptr, ptr %16, align 4
  %31 = getelementptr inbounds %struct.block_device, ptr %30, i32 0, i32 10, i32 31
  store ptr @block_class, ptr %31, align 4
  %32 = load ptr, ptr %16, align 4
  %33 = getelementptr inbounds %struct.block_device, ptr %32, i32 0, i32 10, i32 4
  store ptr @disk_type, ptr %33, align 8
  %34 = load ptr, ptr %16, align 4
  %35 = getelementptr inbounds %struct.block_device, ptr %34, i32 0, i32 10
  tail call void @device_initialize(ptr noundef %35) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @diskseq) #15, !srcloc !24
  %36 = tail call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @diskseq, ptr nonnull @diskseq, i64 1, ptr nonnull elementtype(i64) @diskseq) #15, !srcloc !25
  %37 = extractvalue { i64, i32 } %36, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !26
  %38 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 24
  store i64 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 15
  store ptr %7, ptr %39, align 8
  br label %50

40:                                               ; preds = %18
  tail call void @xa_destroy(ptr noundef %21) #15
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr inbounds %struct.block_device, ptr %41, i32 0, i32 17
  store ptr null, ptr %42, align 8
  %43 = load ptr, ptr %16, align 4
  %44 = getelementptr inbounds %struct.block_device, ptr %43, i32 0, i32 7
  %45 = load ptr, ptr %44, align 4
  tail call void @iput(ptr noundef %45) #15
  br label %46

46:                                               ; preds = %40, %13
  %47 = load ptr, ptr %11, align 4
  tail call void @bdi_put(ptr noundef %47) #15
  br label %48

48:                                               ; preds = %46, %9
  tail call void @kfree(ptr noundef nonnull %7) #15
  br label %49

49:                                               ; preds = %48, %5
  tail call void @blk_put_queue(ptr noundef %0) #15
  br label %50

50:                                               ; preds = %49, %29, %3
  %51 = phi ptr [ null, %49 ], [ %7, %29 ], [ null, %3 ]
  ret ptr %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_get_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdi_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdev_alloc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rand_initialize_disk(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inc_diskseq(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @diskseq) #15, !srcloc !24
  %2 = tail call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @diskseq, ptr nonnull @diskseq, i64 1, ptr nonnull elementtype(i64) @diskseq) #15, !srcloc !25
  %3 = extractvalue { i64, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !26
  %4 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 24
  store i64 %3, ptr %4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdi_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_put_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__blk_alloc_disk(i32 noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @blk_alloc_queue(i32 noundef %0, i1 noundef zeroext false) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__alloc_disk_node(ptr noundef nonnull %3, i32 noundef %0, ptr undef)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @blk_cleanup_queue(ptr noundef nonnull %3) #15
  br label %9

9:                                                ; preds = %8, %5, %2
  %10 = phi ptr [ null, %8 ], [ null, %2 ], [ %6, %5 ]
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_alloc_queue(i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_disk(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void @put_device(ptr noundef %6) #15
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_cleanup_disk(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  tail call void @blk_cleanup_queue(ptr noundef %3) #15
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 10
  tail call void @put_device(ptr noundef %8) #15
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_disk_ro(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca [10 x i8], align 1
  %4 = alloca [2 x ptr], align 8
  %5 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 12
  br i1 %1, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %5) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %22

9:                                                ; preds = %2
  %10 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %5) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %14

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %3, ptr noundef nonnull align 1 dereferenceable(10) @__const.set_disk_ro_uevent.event, i32 10, i1 false) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store ptr %3, ptr %4, align 8
  %13 = getelementptr inbounds ptr, ptr %4, i32 1
  store ptr null, ptr %13, align 4
  br label %17

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %3, ptr noundef nonnull align 1 dereferenceable(10) @__const.set_disk_ro_uevent.event, i32 10, i1 false) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store ptr %3, ptr %4, align 8
  %15 = getelementptr inbounds ptr, ptr %4, i32 1
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds [10 x i8], ptr %3, i32 0, i32 8
  store i8 48, ptr %16, align 1
  br label %17

17:                                               ; preds = %14, %12
  %18 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 10
  %21 = call i32 @kobject_uevent_env(ptr noundef %20, i32 noundef 2, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #15
  br label %22

22:                                               ; preds = %17, %9, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__remove_inode_hash(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_dev_init() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @disk_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #13 {
  %4 = icmp eq ptr %1, @dev_attr_badblocks
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 496
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 22
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5, %3
  %12 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i16 [ %13, %11 ], [ 0, %5 ]
  ret i16 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disk_badblocks_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 22
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i16 10, ptr %2, align 1
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @badblocks_show(ptr noundef nonnull %7, ptr noundef %2, i32 noundef 0) #15
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i32 [ %11, %10 ], [ 1, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disk_badblocks_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 496
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 22
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @badblocks_store(ptr noundef nonnull %8, ptr noundef %2, i32 noundef %3, i32 noundef 0) #15
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ -6, %4 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @badblocks_show(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @badblocks_store(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disk_range_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disk_ext_range_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 256, i32 1
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disk_removable_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disk_hidden_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 1
  %9 = and i32 %8, 1
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disk_ro_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 4
  %9 = load i8, ptr %8, align 8, !range !27
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 12
  %13 = load volatile i32, ptr %12, align 4
  %14 = lshr i32 %13, 1
  %15 = and i32 %14, 1
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i32 [ 1, %3 ], [ %15, %11 ]
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %17)
  ret i32 %18
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disk_alignment_offset_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 32, i32 24
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 32, i32 10
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i32 [ %13, %11 ], [ -1, %3 ]
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %15)
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disk_discard_alignment_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 32, i32 25
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 32, i32 19
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i32 [ %13, %11 ], [ -1, %3 ]
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %15)
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @disk_capability_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.46, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @diskseq_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 24
  %7 = load i64, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.23, i64 noundef %7)
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disk_release_events(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @disk_seqf_start(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 12) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  store ptr %5, ptr %8, align 8
  tail call void @class_dev_iter_init(ptr noundef nonnull %5, ptr noundef nonnull @block_class, ptr noundef null, ptr noundef nonnull @disk_type) #15
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi i64 [ %3, %7 ], [ %14, %13 ]
  %11 = tail call ptr @class_dev_iter_next(ptr noundef nonnull %5) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = add i64 %10, -1
  %15 = icmp eq i64 %10, 0
  br i1 %15, label %16, label %9

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %11, i32 496
  %18 = load ptr, ptr %17, align 8
  br label %19

19:                                               ; preds = %16, %9, %2
  %20 = phi ptr [ %18, %16 ], [ inttoptr (i32 -12 to ptr), %2 ], [ null, %9 ]
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @disk_seqf_stop(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @class_dev_iter_exit(ptr noundef nonnull %4) #15
  tail call void @kfree(ptr noundef nonnull %4) #15
  store ptr null, ptr %3, align 8
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @disk_seqf_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #0 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @class_dev_iter_next(ptr noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %8, i32 496
  %12 = load ptr, ptr %11, align 8
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @diskstats_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.disk_stats, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %3, i8 0, i32 96, i1 false), !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 6
  %6 = call ptr @xa_find(ptr noundef %5, ptr noundef nonnull %4, i32 noundef -1, i32 noundef 8) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %119, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 9
  %10 = getelementptr inbounds %struct.disk_stats, ptr %3, i32 0, i32 2
  %11 = getelementptr inbounds %struct.disk_stats, ptr %3, i32 0, i32 3
  %12 = getelementptr inbounds %struct.disk_stats, ptr %3, i32 0, i32 1
  %13 = getelementptr inbounds %struct.disk_stats, ptr %3, i32 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.disk_stats, ptr %3, i32 0, i32 3, i32 1
  %15 = getelementptr inbounds %struct.disk_stats, ptr %3, i32 0, i32 1, i32 1
  %16 = getelementptr inbounds [4 x i64], ptr %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.disk_stats, ptr %3, i32 0, i32 4
  %18 = getelementptr inbounds [4 x i64], ptr %3, i32 0, i32 2
  %19 = getelementptr inbounds [4 x i64], ptr %3, i32 0, i32 3
  %20 = getelementptr inbounds %struct.disk_stats, ptr %3, i32 0, i32 2, i32 2
  %21 = getelementptr inbounds %struct.disk_stats, ptr %3, i32 0, i32 3, i32 2
  %22 = getelementptr inbounds %struct.disk_stats, ptr %3, i32 0, i32 1, i32 2
  %23 = getelementptr inbounds %struct.disk_stats, ptr %3, i32 0, i32 2, i32 3
  br label %24

24:                                               ; preds = %116, %8
  %25 = phi ptr [ %6, %8 ], [ %117, %116 ]
  %26 = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 15
  %27 = load i8, ptr %26, align 8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %116, label %33

33:                                               ; preds = %29, %24
  call fastcc void @part_stat_read_all(ptr noundef nonnull %25, ptr noundef nonnull %3)
  %34 = load ptr, ptr %9, align 4
  %35 = getelementptr inbounds %struct.request_queue, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = call i32 @blk_mq_in_flight(ptr noundef %34, ptr noundef nonnull %25) #15
  br label %66

40:                                               ; preds = %33
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %42 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  %43 = icmp ult i32 %42, %41
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = ptrtoint ptr %46 to i32
  br label %48

48:                                               ; preds = %48, %44
  %49 = phi i32 [ %42, %44 ], [ %61, %48 ]
  %50 = phi i32 [ 0, %44 ], [ %60, %48 ]
  %51 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %47
  %54 = inttoptr i32 %53 to ptr
  %55 = getelementptr inbounds %struct.disk_stats, ptr %54, i32 0, i32 5
  %56 = load volatile i32, ptr %55, align 4
  %57 = getelementptr %struct.disk_stats, ptr %54, i32 0, i32 5, i32 1
  %58 = load volatile i32, ptr %57, align 4
  %59 = add i32 %56, %50
  %60 = add i32 %59, %58
  %61 = call i32 @cpumask_next(i32 noundef %49, ptr noundef nonnull @__cpu_possible_mask) #18
  %62 = icmp ult i32 %61, %41
  br i1 %62, label %48, label %63

63:                                               ; preds = %48, %40
  %64 = phi i32 [ 0, %40 ], [ %60, %48 ]
  %65 = call i32 @llvm.smax.i32(i32 %64, i32 0) #15
  br label %66

66:                                               ; preds = %63, %38
  %67 = phi i32 [ %39, %38 ], [ %65, %63 ]
  %68 = getelementptr inbounds %struct.block_device, ptr %25, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = lshr i32 %69, 20
  %71 = and i32 %69, 1048575
  %72 = load i32, ptr %10, align 8
  %73 = load i32, ptr %11, align 8
  %74 = load i32, ptr %12, align 8
  %75 = load i64, ptr %3, align 8
  %76 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %75) #19, !srcloc !21
  %77 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %75, i64 %76, i32 0) #19, !srcloc !22
  %78 = extractvalue { i64, i32 } %77, 0
  %79 = lshr i64 %78, 18
  %80 = trunc i64 %79 to i32
  %81 = load i32, ptr %13, align 4
  %82 = load i32, ptr %14, align 4
  %83 = load i32, ptr %15, align 4
  %84 = load i64, ptr %16, align 8
  %85 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %84) #19, !srcloc !21
  %86 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %84, i64 %85, i32 0) #19, !srcloc !22
  %87 = extractvalue { i64, i32 } %86, 0
  %88 = lshr i64 %87, 18
  %89 = trunc i64 %88 to i32
  %90 = load i32, ptr %17, align 8
  %91 = call i32 @jiffies_to_msecs(i32 noundef %90) #15
  %92 = add i64 %84, %75
  %93 = load i64, ptr %18, align 8
  %94 = add i64 %92, %93
  %95 = load i64, ptr %19, align 8
  %96 = add i64 %94, %95
  %97 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %96) #19, !srcloc !21
  %98 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %96, i64 %97, i32 0) #19, !srcloc !22
  %99 = extractvalue { i64, i32 } %98, 0
  %100 = lshr i64 %99, 18
  %101 = trunc i64 %100 to i32
  %102 = load i32, ptr %20, align 8
  %103 = load i32, ptr %21, align 8
  %104 = load i32, ptr %22, align 8
  %105 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %93) #19, !srcloc !21
  %106 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %93, i64 %105, i32 0) #19, !srcloc !22
  %107 = extractvalue { i64, i32 } %106, 0
  %108 = lshr i64 %107, 18
  %109 = trunc i64 %108 to i32
  %110 = load i32, ptr %23, align 4
  %111 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %95) #19, !srcloc !21
  %112 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %95, i64 %111, i32 0) #19, !srcloc !22
  %113 = extractvalue { i64, i32 } %112, 0
  %114 = lshr i64 %113, 18
  %115 = trunc i64 %114 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %70, i32 noundef %71, ptr noundef nonnull %25, i32 noundef %72, i32 noundef %73, i32 noundef %74, i32 noundef %80, i32 noundef %81, i32 noundef %82, i32 noundef %83, i32 noundef %89, i32 noundef %67, i32 noundef %91, i32 noundef %101, i32 noundef %102, i32 noundef %103, i32 noundef %104, i32 noundef %109, i32 noundef %110, i32 noundef %115) #15
  br label %116

116:                                              ; preds = %66, %29
  %117 = call ptr @xa_find_after(ptr noundef %5, ptr noundef nonnull %4, i32 noundef -1, i32 noundef 8) #15
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %24

119:                                              ; preds = %116, %2
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @show_partition_start(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 12) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  store ptr %5, ptr %8, align 8
  tail call void @class_dev_iter_init(ptr noundef nonnull %5, ptr noundef nonnull @block_class, ptr noundef null, ptr noundef nonnull @disk_type) #15
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi i64 [ %3, %7 ], [ %14, %13 ]
  %11 = tail call ptr @class_dev_iter_next(ptr noundef nonnull %5) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = add i64 %10, -1
  %15 = icmp eq i64 %10, 0
  br i1 %15, label %16, label %9

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %11, i32 496
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %21 = or i1 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i64, ptr %1, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.53) #15
  br label %26

26:                                               ; preds = %25, %22, %16, %9, %2
  %27 = phi ptr [ %18, %25 ], [ %18, %22 ], [ %18, %16 ], [ inttoptr (i32 -12 to ptr), %2 ], [ null, %9 ]
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_partition(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  store i32 0, ptr %3, align 4
  %15 = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 6
  %16 = call ptr @xa_find(ptr noundef %15, ptr noundef nonnull %3, i32 noundef -1, i32 noundef 8) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %29, %14
  %19 = phi ptr [ %30, %29 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 20
  %27 = and i32 %25, 1048575
  %28 = lshr i64 %21, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %26, i32 noundef %27, i64 noundef %28, ptr noundef nonnull %19) #15
  br label %29

29:                                               ; preds = %23, %18
  %30 = call ptr @xa_find_after(ptr noundef %15, ptr noundef nonnull %3, i32 noundef -1, i32 noundef 8) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %18

32:                                               ; preds = %29, %14
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !17
  br label %33

33:                                               ; preds = %32, %9, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind readnone }

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
!8 = !{i64 2151548096}
!9 = !{i64 2149416938}
!10 = !{i64 2149417239}
!11 = !{i64 2151559715}
!12 = !{i64 2148961063}
!13 = !{i64 2148956887}
!14 = !{i64 2148956962, i64 2148956989, i64 2148957036, i64 2148957058, i64 2148957086, i64 2148957106}
!15 = !{i64 2148984066}
!16 = !{i64 2149079418}
!17 = !{i64 2149079635}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{!"auto-init"}
!21 = !{i64 439109, i64 439136}
!22 = !{i64 439804, i64 439831, i64 439864, i64 439885, i64 439912, i64 439938}
!23 = !{i64 2148215242}
!24 = !{i64 576538, i64 2148066509, i64 2148066535, i64 2148066582, i64 2148066604, i64 2148066632, i64 2148066652}
!25 = !{i64 2148089907, i64 2148089941, i64 2148089975, i64 2148090009, i64 2148090043, i64 2148090079, i64 2148090102}
!26 = !{i64 2148215447}
!27 = !{i8 0, i8 2}
