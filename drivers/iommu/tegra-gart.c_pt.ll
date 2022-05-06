; ModuleID = '/llk/IR/drivers/iommu/tegra-gart.c_pt.bc'
source_filename = "../drivers/iommu/tegra-gart.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.gart_device = type { ptr, ptr, i32, i32, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.iommu_device, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.73 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.anon.73 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [44 x i8] c"gart: Memory aperture resource unavailable\0A\00", align 1
@gart_handle = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"gart\00", align 1
@gart_iommu_ops = internal constant %struct.iommu_ops { ptr @gart_iommu_capable, ptr @gart_iommu_domain_alloc, ptr @gart_iommu_domain_free, ptr @gart_iommu_attach_dev, ptr @gart_iommu_detach_dev, ptr @gart_iommu_map, ptr null, ptr @gart_iommu_unmap, ptr null, ptr null, ptr @gart_iommu_sync_map, ptr @gart_iommu_sync, ptr @gart_iommu_iova_to_phys, ptr @gart_iommu_probe_device, ptr @gart_iommu_release_device, ptr null, ptr @generic_device_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gart_iommu_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4096, ptr null }, align 4
@__param_str_gart_debug = internal constant [22 x i8] c"tegra_gart.gart_debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@gart_debug = internal global i8 0, align 1
@__param_gart_debug = internal constant %struct.kernel_param { ptr @__param_str_gart_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @gart_debug } }, section "__param", align 4
@__UNIQUE_ID_gart_debugtype221 = internal constant [36 x i8] c"tegra_gart.parmtype=gart_debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_gart_debug222 = internal constant [49 x i8] c"tegra_gart.parm=gart_debug:Enable GART debugging\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"drivers/iommu/tegra-gart.c\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"gart: Page entry is in-use\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"gart: Page entry is invalid\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_gart_debug222, ptr @__UNIQUE_ID_gart_debugtype221, ptr @__param_gart_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_gart_suspend(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #7, !srcloc !8
  %5 = load ptr, ptr %0, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !9
  %7 = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %12, %1
  %13 = phi ptr [ %20, %12 ], [ %3, %1 ]
  %14 = phi i32 [ %21, %12 ], [ %8, %1 ]
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #7, !srcloc !8
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !9
  %20 = getelementptr i32, ptr %13, i32 1
  store i32 %19, ptr %13, align 4
  %21 = add i32 %14, 4096
  %22 = load i32, ptr %9, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %12, label %24

24:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_gart_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %17, %7
  %11 = phi ptr [ %18, %17 ], [ %9, %7 ]
  %12 = phi i32 [ %24, %17 ], [ %3, %7 ]
  %13 = icmp eq ptr %11, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr i32, ptr %11, i32 1
  %16 = load i32, ptr %11, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %15, %14 ], [ null, %10 ]
  %19 = phi i32 [ %16, %14 ], [ 0, %10 ]
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %12) #7, !srcloc !8
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #7, !srcloc !8
  %24 = add i32 %12, 4096
  %25 = load i32, ptr %4, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %10, label %27

27:                                               ; preds = %17, %1
  %28 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1) #7, !srcloc !8
  %29 = load ptr, ptr %0, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_gart_probe(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = tail call ptr @platform_get_resource(ptr noundef %3, i32 noundef 512, i32 noundef 1) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str) #8
  br label %62

7:                                                ; preds = %2
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 56) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %62, label %11

11:                                               ; preds = %7
  store ptr %9, ptr @gart_handle, align 4
  %12 = getelementptr inbounds %struct.gart_device, ptr %9, i32 0, i32 9
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.tegra_mc, ptr %1, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 36
  store ptr %15, ptr %9, align 8
  %16 = load i32, ptr %4, align 4
  %17 = getelementptr inbounds %struct.gart_device, ptr %9, i32 0, i32 2
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  %21 = getelementptr inbounds %struct.gart_device, ptr %9, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.gart_device, ptr %9, i32 0, i32 4
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.gart_device, ptr %9, i32 0, i32 5
  store i32 0, ptr %23, align 4
  %24 = icmp ult i32 %16, %20
  br i1 %24, label %25, label %36

25:                                               ; preds = %25, %11
  %26 = phi i32 [ %31, %25 ], [ %16, %11 ]
  %27 = load ptr, ptr %9, align 8
  %28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #7, !srcloc !8
  %29 = load ptr, ptr %9, align 8
  %30 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #7, !srcloc !8
  %31 = add i32 %26, 4096
  %32 = load i32, ptr %21, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %25, label %34

34:                                               ; preds = %25
  %35 = load ptr, ptr %9, align 8
  br label %36

36:                                               ; preds = %34, %11
  %37 = phi ptr [ %35, %34 ], [ %15, %11 ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 1) #7, !srcloc !8
  %38 = load ptr, ptr %9, align 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !9
  %40 = getelementptr inbounds %struct.gart_device, ptr %9, i32 0, i32 8
  %41 = tail call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef %40, ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.1) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %36
  %44 = tail call i32 @iommu_device_register(ptr noundef %40, ptr noundef nonnull @gart_iommu_ops, ptr noundef %0) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i32, ptr %18, align 4
  %48 = load i32, ptr %4, align 4
  %49 = add i32 %47, 1
  %50 = sub i32 %49, %48
  %51 = lshr i32 %50, 10
  %52 = and i32 %51, 4194300
  %53 = tail call noalias ptr @vmalloc(i32 noundef %52) #10
  %54 = getelementptr inbounds %struct.gart_device, ptr %9, i32 0, i32 1
  store ptr %53, ptr %54, align 4
  %55 = icmp eq ptr %53, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  tail call void @iommu_device_unregister(ptr noundef %40) #7
  br label %57

57:                                               ; preds = %56, %43
  %58 = phi i32 [ %44, %43 ], [ -12, %56 ]
  tail call void @iommu_device_sysfs_remove(ptr noundef %40) #7
  br label %59

59:                                               ; preds = %57, %36
  %60 = phi i32 [ %41, %36 ], [ %58, %57 ]
  tail call void @kfree(ptr noundef nonnull %9) #7
  %61 = inttoptr i32 %60 to ptr
  br label %62

62:                                               ; preds = %59, %46, %7, %6
  %63 = phi ptr [ %61, %59 ], [ inttoptr (i32 -6 to ptr), %6 ], [ %9, %46 ], [ inttoptr (i32 -12 to ptr), %7 ]
  ret ptr %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_sysfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gart_iommu_capable(i32 noundef %0) #5 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @gart_iommu_domain_alloc(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %3, label %17

3:                                                ; preds = %1
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 36) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @gart_handle, align 4
  %9 = getelementptr inbounds %struct.gart_device, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.iommu_domain, ptr %5, i32 0, i32 5
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.gart_device, ptr %8, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = getelementptr inbounds %struct.iommu_domain, ptr %5, i32 0, i32 5, i32 1
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.iommu_domain, ptr %5, i32 0, i32 5, i32 2
  store i8 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %7, %3, %1
  %18 = phi ptr [ null, %1 ], [ %5, %7 ], [ null, %3 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gart_iommu_domain_free(ptr noundef %0) #0 {
  %2 = load ptr, ptr @gart_handle, align 4
  %3 = getelementptr inbounds %struct.gart_device, ptr %2, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 163, i32 noundef 9, ptr noundef null) #7
  br label %7

7:                                                ; preds = %6, %1
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gart_iommu_attach_dev(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr @gart_handle, align 4
  %4 = getelementptr inbounds %struct.gart_device, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.gart_device, ptr %3, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %6, %0
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 35
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dev_iommu, ptr %12, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %16, %14 ], [ null, %10 ]
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.dev_iommu, ptr %12, i32 0, i32 5
  store ptr %0, ptr %21, align 4
  store ptr %0, ptr %5, align 4
  %22 = getelementptr inbounds %struct.gart_device, ptr %3, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  br label %25

25:                                               ; preds = %20, %17, %2
  %26 = phi i32 [ 0, %20 ], [ 0, %17 ], [ -16, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %27 = load i16, ptr %4, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gart_iommu_detach_dev(ptr noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr @gart_handle, align 4
  %4 = getelementptr inbounds %struct.gart_device, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 35
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dev_iommu, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.dev_iommu, ptr %6, i32 0, i32 5
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.gart_device, ptr %3, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  store i32 %18, ptr %16, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.gart_device, ptr %3, i32 0, i32 7
  store ptr null, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %14, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %23 = load i16, ptr %4, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gart_iommu_map(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load ptr, ptr @gart_handle, align 4
  %8 = getelementptr inbounds %struct.gart_device, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %1
  %11 = icmp ne i32 %3, 4096
  %12 = or i1 %11, %10
  br i1 %12, label %42, label %13, !prof !15

13:                                               ; preds = %6
  %14 = add i32 %1, 4096
  %15 = getelementptr inbounds %struct.gart_device, ptr %7, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %42, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.gart_device, ptr %7, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %19) #7
  %20 = load i8, ptr @gart_debug, align 1, !range !16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %1) #7, !srcloc !8
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr i8, ptr %25, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !9
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32, !prof !10

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.gart_device, ptr %7, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.3) #8
  br label %38

32:                                               ; preds = %22, %18
  %33 = or i32 %2, -2147483648
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %1) #7, !srcloc !8
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %33) #7, !srcloc !8
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i32 [ -22, %29 ], [ 0, %32 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %40 = load i16, ptr %19, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %42

42:                                               ; preds = %38, %13, %6
  %43 = phi i32 [ %39, %38 ], [ -22, %13 ], [ -22, %6 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gart_iommu_unmap(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = load ptr, ptr @gart_handle, align 4
  %6 = getelementptr inbounds %struct.gart_device, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %1
  %9 = icmp ne i32 %2, 4096
  %10 = or i1 %9, %8
  br i1 %10, label %39, label %11, !prof !15

11:                                               ; preds = %4
  %12 = add i32 %1, 4096
  %13 = getelementptr inbounds %struct.gart_device, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %12, %14
  br i1 %15, label %39, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.gart_device, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %17) #7
  %18 = load i8, ptr @gart_debug, align 1, !range !16
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %1) #7, !srcloc !8
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !9
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %30, !prof !10

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.gart_device, ptr %5, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.4) #8
  br label %35

30:                                               ; preds = %20, %16
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %1) #7, !srcloc !8
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #7, !srcloc !8
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i32 [ 0, %27 ], [ 4096, %30 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %37 = load i16, ptr %17, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %39

39:                                               ; preds = %35, %11, %4
  %40 = phi i32 [ 0, %11 ], [ 0, %4 ], [ %36, %35 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gart_iommu_sync_map(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr @gart_handle, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gart_iommu_sync(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr @gart_handle, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gart_iommu_iova_to_phys(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @gart_handle, align 4
  %4 = getelementptr inbounds %struct.gart_device, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %22, label %7, !prof !15

7:                                                ; preds = %2
  %8 = add i32 %1, 4096
  %9 = getelementptr inbounds %struct.gart_device, ptr %3, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %8, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.gart_device, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %13) #7
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %1) #7, !srcloc !8
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %19 = load i16, ptr %13, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %21 = and i32 %18, 2147479552
  br label %22

22:                                               ; preds = %12, %7, %2
  %23 = phi i32 [ %21, %12 ], [ -22, %7 ], [ -22, %2 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @gart_iommu_probe_device(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dev_iommu, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @gart_handle, align 4
  %11 = getelementptr inbounds %struct.gart_device, ptr %10, i32 0, i32 8
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi ptr [ %11, %9 ], [ inttoptr (i32 -19 to ptr), %5 ], [ inttoptr (i32 -19 to ptr), %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @gart_iommu_release_device(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_device_group(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @gart_iommu_of_xlate(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

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
!8 = !{i64 368280}
!9 = !{i64 368698}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2148904906}
!12 = !{i64 2148900730}
!13 = !{i64 2148900805, i64 2148900832, i64 2148900879, i64 2148900901, i64 2148900929, i64 2148900949}
!14 = !{i64 2148927909}
!15 = !{!"branch_weights", i32 4001, i32 4000000}
!16 = !{i8 0, i8 2}
