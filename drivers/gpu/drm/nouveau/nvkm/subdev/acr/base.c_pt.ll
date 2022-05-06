; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_acr_hsf_func = type { ptr, ptr, ptr }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_acr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.nvkm_acr_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_lsf = type { ptr, ptr, i32, %struct.list_head }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.rb_root = type { ptr }

@.str = private unnamed_addr constant [25 x i8] c"%s: executing %s binary\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: %s binary failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: %s binary completed successfully\0A\00", align 1
@nvkm_acr = internal constant %struct.nvkm_subdev_func { ptr @nvkm_acr_dtor, ptr null, ptr @nvkm_acr_oneinit, ptr null, ptr @nvkm_acr_init, ptr @nvkm_acr_fini, ptr null }, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"Acr\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Nv%sFw\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Nv%sFwVer\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"NvAcrWpr\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"unload\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%s: No LSF(s) present.\0A\00", align 1
@.str.9 = private unnamed_addr constant [72 x i8] c"%s: WPR not configured as expected: %016llx-%016llx vs %016llx-%016llx\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"%s: No HSFW(s)\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"%s: %s falcon cannot be bootstrapped\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"%s: WPR region is from 0x%llx-0x%llx (shadow 0x%llx)\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"%s: %08x: %08x %08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"acr\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"%s: loading %s fw\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"pmu\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"gsplite\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"fecs\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"gpccs\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"nvdec\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"sec2\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"minion\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"acr/wpr\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"NvAcrWprCompare\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"NvAcrWprPrevAddr\00", align 1
@switch.table.nvkm_acr_oneinit = private unnamed_addr constant [11 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.23, ptr @.str.21, ptr @.str.23, ptr @.str.23, ptr @.str.22], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_acr_hsf_boot(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 3
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %4, %2 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %59, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 -4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @strcmp(ptr noundef %11, ptr noundef %1) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %7, i32 -4
  %16 = getelementptr i8, ptr %7, i32 -8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %59, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 3
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str, ptr noundef %27, ptr noundef %11) #10
  br label %28

28:                                               ; preds = %22, %18
  %29 = getelementptr i8, ptr %7, i32 52
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @nvkm_falcon_get(ptr noundef %30, ptr noundef %3) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %28
  %34 = load ptr, ptr %16, align 4
  %35 = getelementptr inbounds %struct.nvkm_acr_hsf_func, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %0, ptr noundef nonnull %16) #9
  %38 = load ptr, ptr %29, align 4
  tail call void @nvkm_falcon_put(ptr noundef %38, ptr noundef %3) #9
  %39 = icmp eq i32 %37, 0
  %40 = load i32, ptr %19, align 4
  br i1 %39, label %50, label %41

41:                                               ; preds = %33
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 4
  %49 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.1, ptr noundef %48, ptr noundef %49) #10
  br label %59

50:                                               ; preds = %33
  %51 = icmp ugt i32 %40, 3
  br i1 %51, label %52, label %59

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 4
  %58 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.2, ptr noundef %57, ptr noundef %58) #10
  br label %59

59:                                               ; preds = %52, %50, %43, %41, %28, %14, %5
  %60 = phi i32 [ -22, %14 ], [ %31, %28 ], [ %37, %43 ], [ %37, %41 ], [ 0, %52 ], [ 0, %50 ], [ -22, %5 ]
  ret i32 %60
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_acr_bootstrap_falcons(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 38
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nvkm_acr, ptr %5, i32 0, i32 5
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 -12
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %9, label %19

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %11, i32 -12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %19, %9, %2
  %23 = zext i32 %1 to i64
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.nvkm_acr_func, ptr %24, i32 0, i32 12
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, %23
  %28 = icmp eq i64 %27, %23
  br i1 %28, label %29, label %73

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.nvkm_acr, ptr %5, i32 0, i32 13
  %31 = load i8, ptr %30, align 8, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @nvkm_acr_hsf_boot(ptr noundef %5, ptr noundef nonnull @.str.7) #9
  store i8 0, ptr %30, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = tail call fastcc i32 @nvkm_acr_load(ptr noundef %5) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %35
  %39 = load i8, ptr %30, align 8, !range !8
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, i32 -22, i32 0
  br label %73

42:                                               ; preds = %19
  %43 = zext i32 %1 to i64
  %44 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %15, i32 0, i32 5
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, %43
  %47 = icmp eq i64 %46, %43
  br i1 %47, label %48, label %73

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %15, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr i8, ptr %11, i32 -8
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 %50(ptr noundef %54, i32 noundef %1) #9
  br label %73

56:                                               ; preds = %48
  %57 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 11, i32 noundef 0) #9
  %58 = icmp ult i32 %57, 11
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = getelementptr i8, ptr %11, i32 -8
  br label %61

61:                                               ; preds = %69, %59
  %62 = phi i32 [ %57, %59 ], [ %71, %69 ]
  %63 = load ptr, ptr %20, align 4
  %64 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %63, i32 0, i32 6
  %65 = load ptr, ptr %64, align 8
  %66 = load ptr, ptr %60, align 4
  %67 = call i32 %65(ptr noundef %66, i32 noundef %62) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = add nuw nsw i32 %62, 1
  %71 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 11, i32 noundef %70) #9
  %72 = icmp ult i32 %71, 11
  br i1 %72, label %61, label %73

73:                                               ; preds = %69, %61, %56, %52, %42, %38, %35, %22
  %74 = phi i32 [ %55, %52 ], [ %41, %38 ], [ %36, %35 ], [ -38, %22 ], [ -38, %42 ], [ 0, %56 ], [ %67, %61 ], [ 0, %69 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nvkm_acr_managed_falcon(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_acr, ptr %4, i32 0, i32 6
  %8 = load i64, ptr %7, align 8
  %9 = zext i32 %1 to i64
  %10 = shl nuw i64 1, %9
  %11 = and i64 %8, %10
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6, %2
  br label %14

14:                                               ; preds = %13, %6
  %15 = phi i1 [ false, %13 ], [ true, %6 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_acr_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [32 x i8], align 1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 160) #11
  store ptr %8, ptr %4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %107, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nvkm_acr, ptr %8, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_acr, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.nvkm_acr, ptr %8, i32 0, i32 2
  store volatile ptr %12, ptr %12, align 8
  %13 = getelementptr inbounds %struct.nvkm_acr, ptr %8, i32 0, i32 2, i32 1
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nvkm_acr, ptr %8, i32 0, i32 4
  store volatile ptr %14, ptr %14, align 8
  %15 = getelementptr inbounds %struct.nvkm_acr, ptr %8, i32 0, i32 4, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nvkm_acr, ptr %8, i32 0, i32 3
  store volatile ptr %16, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nvkm_acr, ptr %8, i32 0, i32 3, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nvkm_acr, ptr %8, i32 0, i32 5
  store volatile ptr %18, ptr %18, align 8
  %19 = getelementptr inbounds %struct.nvkm_acr, ptr %8, i32 0, i32 5, i32 1
  store ptr %18, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !9
  %20 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3)
  %21 = getelementptr inbounds %struct.nvkm_acr, ptr %8, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @nvkm_longopt(ptr noundef %24, ptr noundef nonnull %6, i32 noundef -2) #9
  %26 = icmp sgt i32 %25, -2
  br i1 %26, label %29, label %27

27:                                               ; preds = %10
  %28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3)
  br label %43

29:                                               ; preds = %34, %10
  %30 = phi ptr [ %37, %34 ], [ %0, %10 ]
  %31 = getelementptr inbounds %struct.nvkm_acr_fwif, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %71, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %30, align 4
  %36 = icmp ne i32 %35, %25
  %37 = getelementptr %struct.nvkm_acr_fwif, ptr %30, i32 1
  %38 = icmp eq ptr %30, null
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %29, label %40

40:                                               ; preds = %34
  %41 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3)
  %42 = load i32, ptr %30, align 4
  br label %43

43:                                               ; preds = %40, %27
  %44 = phi ptr [ %30, %40 ], [ null, %27 ]
  %45 = phi ptr [ %30, %40 ], [ %0, %27 ]
  %46 = phi i32 [ %42, %40 ], [ -1, %27 ]
  %47 = load ptr, ptr %21, align 8
  %48 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 @nvkm_longopt(ptr noundef %49, ptr noundef nonnull %6, i32 noundef %46) #9
  %51 = getelementptr inbounds %struct.nvkm_acr_fwif, ptr %45, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %74, label %54

54:                                               ; preds = %43
  %55 = icmp sgt i32 %50, -1
  br label %56

56:                                               ; preds = %63, %54
  %57 = phi ptr [ %52, %54 ], [ %66, %63 ]
  %58 = phi ptr [ %45, %54 ], [ %64, %63 ]
  br i1 %55, label %68, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %58, align 4
  %61 = call i32 %57(ptr noundef nonnull %8, i32 noundef %60, ptr noundef %58) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %59
  %64 = getelementptr %struct.nvkm_acr_fwif, ptr %58, i32 1
  %65 = getelementptr %struct.nvkm_acr_fwif, ptr %58, i32 1, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %56

68:                                               ; preds = %56
  %69 = call i32 %52(ptr noundef nonnull %8, i32 noundef %50, ptr noundef %45) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68, %63, %29
  %72 = phi i32 [ %69, %68 ], [ %61, %63 ], [ -22, %29 ]
  %73 = inttoptr i32 %72 to ptr
  br label %74

74:                                               ; preds = %71, %68, %59, %43
  %75 = phi ptr [ %73, %71 ], [ %45, %68 ], [ %44, %43 ], [ %58, %59 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = ptrtoint ptr %75 to i32
  br label %107

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.nvkm_acr_fwif, ptr %75, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  store ptr %81, ptr %8, align 8
  %82 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 6
  %83 = load ptr, ptr %82, align 4
  %84 = call i32 @nvkm_longopt(ptr noundef %83, ptr noundef nonnull @.str.6, i32 noundef -1) #9
  %85 = icmp sgt i32 %84, -1
  br i1 %85, label %86, label %107

86:                                               ; preds = %79
  %87 = load ptr, ptr %21, align 8
  %88 = getelementptr inbounds %struct.nvkm_acr, ptr %8, i32 0, i32 14
  %89 = call i32 @nvkm_firmware_get(ptr noundef %11, ptr noundef nonnull @.str.24, i32 noundef %84, ptr noundef %88) #9
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %8, align 8
  %93 = getelementptr inbounds %struct.nvkm_acr_func, ptr %92, i32 0, i32 4
  %94 = load ptr, ptr %93, align 8
  %95 = call i32 %94(ptr noundef nonnull %8) #9
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 6
  %99 = load ptr, ptr %98, align 4
  %100 = call zeroext i1 @nvkm_boolopt(ptr noundef %99, ptr noundef nonnull @.str.25, i1 noundef zeroext false) #9
  %101 = getelementptr inbounds %struct.nvkm_acr, ptr %8, i32 0, i32 15
  %102 = zext i1 %100 to i8
  store i8 %102, ptr %101, align 8
  %103 = load ptr, ptr %98, align 4
  %104 = call i32 @nvkm_longopt(ptr noundef %103, ptr noundef nonnull @.str.26, i32 noundef 0) #9
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.nvkm_acr, ptr %8, i32 0, i32 16
  store i64 %105, ptr %106, align 8
  br label %107

107:                                              ; preds = %97, %91, %86, %79, %77, %5
  %108 = phi i32 [ %78, %77 ], [ -12, %5 ], [ 0, %97 ], [ 0, %79 ], [ %95, %91 ], [ %89, %86 ]
  ret i32 %108
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_acr_load(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8, !annotation !9
  %4 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 5
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 3
  br i1 %10, label %11, label %68

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.8, ptr noundef %16) #10
  br label %68

17:                                               ; preds = %1
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.nvkm_acr_func, ptr %18, i32 0, i32 10
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 %20(ptr noundef %0) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %17
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.nvkm_acr_func, ptr %24, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  call void %26(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #9
  %27 = load i64, ptr %2, align 8
  %28 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 8
  %29 = load i64, ptr %28, align 8
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i64, ptr %3, align 8
  %33 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 9
  %34 = load i64, ptr %33, align 8
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %49, label %36

36:                                               ; preds = %31, %23
  %37 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 4
  %46 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 9
  %47 = load i64, ptr %46, align 8
  %48 = load i64, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.9, ptr noundef %45, i64 noundef %29, i64 noundef %47, i64 noundef %27, i64 noundef %48) #10
  br label %68

49:                                               ; preds = %31
  %50 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 13
  store i8 1, ptr %50, align 8
  %51 = load ptr, ptr %4, align 4
  %52 = icmp eq ptr %51, %4
  br i1 %52, label %68, label %53

53:                                               ; preds = %65, %49
  %54 = phi ptr [ %66, %65 ], [ %51, %49 ]
  %55 = getelementptr i8, ptr %54, i32 -12
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %56, i32 0, i32 4
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = getelementptr i8, ptr %54, i32 -8
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %58(ptr noundef %62) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60, %53
  %66 = load ptr, ptr %54, align 4
  %67 = icmp eq ptr %66, %4
  br i1 %67, label %68, label %53

68:                                               ; preds = %65, %60, %49, %40, %36, %17, %11, %7
  %69 = phi i32 [ 0, %11 ], [ 0, %7 ], [ %21, %17 ], [ -5, %40 ], [ -5, %36 ], [ 0, %49 ], [ %63, %60 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_acr_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 60
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 128
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %3, %5 ], [ %10, %7 ]
  %9 = getelementptr i8, ptr %8, i32 -8
  %10 = load ptr, ptr %8, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %8, i32 48
  tail call void @nvkm_vmm_put(ptr noundef %11, ptr noundef %12) #9
  %13 = getelementptr i8, ptr %8, i32 44
  tail call void @nvkm_memory_unref(ptr noundef %13) #9
  %14 = getelementptr i8, ptr %8, i32 16
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void @kfree(ptr noundef %9) #9
  %20 = icmp eq ptr %10, %2
  br i1 %20, label %21, label %7

21:                                               ; preds = %7, %1
  %22 = getelementptr i8, ptr %0, i32 128
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %0, i32 124
  %25 = load ptr, ptr %24, align 8
  tail call void @nvkm_vmm_part(ptr noundef %23, ptr noundef %25) #9
  tail call void @nvkm_vmm_unref(ptr noundef %22) #9
  tail call void @nvkm_memory_unref(ptr noundef %24) #9
  %26 = getelementptr i8, ptr %0, i32 92
  tail call void @nvkm_memory_unref(ptr noundef %26) #9
  %27 = getelementptr i8, ptr %0, i32 76
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %38, label %30

30:                                               ; preds = %30, %21
  %31 = phi ptr [ %33, %30 ], [ %28, %21 ]
  %32 = getelementptr i8, ptr %31, i32 -12
  %33 = load ptr, ptr %31, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %33, ptr %35, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %34, align 4
  tail call void @kfree(ptr noundef %32) #9
  %37 = icmp eq ptr %33, %27
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %21
  %39 = getelementptr i8, ptr %0, i32 -4
  tail call void @nvkm_acr_lsfw_del_all(ptr noundef %39) #9
  tail call void @nvkm_acr_hsfw_del_all(ptr noundef %39) #9
  %40 = getelementptr i8, ptr %0, i32 136
  %41 = load ptr, ptr %40, align 4
  tail call void @nvkm_firmware_put(ptr noundef %41) #9
  store ptr null, ptr %40, align 4
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_acr_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = getelementptr i8, ptr %0, i32 52
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.10, ptr noundef %15) #10
  br label %16

16:                                               ; preds = %12, %8
  tail call void @nvkm_acr_lsfw_del_all(ptr noundef %4) #9
  tail call void @nvkm_acr_hsfw_del_all(ptr noundef %4) #9
  %17 = getelementptr i8, ptr %0, i32 136
  %18 = load ptr, ptr %17, align 4
  tail call void @nvkm_firmware_put(ptr noundef %18) #9
  store ptr null, ptr %17, align 4
  br label %332

19:                                               ; preds = %1
  %20 = getelementptr i8, ptr %0, i32 68
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %70, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %0, i32 136
  %25 = getelementptr i8, ptr %0, i32 76
  %26 = getelementptr i8, ptr %0, i32 80
  %27 = getelementptr i8, ptr %0, i32 84
  br label %28

28:                                               ; preds = %67, %23
  %29 = phi ptr [ %21, %23 ], [ %32, %67 ]
  %30 = phi i32 [ 0, %23 ], [ %68, %67 ]
  %31 = getelementptr i8, ptr %29, i32 -12
  %32 = load ptr, ptr %29, align 4
  %33 = load ptr, ptr %24, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr %31, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void @nvkm_acr_lsfw_del(ptr noundef %31) #9
  br label %67

39:                                               ; preds = %35
  %40 = load i32, ptr %33, align 4
  br label %41

41:                                               ; preds = %39, %28
  %42 = phi i32 [ %40, %39 ], [ %30, %28 ]
  %43 = getelementptr i8, ptr %29, i32 -8
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @nvkm_falcon_get(ptr noundef %44, ptr noundef %0) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %332

47:                                               ; preds = %41
  %48 = load ptr, ptr %43, align 4
  tail call void @nvkm_falcon_put(ptr noundef %48, ptr noundef %0) #9
  %49 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3264, i32 noundef 20) #11
  %51 = icmp eq ptr %50, null
  br i1 %51, label %332, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %31, align 4
  store ptr %53, ptr %50, align 8
  %54 = load ptr, ptr %43, align 4
  %55 = getelementptr inbounds %struct.nvkm_acr_lsf, ptr %50, i32 0, i32 1
  store ptr %54, ptr %55, align 4
  %56 = getelementptr i8, ptr %29, i32 -4
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nvkm_acr_lsf, ptr %50, i32 0, i32 2
  store i32 %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.nvkm_acr_lsf, ptr %50, i32 0, i32 3
  %60 = load ptr, ptr %26, align 4
  store ptr %59, ptr %26, align 4
  store ptr %25, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_acr_lsf, ptr %50, i32 0, i32 3, i32 1
  store ptr %60, ptr %61, align 8
  store volatile ptr %59, ptr %60, align 4
  %62 = load i32, ptr %58, align 8
  %63 = zext i32 %62 to i64
  %64 = shl nuw i64 1, %63
  %65 = load i64, ptr %27, align 8
  %66 = or i64 %64, %65
  store i64 %66, ptr %27, align 8
  br label %67

67:                                               ; preds = %52, %38
  %68 = phi i32 [ %42, %52 ], [ %30, %38 ]
  %69 = icmp eq ptr %32, %20
  br i1 %69, label %70, label %28

70:                                               ; preds = %67, %19
  %71 = phi i32 [ 0, %19 ], [ %68, %67 ]
  %72 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 38
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %100, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.nvkm_acr, ptr %73, i32 0, i32 5
  br label %77

77:                                               ; preds = %81, %75
  %78 = phi ptr [ %76, %75 ], [ %79, %81 ]
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %76
  br i1 %80, label %100, label %81

81:                                               ; preds = %77
  %82 = getelementptr i8, ptr %79, i32 -12
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %83, i32 0, i32 6
  %85 = load ptr, ptr %84, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %77, label %87

87:                                               ; preds = %81
  %88 = getelementptr i8, ptr %79, i32 -12
  %89 = icmp eq ptr %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %83, i32 0, i32 5
  %92 = load i64, ptr %91, align 8
  %93 = getelementptr i8, ptr %0, i32 76
  %94 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = load ptr, ptr %79, align 4
  %97 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  store ptr %95, ptr %97, align 4
  store volatile ptr %96, ptr %95, align 4
  %98 = load ptr, ptr %93, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  store ptr %79, ptr %99, align 4
  store ptr %98, ptr %79, align 4
  store ptr %93, ptr %94, align 4
  store volatile ptr %79, ptr %93, align 4
  br label %104

100:                                              ; preds = %87, %77, %70
  %101 = load ptr, ptr %4, align 8
  %102 = getelementptr inbounds %struct.nvkm_acr_func, ptr %101, i32 0, i32 12
  %103 = load i64, ptr %102, align 8
  br label %104

104:                                              ; preds = %100, %90
  %105 = phi i64 [ %92, %90 ], [ %103, %100 ]
  %106 = load ptr, ptr %20, align 8
  %107 = icmp eq ptr %106, %20
  br i1 %107, label %137, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %110 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  br label %111

111:                                              ; preds = %135, %108
  %112 = phi ptr [ %106, %108 ], [ %114, %135 ]
  %113 = getelementptr i8, ptr %112, i32 -12
  %114 = load ptr, ptr %112, align 4
  %115 = getelementptr i8, ptr %112, i32 -4
  %116 = load i32, ptr %115, align 4
  %117 = zext i32 %116 to i64
  %118 = shl nuw i64 1, %117
  %119 = and i64 %118, %105
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %111
  %122 = load i32, ptr %109, align 4
  %123 = icmp ugt i32 %122, 1
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load ptr, ptr %2, align 4
  %126 = getelementptr inbounds %struct.nvkm_device, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 8
  %128 = icmp ult i32 %116, 11
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = getelementptr inbounds [11 x ptr], ptr @switch.table.nvkm_acr_oneinit, i32 0, i32 %116
  %131 = load ptr, ptr %130, align 4
  br label %132

132:                                              ; preds = %129, %124
  %133 = phi ptr [ %131, %129 ], [ @.str.23, %124 ]
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %127, ptr noundef nonnull @.str.11, ptr noundef %110, ptr noundef nonnull %133) #10
  br label %134

134:                                              ; preds = %132, %121
  tail call void @nvkm_acr_lsfw_del(ptr noundef %113) #9
  br label %135

135:                                              ; preds = %134, %111
  %136 = icmp eq ptr %114, %20
  br i1 %136, label %137, label %111

137:                                              ; preds = %135, %104
  %138 = getelementptr i8, ptr %0, i32 136
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = getelementptr i8, ptr %0, i32 140
  %143 = load i8, ptr %142, align 8, !range !8
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %141, %137
  %146 = load ptr, ptr %4, align 8
  %147 = getelementptr inbounds %struct.nvkm_acr_func, ptr %146, i32 0, i32 5
  %148 = load ptr, ptr %147, align 4
  %149 = tail call i32 %148(ptr noundef %4) #9
  br label %150

150:                                              ; preds = %145, %141
  %151 = phi i32 [ %149, %145 ], [ %71, %141 ]
  %152 = load ptr, ptr %4, align 8
  %153 = getelementptr inbounds %struct.nvkm_acr_func, ptr %152, i32 0, i32 6
  %154 = load ptr, ptr %153, align 8
  %155 = tail call i32 %154(ptr noundef %4, i32 noundef %151) #9
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %332

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %159 = load i32, ptr %158, align 4
  %160 = icmp ugt i32 %159, 3
  br i1 %160, label %161, label %172

161:                                              ; preds = %157
  %162 = load ptr, ptr %2, align 4
  %163 = getelementptr inbounds %struct.nvkm_device, ptr %162, i32 0, i32 2
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %166 = getelementptr i8, ptr %0, i32 100
  %167 = load i64, ptr %166, align 8
  %168 = getelementptr i8, ptr %0, i32 108
  %169 = load i64, ptr %168, align 8
  %170 = getelementptr i8, ptr %0, i32 116
  %171 = load i64, ptr %170, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %164, ptr noundef nonnull @.str.12, ptr noundef %165, i64 noundef %167, i64 noundef %169, i64 noundef %171) #10
  br label %172

172:                                              ; preds = %161, %157
  %173 = getelementptr i8, ptr %0, i32 92
  %174 = load ptr, ptr %173, align 8
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.nvkm_memory_func, ptr %175, i32 0, i32 7
  %177 = load ptr, ptr %176, align 4
  %178 = tail call ptr %177(ptr noundef %174) #9
  %179 = load ptr, ptr %138, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %213, label %181

181:                                              ; preds = %172
  %182 = getelementptr i8, ptr %0, i32 140
  %183 = load i8, ptr %182, align 8, !range !8
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %213

185:                                              ; preds = %181
  %186 = load i32, ptr %179, align 4
  %187 = icmp ult i32 %186, 4
  br i1 %187, label %236, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.firmware, ptr %179, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = lshr i32 %186, 2
  br label %192

192:                                              ; preds = %192, %188
  %193 = phi ptr [ %203, %192 ], [ %190, %188 ]
  %194 = phi i32 [ %196, %192 ], [ %191, %188 ]
  %195 = phi i32 [ %205, %192 ], [ 0, %188 ]
  %196 = add nsw i32 %194, -1
  %197 = load ptr, ptr %173, align 8
  %198 = getelementptr inbounds %struct.nvkm_memory, ptr %197, i32 0, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %199, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = zext i32 %195 to i64
  %203 = getelementptr i32, ptr %193, i32 1
  %204 = load i32, ptr %193, align 4
  tail call void %201(ptr noundef %197, i64 noundef %202, i32 noundef %204) #9
  %205 = add nuw i32 %195, 4
  %206 = icmp eq i32 %196, 0
  br i1 %206, label %207, label %192

207:                                              ; preds = %192
  %208 = load ptr, ptr %138, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = load i8, ptr %182, align 8
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %236, label %213

213:                                              ; preds = %210, %207, %181, %172
  %214 = load ptr, ptr %4, align 8
  %215 = getelementptr inbounds %struct.nvkm_acr_func, ptr %214, i32 0, i32 7
  %216 = load ptr, ptr %215, align 4
  %217 = load ptr, ptr %72, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %233, label %219

219:                                              ; preds = %213
  %220 = getelementptr inbounds %struct.nvkm_acr, ptr %217, i32 0, i32 5
  br label %221

221:                                              ; preds = %225, %219
  %222 = phi ptr [ %220, %219 ], [ %223, %225 ]
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, %220
  br i1 %224, label %233, label %225

225:                                              ; preds = %221
  %226 = getelementptr i8, ptr %223, i32 -12
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %227, i32 0, i32 6
  %229 = load ptr, ptr %228, align 8
  %230 = icmp eq ptr %229, null
  br i1 %230, label %221, label %231

231:                                              ; preds = %225
  %232 = getelementptr i8, ptr %223, i32 -12
  br label %233

233:                                              ; preds = %231, %221, %213
  %234 = phi ptr [ null, %213 ], [ %232, %231 ], [ null, %221 ]
  %235 = tail call i32 %216(ptr noundef %4, ptr noundef %234) #9
  br label %236

236:                                              ; preds = %233, %210, %185
  %237 = load ptr, ptr %4, align 8
  %238 = getelementptr inbounds %struct.nvkm_acr_func, ptr %237, i32 0, i32 8
  %239 = load ptr, ptr %238, align 8
  %240 = getelementptr i8, ptr %0, i32 100
  %241 = load i64, ptr %240, align 8
  %242 = getelementptr i8, ptr %0, i32 148
  %243 = load i64, ptr %242, align 8
  %244 = sub i64 %241, %243
  tail call void %239(ptr noundef %4, i64 noundef %244) #9
  %245 = load ptr, ptr %138, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %290, label %247

247:                                              ; preds = %236
  %248 = getelementptr i8, ptr %0, i32 140
  %249 = load i8, ptr %248, align 8, !range !8
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %290, label %251

251:                                              ; preds = %247
  %252 = load ptr, ptr %173, align 8
  %253 = load ptr, ptr %252, align 4
  %254 = getelementptr inbounds %struct.nvkm_memory_func, ptr %253, i32 0, i32 7
  %255 = load ptr, ptr %254, align 4
  %256 = tail call ptr %255(ptr noundef %252) #9
  %257 = load ptr, ptr %138, align 4
  %258 = load i32, ptr %257, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %332, label %260

260:                                              ; preds = %251
  %261 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  br label %262

262:                                              ; preds = %285, %260
  %263 = phi i32 [ 0, %260 ], [ %287, %285 ]
  %264 = load ptr, ptr %173, align 8
  %265 = getelementptr inbounds %struct.nvkm_memory, ptr %264, i32 0, i32 1
  %266 = load ptr, ptr %265, align 4
  %267 = load ptr, ptr %266, align 4
  %268 = sext i32 %263 to i64
  %269 = tail call i32 %267(ptr noundef %264, i64 noundef %268) #9
  %270 = load ptr, ptr %138, align 4
  %271 = getelementptr inbounds %struct.firmware, ptr %270, i32 0, i32 1
  %272 = load ptr, ptr %271, align 4
  %273 = sdiv i32 %263, 4
  %274 = getelementptr i32, ptr %272, i32 %273
  %275 = load i32, ptr %274, align 4
  %276 = icmp eq i32 %275, %269
  br i1 %276, label %285, label %277

277:                                              ; preds = %262
  %278 = load i32, ptr %158, align 4
  %279 = icmp ugt i32 %278, 1
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = load ptr, ptr %2, align 4
  %282 = getelementptr inbounds %struct.nvkm_device, ptr %281, i32 0, i32 2
  %283 = load ptr, ptr %282, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %283, ptr noundef nonnull @.str.13, ptr noundef %261, i32 noundef %263, i32 noundef %269, i32 noundef %275) #10
  %284 = load ptr, ptr %138, align 4
  br label %285

285:                                              ; preds = %280, %277, %262
  %286 = phi ptr [ %270, %277 ], [ %284, %280 ], [ %270, %262 ]
  %287 = add i32 %263, 4
  %288 = load i32, ptr %286, align 4
  %289 = icmp ult i32 %287, %288
  br i1 %289, label %262, label %332

290:                                              ; preds = %247, %236
  %291 = load ptr, ptr %173, align 8
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr inbounds %struct.nvkm_memory_func, ptr %292, i32 0, i32 8
  %294 = load ptr, ptr %293, align 4
  tail call void %294(ptr noundef %291) #9
  %295 = getelementptr i8, ptr %0, i32 124
  %296 = tail call i32 @nvkm_memory_new(ptr noundef %3, i32 noundef 0, i64 noundef 4096, i32 noundef 0, i1 noundef zeroext true, ptr noundef %295) #9
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %332

298:                                              ; preds = %290
  %299 = getelementptr i8, ptr %0, i32 128
  %300 = tail call i32 @nvkm_vmm_new(ptr noundef %3, i64 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef %299) #9
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %332

302:                                              ; preds = %298
  %303 = load i32, ptr %158, align 4
  %304 = load ptr, ptr %299, align 4
  %305 = getelementptr inbounds %struct.nvkm_vmm, ptr %304, i32 0, i32 3
  store i32 %303, ptr %305, align 4
  %306 = load ptr, ptr %299, align 4
  %307 = load ptr, ptr %295, align 8
  %308 = tail call i32 @nvkm_vmm_join(ptr noundef %306, ptr noundef %307) #9
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %332

310:                                              ; preds = %302
  %311 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  br label %312

312:                                              ; preds = %326, %310
  %313 = phi ptr [ %314, %326 ], [ %5, %310 ]
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr i8, ptr %314, i32 -8
  %316 = icmp eq ptr %314, %5
  br i1 %316, label %331, label %317

317:                                              ; preds = %312
  %318 = load i32, ptr %158, align 4
  %319 = icmp ugt i32 %318, 3
  br i1 %319, label %320, label %326

320:                                              ; preds = %317
  %321 = load ptr, ptr %2, align 4
  %322 = getelementptr inbounds %struct.nvkm_device, ptr %321, i32 0, i32 2
  %323 = load ptr, ptr %322, align 8
  %324 = getelementptr i8, ptr %314, i32 -4
  %325 = load ptr, ptr %324, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %323, ptr noundef nonnull @.str.15, ptr noundef %311, ptr noundef %325) #10
  br label %326

326:                                              ; preds = %320, %317
  %327 = load ptr, ptr %315, align 4
  %328 = load ptr, ptr %327, align 4
  %329 = tail call i32 %328(ptr noundef %4, ptr noundef %315) #9
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %312, label %332

331:                                              ; preds = %312
  tail call fastcc void @nvkm_acr_cleanup(ptr noundef %4)
  br label %332

332:                                              ; preds = %331, %326, %302, %298, %290, %285, %251, %150, %47, %41, %16
  %333 = phi i32 [ 0, %16 ], [ 0, %331 ], [ %155, %150 ], [ %296, %290 ], [ %300, %298 ], [ %308, %302 ], [ -22, %251 ], [ %329, %326 ], [ -22, %285 ], [ -12, %47 ], [ %45, %41 ]
  ret i32 %333
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_acr_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 38
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_acr, ptr %5, i32 0, i32 5
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 -12
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %9, label %19

19:                                               ; preds = %13
  %20 = getelementptr i8, ptr %11, i32 -12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %0, i32 -4
  %24 = tail call fastcc i32 @nvkm_acr_load(ptr noundef %23)
  br label %25

25:                                               ; preds = %22, %19, %9, %1
  %26 = phi i32 [ %24, %22 ], [ 0, %19 ], [ 0, %1 ], [ 0, %9 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_acr_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 132
  %4 = load i8, ptr %3, align 8, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = tail call i32 @nvkm_acr_hsf_boot(ptr noundef %7, ptr noundef nonnull @.str.7) #9
  store i8 0, ptr %3, align 8
  br label %9

9:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_part(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_acr_cleanup(ptr noundef %0) unnamed_addr #0 {
  tail call void @nvkm_acr_lsfw_del_all(ptr noundef %0) #9
  tail call void @nvkm_acr_hsfw_del_all(ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  tail call void @nvkm_firmware_put(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_acr_lsfw_del_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_acr_hsfw_del_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_firmware_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_acr_lsfw_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_new(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_join(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_firmware_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
