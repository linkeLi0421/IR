; ModuleID = '/llk/IR/block/blk-ia-ranges.c_pt.bc'
source_filename = "../block/blk-ia-ranges.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disk_alloc_independent_access_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22disk_alloc_independent_access_ranges\22\09\09\09\09\09"
module asm "__kstrtabns_disk_alloc_independent_access_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disk_set_independent_access_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22disk_set_independent_access_ranges\22\09\09\09\09\09"
module asm "__kstrtabns_disk_set_independent_access_ranges:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.blk_ia_range_sysfs_entry = type { %struct.attribute, ptr }
%struct.attribute = type { ptr, i16 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type {}
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.blk_independent_access_ranges = type { %struct.kobject, i8, i32, [0 x %struct.blk_independent_access_range] }
%struct.blk_independent_access_range = type { %struct.kobject, ptr, i64, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [22 x i8] c"block/blk-ia-ranges.c\00", align 1
@blk_ia_ranges_ktype = internal global %struct.kobj_type { ptr @blk_ia_ranges_sysfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"independent_access_ranges\00", align 1
@blk_ia_range_ktype = internal global %struct.kobj_type { ptr @blk_ia_range_sysfs_nop_release, ptr @blk_ia_range_sysfs_ops, ptr null, ptr @blk_ia_range_groups, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__kstrtab_disk_alloc_independent_access_ranges = external dso_local constant [0 x i8], align 1
@__kstrtabns_disk_alloc_independent_access_ranges = external dso_local constant [0 x i8], align 1
@__ksymtab_disk_alloc_independent_access_ranges = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disk_alloc_independent_access_ranges to i32), ptr @__kstrtab_disk_alloc_independent_access_ranges, ptr @__kstrtabns_disk_alloc_independent_access_ranges }, section "___ksymtab_gpl+disk_alloc_independent_access_ranges", align 4
@disk_set_independent_access_ranges.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_disk_set_independent_access_ranges = external dso_local constant [0 x i8], align 1
@__kstrtabns_disk_set_independent_access_ranges = external dso_local constant [0 x i8], align 1
@__ksymtab_disk_set_independent_access_ranges = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disk_set_independent_access_ranges to i32), ptr @__kstrtab_disk_set_independent_access_ranges, ptr @__kstrtabns_disk_set_independent_access_ranges }, section "___ksymtab_gpl+disk_set_independent_access_ranges", align 4
@blk_ia_range_sysfs_ops = internal constant %struct.sysfs_ops { ptr @blk_ia_range_sysfs_show, ptr null }, align 4
@blk_ia_range_groups = internal global [2 x ptr] [ptr @blk_ia_range_group, ptr null], align 4
@blk_ia_range_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @blk_ia_range_attrs, ptr null }, align 4
@blk_ia_range_attrs = internal global [3 x ptr] [ptr @blk_ia_range_sector_entry, ptr @blk_ia_range_nr_sectors_entry, ptr null], align 4
@blk_ia_range_sector_entry = internal global %struct.blk_ia_range_sysfs_entry { %struct.attribute { ptr @.str.4, i16 292 }, ptr @blk_ia_range_sector_show }, align 4
@blk_ia_range_nr_sectors_entry = internal global %struct.blk_ia_range_sysfs_entry { %struct.attribute { ptr @.str.6, i16 292 }, ptr @blk_ia_range_nr_sectors_show }, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"sector\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"nr_sectors\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"\014Invalid non-contiguous independent access ranges\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"\014Independent access ranges do not match disk capacity\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_disk_alloc_independent_access_ranges, ptr @__ksymtab_disk_set_independent_access_ranges], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @disk_register_independent_access_ranges(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 57
  %7 = load ptr, ptr %6, align 8
  br i1 %5, label %27, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %7, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %7, i32 0, i32 1
  %12 = load i8, ptr %11, align 4, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %7, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %18, %14
  %19 = phi i32 [ %21, %18 ], [ 0, %14 ]
  %20 = getelementptr %struct.blk_independent_access_ranges, ptr %7, i32 0, i32 3, i32 %19
  tail call void @kobject_del(ptr noundef %20) #8
  %21 = add nuw i32 %19, 1
  %22 = load i32, ptr %15, align 8
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %18, label %24

24:                                               ; preds = %18, %14
  tail call void @kobject_del(ptr noundef nonnull %7) #8
  tail call void @kobject_put(ptr noundef nonnull %7) #8
  br label %26

25:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %7) #8
  br label %26

26:                                               ; preds = %25, %24, %8
  store ptr %1, ptr %6, align 8
  br label %27

27:                                               ; preds = %26, %2
  %28 = phi ptr [ %1, %26 ], [ %7, %2 ]
  %29 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 57
  %30 = icmp eq ptr %28, null
  br i1 %30, label %65, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %28, i32 0, i32 1
  %33 = load i8, ptr %32, align 4, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35, !prof !9

35:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #8
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 16
  %38 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %28, ptr noundef nonnull @blk_ia_ranges_ktype, ptr noundef %37, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %28, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %64, label %45

44:                                               ; preds = %36
  store ptr null, ptr %29, align 8
  tail call void @kobject_put(ptr noundef nonnull %28) #8
  br label %65

45:                                               ; preds = %60, %40
  %46 = phi i32 [ %61, %60 ], [ 0, %40 ]
  %47 = getelementptr %struct.blk_independent_access_ranges, ptr %28, i32 0, i32 3, i32 %46
  %48 = getelementptr %struct.blk_independent_access_ranges, ptr %28, i32 0, i32 3, i32 %46, i32 1
  store ptr %4, ptr %48, align 4
  %49 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %47, ptr noundef nonnull @blk_ia_range_ktype, ptr noundef nonnull %28, ptr noundef nonnull @.str.3, i32 noundef %46) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %45
  %52 = add i32 %46, -1
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %59

54:                                               ; preds = %54, %51
  %55 = phi i32 [ %57, %54 ], [ %52, %51 ]
  %56 = getelementptr %struct.blk_independent_access_ranges, ptr %28, i32 0, i32 3, i32 %55
  tail call void @kobject_del(ptr noundef %56) #8
  %57 = add nsw i32 %55, -1
  %58 = icmp sgt i32 %55, 0
  br i1 %58, label %54, label %59

59:                                               ; preds = %54, %51
  tail call void @kobject_del(ptr noundef nonnull %28) #8
  tail call void @kobject_put(ptr noundef nonnull %28) #8
  br label %65

60:                                               ; preds = %45
  %61 = add nuw i32 %46, 1
  %62 = load i32, ptr %41, align 8
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %45, label %64

64:                                               ; preds = %60, %40
  store i8 1, ptr %32, align 4
  br label %65

65:                                               ; preds = %64, %59, %44, %27
  %66 = phi i32 [ %38, %44 ], [ %49, %59 ], [ 0, %64 ], [ 0, %27 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disk_unregister_independent_access_ranges(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 57
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %5, i32 0, i32 1
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %15, %11
  %16 = phi i32 [ %18, %15 ], [ 0, %11 ]
  %17 = getelementptr %struct.blk_independent_access_ranges, ptr %5, i32 0, i32 3, i32 %16
  tail call void @kobject_del(ptr noundef %17) #8
  %18 = add nuw i32 %16, 1
  %19 = load i32, ptr %12, align 8
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %15, label %21

21:                                               ; preds = %15, %11
  tail call void @kobject_del(ptr noundef nonnull %5) #8
  tail call void @kobject_put(ptr noundef nonnull %5) #8
  br label %23

22:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %23

23:                                               ; preds = %22, %21
  store ptr null, ptr %4, align 8
  br label %24

24:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @disk_alloc_independent_access_ranges(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 56) #8
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %6 = tail call i32 @llvm.uadd.sat.i32(i32 %5, i32 48) #8
  %7 = select i1 %4, i32 -1, i32 %6
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %8, i32 0, i32 2
  store i32 %1, ptr %11, align 8
  br label %12

12:                                               ; preds = %10, %2
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disk_set_independent_access_ranges(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  %10 = load i1, ptr @disk_set_independent_access_ranges.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !10

13:                                               ; preds = %6
  store i1 true, ptr @disk_set_independent_access_ranges.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 307, i32 noundef 9, ptr noundef null) #8
  br label %15

14:                                               ; preds = %6
  br i1 %9, label %15, label %16

15:                                               ; preds = %14, %13
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %16

16:                                               ; preds = %15, %14, %2
  %17 = phi ptr [ null, %15 ], [ %1, %14 ], [ null, %2 ]
  %18 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 41
  tail call void @mutex_lock(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 40
  tail call void @mutex_lock(ptr noundef %19) #8
  %20 = icmp eq ptr %17, null
  br i1 %20, label %103, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 1
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %17, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %68, label %29

29:                                               ; preds = %61, %21
  %30 = phi i32 [ %62, %61 ], [ %27, %21 ]
  %31 = phi i32 [ %66, %61 ], [ 0, %21 ]
  %32 = phi i64 [ %65, %61 ], [ 0, %21 ]
  br label %33

33:                                               ; preds = %43, %29
  %34 = phi i32 [ %44, %43 ], [ 0, %29 ]
  %35 = getelementptr %struct.blk_independent_access_ranges, ptr %17, i32 0, i32 3, i32 %34, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = icmp ugt i64 %36, %32
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = getelementptr %struct.blk_independent_access_ranges, ptr %17, i32 0, i32 3, i32 %34, i32 3
  %40 = load i64, ptr %39, align 8
  %41 = add i64 %40, %36
  %42 = icmp ugt i64 %41, %32
  br i1 %42, label %46, label %43

43:                                               ; preds = %38, %33
  %44 = add nuw i32 %34, 1
  %45 = icmp eq i32 %44, %30
  br i1 %45, label %72, label %33

46:                                               ; preds = %38
  %47 = getelementptr %struct.blk_independent_access_ranges, ptr %17, i32 0, i32 3, i32 %34
  %48 = icmp ne ptr %47, null
  %49 = icmp eq i64 %36, %32
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %72

51:                                               ; preds = %46
  %52 = getelementptr %struct.blk_independent_access_ranges, ptr %17, i32 0, i32 3, i32 %31
  %53 = icmp eq ptr %47, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = getelementptr %struct.blk_independent_access_ranges, ptr %17, i32 0, i32 3, i32 %31, i32 2
  %56 = load i64, ptr %55, align 8
  store i64 %32, ptr %55, align 8
  store i64 %56, ptr %35, align 8
  %57 = getelementptr %struct.blk_independent_access_ranges, ptr %17, i32 0, i32 3, i32 %31, i32 3
  %58 = load i64, ptr %57, align 8
  %59 = load i64, ptr %39, align 8
  store i64 %59, ptr %57, align 8
  store i64 %58, ptr %39, align 8
  %60 = load i32, ptr %26, align 8
  br label %61

61:                                               ; preds = %54, %51
  %62 = phi i32 [ %60, %54 ], [ %30, %51 ]
  %63 = getelementptr %struct.blk_independent_access_ranges, ptr %17, i32 0, i32 3, i32 %31, i32 3
  %64 = load i64, ptr %63, align 8
  %65 = add i64 %64, %32
  %66 = add nuw i32 %31, 1
  %67 = icmp ult i32 %66, %62
  br i1 %67, label %29, label %68

68:                                               ; preds = %61, %21
  %69 = phi i32 [ 0, %21 ], [ %62, %61 ]
  %70 = phi i64 [ 0, %21 ], [ %65, %61 ]
  %71 = icmp eq i64 %70, %25
  br i1 %71, label %75, label %72

72:                                               ; preds = %68, %46, %43
  %73 = phi ptr [ @.str.8, %68 ], [ @.str.7, %43 ], [ @.str.7, %46 ]
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %73) #10
  tail call void @kfree(ptr noundef nonnull %17) #8
  br label %103

75:                                               ; preds = %68
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr inbounds %struct.request_queue, ptr %76, i32 0, i32 57
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %103, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.blk_independent_access_ranges, ptr %78, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = icmp eq i32 %82, %69
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = icmp eq i32 %69, 0
  br i1 %85, label %102, label %89

86:                                               ; preds = %96
  %87 = add nuw i32 %90, 1
  %88 = icmp eq i32 %87, %69
  br i1 %88, label %102, label %89

89:                                               ; preds = %86, %84
  %90 = phi i32 [ %87, %86 ], [ 0, %84 ]
  %91 = getelementptr %struct.blk_independent_access_ranges, ptr %17, i32 0, i32 3, i32 %90, i32 2
  %92 = load i64, ptr %91, align 8
  %93 = getelementptr %struct.blk_independent_access_ranges, ptr %78, i32 0, i32 3, i32 %90, i32 2
  %94 = load i64, ptr %93, align 8
  %95 = icmp eq i64 %92, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = getelementptr %struct.blk_independent_access_ranges, ptr %17, i32 0, i32 3, i32 %90, i32 3
  %98 = load i64, ptr %97, align 8
  %99 = getelementptr %struct.blk_independent_access_ranges, ptr %78, i32 0, i32 3, i32 %90, i32 3
  %100 = load i64, ptr %99, align 8
  %101 = icmp eq i64 %98, %100
  br i1 %101, label %86, label %103

102:                                              ; preds = %86, %84
  tail call void @kfree(ptr noundef nonnull %17) #8
  br label %114

103:                                              ; preds = %96, %89, %80, %75, %72, %16
  %104 = phi ptr [ null, %72 ], [ null, %16 ], [ %17, %75 ], [ %17, %80 ], [ %17, %96 ], [ %17, %89 ]
  %105 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 11
  %106 = load volatile i32, ptr %105, align 4
  %107 = and i32 %106, 4194304
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %103
  %110 = tail call i32 @disk_register_independent_access_ranges(ptr noundef %0, ptr noundef %104)
  br label %114

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 57
  %113 = load ptr, ptr %112, align 8
  store ptr %104, ptr %112, align 8
  tail call void @kfree(ptr noundef %113) #8
  br label %114

114:                                              ; preds = %111, %109, %102
  tail call void @mutex_unlock(ptr noundef %19) #8
  tail call void @mutex_unlock(ptr noundef %18) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blk_ia_ranges_sysfs_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @blk_ia_range_sysfs_nop_release(ptr nocapture noundef %0) #2 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_ia_range_sysfs_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.blk_independent_access_range, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 40
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.blk_ia_range_sysfs_entry, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0, ptr noundef %2) #8
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 40
  tail call void @mutex_unlock(ptr noundef %11) #8
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_ia_range_sector_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.blk_independent_access_range, ptr %0, i32 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.5, i64 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_ia_range_nr_sectors_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.blk_independent_access_range, ptr %0, i32 0, i32 3
  %4 = load i64, ptr %3, align 8
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.5, i64 noundef %4)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
