; ModuleID = '/llk/IR/drivers/gpu/drm/ttm/ttm_device.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_device.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_glob:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_glob\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_glob:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_global_swapout:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_global_swapout\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_global_swapout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_device_swapout:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_device_swapout\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_device_swapout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_device_init\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_device_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_device_fini\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_device_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_device_clear_dma_mappings:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_device_clear_dma_mappings\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_device_clear_dma_mappings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ttm_global = type { ptr, %struct.list_head, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.69] }
%struct.anon.69 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }

@ttm_glob = dso_local global %struct.ttm_global zeroinitializer, align 4
@__kstrtab_ttm_glob = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_glob = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_glob = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_glob to i32), ptr @__kstrtab_ttm_glob, ptr @__kstrtabns_ttm_glob }, section "___ksymtab+ttm_glob", align 4
@ttm_global_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ttm_global_mutex, i64 12), ptr getelementptr (i8, ptr @ttm_global_mutex, i64 12) } }, align 4
@__kstrtab_ttm_global_swapout = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_global_swapout = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_global_swapout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_global_swapout to i32), ptr @__kstrtab_ttm_global_swapout, ptr @__kstrtabns_ttm_global_swapout }, section "___ksymtab+ttm_global_swapout", align 4
@__kstrtab_ttm_device_swapout = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_device_swapout = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_device_swapout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_device_swapout to i32), ptr @__kstrtab_ttm_device_swapout, ptr @__kstrtabns_ttm_device_swapout }, section "___ksymtab+ttm_device_swapout", align 4
@.str = private unnamed_addr constant [33 x i8] c"drivers/gpu/drm/ttm/ttm_device.c\00", align 1
@__kstrtab_ttm_device_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_device_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_device_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_device_init to i32), ptr @__kstrtab_ttm_device_init, ptr @__kstrtabns_ttm_device_init }, section "___ksymtab+ttm_device_init", align 4
@__kstrtab_ttm_device_fini = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_device_fini = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_device_fini = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_device_fini to i32), ptr @__kstrtab_ttm_device_fini, ptr @__kstrtabns_ttm_device_fini }, section "___ksymtab+ttm_device_fini", align 4
@__kstrtab_ttm_device_clear_dma_mappings = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_device_clear_dma_mappings = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_device_clear_dma_mappings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_device_clear_dma_mappings to i32), ptr @__kstrtab_ttm_device_clear_dma_mappings, ptr @__kstrtabns_ttm_device_clear_dma_mappings }, section "___ksymtab+ttm_device_clear_dma_mappings", align 4
@ttm_debugfs_root = dso_local local_unnamed_addr global ptr null, align 4
@ttm_glob_use_count = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ttm\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"buffer_objects\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"include/drm/ttm/ttm_resource.h\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_ttm_device_clear_dma_mappings, ptr @__ksymtab_ttm_device_fini, ptr @__ksymtab_ttm_device_init, ptr @__ksymtab_ttm_device_swapout, ptr @__ksymtab_ttm_glob, ptr @__ksymtab_ttm_global_swapout], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_global_swapout(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @ttm_global_mutex) #5
  %3 = load ptr, ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1), align 4
  %4 = icmp eq ptr %3, getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1)
  br i1 %4, label %18, label %8

5:                                                ; preds = %8
  %6 = load ptr, ptr %9, align 4
  %7 = icmp eq ptr %6, getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1)
  br i1 %7, label %18, label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %10 = tail call i32 @ttm_device_swapout(ptr noundef %9, ptr noundef %0, i32 noundef %1)
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %5

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  %17 = load ptr, ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1, i32 1), align 4
  store ptr %9, ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1, i32 1), align 4
  store ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1), ptr %9, align 4
  store ptr %17, ptr %13, align 4
  store volatile ptr %9, ptr %17, align 4
  br label %18

18:                                               ; preds = %12, %5, %2
  %19 = phi i32 [ %10, %12 ], [ 0, %2 ], [ %10, %5 ]
  tail call void @mutex_unlock(ptr noundef nonnull @ttm_global_mutex) #5
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_device_swapout(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %4) #5
  br label %5

5:                                                ; preds = %62, %3
  %6 = phi i32 [ 0, %3 ], [ %63, %62 ]
  %7 = getelementptr %struct.ttm_device, ptr %0, i32 0, i32 3, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %62, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ttm_resource_manager, ptr %8, i32 0, i32 1
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %62, label %14

14:                                               ; preds = %10
  %15 = getelementptr %struct.ttm_resource_manager, ptr %8, i32 0, i32 5, i32 0
  br label %16

16:                                               ; preds = %20, %14
  %17 = phi ptr [ %15, %14 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, %15
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 -240
  %22 = getelementptr i8, ptr %18, i32 -96
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @ttm_bo_swapout(ptr noundef %21, ptr noundef %1, i32 noundef %2) #5
  switch i32 %24, label %68 [
    i32 0, label %25
    i32 -16, label %16
  ]

25:                                               ; preds = %57, %46, %35, %20
  %26 = phi i32 [ %60, %57 ], [ %49, %46 ], [ %38, %35 ], [ %23, %20 ]
  %27 = add i32 %26, 4095
  %28 = lshr i32 %27, 12
  br label %68

29:                                               ; preds = %16
  %30 = getelementptr %struct.ttm_resource_manager, ptr %8, i32 0, i32 5, i32 1
  br label %31

31:                                               ; preds = %35, %29
  %32 = phi ptr [ %30, %29 ], [ %33, %35 ]
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, %30
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %33, i32 -240
  %37 = getelementptr i8, ptr %33, i32 -96
  %38 = load i32, ptr %37, align 8
  %39 = tail call i32 @ttm_bo_swapout(ptr noundef %36, ptr noundef %1, i32 noundef %2) #5
  switch i32 %39, label %68 [
    i32 0, label %25
    i32 -16, label %31
  ]

40:                                               ; preds = %31
  %41 = getelementptr %struct.ttm_resource_manager, ptr %8, i32 0, i32 5, i32 2
  br label %42

42:                                               ; preds = %46, %40
  %43 = phi ptr [ %41, %40 ], [ %44, %46 ]
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, %41
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %44, i32 -240
  %48 = getelementptr i8, ptr %44, i32 -96
  %49 = load i32, ptr %48, align 8
  %50 = tail call i32 @ttm_bo_swapout(ptr noundef %47, ptr noundef %1, i32 noundef %2) #5
  switch i32 %50, label %68 [
    i32 0, label %25
    i32 -16, label %42
  ]

51:                                               ; preds = %42
  %52 = getelementptr %struct.ttm_resource_manager, ptr %8, i32 0, i32 5, i32 3
  br label %53

53:                                               ; preds = %57, %51
  %54 = phi ptr [ %52, %51 ], [ %55, %57 ]
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, %52
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %55, i32 -240
  %59 = getelementptr i8, ptr %55, i32 -96
  %60 = load i32, ptr %59, align 8
  %61 = tail call i32 @ttm_bo_swapout(ptr noundef %58, ptr noundef %1, i32 noundef %2) #5
  switch i32 %61, label %68 [
    i32 0, label %25
    i32 -16, label %53
  ]

62:                                               ; preds = %53, %10, %5
  %63 = add nuw nsw i32 %6, 1
  %64 = icmp eq i32 %63, 8
  br i1 %64, label %65, label %5

65:                                               ; preds = %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %66 = load i16, ptr %4, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  br label %68

68:                                               ; preds = %65, %57, %46, %35, %25, %20
  %69 = phi i32 [ 0, %65 ], [ %28, %25 ], [ %61, %57 ], [ %50, %46 ], [ %39, %35 ], [ %24, %20 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_swapout(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_device_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) #0 {
  %8 = alloca %struct.sysinfo, align 4
  %9 = icmp eq ptr %4, null
  br i1 %9, label %10, label %11, !prof !13

10:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 207, i32 noundef 9, ptr noundef null) #5
  br label %66

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %8, i8 0, i32 64, i1 false) #5, !annotation !14
  tail call void @mutex_lock(ptr noundef nonnull @ttm_global_mutex) #5
  %12 = load i32, ptr @ttm_glob_use_count, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr @ttm_glob_use_count, align 4
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %49, label %15

15:                                               ; preds = %11
  call void @si_meminfo(ptr noundef nonnull %8) #5
  %16 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #5
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %18 = select i1 %17, ptr null, ptr %16
  store ptr %18, ptr @ttm_debugfs_root, align 4
  %19 = getelementptr inbounds %struct.sysinfo, ptr %8, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.sysinfo, ptr %8, i32 0, i32 12
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  %25 = mul nuw i64 %24, %21
  %26 = lshr i64 %25, 13
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 2147483647
  %29 = getelementptr inbounds %struct.sysinfo, ptr %8, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %20, %30
  %32 = zext i32 %31 to i64
  %33 = mul nuw i64 %32, %24
  %34 = lshr i64 %33, 12
  %35 = trunc i64 %34 to i32
  %36 = call i32 @llvm.umin.i32(i32 %35, i32 524288) #5
  %37 = call i32 @ttm_pool_mgr_init(i32 noundef %28) #5
  call void @ttm_tt_mgr_init(i32 noundef %28, i32 noundef %36) #5
  %38 = call ptr @__alloc_pages(i32 noundef 260, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  store ptr %38, ptr @ttm_glob, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !13

40:                                               ; preds = %15
  store volatile ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1), ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1), ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1, i32 1), align 4
  store volatile i32 0, ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 2), align 4
  %41 = load ptr, ptr @ttm_debugfs_root, align 4
  call void @debugfs_create_atomic_t(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %41, ptr noundef getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 2)) #5
  br label %49

42:                                               ; preds = %15
  %43 = load ptr, ptr @ttm_debugfs_root, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  call void @debugfs_remove(ptr noundef nonnull %43) #5
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, ptr @ttm_glob_use_count, align 4
  %48 = add i32 %47, -1
  store i32 %48, ptr @ttm_glob_use_count, align 4
  call void @mutex_unlock(ptr noundef nonnull @ttm_global_mutex) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #5
  br label %66

49:                                               ; preds = %40, %11
  call void @mutex_unlock(ptr noundef nonnull @ttm_global_mutex) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #5
  %50 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 1
  store ptr %1, ptr %50, align 8
  call void @ttm_sys_man_init(ptr noundef %0) #5
  %51 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 5
  call void @ttm_pool_init(ptr noundef %51, ptr noundef %2, i1 noundef zeroext %5, i1 noundef zeroext %6) #5
  %52 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 4
  store ptr %4, ptr %52, align 8
  %53 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 10
  store i32 -32, ptr %53, align 4
  %54 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 10, i32 0, i32 1
  store volatile ptr %54, ptr %54, align 4
  %55 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 10, i32 0, i32 1, i32 1
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 10, i32 0, i32 2
  store ptr @ttm_device_delayed_workqueue, ptr %56, align 4
  %57 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 10, i32 1
  call void @init_timer_key(ptr noundef %57, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #5
  %58 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 6
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 7
  store volatile ptr %59, ptr %59, align 4
  %60 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 7, i32 1
  store ptr %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 8
  store volatile ptr %61, ptr %61, align 4
  %62 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 8, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 9
  store ptr %3, ptr %63, align 8
  call void @mutex_lock(ptr noundef nonnull @ttm_global_mutex) #5
  %64 = load ptr, ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1, i32 1), align 4
  store ptr getelementptr inbounds (%struct.ttm_global, ptr @ttm_glob, i32 0, i32 1), ptr %0, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %64, ptr %65, align 4
  store volatile ptr %0, ptr %64, align 4
  call void @mutex_unlock(ptr noundef nonnull @ttm_global_mutex) #5
  br label %66

66:                                               ; preds = %49, %46, %10
  %67 = phi i32 [ -22, %10 ], [ 0, %49 ], [ -12, %46 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_sys_man_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_pool_init(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ttm_device_delayed_workqueue(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1300
  %3 = tail call zeroext i1 @ttm_bo_delayed_delete(ptr noundef %2, i1 noundef zeroext false) #5
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %0, i32 noundef 1) #5
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_device_fini(ptr noundef %0) #0 {
  %2 = getelementptr %struct.ttm_device, ptr %0, i32 0, i32 3, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.ttm_resource_manager, ptr %3, i32 0, i32 5, i32 0
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %8, label %7, !prof !15

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr %struct.ttm_resource_manager, ptr %3, i32 0, i32 5, i32 1
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %13, label %12, !prof !15

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr %struct.ttm_resource_manager, ptr %3, i32 0, i32 5, i32 2
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %18, label %17, !prof !15

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr %struct.ttm_resource_manager, ptr %3, i32 0, i32 5, i32 3
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %23, label %22, !prof !15

22:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 229, i32 noundef 9, ptr noundef null) #5
  br label %23

23:                                               ; preds = %22, %18
  store i8 0, ptr %3, align 8
  store ptr null, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @ttm_global_mutex) #5
  %24 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ttm_global_mutex) #5
  %28 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 10
  %29 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %28) #5
  %30 = tail call zeroext i1 @ttm_bo_delayed_delete(ptr noundef %0, i1 noundef zeroext true) #5
  %31 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %31) #5
  %32 = load volatile ptr, ptr %4, align 4
  %33 = load volatile ptr, ptr %4, align 4
  %34 = load volatile ptr, ptr %4, align 4
  %35 = load volatile ptr, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %36 = load i16, ptr %31, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %38 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 5
  tail call void @ttm_pool_fini(ptr noundef %38) #5
  tail call void @mutex_lock(ptr noundef nonnull @ttm_global_mutex) #5
  %39 = load i32, ptr @ttm_glob_use_count, align 4
  %40 = add i32 %39, -1
  store i32 %40, ptr @ttm_glob_use_count, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  tail call void @ttm_pool_mgr_fini() #5
  %43 = load ptr, ptr @ttm_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %43) #5
  %44 = load ptr, ptr @ttm_glob, align 4
  tail call void @__free_pages(ptr noundef %44, i32 noundef 0) #5
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) @ttm_glob, i8 0, i32 16, i1 false) #5
  br label %45

45:                                               ; preds = %42, %23
  tail call void @mutex_unlock(ptr noundef nonnull @ttm_global_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ttm_bo_delayed_delete(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_pool_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_device_clear_dma_mappings(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %2) #5
  %3 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 8
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %51, label %6

6:                                                ; preds = %48, %1
  %7 = phi ptr [ %49, %48 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -240
  %9 = getelementptr i8, ptr %7, i32 -16
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %22, %6
  %13 = phi i32 [ %20, %22 ], [ %10, %6 ]
  %14 = add i32 %13, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #5, !srcloc !16
  br label %15

15:                                               ; preds = %15, %12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 %13, i32 %14, ptr elementtype(i32) %9) #5, !srcloc !17
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = extractvalue { i32, i32 } %16, 1
  %21 = icmp eq i32 %20, %13
  br i1 %21, label %24, label %22, !prof !15

22:                                               ; preds = %19
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %24, label %12

24:                                               ; preds = %22, %19, %6
  %25 = phi i32 [ 0, %6 ], [ 0, %22 ], [ %13, %19 ]
  %26 = add i32 %25, 1
  %27 = or i32 %26, %25
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %30, label %29, !prof !15

29:                                               ; preds = %24
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 0) #5
  br label %30

30:                                               ; preds = %29, %24
  %31 = icmp eq i32 %25, 0
  %32 = icmp eq ptr %8, null
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %48, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %7, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %35, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %39 = load i16, ptr %2, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %41 = getelementptr i8, ptr %7, i32 -8
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = getelementptr i8, ptr %7, i32 -32
  %46 = load ptr, ptr %45, align 8
  tail call void @ttm_tt_unpopulate(ptr noundef %46, ptr noundef nonnull %42) #5
  br label %47

47:                                               ; preds = %44, %34
  tail call void @ttm_bo_put(ptr noundef nonnull %8) #5
  tail call void @_raw_spin_lock(ptr noundef %2) #5
  br label %48

48:                                               ; preds = %47, %30
  %49 = load volatile ptr, ptr %3, align 4
  %50 = icmp eq ptr %49, %3
  br i1 %50, label %51, label %6

51:                                               ; preds = %48, %1
  br label %52

52:                                               ; preds = %114, %51
  %53 = phi i32 [ %115, %114 ], [ 0, %51 ]
  %54 = getelementptr %struct.ttm_device, ptr %0, i32 0, i32 3, i32 %53
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %114, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.ttm_resource_manager, ptr %55, i32 0, i32 1
  %59 = load i8, ptr %58, align 1, !range !8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %114, label %61

61:                                               ; preds = %111, %57
  %62 = phi i32 [ %112, %111 ], [ 0, %57 ]
  %63 = getelementptr %struct.ttm_resource_manager, ptr %55, i32 0, i32 5, i32 %62
  %64 = load volatile ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %111, label %66

66:                                               ; preds = %108, %61
  %67 = phi ptr [ %109, %108 ], [ %64, %61 ]
  %68 = getelementptr i8, ptr %67, i32 -240
  %69 = getelementptr i8, ptr %67, i32 -16
  %70 = load volatile i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %82, %66
  %73 = phi i32 [ %80, %82 ], [ %70, %66 ]
  %74 = add i32 %73, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #5, !srcloc !16
  br label %75

75:                                               ; preds = %75, %72
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 %73, i32 %74, ptr elementtype(i32) %69) #5, !srcloc !17
  %77 = extractvalue { i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %75

79:                                               ; preds = %75
  %80 = extractvalue { i32, i32 } %76, 1
  %81 = icmp eq i32 %80, %73
  br i1 %81, label %84, label %82, !prof !15

82:                                               ; preds = %79
  %83 = icmp eq i32 %80, 0
  br i1 %83, label %84, label %72

84:                                               ; preds = %82, %79, %66
  %85 = phi i32 [ 0, %66 ], [ 0, %82 ], [ %73, %79 ]
  %86 = add i32 %85, 1
  %87 = or i32 %86, %85
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %90, label %89, !prof !15

89:                                               ; preds = %84
  tail call void @refcount_warn_saturate(ptr noundef %69, i32 noundef 0) #5
  br label %90

90:                                               ; preds = %89, %84
  %91 = icmp eq i32 %85, 0
  %92 = icmp eq ptr %68, null
  %93 = select i1 %91, i1 true, i1 %92
  br i1 %93, label %108, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %67, align 4
  %98 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  store ptr %96, ptr %98, align 4
  store volatile ptr %97, ptr %96, align 4
  store volatile ptr %67, ptr %67, align 4
  store ptr %67, ptr %95, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %99 = load i16, ptr %2, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %101 = getelementptr i8, ptr %67, i32 -8
  %102 = load ptr, ptr %101, align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %94
  %105 = getelementptr i8, ptr %67, i32 -32
  %106 = load ptr, ptr %105, align 8
  tail call void @ttm_tt_unpopulate(ptr noundef %106, ptr noundef nonnull %102) #5
  br label %107

107:                                              ; preds = %104, %94
  tail call void @ttm_bo_put(ptr noundef nonnull %68) #5
  tail call void @_raw_spin_lock(ptr noundef %2) #5
  br label %108

108:                                              ; preds = %107, %90
  %109 = load volatile ptr, ptr %63, align 4
  %110 = icmp eq ptr %109, %63
  br i1 %110, label %111, label %66

111:                                              ; preds = %108, %61
  %112 = add nuw nsw i32 %62, 1
  %113 = icmp eq i32 %112, 4
  br i1 %113, label %114, label %61

114:                                              ; preds = %111, %57, %52
  %115 = add nuw nsw i32 %53, 1
  %116 = icmp eq i32 %115, 8
  br i1 %116, label %117, label %52

117:                                              ; preds = %114
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %118 = load i16, ptr %2, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_tt_unpopulate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_pool_mgr_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_tt_mgr_init(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_atomic_t(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_pool_mgr_fini() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!9 = !{i64 2149013316}
!10 = !{i64 2149009140}
!11 = !{i64 2149009215, i64 2149009242, i64 2149009289, i64 2149009311, i64 2149009339, i64 2149009359}
!12 = !{i64 2149036319}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 846250, i64 2148336221, i64 2148336247, i64 2148336294, i64 2148336316, i64 2148336344, i64 2148336364}
!17 = !{i64 832313, i64 832337, i64 832358, i64 832375, i64 832392}
