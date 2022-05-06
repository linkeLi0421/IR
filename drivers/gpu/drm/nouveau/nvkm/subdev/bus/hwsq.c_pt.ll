; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bus/hwsq.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bus/hwsq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_hwsq = type { ptr, i32, i32, %struct.anon.126 }
%struct.anon.126 = type { [512 x i8], i16 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_bus_func = type { ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s: hwsq exec failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: hwsq ucode too large\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s: \09%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s: R[%06x] = %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s:  FLAG[%02x] = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%s:  WAIT[%02x] = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"%s: WAIT VBLANK !NO ACTIVE HEAD\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"%s: WAIT VBLANK HEAD%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"%s:     DELAY = %d ns\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_hwsq_init(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 528) #6
  store ptr %4, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  store ptr %0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.nvkm_hwsq, ptr %4, i32 0, i32 1
  store i32 -1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_hwsq, ptr %4, i32 0, i32 2
  store i32 -1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.nvkm_hwsq, ptr %4, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(512) %9, i8 127, i32 512, i1 false)
  %10 = getelementptr inbounds %struct.nvkm_hwsq, ptr %4, i32 0, i32 3, i32 1
  store i16 0, ptr %10, align 4
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %12
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_hwsq_fini(ptr nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %69, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 30
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_hwsq, ptr %3, i32 0, i32 3
  %12 = getelementptr inbounds %struct.nvkm_hwsq, ptr %3, i32 0, i32 3, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %14, 4
  %16 = lshr i32 %15, 2
  %17 = trunc i32 %16 to i16
  store i16 %17, ptr %12, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr inbounds %struct.nvkm_bus_func, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %16, %20
  br i1 %21, label %37, label %22

22:                                               ; preds = %5
  br i1 %1, label %23, label %67

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.nvkm_bus_func, ptr %18, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %10, ptr noundef %11, i32 noundef %16) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %67, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %6, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %7, align 4
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_subdev, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str, ptr noundef %36, i32 noundef %26) #8
  br label %46

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.nvkm_subdev, ptr %6, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_subdev, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.1, ptr noundef %45) #8
  br label %46

46:                                               ; preds = %41, %37, %32, %28
  %47 = phi i32 [ -28, %37 ], [ -28, %41 ], [ %26, %28 ], [ %26, %32 ]
  %48 = getelementptr inbounds %struct.nvkm_subdev, ptr %6, i32 0, i32 5
  %49 = getelementptr inbounds %struct.nvkm_subdev, ptr %6, i32 0, i32 4
  %50 = load i16, ptr %12, align 4
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %62, %46
  %53 = phi i32 [ %63, %62 ], [ 0, %46 ]
  %54 = load i32, ptr %48, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %7, align 4
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr i32, ptr %11, i32 %53
  %61 = load i32, ptr %60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.2, ptr noundef %49, i32 noundef %61) #8
  br label %62

62:                                               ; preds = %56, %52
  %63 = add nuw nsw i32 %53, 1
  %64 = load i16, ptr %12, align 4
  %65 = zext i16 %64 to i32
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %52, label %67

67:                                               ; preds = %62, %46, %23, %22
  %68 = phi i32 [ 0, %23 ], [ 0, %22 ], [ %47, %46 ], [ %47, %62 ]
  store ptr null, ptr %0, align 4
  tail call void @kfree(ptr noundef nonnull %3) #7
  br label %69

69:                                               ; preds = %67, %2
  %70 = phi i32 [ %68, %67 ], [ 0, %2 ]
  ret i32 %70
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_hwsq_wr32(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 3
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef %13, i32 noundef %1, i32 noundef %2) #8
  br label %14

14:                                               ; preds = %8, %3
  %15 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %51, label %18

18:                                               ; preds = %14
  %19 = xor i32 %16, %2
  %20 = icmp ult i32 %19, 65536
  %21 = trunc i32 %2 to i8
  %22 = lshr i32 %2, 8
  %23 = trunc i32 %22 to i8
  br i1 %20, label %38, label %24

24:                                               ; preds = %18
  %25 = lshr i32 %2, 16
  %26 = trunc i32 %25 to i8
  %27 = lshr i32 %2, 24
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3
  %30 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3, i32 1
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = getelementptr [512 x i8], ptr %29, i32 0, i32 %32
  store i8 -30, ptr %33, align 1
  %34 = getelementptr inbounds i8, ptr %33, i32 1
  store i8 %21, ptr %34, align 1
  %35 = getelementptr inbounds i8, ptr %33, i32 2
  store i8 %23, ptr %35, align 1
  %36 = getelementptr inbounds i8, ptr %33, i32 3
  store i8 %26, ptr %36, align 1
  %37 = getelementptr inbounds i8, ptr %33, i32 4
  store i8 %28, ptr %37, align 1
  br label %46

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3
  %40 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3, i32 1
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = getelementptr [512 x i8], ptr %39, i32 0, i32 %42
  store i8 66, ptr %43, align 1
  %44 = getelementptr inbounds i8, ptr %43, i32 1
  store i8 %21, ptr %44, align 1
  %45 = getelementptr inbounds i8, ptr %43, i32 2
  store i8 %23, ptr %45, align 1
  br label %46

46:                                               ; preds = %38, %24
  %47 = phi ptr [ %30, %24 ], [ %40, %38 ]
  %48 = phi i16 [ 5, %24 ], [ 3, %38 ]
  %49 = load i16, ptr %47, align 4
  %50 = add i16 %49, %48
  store i16 %50, ptr %47, align 4
  br label %51

51:                                               ; preds = %46, %14
  %52 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = xor i32 %53, %1
  %55 = icmp ult i32 %54, 65536
  %56 = trunc i32 %1 to i8
  %57 = lshr i32 %1, 8
  %58 = trunc i32 %57 to i8
  br i1 %55, label %73, label %59

59:                                               ; preds = %51
  %60 = lshr i32 %1, 16
  %61 = trunc i32 %60 to i8
  %62 = lshr i32 %1, 24
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3
  %65 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3, i32 1
  %66 = load i16, ptr %65, align 4
  %67 = zext i16 %66 to i32
  %68 = getelementptr [512 x i8], ptr %64, i32 0, i32 %67
  store i8 -32, ptr %68, align 1
  %69 = getelementptr inbounds i8, ptr %68, i32 1
  store i8 %56, ptr %69, align 1
  %70 = getelementptr inbounds i8, ptr %68, i32 2
  store i8 %58, ptr %70, align 1
  %71 = getelementptr inbounds i8, ptr %68, i32 3
  store i8 %61, ptr %71, align 1
  %72 = getelementptr inbounds i8, ptr %68, i32 4
  store i8 %63, ptr %72, align 1
  br label %81

73:                                               ; preds = %51
  %74 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3
  %75 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3, i32 1
  %76 = load i16, ptr %75, align 4
  %77 = zext i16 %76 to i32
  %78 = getelementptr [512 x i8], ptr %74, i32 0, i32 %77
  store i8 64, ptr %78, align 1
  %79 = getelementptr inbounds i8, ptr %78, i32 1
  store i8 %56, ptr %79, align 1
  %80 = getelementptr inbounds i8, ptr %78, i32 2
  store i8 %58, ptr %80, align 1
  br label %81

81:                                               ; preds = %73, %59
  %82 = phi ptr [ %75, %73 ], [ %65, %59 ]
  %83 = phi i16 [ 3, %73 ], [ 5, %59 ]
  %84 = load i16, ptr %82, align 4
  %85 = add i16 %84, %83
  store i16 %85, ptr %82, align 4
  store i32 %1, ptr %52, align 4
  store i32 %2, ptr %15, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_hwsq_setf(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 3
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 4
  %14 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef %13, i32 noundef %14, i32 noundef %2) #8
  br label %15

15:                                               ; preds = %8, %3
  %16 = xor i8 %1, -128
  %17 = add i8 %1, -96
  %18 = icmp slt i32 %2, 0
  %19 = select i1 %18, i8 %16, i8 %17
  %20 = icmp sgt i32 %2, 0
  %21 = add i8 %19, 32
  %22 = select i1 %20, i8 %21, i8 %19
  %23 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3
  %24 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3, i32 1
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = getelementptr [512 x i8], ptr %23, i32 0, i32 %26
  store i8 %22, ptr %27, align 1
  %28 = load i16, ptr %24, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %24, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_hwsq_wait(ptr nocapture noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 3
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 4
  %14 = zext i8 %1 to i32
  %15 = zext i8 %2 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.5, ptr noundef %13, i32 noundef %14, i32 noundef %15) #8
  br label %16

16:                                               ; preds = %8, %3
  %17 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3
  %18 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3, i32 1
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr [512 x i8], ptr %17, i32 0, i32 %20
  store i8 95, ptr %21, align 1
  %22 = getelementptr inbounds i8, ptr %21, i32 1
  store i8 %1, ptr %22, align 1
  %23 = getelementptr inbounds i8, ptr %21, i32 2
  store i8 %2, ptr %23, align 1
  %24 = load i16, ptr %18, align 4
  %25 = add i16 %24, 3
  store i16 %25, ptr %18, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_hwsq_wait_vblank(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 6357072
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 6359872
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %15 = lshr i32 %14, 16
  %16 = and i32 %14, 65535
  %17 = mul nuw i32 %16, %15
  br label %18

18:                                               ; preds = %11, %1
  %19 = phi i32 [ 0, %1 ], [ %17, %11 ]
  %20 = and i32 %8, 512
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr i8, ptr %23, i32 6361216
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %26 = lshr i32 %25, 16
  %27 = and i32 %25, 65535
  %28 = mul nuw i32 %27, %26
  %29 = icmp ugt i32 %28, %19
  %30 = tail call i32 @llvm.umax.i32(i32 %28, i32 %19)
  %31 = zext i1 %29 to i32
  br label %32

32:                                               ; preds = %22, %18
  %33 = phi i32 [ %19, %18 ], [ %30, %22 ]
  %34 = phi i32 [ 0, %18 ], [ %31, %22 ]
  %35 = icmp eq i32 %33, 0
  %36 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, 3
  br i1 %35, label %39, label %45

39:                                               ; preds = %32
  br i1 %38, label %40, label %96

40:                                               ; preds = %39
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.6, ptr noundef %44) #8
  br label %96

45:                                               ; preds = %32
  br i1 %38, label %46, label %51

46:                                               ; preds = %45
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.7, ptr noundef %50, i32 noundef %34) #8
  br label %51

51:                                               ; preds = %46, %45
  %52 = icmp eq i32 %34, 0
  %53 = select i1 %52, i8 1, i8 3
  %54 = load ptr, ptr %0, align 4
  %55 = getelementptr inbounds %struct.nvkm_subdev, ptr %54, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %56, 3
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.nvkm_subdev, ptr %54, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_device, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.nvkm_subdev, ptr %54, i32 0, i32 4
  %64 = zext i8 %53 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.5, ptr noundef %63, i32 noundef %64, i32 noundef 0) #8
  %65 = load ptr, ptr %0, align 4
  br label %66

66:                                               ; preds = %58, %51
  %67 = phi ptr [ %54, %51 ], [ %65, %58 ]
  %68 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3
  %69 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3, i32 1
  %70 = load i16, ptr %69, align 4
  %71 = zext i16 %70 to i32
  %72 = getelementptr [512 x i8], ptr %68, i32 0, i32 %71
  store i8 95, ptr %72, align 1
  %73 = getelementptr inbounds i8, ptr %72, i32 1
  store i8 %53, ptr %73, align 1
  %74 = getelementptr inbounds i8, ptr %72, i32 2
  store i8 0, ptr %74, align 1
  %75 = load i16, ptr %69, align 4
  %76 = add i16 %75, 3
  store i16 %76, ptr %69, align 4
  %77 = getelementptr inbounds %struct.nvkm_subdev, ptr %67, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = icmp ugt i32 %78, 3
  br i1 %79, label %80, label %88

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.nvkm_subdev, ptr %67, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.nvkm_subdev, ptr %67, i32 0, i32 4
  %86 = zext i8 %53 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.5, ptr noundef %85, i32 noundef %86, i32 noundef 1) #8
  %87 = load i16, ptr %69, align 4
  br label %88

88:                                               ; preds = %80, %66
  %89 = phi i16 [ %76, %66 ], [ %87, %80 ]
  %90 = zext i16 %89 to i32
  %91 = getelementptr [512 x i8], ptr %68, i32 0, i32 %90
  store i8 95, ptr %91, align 1
  %92 = getelementptr inbounds i8, ptr %91, i32 1
  store i8 %53, ptr %92, align 1
  %93 = getelementptr inbounds i8, ptr %91, i32 2
  store i8 1, ptr %93, align 1
  %94 = load i16, ptr %69, align 4
  %95 = add i16 %94, 3
  store i16 %95, ptr %69, align 4
  br label %96

96:                                               ; preds = %88, %40, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_hwsq_nsec(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = udiv i32 %1, 1000
  %4 = and i32 %3, 252
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %10, %6 ], [ %3, %2 ]
  %8 = phi i8 [ %11, %6 ], [ 0, %2 ]
  %9 = lshr i32 %7, 2
  %10 = and i32 %9, 63
  %11 = add i8 %8, 1
  %12 = and i32 %7, 240
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %6

14:                                               ; preds = %6
  %15 = zext i8 %11 to i32
  %16 = shl nuw nsw i32 %15, 2
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi i32 [ 0, %2 ], [ %16, %14 ]
  %19 = phi i32 [ %3, %2 ], [ %10, %14 ]
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 3
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.8, ptr noundef %29, i32 noundef %1) #8
  br label %30

30:                                               ; preds = %24, %17
  %31 = or i32 %18, %19
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3
  %34 = getelementptr inbounds %struct.nvkm_hwsq, ptr %0, i32 0, i32 3, i32 1
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = getelementptr [512 x i8], ptr %33, i32 0, i32 %36
  store i8 %32, ptr %37, align 1
  %38 = load i16, ptr %34, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %34, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 3942030}
!9 = !{i64 2151481483}
