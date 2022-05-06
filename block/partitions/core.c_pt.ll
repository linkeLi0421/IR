; ModuleID = '/llk/IR/block/partitions/core.c_pt.bc'
source_filename = "../block/partitions/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bdev_disk_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22bdev_disk_changed\22\09\09\09\09\09"
module asm "__kstrtabns_bdev_disk_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.81 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.page = type { i32, %union.anon.11, %union.anon.24, %struct.atomic_t }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.24 = type { %struct.atomic_t }

@.str = private unnamed_addr constant [10 x i8] c"partition\00", align 1
@part_attr_groups = internal global [2 x ptr] [ptr @part_attr_group, ptr null], align 4
@part_type = dso_local global %struct.device_type { ptr @.str, ptr @part_attr_groups, ptr @part_uevent, ptr null, ptr @part_release, ptr null }, align 4
@__kstrtab_bdev_disk_changed = external dso_local constant [0 x i8], align 1
@__kstrtabns_bdev_disk_changed = external dso_local constant [0 x i8], align 1
@__ksymtab_bdev_disk_changed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bdev_disk_changed to i32), ptr @__kstrtab_bdev_disk_changed, ptr @__kstrtabns_bdev_disk_changed }, section "___ksymtab_gpl+bdev_disk_changed", align 4
@part_attr_group = internal global %struct.attribute_group { ptr null, ptr null, ptr null, ptr @part_attrs, ptr null }, align 4
@part_attrs = internal global [9 x ptr] [ptr @dev_attr_partition, ptr @dev_attr_start, ptr @dev_attr_size, ptr @dev_attr_ro, ptr @dev_attr_alignment_offset, ptr @dev_attr_discard_alignment, ptr @dev_attr_stat, ptr @dev_attr_inflight, ptr null], align 4
@dev_attr_partition = internal global %struct.device_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @part_partition_show, ptr null }, align 4
@dev_attr_start = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @part_start_show, ptr null }, align 4
@dev_attr_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @part_size_show, ptr null }, align 4
@dev_attr_ro = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @part_ro_show, ptr null }, align 4
@dev_attr_alignment_offset = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @part_alignment_offset_show, ptr null }, align 4
@dev_attr_discard_alignment = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @part_discard_alignment_show, ptr null }, align 4
@dev_attr_stat = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @part_stat_show, ptr null }, align 4
@dev_attr_inflight = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @part_inflight_show, ptr null }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"alignment_offset\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"discard_alignment\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"inflight\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"PARTN=%u\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"PARTNAME=%s\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"\014%s: partitions not supported on host managed zoned block device\0A\00", align 1
@.str.14 = private unnamed_addr constant [73 x i8] c"\016%s: disabling host aware zoned block device support due to partitions\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%sp%d\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@block_class = external dso_local global %struct.class, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"holders\00", align 1
@dev_attr_whole_disk = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @whole_disk_show, ptr null }, align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"whole_disk\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"\014%s: partition table beyond EOD, \00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"\014%s: ignoring partition table on host managed zoned block device\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"\014%s: partition table partially beyond EOD, \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" %s:\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"\016%s\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c" unable to read partition table\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.27 = private unnamed_addr constant [13 x i8] c"\01ctruncated\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"\01cenabling native capacity\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"\014%s: p%d start %llu is beyond EOD, \00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"\014%s: p%d size %llu extends beyond EOD, \00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"\013 %s: p%d could not be added: %ld\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_bdev_disk_changed], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @part_uevent(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 488
  %4 = load i8, ptr %3, align 8
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %5) #14
  %7 = getelementptr i8, ptr %0, i32 532
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.partition_meta_info, ptr %8, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef %11) #14
  br label %16

16:                                               ; preds = %14, %10, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @part_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 496
  %3 = load ptr, ptr %2, align 8
  tail call void @put_disk(ptr noundef %3) #14
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = load ptr, ptr %4, align 4
  tail call void @iput(ptr noundef %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdev_add_partition(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #14
  %7 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 27, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !8
  store i32 1, ptr %5, align 4
  %15 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 6
  %16 = call ptr @xa_find(ptr noundef %15, ptr noundef nonnull %5, i32 noundef -1, i32 noundef 8) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = add i64 %3, %2
  br label %20

20:                                               ; preds = %29, %18
  %21 = phi ptr [ %16, %18 ], [ %30, %29 ]
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.block_device, ptr %21, i32 0, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = add i64 %24, %22
  %26 = icmp ugt i64 %25, %2
  %27 = icmp ugt i64 %19, %22
  %28 = and i1 %27, %26
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = call ptr @xa_find_after(ptr noundef %15, ptr noundef nonnull %5, i32 noundef -1, i32 noundef 8) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %20

32:                                               ; preds = %20
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %38

33:                                               ; preds = %29, %14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %34 = call fastcc ptr @add_partition(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef 0, ptr noundef null)
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %34 to i32
  %37 = select i1 %35, i32 %36, i32 0
  br label %38

38:                                               ; preds = %33, %32, %4
  %39 = phi i32 [ %37, %33 ], [ -6, %4 ], [ -16, %32 ]
  call void @mutex_unlock(ptr noundef %6) #14
  ret i32 %39
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @add_partition(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 10
  %10 = icmp sgt i32 %1, 255
  br i1 %10, label %128, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 32, i32 27
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %22 [
    i32 2, label %16
    i32 1, label %19
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 3
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %17) #15
  br label %128

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 3
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %20) #15
  tail call void @blk_queue_set_zoned(ptr noundef %0, i32 noundef 0) #14
  br label %22

22:                                               ; preds = %19, %11
  %23 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 6
  %24 = tail call ptr @xa_load(ptr noundef %23, i32 noundef %1) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %128

26:                                               ; preds = %22
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr inbounds %struct.block_device, ptr %27, i32 0, i32 10
  %29 = tail call ptr @get_device(ptr noundef %28) #14
  %30 = trunc i32 %1 to i8
  %31 = tail call ptr @bdev_alloc(ptr noundef %0, i8 noundef zeroext %30) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %127, label %33

33:                                               ; preds = %26
  store i64 %2, ptr %31, align 8
  %34 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %34) #14
  %35 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = shl i64 %3, 9
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %38 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 22
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !11
  %41 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 13
  store i64 %37, ptr %41, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !12
  %42 = load i32, ptr %38, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %38, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %44 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 1
  store i64 %3, ptr %44, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %45 = load i16, ptr %34, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %47 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 10
  %48 = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 10, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %33
  %52 = load ptr, ptr %9, align 4
  br label %53

53:                                               ; preds = %51, %33
  %54 = phi ptr [ %52, %51 ], [ %49, %33 ]
  %55 = tail call i32 @strlen(ptr noundef %54)
  %56 = add i32 %55, -1
  %57 = getelementptr i8, ptr %54, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %59, -58
  %61 = icmp ult i32 %60, -10
  %62 = select i1 %61, ptr @.str.16, ptr @.str.15
  %63 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %47, ptr noundef nonnull %62, ptr noundef %54, i32 noundef %1) #14
  tail call void @device_initialize(ptr noundef %47) #14
  %64 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 10, i32 31
  store ptr @block_class, ptr %64, align 4
  %65 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 10, i32 4
  store ptr @part_type, ptr %65, align 8
  %66 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 10, i32 1
  store ptr %9, ptr %66, align 4
  %67 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 15
  %68 = load i8, ptr %67, align 8
  %69 = zext i8 %68 to i32
  %70 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = icmp sgt i32 %71, %69
  br i1 %72, label %73, label %80

73:                                               ; preds = %53
  %74 = load i32, ptr %0, align 8
  %75 = shl i32 %74, 20
  %76 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, %69
  %79 = or i32 %78, %75
  br label %85

80:                                               ; preds = %53
  %81 = tail call i32 @blk_alloc_ext_minor() #14
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %124, label %83

83:                                               ; preds = %80
  %84 = or i32 %81, 271581184
  br label %85

85:                                               ; preds = %83, %73
  %86 = phi i32 [ %79, %73 ], [ %84, %83 ]
  %87 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 10, i32 27
  store i32 %86, ptr %87, align 8
  %88 = icmp eq ptr %5, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = tail call ptr @kmemdup(ptr noundef nonnull %5, i32 noundef 101, i32 noundef 3264) #14
  %91 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 22
  store ptr %90, ptr %91, align 4
  %92 = icmp eq ptr %90, null
  br i1 %92, label %124, label %93

93:                                               ; preds = %89, %85
  %94 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 10, i32 0, i32 7
  %95 = load i8, ptr %94, align 8
  %96 = or i8 %95, 16
  store i8 %96, ptr %94, align 8
  %97 = tail call i32 @device_add(ptr noundef %47) #14
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %124

99:                                               ; preds = %93
  %100 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.17, ptr noundef %47) #14
  %101 = getelementptr inbounds %struct.block_device, ptr %31, i32 0, i32 14
  store ptr %100, ptr %101, align 4
  %102 = icmp eq ptr %100, null
  br i1 %102, label %121, label %103

103:                                              ; preds = %99
  %104 = load i8, ptr %94, align 8
  %105 = and i8 %104, -17
  store i8 %105, ptr %94, align 8
  %106 = and i32 %4, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = tail call i32 @device_create_file(ptr noundef %47, ptr noundef nonnull @dev_attr_whole_disk) #14
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %108, %103
  %112 = tail call fastcc i32 @xa_insert(ptr noundef %23, i32 noundef %1, ptr noundef nonnull %31)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  tail call void @bdev_add(ptr noundef nonnull %31, i32 noundef %86) #14
  %115 = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 10, i32 0, i32 7
  %116 = load i8, ptr %115, align 8
  %117 = and i8 %116, 16
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = tail call i32 @kobject_uevent(ptr noundef %47, i32 noundef 0) #14
  br label %128

121:                                              ; preds = %111, %108, %99
  %122 = phi i32 [ %109, %108 ], [ %112, %111 ], [ -12, %99 ]
  %123 = load ptr, ptr %101, align 4
  tail call void @kobject_put(ptr noundef %123) #14
  tail call void @device_del(ptr noundef %47) #14
  br label %124

124:                                              ; preds = %121, %93, %89, %80
  %125 = phi i32 [ %97, %93 ], [ %122, %121 ], [ -12, %89 ], [ %81, %80 ]
  tail call void @put_device(ptr noundef %47) #14
  %126 = inttoptr i32 %125 to ptr
  br label %128

127:                                              ; preds = %26
  tail call void @put_disk(ptr noundef %0) #14
  br label %128

128:                                              ; preds = %127, %124, %119, %114, %22, %16, %6
  %129 = phi ptr [ %126, %124 ], [ inttoptr (i32 -12 to ptr), %127 ], [ inttoptr (i32 -6 to ptr), %16 ], [ %31, %119 ], [ %31, %114 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -16 to ptr), %22 ]
  ret ptr %129
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdev_del_partition(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 6
  %5 = tail call ptr @xa_load(ptr noundef %4, i32 noundef %1) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call fastcc void @delete_partition(ptr noundef nonnull %5)
  br label %12

12:                                               ; preds = %11, %7, %2
  %13 = phi i32 [ -16, %7 ], [ 0, %11 ], [ -6, %2 ]
  tail call void @mutex_unlock(ptr noundef %3) #14
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @delete_partition(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %3 = tail call i32 @fsync_bdev(ptr noundef %0) #14
  %4 = tail call i32 @__invalidate_device(ptr noundef %0, i1 noundef zeroext true) #14
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 15
  %8 = load i8, ptr %7, align 8
  %9 = zext i8 %8 to i32
  %10 = tail call ptr @xa_erase(ptr noundef %6, i32 noundef %9) #14
  %11 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  tail call void @kobject_put(ptr noundef %12) #14
  %13 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 10
  tail call void @device_del(ptr noundef %13) #14
  %14 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 27, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 27
  %20 = icmp eq ptr %17, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  tail call void @__remove_inode_hash(ptr noundef %15) #14
  br label %23

23:                                               ; preds = %22, %1
  tail call void @put_device(ptr noundef %13) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdev_resize_partition(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #14
  %7 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 6
  %8 = tail call ptr @xa_load(ptr noundef %7, i32 noundef %1) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %50, label %10

10:                                               ; preds = %4
  %11 = load i64, ptr %8, align 8
  %12 = icmp eq i64 %11, %2
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !8
  store i32 1, ptr %5, align 4
  %14 = call ptr @xa_find(ptr noundef %7, ptr noundef nonnull %5, i32 noundef -1, i32 noundef 8) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %13
  %17 = add i64 %3, %2
  br label %18

18:                                               ; preds = %32, %16
  %19 = phi ptr [ %14, %16 ], [ %33, %32 ]
  %20 = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 15
  %21 = load i8, ptr %20, align 8
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = load i64, ptr %19, align 8
  %26 = getelementptr inbounds %struct.block_device, ptr %19, i32 0, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = add i64 %27, %25
  %29 = icmp ugt i64 %28, %2
  %30 = icmp ugt i64 %17, %25
  %31 = and i1 %30, %29
  br i1 %31, label %35, label %32

32:                                               ; preds = %24, %18
  %33 = call ptr @xa_find_after(ptr noundef %7, ptr noundef nonnull %5, i32 noundef -1, i32 noundef 8) #14
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %18

35:                                               ; preds = %24
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %50

36:                                               ; preds = %32, %13
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %37 = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 16
  call void @_raw_spin_lock(ptr noundef %37) #14
  %38 = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = shl i64 %3, 9
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  %41 = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 22
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !11
  %44 = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 13
  store i64 %40, ptr %44, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #14, !srcloc !12
  %45 = load i32, ptr %41, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %41, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %47 = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 1
  store i64 %3, ptr %47, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %48 = load i16, ptr %37, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %37, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  br label %50

50:                                               ; preds = %36, %35, %10, %4
  %51 = phi i32 [ -22, %10 ], [ -16, %35 ], [ 0, %36 ], [ -6, %4 ]
  call void @mutex_unlock(ptr noundef %6) #14
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_drop_partitions(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 6
  %4 = call ptr @xa_find(ptr noundef %3, ptr noundef nonnull %2, i32 noundef -1, i32 noundef 8) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  call fastcc void @delete_partition(ptr noundef nonnull %7)
  %8 = call ptr @xa_find_after(ptr noundef %3, ptr noundef nonnull %2, i32 noundef -1, i32 noundef 8) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bdev_disk_changed(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 27, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %269, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 14
  %13 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 12
  %15 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 11
  %16 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 3
  %17 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 9
  %18 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 8
  br label %19

19:                                               ; preds = %263, %11
  %20 = phi i32 [ -11, %263 ], [ 0, %11 ]
  %21 = load i32, ptr %12, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %269

23:                                               ; preds = %19
  %24 = load ptr, ptr %4, align 4
  %25 = call i32 @sync_blockdev(ptr noundef %24) #14
  %26 = load ptr, ptr %4, align 4
  call void @invalidate_bdev(ptr noundef %26) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 1, ptr %3, align 4
  %27 = call ptr @xa_find(ptr noundef %13, ptr noundef nonnull %3, i32 noundef -1, i32 noundef 8) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %29, %23
  %30 = phi ptr [ %31, %29 ], [ %27, %23 ]
  call fastcc void @delete_partition(ptr noundef nonnull %30) #14
  %31 = call ptr @xa_find_after(ptr noundef %13, ptr noundef nonnull %3, i32 noundef -1, i32 noundef 8) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %29

33:                                               ; preds = %29, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  call void @_clear_bit(i32 noundef 0, ptr noundef %14) #14
  br i1 %1, label %34, label %44

34:                                               ; preds = %33
  %35 = load i32, ptr %15, align 4
  %36 = and i32 %35, 5
  %37 = icmp eq i32 %36, 5
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  call void @set_capacity(ptr noundef %0, i64 noundef 0) #14
  br label %39

39:                                               ; preds = %38, %34
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr inbounds %struct.block_device, ptr %40, i32 0, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %266, label %49

44:                                               ; preds = %33
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr inbounds %struct.block_device, ptr %45, i32 0, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %269, label %49

49:                                               ; preds = %44, %39
  %50 = load i32, ptr %15, align 4
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %269

53:                                               ; preds = %49
  %54 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %55 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 56) #16
  %56 = icmp eq ptr %55, null
  br i1 %56, label %269, label %57

57:                                               ; preds = %53
  %58 = call noalias ptr @vzalloc(i32 noundef 32768) #17
  %59 = getelementptr inbounds %struct.parsed_partitions, ptr %55, i32 0, i32 2
  store ptr %58, ptr %59, align 4
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  call void @kfree(ptr noundef nonnull %55) #14
  br label %269

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.parsed_partitions, ptr %55, i32 0, i32 4
  store i32 256, ptr %63, align 4
  %64 = call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #14
  %65 = inttoptr i32 %64 to ptr
  %66 = getelementptr inbounds %struct.parsed_partitions, ptr %55, i32 0, i32 6
  store ptr %65, ptr %66, align 4
  %67 = icmp eq i32 %64, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  call void @vfree(ptr noundef nonnull %58) #14
  call void @kfree(ptr noundef nonnull %55) #14
  br label %269

69:                                               ; preds = %62
  store i8 0, ptr %65, align 1
  store ptr %0, ptr %55, align 8
  %70 = getelementptr inbounds %struct.parsed_partitions, ptr %55, i32 0, i32 1
  %71 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %70, i32 noundef 32, ptr noundef nonnull @.str.22, ptr noundef %16) #14
  %72 = load ptr, ptr %66, align 4
  %73 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %72, i32 noundef 4096, ptr noundef nonnull @.str.23, ptr noundef %70) #14
  %74 = call i32 @strlen(ptr noundef %70) #14
  %75 = add i32 %74, -1
  %76 = getelementptr %struct.parsed_partitions, ptr %55, i32 0, i32 1, i32 %75
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = add nsw i32 %78, -58
  %80 = icmp ult i32 %79, -10
  br i1 %80, label %82, label %81

81:                                               ; preds = %69
  store i16 112, ptr %70, align 4
  br label %82

82:                                               ; preds = %81, %69
  %83 = load ptr, ptr %59, align 4
  %84 = load i32, ptr %63, align 4
  %85 = shl i32 %84, 7
  call void @llvm.memset.p0.i32(ptr align 8 %83, i8 0, i32 %85, i1 false) #14
  %86 = call i32 @cmdline_partition(ptr noundef nonnull %55) #14
  %87 = call i32 @llvm.smin.i32(i32 %86, i32 0)
  %88 = icmp sgt i32 %86, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %82
  %90 = load ptr, ptr %59, align 4
  %91 = load i32, ptr %63, align 4
  %92 = shl i32 %91, 7
  call void @llvm.memset.p0.i32(ptr align 8 %90, i8 0, i32 %92, i1 false) #14
  %93 = call i32 @efi_partition(ptr noundef nonnull %55) #14
  %94 = icmp slt i32 %93, 0
  %95 = select i1 %94, i32 %93, i32 %87
  %96 = icmp sgt i32 %93, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %89
  %98 = load ptr, ptr %59, align 4
  %99 = load i32, ptr %63, align 4
  %100 = shl i32 %99, 7
  call void @llvm.memset.p0.i32(ptr align 8 %98, i8 0, i32 %100, i1 false) #14
  %101 = call i32 @msdos_partition(ptr noundef nonnull %55) #14
  %102 = icmp slt i32 %101, 0
  %103 = select i1 %102, i32 %101, i32 %95
  br label %104

104:                                              ; preds = %97, %89, %82
  %105 = phi i32 [ %86, %82 ], [ %93, %89 ], [ %101, %97 ]
  %106 = phi i32 [ %87, %82 ], [ %95, %89 ], [ %103, %97 ]
  %107 = icmp slt i32 %105, 1
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %66, align 4
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %109) #15
  %111 = load ptr, ptr %66, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @free_pages(i32 noundef %112, i32 noundef 0) #14
  br label %129

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.parsed_partitions, ptr %55, i32 0, i32 5
  %115 = load i8, ptr %114, align 8, !range !18
  %116 = icmp eq i8 %115, 0
  %117 = select i1 %116, i32 %106, i32 -28
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = load ptr, ptr %66, align 4
  %121 = call i32 @strlcat(ptr noundef %120, ptr noundef nonnull @.str.26, i32 noundef 4096) #14
  %122 = load ptr, ptr %66, align 4
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %122) #15
  br label %124

124:                                              ; preds = %119, %113
  %125 = load ptr, ptr %66, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @free_pages(i32 noundef %126, i32 noundef 0) #14
  %127 = load ptr, ptr %59, align 4
  call void @vfree(ptr noundef %127) #14
  call void @kfree(ptr noundef nonnull %55) #14
  %128 = inttoptr i32 %117 to ptr
  br label %129

129:                                              ; preds = %124, %108
  %130 = phi ptr [ %55, %108 ], [ %128, %124 ]
  %131 = icmp eq ptr %130, null
  br i1 %131, label %269, label %132

132:                                              ; preds = %129
  %133 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %134, label %152

134:                                              ; preds = %132
  %135 = icmp eq ptr %130, inttoptr (i32 -28 to ptr)
  br i1 %135, label %136, label %269

136:                                              ; preds = %134
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %16) #15
  %138 = load ptr, ptr %18, align 8
  %139 = getelementptr inbounds %struct.block_device_operations, ptr %138, i32 0, i32 7
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %150, label %142

142:                                              ; preds = %136
  %143 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %14) #14
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #15
  %147 = load ptr, ptr %18, align 8
  %148 = getelementptr inbounds %struct.block_device_operations, ptr %147, i32 0, i32 7
  %149 = load ptr, ptr %148, align 4
  call void %149(ptr noundef %0) #14
  br label %263

150:                                              ; preds = %142, %136
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #15
  br label %269

152:                                              ; preds = %132
  %153 = load ptr, ptr %17, align 4
  %154 = getelementptr inbounds %struct.request_queue, ptr %153, i32 0, i32 32, i32 27
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %16) #15
  br label %259

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.parsed_partitions, ptr %130, i32 0, i32 5
  %161 = load i8, ptr %160, align 4, !range !18
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %179, label %163

163:                                              ; preds = %159
  %164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %16) #15
  %165 = load ptr, ptr %18, align 8
  %166 = getelementptr inbounds %struct.block_device_operations, ptr %165, i32 0, i32 7
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %177, label %169

169:                                              ; preds = %163
  %170 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %14) #14
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #15
  %174 = load ptr, ptr %18, align 8
  %175 = getelementptr inbounds %struct.block_device_operations, ptr %174, i32 0, i32 7
  %176 = load ptr, ptr %175, align 4
  call void %176(ptr noundef %0) #14
  br label %259

177:                                              ; preds = %169, %163
  %178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #15
  br label %179

179:                                              ; preds = %177, %159
  %180 = load ptr, ptr %4, align 4
  %181 = getelementptr inbounds %struct.block_device, ptr %180, i32 0, i32 10
  %182 = call i32 @kobject_uevent(ptr noundef %181, i32 noundef 2) #14
  %183 = getelementptr inbounds %struct.parsed_partitions, ptr %130, i32 0, i32 4
  %184 = load i32, ptr %183, align 4
  %185 = icmp sgt i32 %184, 1
  br i1 %185, label %186, label %259

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.parsed_partitions, ptr %130, i32 0, i32 2
  br label %188

188:                                              ; preds = %255, %186
  %189 = phi i32 [ 1, %186 ], [ %256, %255 ]
  %190 = load ptr, ptr %187, align 4
  %191 = getelementptr %struct.anon.81, ptr %190, i32 %189
  %192 = getelementptr %struct.anon.81, ptr %190, i32 %189, i32 1
  %193 = load i64, ptr %192, align 8
  %194 = load i64, ptr %191, align 8
  %195 = icmp eq i64 %193, 0
  br i1 %195, label %255, label %196

196:                                              ; preds = %188
  %197 = load ptr, ptr %4, align 4
  %198 = getelementptr inbounds %struct.block_device, ptr %197, i32 0, i32 1
  %199 = load i64, ptr %198, align 8
  %200 = icmp ult i64 %194, %199
  br i1 %200, label %217, label %201

201:                                              ; preds = %196
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %16, i32 noundef %189, i64 noundef %194) #15
  %203 = load ptr, ptr %18, align 8
  %204 = getelementptr inbounds %struct.block_device_operations, ptr %203, i32 0, i32 7
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, null
  br i1 %206, label %210, label %207

207:                                              ; preds = %201
  %208 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %14) #14
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %207, %201
  %211 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #15
  br label %255

212:                                              ; preds = %207
  %213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #15
  %214 = load ptr, ptr %18, align 8
  %215 = getelementptr inbounds %struct.block_device_operations, ptr %214, i32 0, i32 7
  %216 = load ptr, ptr %215, align 4
  call void %216(ptr noundef %0) #14
  br label %259

217:                                              ; preds = %196
  %218 = add i64 %194, %193
  %219 = icmp ugt i64 %218, %199
  br i1 %219, label %220, label %241

220:                                              ; preds = %217
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %16, i32 noundef %189, i64 noundef %193) #15
  %222 = load ptr, ptr %18, align 8
  %223 = getelementptr inbounds %struct.block_device_operations, ptr %222, i32 0, i32 7
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %234, label %226

226:                                              ; preds = %220
  %227 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %14) #14
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  %230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #15
  %231 = load ptr, ptr %18, align 8
  %232 = getelementptr inbounds %struct.block_device_operations, ptr %231, i32 0, i32 7
  %233 = load ptr, ptr %232, align 4
  call void %233(ptr noundef %0) #14
  br label %259

234:                                              ; preds = %226, %220
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #15
  %236 = load ptr, ptr %4, align 4
  %237 = getelementptr inbounds %struct.block_device, ptr %236, i32 0, i32 1
  %238 = load i64, ptr %237, align 8
  %239 = sub i64 %238, %194
  %240 = load ptr, ptr %187, align 4
  br label %241

241:                                              ; preds = %234, %217
  %242 = phi ptr [ %240, %234 ], [ %190, %217 ]
  %243 = phi i64 [ %239, %234 ], [ %193, %217 ]
  %244 = getelementptr %struct.anon.81, ptr %242, i32 %189, i32 2
  %245 = load i32, ptr %244, align 8
  %246 = getelementptr %struct.anon.81, ptr %242, i32 %189, i32 4
  %247 = call fastcc ptr @add_partition(ptr noundef %0, i32 noundef %189, i64 noundef %194, i64 noundef %243, i32 noundef %245, ptr noundef %246) #14
  %248 = icmp ule ptr %247, inttoptr (i32 -4096 to ptr)
  %249 = icmp eq ptr %247, inttoptr (i32 -6 to ptr)
  %250 = or i1 %248, %249
  br i1 %250, label %255, label %251

251:                                              ; preds = %241
  %252 = ptrtoint ptr %247 to i32
  %253 = sub i32 0, %252
  %254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %16, i32 noundef %189, i32 noundef %253) #15
  br label %255

255:                                              ; preds = %251, %241, %210, %188
  %256 = add nuw nsw i32 %189, 1
  %257 = load i32, ptr %183, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %188, label %259

259:                                              ; preds = %255, %229, %212, %179, %172, %157
  %260 = phi i32 [ 0, %157 ], [ -11, %212 ], [ -11, %229 ], [ 0, %179 ], [ -11, %172 ], [ 0, %255 ]
  %261 = getelementptr inbounds %struct.parsed_partitions, ptr %130, i32 0, i32 2
  %262 = load ptr, ptr %261, align 4
  call void @vfree(ptr noundef %262) #14
  call void @kfree(ptr noundef nonnull %130) #14
  br label %263

263:                                              ; preds = %259, %145
  %264 = phi i32 [ %260, %259 ], [ -11, %145 ]
  %265 = icmp eq i32 %264, -11
  br i1 %265, label %19, label %269

266:                                              ; preds = %39
  %267 = getelementptr inbounds %struct.block_device, ptr %40, i32 0, i32 10
  %268 = call i32 @kobject_uevent(ptr noundef %267, i32 noundef 2) #14
  br label %269

269:                                              ; preds = %266, %263, %150, %134, %129, %68, %61, %53, %49, %44, %19, %2
  %270 = phi i32 [ -6, %2 ], [ %20, %266 ], [ -5, %150 ], [ 0, %61 ], [ 0, %68 ], [ 0, %49 ], [ 0, %129 ], [ 0, %53 ], [ -5, %134 ], [ %20, %44 ], [ %264, %263 ], [ -16, %19 ]
  ret i32 %270
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @read_part_sector(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = icmp ugt i64 %8, %1
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.parsed_partitions, ptr %0, i32 0, i32 5
  store i8 1, ptr %11, align 4
  br label %59

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.block_device, ptr %6, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 9
  %16 = load ptr, ptr %15, align 8
  %17 = lshr i64 %1, 3
  %18 = trunc i64 %17 to i32
  %19 = tail call ptr @read_cache_page(ptr noundef %16, i32 noundef %18, ptr noundef null, ptr noundef null) #14
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %58, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !prof !19

26:                                               ; preds = %21
  %27 = add i32 %23, -1
  br label %30

28:                                               ; preds = %21
  %29 = ptrtoint ptr %19 to i32
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = inttoptr i32 %31 to ptr
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 256
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  store ptr %19, ptr %2, align 4
  %37 = tail call ptr @page_address(ptr noundef %19) #14
  %38 = trunc i64 %1 to i32
  %39 = shl i32 %38, 9
  %40 = and i32 %39, 3584
  %41 = getelementptr i8, ptr %37, i32 %40
  br label %59

42:                                               ; preds = %30
  %43 = load volatile i32, ptr %22, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46, !prof !19

46:                                               ; preds = %42
  %47 = add i32 %43, -1
  br label %50

48:                                               ; preds = %42
  %49 = ptrtoint ptr %19 to i32
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = inttoptr i32 %51 to ptr
  %53 = getelementptr inbounds %struct.page, ptr %52, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #14, !srcloc !21
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 1, ptr elementtype(i32) %53) #14, !srcloc !22
  %55 = extractvalue { i32, i32 } %54, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !23
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  tail call void @__put_page(ptr noundef %52) #14
  br label %58

58:                                               ; preds = %57, %50, %12
  store ptr null, ptr %2, align 4
  br label %59

59:                                               ; preds = %58, %36, %10
  %60 = phi ptr [ null, %10 ], [ null, %58 ], [ %41, %36 ]
  ret ptr %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @part_partition_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 488
  %5 = load i8, ptr %4, align 8
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @part_start_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = load i64, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i64 noundef %5)
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @part_size_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @part_ro_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 -24
  %5 = load i8, ptr %4, align 8, !range !18
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 496
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 4
  %13 = load i8, ptr %12, align 8, !range !18
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 12
  %17 = load volatile i32, ptr %16, align 4
  %18 = lshr i32 %17, 1
  %19 = and i32 %18, 1
  br label %20

20:                                               ; preds = %15, %7, %3
  %21 = phi i32 [ 1, %3 ], [ 1, %7 ], [ %19, %15 ]
  %22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %21)
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @part_alignment_offset_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = getelementptr i8, ptr %0, i32 500
  %6 = load ptr, ptr %5, align 4
  %7 = load i64, ptr %4, align 8
  %8 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 32, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 32, i32 11
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %9, i32 %11) #14
  %13 = lshr i32 %12, 9
  %14 = icmp ult i64 %7, 4294967296
  br i1 %14, label %15, label %18, !prof !19

15:                                               ; preds = %3
  %16 = trunc i64 %7 to i32
  %17 = urem i32 %16, %13
  br label %23

18:                                               ; preds = %3
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %7) #18, !srcloc !24
  %20 = extractvalue { i64, i64 } %19, 0
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i32 [ %17, %15 ], [ %22, %18 ]
  %25 = mul i32 %24, -512
  %26 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 32, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %12
  %29 = add i32 %28, %25
  %30 = urem i32 %29, %12
  %31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %30)
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @part_discard_alignment_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = getelementptr i8, ptr %0, i32 500
  %6 = load ptr, ptr %5, align 4
  %7 = load i64, ptr %4, align 8
  %8 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 32, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 32, i32 19
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 9
  %15 = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 32, i32 18
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 9
  %18 = icmp ult i32 %16, 512
  br i1 %18, label %35, label %19

19:                                               ; preds = %11
  %20 = icmp ult i64 %7, 4294967296
  br i1 %20, label %21, label %24, !prof !19

21:                                               ; preds = %19
  %22 = trunc i64 %7 to i32
  %23 = urem i32 %22, %17
  br label %29

24:                                               ; preds = %19
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %7) #18, !srcloc !24
  %26 = extractvalue { i64, i64 } %25, 0
  %27 = lshr i64 %26, 32
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i32 [ %23, %21 ], [ %28, %24 ]
  %31 = add nuw nsw i32 %17, %14
  %32 = sub i32 %31, %30
  %33 = urem i32 %32, %17
  %34 = shl nuw i32 %33, 9
  br label %35

35:                                               ; preds = %29, %11, %3
  %36 = phi i32 [ %34, %29 ], [ 0, %3 ], [ 0, %11 ]
  %37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %36)
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @part_stat_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @part_inflight_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_set_zoned(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdev_alloc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_alloc_ext_minor() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xa_insert(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 {
  tail call void @_raw_spin_lock(ptr noundef %0) #14
  %4 = tail call i32 @__xa_insert(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 3264) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %5 = load i16, ptr %0, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bdev_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @whole_disk_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #8 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsync_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__invalidate_device(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__remove_inode_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmdline_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efi_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msdos_partition(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }

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
!8 = !{i64 2149164439}
!9 = !{i64 2149164656}
!10 = !{i64 2151297554}
!11 = !{i64 2149490458}
!12 = !{i64 2149490759}
!13 = !{i64 2151305112}
!14 = !{i64 2149011735}
!15 = !{i64 2149007559}
!16 = !{i64 2149007634, i64 2149007661, i64 2149007708, i64 2149007730, i64 2149007758, i64 2149007778}
!17 = !{i64 2149034738}
!18 = !{i8 0, i8 2}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2148445196}
!21 = !{i64 843131, i64 2148333102, i64 2148333128, i64 2148333175, i64 2148333197, i64 2148333225, i64 2148333245}
!22 = !{i64 2148347558, i64 2148347590, i64 2148347619, i64 2148347653, i64 2148347684, i64 2148347707}
!23 = !{i64 2148445399}
!24 = !{i64 2148193914, i64 2148194194, i64 2148194528, i64 2148194862}
