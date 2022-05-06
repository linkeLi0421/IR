; ModuleID = '/llk/IR/block/blk-mq-sysfs.c_pt.bc'
source_filename = "../block/blk-mq-sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.blk_mq_hw_ctx_sysfs_entry = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lockdep_map = type {}
%struct.blk_mq_hw_ctx = type { %struct.anon.78, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [16 x i8] }
%struct.anon.78 = type { %struct.spinlock, %struct.list_head, i32, [48 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.blk_mq_ctx = type { %struct.anon.79, i32, [3 x i16], [3 x ptr], ptr, ptr, %struct.kobject, [60 x i8] }
%struct.anon.79 = type { %struct.spinlock, [3 x %struct.list_head], [36 x i8] }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.blk_mq_ctxs = type { %struct.kobject, ptr }

@blk_mq_hw_ktype = internal global %struct.kobj_type { ptr @blk_mq_hw_sysfs_release, ptr @blk_mq_hw_sysfs_ops, ptr null, ptr @default_hw_ctx_groups, ptr null, ptr null, ptr null }, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@blk_mq_ktype = internal global %struct.kobj_type { ptr @blk_mq_sysfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@blk_mq_ctx_ktype = internal global %struct.kobj_type { ptr @blk_mq_ctx_sysfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__blk_mq_register_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [21 x i8] c"block/blk-mq-sysfs.c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"mq\00", align 1
@blk_mq_hw_sysfs_ops = internal constant %struct.sysfs_ops { ptr @blk_mq_hw_sysfs_show, ptr @blk_mq_hw_sysfs_store }, align 4
@default_hw_ctx_groups = internal global [2 x ptr] [ptr @default_hw_ctx_group, ptr null], align 4
@default_hw_ctx_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @default_hw_ctx_attrs, ptr null }, align 4
@default_hw_ctx_attrs = internal global [4 x ptr] [ptr @blk_mq_hw_sysfs_nr_tags, ptr @blk_mq_hw_sysfs_nr_reserved_tags, ptr @blk_mq_hw_sysfs_cpus, ptr null], align 4
@blk_mq_hw_sysfs_nr_tags = internal global %struct.blk_mq_hw_ctx_sysfs_entry { %struct.attribute { ptr @.str.3, i16 292 }, ptr @blk_mq_hw_sysfs_nr_tags_show, ptr null }, align 4
@blk_mq_hw_sysfs_nr_reserved_tags = internal global %struct.blk_mq_hw_ctx_sysfs_entry { %struct.attribute { ptr @.str.5, i16 292 }, ptr @blk_mq_hw_sysfs_nr_reserved_tags_show, ptr null }, align 4
@blk_mq_hw_sysfs_cpus = internal global %struct.blk_mq_hw_ctx_sysfs_entry { %struct.attribute { ptr @.str.6, i16 292 }, ptr @blk_mq_hw_sysfs_cpus_show, ptr null }, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"nr_tags\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"nr_reserved_tags\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"cpu_list\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c", %u\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"cpu%u\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_unregister_dev(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 9
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 8
  br label %8

8:                                                ; preds = %32, %6
  %9 = phi i32 [ %4, %6 ], [ %33, %32 ]
  %10 = phi i32 [ 0, %6 ], [ %34, %32 ]
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr ptr, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %13, i32 0, i32 14
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %13, i32 0, i32 15
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 0, %17 ], [ %25, %19 ]
  %21 = load ptr, ptr %18, align 16
  %22 = getelementptr ptr, ptr %21, i32 %20
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.blk_mq_ctx, ptr %23, i32 0, i32 6
  tail call void @kobject_del(ptr noundef %24) #5
  %25 = add nuw nsw i32 %20, 1
  %26 = load i16, ptr %14, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %19, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %13, i32 0, i32 28
  tail call void @kobject_del(ptr noundef %30) #5
  %31 = load i32, ptr %3, align 8
  br label %32

32:                                               ; preds = %29, %8
  %33 = phi i32 [ %9, %8 ], [ %31, %29 ]
  %34 = add nuw i32 %10, 1
  %35 = icmp ult i32 %34, %33
  br i1 %35, label %8, label %36

36:                                               ; preds = %32, %2
  %37 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 17
  %38 = load ptr, ptr %37, align 8
  %39 = tail call i32 @kobject_uevent(ptr noundef %38, i32 noundef 1) #5
  %40 = load ptr, ptr %37, align 8
  tail call void @kobject_del(ptr noundef %40) #5
  tail call void @kobject_put(ptr noundef %0) #5
  %41 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 55
  store i8 0, ptr %41, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_hctx_kobj_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 28
  tail call void @kobject_init(ptr noundef %2, ptr noundef nonnull @blk_mq_hw_ktype) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_sysfs_deinit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #6
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 6
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ %2, %5 ], [ %16, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.blk_mq_ctx, ptr %14, i32 0, i32 6
  tail call void @kobject_put(ptr noundef %15) #5
  %16 = tail call i32 @cpumask_next(i32 noundef %8, ptr noundef nonnull @__cpu_possible_mask) #6
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %7, label %19

19:                                               ; preds = %7, %1
  %20 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 17
  %21 = load ptr, ptr %20, align 8
  tail call void @kobject_put(ptr noundef %21) #5
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_sysfs_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @kobject_init(ptr noundef %3, ptr noundef nonnull @blk_mq_ktype) #5
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #6
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 6
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %4, %7 ], [ %20, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = inttoptr i32 %15 to ptr
  %17 = load ptr, ptr %2, align 8
  %18 = tail call ptr @kobject_get(ptr noundef %17) #5
  %19 = getelementptr inbounds %struct.blk_mq_ctx, ptr %16, i32 0, i32 6
  tail call void @kobject_init(ptr noundef %19, ptr noundef nonnull @blk_mq_ctx_ktype) #5
  %20 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #6
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %9, label %23

23:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__blk_mq_register_dev(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 16, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = load i1, ptr @__blk_mq_register_dev.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %2
  store i1 true, ptr @__blk_mq_register_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 260, i32 noundef 9, ptr noundef null) #5
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 17
  %12 = load ptr, ptr %11, align 8
  %13 = tail call ptr @kobject_get(ptr noundef %0) #5
  %14 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %12, ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #5
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %101, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8
  %18 = tail call i32 @kobject_uevent(ptr noundef %17, i32 noundef 0) #5
  %19 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 9
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %69, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 8
  br label %24

24:                                               ; preds = %65, %22
  %25 = phi i32 [ 0, %22 ], [ %66, %65 ]
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr ptr, ptr %26, i32 %25
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %28, i32 0, i32 14
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %65, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %28, i32 0, i32 7
  %34 = load ptr, ptr %33, align 64
  %35 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %28, i32 0, i32 28
  %36 = getelementptr inbounds %struct.request_queue, ptr %34, i32 0, i32 17
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %28, i32 0, i32 24
  %39 = load i32, ptr %38, align 4
  %40 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %35, ptr noundef %37, ptr noundef nonnull @.str.7, i32 noundef %39) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %28, i32 0, i32 15
  %44 = load i16, ptr %29, align 2
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %65, label %51

46:                                               ; preds = %51
  %47 = add nuw nsw i32 %52, 1
  %48 = load i16, ptr %29, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %46, %42
  %52 = phi i32 [ %47, %46 ], [ 0, %42 ]
  %53 = load ptr, ptr %43, align 16
  %54 = getelementptr ptr, ptr %53, i32 %52
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.blk_mq_ctx, ptr %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.blk_mq_ctx, ptr %55, i32 0, i32 1
  %58 = load i32, ptr %57, align 64
  %59 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %56, ptr noundef %35, ptr noundef nonnull @.str.10, i32 noundef %58) #5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %46, label %61

61:                                               ; preds = %51, %32
  %62 = phi i32 [ %59, %51 ], [ %40, %32 ]
  %63 = add i32 %25, -1
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %72, label %97

65:                                               ; preds = %46, %42, %24
  %66 = add nuw i32 %25, 1
  %67 = load i32, ptr %19, align 8
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %24, label %69

69:                                               ; preds = %65, %16
  %70 = phi i32 [ %14, %16 ], [ 0, %65 ]
  %71 = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 55
  store i8 1, ptr %71, align 4
  br label %101

72:                                               ; preds = %94, %61
  %73 = phi i32 [ %95, %94 ], [ %63, %61 ]
  %74 = load ptr, ptr %23, align 4
  %75 = getelementptr ptr, ptr %74, i32 %73
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %76, i32 0, i32 14
  %78 = load i16, ptr %77, align 2
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %76, i32 0, i32 15
  br label %82

82:                                               ; preds = %82, %80
  %83 = phi i32 [ 0, %80 ], [ %88, %82 ]
  %84 = load ptr, ptr %81, align 16
  %85 = getelementptr ptr, ptr %84, i32 %83
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.blk_mq_ctx, ptr %86, i32 0, i32 6
  tail call void @kobject_del(ptr noundef %87) #5
  %88 = add nuw nsw i32 %83, 1
  %89 = load i16, ptr %77, align 2
  %90 = zext i16 %89 to i32
  %91 = icmp ult i32 %88, %90
  br i1 %91, label %82, label %92

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %76, i32 0, i32 28
  tail call void @kobject_del(ptr noundef %93) #5
  br label %94

94:                                               ; preds = %92, %72
  %95 = add i32 %73, -1
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %72, label %97

97:                                               ; preds = %94, %61
  %98 = load ptr, ptr %11, align 8
  %99 = tail call i32 @kobject_uevent(ptr noundef %98, i32 noundef 1) #5
  %100 = load ptr, ptr %11, align 8
  tail call void @kobject_del(ptr noundef %100) #5
  tail call void @kobject_put(ptr noundef %0) #5
  br label %101

101:                                              ; preds = %97, %69, %10
  %102 = phi i32 [ %62, %97 ], [ %14, %10 ], [ %70, %69 ]
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blk_mq_sysfs_unregister(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 41
  tail call void @mutex_lock(ptr noundef %2) #5
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 55
  %4 = load i8, ptr %3, align 4, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %12

12:                                               ; preds = %36, %10
  %13 = phi i32 [ %8, %10 ], [ %37, %36 ]
  %14 = phi i32 [ 0, %10 ], [ %38, %36 ]
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr ptr, ptr %15, i32 %14
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %17, i32 0, i32 14
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %17, i32 0, i32 15
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ 0, %21 ], [ %29, %23 ]
  %25 = load ptr, ptr %22, align 16
  %26 = getelementptr ptr, ptr %25, i32 %24
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.blk_mq_ctx, ptr %27, i32 0, i32 6
  tail call void @kobject_del(ptr noundef %28) #5
  %29 = add nuw nsw i32 %24, 1
  %30 = load i16, ptr %18, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %23, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %17, i32 0, i32 28
  tail call void @kobject_del(ptr noundef %34) #5
  %35 = load i32, ptr %7, align 8
  br label %36

36:                                               ; preds = %33, %12
  %37 = phi i32 [ %13, %12 ], [ %35, %33 ]
  %38 = add nuw i32 %14, 1
  %39 = icmp ult i32 %38, %37
  br i1 %39, label %12, label %40

40:                                               ; preds = %36, %6, %1
  tail call void @mutex_unlock(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_mq_sysfs_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 41
  tail call void @mutex_lock(ptr noundef %2) #5
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 55
  %4 = load i8, ptr %3, align 4, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %53, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 8
  br label %12

12:                                               ; preds = %49, %10
  %13 = phi i32 [ 0, %10 ], [ %50, %49 ]
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr ptr, ptr %14, i32 %13
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %16, i32 0, i32 14
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %49, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %16, i32 0, i32 7
  %22 = load ptr, ptr %21, align 64
  %23 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %16, i32 0, i32 28
  %24 = getelementptr inbounds %struct.request_queue, ptr %22, i32 0, i32 17
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %16, i32 0, i32 24
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %23, ptr noundef %25, ptr noundef nonnull @.str.7, i32 noundef %27) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %16, i32 0, i32 15
  %32 = load i16, ptr %17, align 2
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %49, label %39

34:                                               ; preds = %39
  %35 = add nuw nsw i32 %40, 1
  %36 = load i16, ptr %17, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %34, %30
  %40 = phi i32 [ %35, %34 ], [ 0, %30 ]
  %41 = load ptr, ptr %31, align 16
  %42 = getelementptr ptr, ptr %41, i32 %40
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.blk_mq_ctx, ptr %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.blk_mq_ctx, ptr %43, i32 0, i32 1
  %46 = load i32, ptr %45, align 64
  %47 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %44, ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef %46) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %34, label %53

49:                                               ; preds = %34, %30, %12
  %50 = add nuw i32 %13, 1
  %51 = load i32, ptr %7, align 8
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %12, label %53

53:                                               ; preds = %49, %39, %20, %6, %1
  %54 = phi i32 [ 0, %1 ], [ 0, %6 ], [ %47, %39 ], [ 0, %49 ], [ %28, %20 ]
  tail call void @mutex_unlock(ptr noundef %2) #5
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blk_mq_hw_sysfs_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -252
  %3 = getelementptr i8, ptr %0, i32 -120
  %4 = load ptr, ptr %3, align 4
  tail call void @blk_free_flush_queue(ptr noundef %4) #5
  %5 = getelementptr i8, ptr %0, i32 -92
  %6 = load ptr, ptr %5, align 4
  tail call void @free_percpu(ptr noundef %6) #5
  %7 = getelementptr i8, ptr %0, i32 -96
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #5
  store ptr null, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 -76
  %10 = load ptr, ptr %9, align 16
  tail call void @kfree(ptr noundef %10) #5
  tail call void @kfree(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_free_flush_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_mq_hw_sysfs_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.blk_mq_hw_ctx_sysfs_entry, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -124
  %9 = load ptr, ptr %8, align 64
  %10 = getelementptr i8, ptr %0, i32 -252
  %11 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 40
  tail call void @mutex_lock(ptr noundef %11) #5
  %12 = load ptr, ptr %4, align 4
  %13 = tail call i32 %12(ptr noundef %10, ptr noundef %2) #5
  tail call void @mutex_unlock(ptr noundef %11) #5
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i32 [ %13, %7 ], [ -5, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_mq_hw_sysfs_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx_sysfs_entry, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -124
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr i8, ptr %0, i32 -252
  %12 = getelementptr inbounds %struct.request_queue, ptr %10, i32 0, i32 40
  tail call void @mutex_lock(ptr noundef %12) #5
  %13 = load ptr, ptr %5, align 4
  %14 = tail call i32 %13(ptr noundef %11, ptr noundef %2, i32 noundef %3) #5
  tail call void @mutex_unlock(ptr noundef %12) #5
  br label %15

15:                                               ; preds = %8, %4
  %16 = phi i32 [ %14, %8 ], [ -5, %4 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_mq_hw_sysfs_nr_tags_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 16
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_mq_hw_sysfs_nr_reserved_tags_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.blk_mq_tags, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @blk_mq_hw_sysfs_cpus_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 2
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %3) #6
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %12, label %20

7:                                                ; preds = %12
  %8 = add i32 %18, %14
  %9 = tail call i32 @cpumask_next(i32 noundef %13, ptr noundef %3) #6
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %7, %2
  %13 = phi i32 [ %9, %7 ], [ %4, %2 ]
  %14 = phi i32 [ %8, %7 ], [ 0, %2 ]
  %15 = phi ptr [ @.str.8, %7 ], [ @.str.7, %2 ]
  %16 = getelementptr i8, ptr %1, i32 %14
  %17 = sub i32 4095, %14
  %18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %16, i32 noundef %17, ptr noundef nonnull %15, i32 noundef %13)
  %19 = icmp ult i32 %18, %17
  br i1 %19, label %7, label %20

20:                                               ; preds = %12, %7, %2
  %21 = phi i32 [ 0, %2 ], [ %14, %12 ], [ %8, %7 ]
  %22 = getelementptr i8, ptr %1, i32 %21
  %23 = sub i32 4096, %21
  %24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %22, i32 noundef %23, ptr noundef nonnull @.str.9)
  %25 = add i32 %24, %21
  ret i32 %25
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blk_mq_sysfs_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.blk_mq_ctxs, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @free_percpu(ptr noundef %3) #5
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @blk_mq_ctx_sysfs_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  tail call void @kobject_put(ptr noundef %3) #5
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
