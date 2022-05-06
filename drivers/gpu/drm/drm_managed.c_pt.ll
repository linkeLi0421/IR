; ModuleID = '/llk/IR/drivers/gpu/drm/drm_managed.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_managed.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___drmm_add_action:\09\09\09\09\09"
module asm "\09.asciz \09\22__drmm_add_action\22\09\09\09\09\09"
module asm "__kstrtabns___drmm_add_action:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___drmm_add_action_or_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22__drmm_add_action_or_reset\22\09\09\09\09\09"
module asm "__kstrtabns___drmm_add_action_or_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drmm_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22drmm_kmalloc\22\09\09\09\09\09"
module asm "__kstrtabns_drmm_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drmm_kstrdup:\09\09\09\09\09"
module asm "\09.asciz \09\22drmm_kstrdup\22\09\09\09\09\09"
module asm "__kstrtabns_drmm_kstrdup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drmm_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22drmm_kfree\22\09\09\09\09\09"
module asm "__kstrtabns_drmm_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.61, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.66, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.61 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.66 = type { i32, ptr }
%struct.drmres_node = type { %struct.list_head, ptr, ptr, i32 }
%struct.drmres = type { %struct.drmres_node, [44 x i8], [0 x i8] }

@.str = private unnamed_addr constant [22 x i8] c"drmres release begin\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"REL %p %s (%zu bytes)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"drmres release end\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/drm_managed.c\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to add action %s for %p\0A\00", align 1
@__kstrtab___drmm_add_action = external dso_local constant [0 x i8], align 1
@__kstrtabns___drmm_add_action = external dso_local constant [0 x i8], align 1
@__ksymtab___drmm_add_action = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__drmm_add_action to i32), ptr @__kstrtab___drmm_add_action, ptr @__kstrtabns___drmm_add_action }, section "___ksymtab+__drmm_add_action", align 4
@__kstrtab___drmm_add_action_or_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns___drmm_add_action_or_reset = external dso_local constant [0 x i8], align 1
@__ksymtab___drmm_add_action_or_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__drmm_add_action_or_reset to i32), ptr @__kstrtab___drmm_add_action_or_reset, ptr @__kstrtabns___drmm_add_action_or_reset }, section "___ksymtab+__drmm_add_action_or_reset", align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"failed to allocate %zu bytes, %u flags\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"kmalloc\00", align 1
@__kstrtab_drmm_kmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_drmm_kmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_drmm_kmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drmm_kmalloc to i32), ptr @__kstrtab_drmm_kmalloc, ptr @__kstrtabns_drmm_kmalloc }, section "___ksymtab+drmm_kmalloc", align 4
@__kstrtab_drmm_kstrdup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drmm_kstrdup = external dso_local constant [0 x i8], align 1
@__ksymtab_drmm_kstrdup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drmm_kstrdup to i32), ptr @__kstrtab_drmm_kstrdup, ptr @__kstrtabns_drmm_kstrdup }, section "___ksymtab_gpl+drmm_kstrdup", align 4
@__kstrtab_drmm_kfree = external dso_local constant [0 x i8], align 1
@__kstrtabns_drmm_kfree = external dso_local constant [0 x i8], align 1
@__ksymtab_drmm_kfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drmm_kfree to i32), ptr @__kstrtab_drmm_kfree, ptr @__kstrtabns_drmm_kfree }, section "___ksymtab+drmm_kfree", align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"ADD %p %s (%lu bytes)\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"DEL %p %s (%lu bytes)\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab___drmm_add_action, ptr @__ksymtab___drmm_add_action_or_reset, ptr @__ksymtab_drmm_kfree, ptr @__ksymtab_drmm_kmalloc, ptr @__ksymtab_drmm_kstrdup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_managed_release(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %7, i32 noundef 512, ptr noundef nonnull @.str) #7
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %42, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  br label %13

13:                                               ; preds = %35, %11
  %14 = phi ptr [ %9, %11 ], [ %15, %35 ]
  %15 = load ptr, ptr %14, align 64
  br i1 %2, label %18, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %12, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %17, %16 ], [ null, %13 ]
  %20 = getelementptr inbounds %struct.drmres_node, ptr %14, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drmres_node, ptr %14, i32 0, i32 3
  %23 = load i32, ptr %22, align 16
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %19, i32 noundef 512, ptr noundef nonnull @.str.1, ptr noundef %14, ptr noundef %21, i32 noundef %23) #7
  %24 = getelementptr inbounds %struct.drmres_node, ptr %14, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %18
  %28 = load i32, ptr %22, align 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.drmres, ptr %14, i32 0, i32 2
  %32 = load ptr, ptr %31, align 64
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi ptr [ %32, %30 ], [ null, %27 ]
  tail call void %25(ptr noundef %0, ptr noundef %34) #7
  br label %35

35:                                               ; preds = %33, %18
  %36 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %14, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 4
  store volatile ptr %38, ptr %37, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %36, align 4
  %40 = load ptr, ptr %20, align 4
  tail call void @kfree_const(ptr noundef %40) #7
  tail call void @kfree(ptr noundef %14) #7
  %41 = icmp eq ptr %15, %8
  br i1 %41, label %42, label %13

42:                                               ; preds = %35, %6
  br i1 %2, label %46, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi ptr [ %45, %43 ], [ null, %42 ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %47, i32 noundef 512, ptr noundef nonnull @.str.2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drmm_add_final_kfree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 130, i32 noundef 9, ptr noundef null) #7
  br label %7

7:                                                ; preds = %6, %2
  %8 = icmp ult ptr %0, %1
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 131, i32 noundef 9, ptr noundef null) #7
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr %struct.drm_device, ptr %0, i32 1
  %12 = tail call i32 @ksize(ptr noundef %1) #7
  %13 = getelementptr i8, ptr %1, i32 %12
  %14 = icmp ugt ptr %11, %13
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 132, i32 noundef 9, ptr noundef null) #7
  br label %16

16:                                               ; preds = %15, %10
  store ptr %1, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__drmm_add_action(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %2, null
  %6 = select i1 %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %8 = or i32 %6, 64
  %9 = tail call ptr @llvm.returnaddress(i32 0) #7
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call ptr @__kmalloc_track_caller(i32 noundef %8, i32 noundef 3520, i32 noundef %10) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19, !prof !9

13:                                               ; preds = %4
  %14 = icmp eq ptr %0, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %7, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %16, %15 ], [ null, %13 ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %18, i32 noundef 512, ptr noundef nonnull @.str.4, ptr noundef %3, ptr noundef %2) #7
  br label %40

19:                                               ; preds = %4
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %11, i8 0, i32 64, i1 false) #7
  store volatile ptr %11, ptr %11, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %11, ptr %20, align 4
  %21 = getelementptr inbounds %struct.drmres_node, ptr %11, i32 0, i32 1
  store ptr %1, ptr %21, align 8
  %22 = getelementptr inbounds %struct.drmres_node, ptr %11, i32 0, i32 3
  store i32 %6, ptr %22, align 16
  %23 = tail call ptr @kstrdup_const(ptr noundef %3, i32 noundef 3264) #7
  %24 = getelementptr inbounds %struct.drmres_node, ptr %11, i32 0, i32 2
  store ptr %23, ptr %24, align 4
  br i1 %5, label %27, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.drmres, ptr %11, i32 0, i32 2
  store ptr %2, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 3
  %29 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 3, i32 2
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #7
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %11, ptr %32, align 4
  store ptr %31, ptr %11, align 4
  store ptr %28, ptr %20, align 4
  store volatile ptr %11, ptr %28, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #7
  %33 = icmp eq ptr %0, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr %7, align 4
  br label %36

36:                                               ; preds = %34, %27
  %37 = phi ptr [ %35, %34 ], [ null, %27 ]
  %38 = load ptr, ptr %24, align 4
  %39 = load i32, ptr %22, align 16
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %37, i32 noundef 512, ptr noundef nonnull @.str.7, ptr noundef nonnull %11, ptr noundef %38, i32 noundef %39) #7
  br label %40

40:                                               ; preds = %36, %17
  %41 = phi i32 [ 0, %36 ], [ -12, %17 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__drmm_add_action_or_reset(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 @__drmm_add_action(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void %1(ptr noundef %0, ptr noundef %2) #7
  br label %8

8:                                                ; preds = %7, %4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @drmm_kmalloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %5 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 64) #7
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %13, label %7, !prof !9

7:                                                ; preds = %3
  %8 = extractvalue { i32, i1 } %5, 0
  %9 = tail call ptr @llvm.returnaddress(i32 0) #7
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call ptr @__kmalloc_track_caller(i32 noundef %8, i32 noundef %2, i32 noundef %10) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19, !prof !9

13:                                               ; preds = %7, %3
  %14 = icmp eq ptr %0, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %4, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %16, %15 ], [ null, %13 ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %18, i32 noundef 512, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %2) #7
  br label %38

19:                                               ; preds = %7
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %11, i8 0, i32 64, i1 false) #7
  store volatile ptr %11, ptr %11, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %11, ptr %20, align 4
  %21 = getelementptr inbounds %struct.drmres_node, ptr %11, i32 0, i32 1
  store ptr null, ptr %21, align 8
  %22 = getelementptr inbounds %struct.drmres_node, ptr %11, i32 0, i32 3
  store i32 %1, ptr %22, align 16
  %23 = tail call ptr @kstrdup_const(ptr noundef nonnull @.str.6, i32 noundef 3264) #7
  %24 = getelementptr inbounds %struct.drmres_node, ptr %11, i32 0, i32 2
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 3
  %26 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 3, i32 2
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #7
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %11, ptr %29, align 4
  store ptr %28, ptr %11, align 4
  store ptr %25, ptr %20, align 4
  store volatile ptr %11, ptr %25, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #7
  %30 = icmp eq ptr %0, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %19
  %32 = load ptr, ptr %4, align 4
  br label %33

33:                                               ; preds = %31, %19
  %34 = phi ptr [ %32, %31 ], [ null, %19 ]
  %35 = load ptr, ptr %24, align 4
  %36 = load i32, ptr %22, align 16
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %34, i32 noundef 512, ptr noundef nonnull @.str.7, ptr noundef nonnull %11, ptr noundef %35, i32 noundef %36) #7
  %37 = getelementptr inbounds %struct.drmres, ptr %11, i32 0, i32 2
  br label %38

38:                                               ; preds = %33, %17
  %39 = phi ptr [ %37, %33 ], [ null, %17 ]
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @drmm_kstrdup(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @strlen(ptr noundef nonnull %1)
  %7 = add i32 %6, 1
  %8 = tail call noalias ptr @drmm_kmalloc(ptr noundef %0, i32 noundef %7, i32 noundef %2)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %8, ptr nonnull align 1 %1, i32 %7, i1 false)
  br label %11

11:                                               ; preds = %10, %5, %3
  %12 = phi ptr [ null, %3 ], [ %8, %10 ], [ null, %5 ]
  ret ptr %12
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drmm_kfree(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 3, i32 2
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  br label %8

8:                                                ; preds = %13, %4
  %9 = phi ptr [ %5, %4 ], [ %10, %13 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %5
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #7
  br label %32

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.drmres, ptr %10, i32 0, i32 2
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %8

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %17, align 4
  %21 = icmp eq ptr %0, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi ptr [ %24, %22 ], [ null, %16 ]
  %27 = getelementptr inbounds %struct.drmres_node, ptr %10, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drmres_node, ptr %10, i32 0, i32 3
  %30 = load i32, ptr %29, align 16
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %26, i32 noundef 512, ptr noundef nonnull @.str.8, ptr noundef %10, ptr noundef %28, i32 noundef %30) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #7
  %31 = icmp eq ptr %10, null
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %25, %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 259, i32 noundef 9, ptr noundef null) #7
  br label %35

33:                                               ; preds = %25
  %34 = load ptr, ptr %27, align 4
  tail call void @kfree_const(ptr noundef %34) #7
  tail call void @kfree(ptr noundef nonnull %10) #7
  br label %35

35:                                               ; preds = %33, %32, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }

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
