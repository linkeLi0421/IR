; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/acr/lsfw.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/lsfw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.130, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.130 = type { i32, i32, i32 }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.124, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.124 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.nvfw_ls_desc_head = type { i32, i32, i32, i32, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvfw_bin_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.nvfw_bl_desc = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"%s: LSFW %d redefined\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"bl\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"inst\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"desc\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_acr_lsfw_del(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #7
  store ptr null, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 4, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void @nvkm_firmware_put(ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_firmware_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_acr_lsfw_del_all(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %19, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -12
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %6, i32 8
  %10 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %10) #7
  store ptr null, ptr %9, align 4
  %11 = getelementptr i8, ptr %6, i32 12
  store i32 0, ptr %11, align 4
  %12 = getelementptr i8, ptr %6, i32 16
  %13 = load ptr, ptr %12, align 4
  tail call void @nvkm_firmware_put(ptr noundef %13) #7
  %14 = getelementptr i8, ptr %6, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  tail call void @kfree(ptr noundef %7) #7
  %18 = icmp eq ptr %8, %2
  br i1 %18, label %19, label %5

19:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_acr_lsfw_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %49, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nvkm_acr, ptr %1, i32 0, i32 2
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %49, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nvkm_acr, ptr %1, i32 0, i32 4
  br label %12

12:                                               ; preds = %16, %10
  %13 = phi ptr [ %11, %10 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 -4
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %3
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %14, i32 -12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.nvkm_acr, ptr %1, i32 0, i32 1, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.nvkm_acr, ptr %1, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_acr, ptr %1, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str, ptr noundef %35, i32 noundef %3) #8
  br label %49

36:                                               ; preds = %20, %12
  %37 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %38 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 92) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %38, i32 0, i32 2
  store i32 %3, ptr %41, align 8
  %42 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %38, i32 0, i32 3
  %43 = getelementptr inbounds %struct.nvkm_acr, ptr %1, i32 0, i32 4, i32 1
  %44 = load ptr, ptr %43, align 4
  store ptr %42, ptr %43, align 4
  store ptr %11, ptr %42, align 4
  %45 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %38, i32 0, i32 3, i32 1
  store ptr %44, ptr %45, align 8
  store volatile ptr %42, ptr %44, align 4
  br label %46

46:                                               ; preds = %40, %23
  %47 = phi ptr [ %38, %40 ], [ %21, %23 ]
  store ptr %0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %47, i32 0, i32 1
  store ptr %2, ptr %48, align 4
  br label %49

49:                                               ; preds = %46, %36, %30, %26, %6, %4
  %50 = phi ptr [ %47, %46 ], [ inttoptr (i32 -38 to ptr), %6 ], [ inttoptr (i32 -38 to ptr), %4 ], [ inttoptr (i32 -17 to ptr), %30 ], [ inttoptr (i32 -17 to ptr), %26 ], [ inttoptr (i32 -12 to ptr), %36 ]
  ret ptr %50
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_acr_lsfw_load_sig_image_desc(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store ptr null, ptr %7, align 4, !annotation !8
  %8 = call fastcc ptr @nvkm_acr_lsfw_load_sig_image_desc_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %7)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  br label %56

12:                                               ; preds = %6
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call ptr @nvfw_ls_desc(ptr noundef %0, ptr noundef %15) #7
  %17 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 255
  %20 = and i32 %19, -256
  %21 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 6
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 7
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 255
  %28 = and i32 %27, -256
  %29 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 8
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 9
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 10
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 14
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 11
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 15
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 12
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 16
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 13
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 17
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 14
  store i32 %46, ptr %47, align 4
  %48 = add i32 %43, 255
  %49 = and i32 %48, -256
  %50 = add i32 %49, %20
  %51 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 15
  store i32 %50, ptr %51, align 4
  %52 = add i32 %28, %20
  %53 = sub i32 %52, %50
  %54 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 16
  store i32 %53, ptr %54, align 4
  %55 = load ptr, ptr %7, align 4
  call void @nvkm_firmware_put(ptr noundef %55) #7
  br label %56

56:                                               ; preds = %12, %10
  %57 = phi i32 [ %11, %10 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nvkm_acr_lsfw_load_sig_image_desc_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 38
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %80, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.nvkm_acr, ptr %11, i32 0, i32 2
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %80, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nvkm_acr, ptr %11, i32 0, i32 4
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi ptr [ %18, %17 ], [ %21, %23 ]
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %18
  br i1 %22, label %43, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %21, i32 -4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %27, label %19

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %21, i32 -12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %28, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %53, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.nvkm_acr, ptr %11, i32 0, i32 1, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %80, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.nvkm_acr, ptr %11, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.nvkm_acr, ptr %11, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str, ptr noundef %42, i32 noundef %2) #8
  br label %80

43:                                               ; preds = %27, %19
  %44 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %45 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 92) #9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %80, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %45, i32 0, i32 2
  store i32 %2, ptr %48, align 8
  %49 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %45, i32 0, i32 3
  %50 = getelementptr inbounds %struct.nvkm_acr, ptr %11, i32 0, i32 4, i32 1
  %51 = load ptr, ptr %50, align 4
  store ptr %49, ptr %50, align 4
  store ptr %18, ptr %49, align 4
  %52 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %45, i32 0, i32 3, i32 1
  store ptr %51, ptr %52, align 8
  store volatile ptr %49, ptr %51, align 4
  br label %53

53:                                               ; preds = %47, %30
  %54 = phi ptr [ %45, %47 ], [ %28, %30 ]
  store ptr %5, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %54, i32 0, i32 1
  store ptr %1, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %80, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %54, i32 0, i32 5
  %59 = tail call i32 @nvkm_firmware_load_name(ptr noundef %0, ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef %58) #7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %54, i32 0, i32 4
  %63 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %0, ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %4, ptr noundef %62) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = tail call i32 @nvkm_firmware_load_name(ptr noundef %0, ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %4, ptr noundef %6) #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %65, %61, %57
  %69 = phi i32 [ %66, %65 ], [ %63, %61 ], [ %59, %57 ]
  %70 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %54, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  tail call void @kfree(ptr noundef %71) #7
  store ptr null, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %54, i32 0, i32 4, i32 1
  store i32 0, ptr %72, align 4
  %73 = load ptr, ptr %58, align 4
  tail call void @nvkm_firmware_put(ptr noundef %73) #7
  %74 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %54, i32 0, i32 3
  %75 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %54, i32 0, i32 3, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %74, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %76, ptr %78, align 4
  store volatile ptr %77, ptr %76, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %74, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %75, align 4
  tail call void @kfree(ptr noundef nonnull %54) #7
  %79 = inttoptr i32 %69 to ptr
  br label %80

80:                                               ; preds = %68, %65, %53, %43, %37, %33, %13, %7
  %81 = phi ptr [ %79, %68 ], [ %54, %53 ], [ %54, %65 ], [ inttoptr (i32 -12 to ptr), %43 ], [ inttoptr (i32 -17 to ptr), %33 ], [ inttoptr (i32 -17 to ptr), %37 ], [ inttoptr (i32 -38 to ptr), %7 ], [ inttoptr (i32 -38 to ptr), %13 ]
  ret ptr %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_ls_desc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_acr_lsfw_load_sig_image_desc_v1(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store ptr null, ptr %7, align 4, !annotation !8
  %8 = call fastcc ptr @nvkm_acr_lsfw_load_sig_image_desc_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %7)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %8 to i32
  br label %56

12:                                               ; preds = %6
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call ptr @nvfw_ls_desc_v1(ptr noundef %0, ptr noundef %15) #7
  %17 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 255
  %20 = and i32 %19, -256
  %21 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 6
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 7
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 255
  %28 = and i32 %27, -256
  %29 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 8
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 9
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 10
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 14
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 11
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 15
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 12
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 16
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 13
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %16, i32 0, i32 17
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 14
  store i32 %46, ptr %47, align 4
  %48 = add i32 %43, 255
  %49 = and i32 %48, -256
  %50 = add i32 %49, %20
  %51 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 15
  store i32 %50, ptr %51, align 4
  %52 = add i32 %28, %20
  %53 = sub i32 %52, %50
  %54 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %8, i32 0, i32 16
  store i32 %53, ptr %54, align 4
  %55 = load ptr, ptr %7, align 4
  call void @nvkm_firmware_put(ptr noundef %55) #7
  br label %56

56:                                               ; preds = %12, %10
  %57 = phi i32 [ %11, %10 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_ls_desc_v1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_acr_lsfw_load_bl_inst_data_sig(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 38
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store ptr null, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store ptr null, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store ptr null, ptr %9, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %59, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.nvkm_acr, ptr %13, i32 0, i32 2
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %59, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nvkm_acr, ptr %13, i32 0, i32 4
  br label %21

21:                                               ; preds = %25, %19
  %22 = phi ptr [ %20, %19 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %20
  br i1 %24, label %45, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %23, i32 -4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %2
  br i1 %28, label %29, label %21

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %23, i32 -12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.nvkm_acr, ptr %13, i32 0, i32 1, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.nvkm_acr, ptr %13, i32 0, i32 1, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nvkm_acr, ptr %13, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str, ptr noundef %44, i32 noundef %2) #8
  br label %59

45:                                               ; preds = %29, %21
  %46 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 92) #9
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %47, i32 0, i32 2
  store i32 %2, ptr %50, align 8
  %51 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %47, i32 0, i32 3
  %52 = getelementptr inbounds %struct.nvkm_acr, ptr %13, i32 0, i32 4, i32 1
  %53 = load ptr, ptr %52, align 4
  store ptr %51, ptr %52, align 4
  store ptr %20, ptr %51, align 4
  %54 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %47, i32 0, i32 3, i32 1
  store ptr %53, ptr %54, align 8
  store volatile ptr %51, ptr %53, align 4
  br label %55

55:                                               ; preds = %49, %32
  %56 = phi ptr [ %47, %49 ], [ %30, %32 ]
  store ptr %5, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 1
  store ptr %1, ptr %57, align 4
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %45, %39, %35, %15, %6
  %60 = phi ptr [ %56, %55 ], [ inttoptr (i32 -12 to ptr), %45 ], [ inttoptr (i32 -17 to ptr), %35 ], [ inttoptr (i32 -17 to ptr), %39 ], [ inttoptr (i32 -38 to ptr), %6 ], [ inttoptr (i32 -38 to ptr), %15 ]
  %61 = ptrtoint ptr %60 to i32
  br label %169

62:                                               ; preds = %55
  %63 = call i32 @nvkm_firmware_load_name(ptr noundef %0, ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %4, ptr noundef nonnull %7) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %152

65:                                               ; preds = %62
  %66 = load ptr, ptr %7, align 4
  %67 = getelementptr inbounds %struct.firmware, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = call ptr @nvfw_bin_hdr(ptr noundef %0, ptr noundef %68) #7
  %70 = load ptr, ptr %7, align 4
  %71 = getelementptr inbounds %struct.firmware, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %69, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i8, ptr %72, i32 %74
  %76 = call ptr @nvfw_bl_desc(ptr noundef %0, ptr noundef %75) #7
  %77 = load ptr, ptr %7, align 4
  %78 = getelementptr inbounds %struct.firmware, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %69, i32 0, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i8, ptr %79, i32 %81
  %83 = call i32 @nvkm_firmware_load_name(ptr noundef %0, ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %4, ptr noundef nonnull %8) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %152

85:                                               ; preds = %65
  %86 = call i32 @nvkm_firmware_load_name(ptr noundef %0, ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %4, ptr noundef nonnull %9) #7
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %152

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 5
  %90 = call i32 @nvkm_firmware_load_name(ptr noundef %0, ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef %89) #7
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %152

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.nvfw_bl_desc, ptr %76, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, 255
  %96 = and i32 %95, -256
  %97 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 6
  store i32 %96, ptr %97, align 4
  %98 = load i32, ptr %76, align 4
  %99 = shl i32 %98, 8
  %100 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 7
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 9
  store i32 %96, ptr %101, align 4
  %102 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 10
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 11
  store i32 0, ptr %103, align 4
  %104 = load ptr, ptr %8, align 4
  %105 = load i32, ptr %104, align 4
  %106 = add i32 %105, 255
  %107 = and i32 %106, -256
  %108 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 12
  store i32 %107, ptr %108, align 4
  %109 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 13
  store i32 %107, ptr %109, align 4
  %110 = load ptr, ptr %9, align 4
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, 255
  %113 = and i32 %112, -256
  %114 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 14
  store i32 %113, ptr %114, align 4
  %115 = add i32 %113, %107
  %116 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 8
  store i32 %115, ptr %116, align 4
  %117 = add i32 %115, %96
  %118 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 4
  %119 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 4, i32 1
  store i32 %117, ptr %119, align 4
  %120 = call noalias align 64 ptr @__kmalloc(i32 noundef %117, i32 noundef 3520) #10
  store ptr %120, ptr %118, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %152, label %122

122:                                              ; preds = %92
  %123 = load i32, ptr %97, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %120, ptr align 4 %82, i32 %123, i1 false)
  %124 = load ptr, ptr %118, align 4
  %125 = load i32, ptr %101, align 4
  %126 = getelementptr i8, ptr %124, i32 %125
  %127 = load i32, ptr %103, align 4
  %128 = getelementptr i8, ptr %126, i32 %127
  %129 = load ptr, ptr %8, align 4
  %130 = getelementptr inbounds %struct.firmware, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = load i32, ptr %129, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %128, ptr align 1 %131, i32 %132, i1 false)
  %133 = load ptr, ptr %118, align 4
  %134 = load i32, ptr %101, align 4
  %135 = getelementptr i8, ptr %133, i32 %134
  %136 = load i32, ptr %109, align 4
  %137 = getelementptr i8, ptr %135, i32 %136
  %138 = load ptr, ptr %9, align 4
  %139 = getelementptr inbounds %struct.firmware, ptr %138, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = load i32, ptr %138, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %137, ptr align 1 %140, i32 %141, i1 false)
  %142 = load i32, ptr %109, align 4
  %143 = add i32 %142, 255
  %144 = and i32 %143, -256
  %145 = load i32, ptr %97, align 4
  %146 = add i32 %144, %145
  %147 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 15
  store i32 %146, ptr %147, align 4
  %148 = load i32, ptr %116, align 4
  %149 = add i32 %148, %145
  %150 = sub i32 %149, %146
  %151 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 16
  store i32 %150, ptr %151, align 4
  br label %164

152:                                              ; preds = %92, %88, %85, %65, %62
  %153 = phi i32 [ -12, %92 ], [ %90, %88 ], [ %86, %85 ], [ %83, %65 ], [ %63, %62 ]
  %154 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 4
  %155 = load ptr, ptr %154, align 4
  call void @kfree(ptr noundef %155) #7
  store ptr null, ptr %154, align 4
  %156 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 4, i32 1
  store i32 0, ptr %156, align 4
  %157 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 5
  %158 = load ptr, ptr %157, align 4
  call void @nvkm_firmware_put(ptr noundef %158) #7
  %159 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 3
  %160 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %56, i32 0, i32 3, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = load ptr, ptr %159, align 4
  %163 = getelementptr inbounds %struct.list_head, ptr %162, i32 0, i32 1
  store ptr %161, ptr %163, align 4
  store volatile ptr %162, ptr %161, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %159, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %160, align 4
  call void @kfree(ptr noundef nonnull %56) #7
  br label %164

164:                                              ; preds = %152, %122
  %165 = phi i32 [ %153, %152 ], [ 0, %122 ]
  %166 = load ptr, ptr %9, align 4
  call void @nvkm_firmware_put(ptr noundef %166) #7
  %167 = load ptr, ptr %8, align 4
  call void @nvkm_firmware_put(ptr noundef %167) #7
  %168 = load ptr, ptr %7, align 4
  call void @nvkm_firmware_put(ptr noundef %168) #7
  br label %169

169:                                              ; preds = %164, %59
  %170 = phi i32 [ %61, %59 ], [ %165, %164 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  ret i32 %170
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_firmware_load_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_bin_hdr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_bl_desc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_firmware_load_blob(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
