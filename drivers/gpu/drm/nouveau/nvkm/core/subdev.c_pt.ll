; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/core/subdev.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/subdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@.str = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bios\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"devinit\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"privring\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"fuse\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"mxm\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"imem\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"fb\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"ltc\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"mmu\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"fault\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"acr\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"pmu\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"volt\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"iccsense\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"therm\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"gsp\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"ioctrl\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"fla\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"bsp\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"ce\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"disp\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"gr\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"ifb\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"mpeg\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"msenc\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"mspdec\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"msppp\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"msvld\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"nvdec\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"nvenc\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"nvjpg\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"ofa\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"sec2\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"vic\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"vp\00", align 1
@nvkm_subdev_type = dso_local local_unnamed_addr global [51 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], align 4
@.str.51 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"fini\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"%s: %s running...\0A\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"%s: %s failed, %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"%s: %s completed in %lldus\0A\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"%s: preinit running...\0A\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"%s: preinit failed, %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"%s: preinit completed in %lldus\0A\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"%s: init running...\0A\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"%s: one-time init running...\0A\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"%s: one-time init failed, %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [39 x i8] c"%s: one-time init completed in %lldus\0A\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"%s: init failed, %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"%s: init completed in %lldus\0A\00", align 1
@.str.65 = private unnamed_addr constant [43 x i8] c"drivers/gpu/drm/nouveau/nvkm/core/subdev.c\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"%s: destroy running...\0A\00", align 1
@.str.67 = private unnamed_addr constant [33 x i8] c"%s: destroy completed in %lldus\0A\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_subdev_intr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_subdev_func, ptr %2, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #7
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_subdev_info(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.nvkm_subdev_func, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 %6(ptr noundef %0, i64 noundef %1, ptr noundef %2) #7
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ -38, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_subdev_fini(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = select i1 %1, ptr @.str.51, ptr @.str.52
  %6 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 4
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.53, ptr noundef %12, ptr noundef nonnull %5) #8
  br label %13

13:                                               ; preds = %9, %2
  %14 = tail call i64 @ktime_get() #7
  %15 = tail call i64 @llvm.abs.i64(i64 %14, i1 false) #7
  %16 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %15, i32 0) #9, !srcloc !8
  %17 = extractvalue { i64, i32 } %16, 0
  %18 = extractvalue { i64, i32 } %16, 1
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %15, i64 %17, i32 %18) #9, !srcloc !9
  %20 = extractvalue { i64, i32 } %19, 0
  %21 = icmp slt i64 %14, 0
  %22 = lshr i64 %20, 9
  %23 = sub nsw i64 0, %22
  %24 = select i1 %21, i64 %22, i64 %23
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.nvkm_subdev_func, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %13
  %30 = tail call i32 %27(ptr noundef %0, i1 noundef zeroext %1) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.54, ptr noundef %39, ptr noundef nonnull %5, i32 noundef %30) #8
  br label %40

40:                                               ; preds = %35, %32
  br i1 %1, label %65, label %41

41:                                               ; preds = %40, %29, %13
  %42 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  tail call void @nvkm_mc_reset(ptr noundef %4, i32 noundef %43, i32 noundef %45) #7
  %46 = tail call i64 @ktime_get() #7
  %47 = tail call i64 @llvm.abs.i64(i64 %46, i1 false) #7
  %48 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %47, i32 0) #9, !srcloc !8
  %49 = extractvalue { i64, i32 } %48, 0
  %50 = extractvalue { i64, i32 } %48, 1
  %51 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %47, i64 %49, i32 %50) #9, !srcloc !9
  %52 = load i32, ptr %6, align 4
  %53 = icmp ugt i32 %52, 4
  br i1 %53, label %54, label %65

54:                                               ; preds = %41
  %55 = icmp slt i64 %46, 0
  %56 = extractvalue { i64, i32 } %51, 0
  %57 = lshr i64 %56, 9
  %58 = sub nsw i64 0, %57
  %59 = select i1 %55, i64 %58, i64 %57
  %60 = add nsw i64 %59, %24
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.55, ptr noundef %64, ptr noundef nonnull %5, i64 noundef %60) #8
  br label %65

65:                                               ; preds = %54, %41, %40
  %66 = phi i32 [ %30, %40 ], [ 0, %54 ], [ 0, %41 ]
  ret i32 %66
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_subdev_preinit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 4
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.56, ptr noundef %10) #8
  br label %11

11:                                               ; preds = %5, %1
  %12 = tail call i64 @ktime_get() #7
  %13 = tail call i64 @llvm.abs.i64(i64 %12, i1 false) #7
  %14 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %13, i32 0) #9, !srcloc !8
  %15 = extractvalue { i64, i32 } %14, 0
  %16 = extractvalue { i64, i32 } %14, 1
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %13, i64 %15, i32 %16) #9, !srcloc !9
  %18 = extractvalue { i64, i32 } %17, 0
  %19 = icmp slt i64 %12, 0
  %20 = lshr i64 %18, 9
  %21 = sub nsw i64 0, %20
  %22 = select i1 %19, i64 %20, i64 %21
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.nvkm_subdev_func, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %11
  %28 = tail call i32 %25(ptr noundef %0) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %2, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %60, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.57, ptr noundef %38, i32 noundef %28) #8
  br label %60

39:                                               ; preds = %27, %11
  %40 = tail call i64 @ktime_get() #7
  %41 = tail call i64 @llvm.abs.i64(i64 %40, i1 false) #7
  %42 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %41, i32 0) #9, !srcloc !8
  %43 = extractvalue { i64, i32 } %42, 0
  %44 = extractvalue { i64, i32 } %42, 1
  %45 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %41, i64 %43, i32 %44) #9, !srcloc !9
  %46 = load i32, ptr %2, align 4
  %47 = icmp ugt i32 %46, 4
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = icmp slt i64 %40, 0
  %50 = extractvalue { i64, i32 } %45, 0
  %51 = lshr i64 %50, 9
  %52 = sub nsw i64 0, %51
  %53 = select i1 %49, i64 %52, i64 %51
  %54 = add nsw i64 %53, %22
  %55 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.58, ptr noundef %59, i64 noundef %54) #8
  br label %60

60:                                               ; preds = %48, %39, %33, %30
  %61 = phi i32 [ %28, %33 ], [ 0, %48 ], [ 0, %39 ], [ %28, %30 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_subdev_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 4
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.59, ptr noundef %10) #8
  br label %11

11:                                               ; preds = %5, %1
  %12 = tail call i64 @ktime_get() #7
  %13 = tail call i64 @llvm.abs.i64(i64 %12, i1 false) #7
  %14 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %13, i32 0) #9, !srcloc !8
  %15 = extractvalue { i64, i32 } %14, 0
  %16 = extractvalue { i64, i32 } %14, 1
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %13, i64 %15, i32 %16) #9, !srcloc !9
  %18 = extractvalue { i64, i32 } %17, 0
  %19 = icmp slt i64 %12, 0
  %20 = lshr i64 %18, 9
  %21 = sub nsw i64 0, %20
  %22 = select i1 %19, i64 %20, i64 %21
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.nvkm_subdev_func, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %87, label %27

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 8
  %29 = load i8, ptr %28, align 4, !range !10
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %87

31:                                               ; preds = %27
  %32 = load i32, ptr %2, align 4
  %33 = icmp ugt i32 %32, 4
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.60, ptr noundef %39) #8
  br label %40

40:                                               ; preds = %34, %31
  %41 = tail call i64 @ktime_get() #7
  %42 = tail call i64 @llvm.abs.i64(i64 %41, i1 false) #7
  %43 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %42, i32 0) #9, !srcloc !8
  %44 = extractvalue { i64, i32 } %43, 0
  %45 = extractvalue { i64, i32 } %43, 1
  %46 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %42, i64 %44, i32 %45) #9, !srcloc !9
  %47 = extractvalue { i64, i32 } %46, 0
  %48 = icmp slt i64 %41, 0
  %49 = lshr i64 %47, 9
  %50 = sub nsw i64 0, %49
  %51 = select i1 %48, i64 %49, i64 %50
  %52 = load ptr, ptr %0, align 4
  %53 = getelementptr inbounds %struct.nvkm_subdev_func, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 %54(ptr noundef %0) #7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %40
  %58 = load i32, ptr %2, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %125, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.61, ptr noundef %65, i32 noundef %55) #8
  br label %125

66:                                               ; preds = %40
  store i8 1, ptr %28, align 4
  %67 = tail call i64 @ktime_get() #7
  %68 = tail call i64 @llvm.abs.i64(i64 %67, i1 false) #7
  %69 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %68, i32 0) #9, !srcloc !8
  %70 = extractvalue { i64, i32 } %69, 0
  %71 = extractvalue { i64, i32 } %69, 1
  %72 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %68, i64 %70, i32 %71) #9, !srcloc !9
  %73 = load i32, ptr %2, align 4
  %74 = icmp ugt i32 %73, 4
  br i1 %74, label %75, label %87

75:                                               ; preds = %66
  %76 = icmp slt i64 %67, 0
  %77 = extractvalue { i64, i32 } %72, 0
  %78 = lshr i64 %77, 9
  %79 = sub nsw i64 0, %78
  %80 = select i1 %76, i64 %79, i64 %78
  %81 = add nsw i64 %80, %51
  %82 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nvkm_device, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.62, ptr noundef %86, i64 noundef %81) #8
  br label %87

87:                                               ; preds = %75, %66, %27, %11
  %88 = load ptr, ptr %0, align 4
  %89 = getelementptr inbounds %struct.nvkm_subdev_func, ptr %88, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %104, label %92

92:                                               ; preds = %87
  %93 = tail call i32 %90(ptr noundef %0) #7
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = load i32, ptr %2, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %125, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.nvkm_device, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.63, ptr noundef %103, i32 noundef %93) #8
  br label %125

104:                                              ; preds = %92, %87
  %105 = tail call i64 @ktime_get() #7
  %106 = tail call i64 @llvm.abs.i64(i64 %105, i1 false) #7
  %107 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %106, i32 0) #9, !srcloc !8
  %108 = extractvalue { i64, i32 } %107, 0
  %109 = extractvalue { i64, i32 } %107, 1
  %110 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %106, i64 %108, i32 %109) #9, !srcloc !9
  %111 = load i32, ptr %2, align 4
  %112 = icmp ugt i32 %111, 4
  br i1 %112, label %113, label %125

113:                                              ; preds = %104
  %114 = icmp slt i64 %105, 0
  %115 = extractvalue { i64, i32 } %110, 0
  %116 = lshr i64 %115, 9
  %117 = sub nsw i64 0, %116
  %118 = select i1 %114, i64 %117, i64 %116
  %119 = add nsw i64 %118, %22
  %120 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.nvkm_device, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %123, ptr noundef nonnull @.str.64, ptr noundef %124, i64 noundef %119) #8
  br label %125

125:                                              ; preds = %113, %104, %98, %95, %60, %57
  %126 = phi i32 [ %55, %60 ], [ %93, %98 ], [ %93, %95 ], [ 0, %113 ], [ 0, %104 ], [ %55, %57 ]
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_subdev_del(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %63, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.65, i32 noundef 143, i32 noundef 9, ptr noundef null) #7
  br label %63

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 4
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.66, ptr noundef %17) #8
  br label %18

18:                                               ; preds = %12, %8
  %19 = tail call i64 @ktime_get() #7
  %20 = tail call i64 @llvm.abs.i64(i64 %19, i1 false) #7
  %21 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %20, i32 0) #9, !srcloc !8
  %22 = extractvalue { i64, i32 } %21, 0
  %23 = extractvalue { i64, i32 } %21, 1
  %24 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %20, i64 %22, i32 %23) #9, !srcloc !9
  %25 = extractvalue { i64, i32 } %24, 0
  %26 = icmp slt i64 %19, 0
  %27 = lshr i64 %25, 9
  %28 = sub nsw i64 0, %27
  %29 = select i1 %26, i64 %27, i64 %28
  %30 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 6
  %31 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 6, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %30, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  store volatile ptr %33, ptr %32, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %31, align 4
  %35 = load ptr, ptr %2, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %18
  %39 = tail call ptr %36(ptr noundef nonnull %2) #7
  store ptr %39, ptr %0, align 4
  br label %40

40:                                               ; preds = %38, %18
  %41 = tail call i64 @ktime_get() #7
  %42 = tail call i64 @llvm.abs.i64(i64 %41, i1 false) #7
  %43 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %42, i32 0) #9, !srcloc !8
  %44 = extractvalue { i64, i32 } %43, 0
  %45 = extractvalue { i64, i32 } %43, 1
  %46 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %42, i64 %44, i32 %45) #9, !srcloc !9
  %47 = load i32, ptr %9, align 4
  %48 = icmp ugt i32 %47, 4
  br i1 %48, label %49, label %61

49:                                               ; preds = %40
  %50 = icmp slt i64 %41, 0
  %51 = extractvalue { i64, i32 } %46, 0
  %52 = lshr i64 %51, 9
  %53 = sub nsw i64 0, %52
  %54 = select i1 %50, i64 %53, i64 %52
  %55 = add nsw i64 %54, %29
  %56 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.nvkm_subdev, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str.67, ptr noundef %60, i64 noundef %55) #8
  br label %61

61:                                               ; preds = %49, %40
  %62 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %62) #7
  store ptr null, ptr %0, align 4
  br label %63

63:                                               ; preds = %61, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_subdev_disable(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 71
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %24, label %8

8:                                                ; preds = %21, %3
  %9 = phi ptr [ %22, %21 ], [ %6, %3 ]
  %10 = getelementptr i8, ptr %9, i32 -28
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %9, i32 -24
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %9, i32 -36
  store ptr %18, ptr %4, align 4
  %19 = getelementptr i8, ptr %9, i32 8
  %20 = load ptr, ptr %19, align 4
  store ptr null, ptr %20, align 4
  call void @nvkm_subdev_del(ptr noundef nonnull %4)
  br label %24

21:                                               ; preds = %13, %8
  %22 = load ptr, ptr %9, align 4
  %23 = icmp eq ptr %22, %5
  br i1 %23, label %24, label %8

24:                                               ; preds = %21, %17, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_subdev_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  store ptr %0, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 1
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 2
  store i32 %2, ptr %7, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %9 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 3
  store i32 %8, ptr %9, align 4
  %10 = icmp sgt i32 %3, -1
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 4
  %12 = getelementptr [51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 %2
  %13 = load ptr, ptr %12, align 4
  br i1 %10, label %14, label %16

14:                                               ; preds = %5
  %15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %11, i32 noundef 16, ptr noundef nonnull @.str.68, ptr noundef %13, i32 noundef %3)
  br label %18

16:                                               ; preds = %5
  %17 = tail call i32 @strscpy(ptr noundef %11, ptr noundef %13, i32 noundef 16) #7
  br label %18

18:                                               ; preds = %16, %14
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 7
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 4
  %22 = tail call i32 @nvkm_dbgopt(ptr noundef %20, ptr noundef %21) #7
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 5
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 6
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 71
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 71, i32 1
  %27 = load ptr, ptr %26, align 4
  store ptr %24, ptr %26, align 4
  store ptr %25, ptr %24, align 4
  %28 = getelementptr inbounds %struct.nvkm_subdev, ptr %4, i32 0, i32 6, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %24, ptr %27, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dbgopt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_subdev_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 52) #10
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %5
  store ptr %0, ptr %7, align 8
  %10 = getelementptr inbounds %struct.nvkm_subdev, ptr %7, i32 0, i32 1
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %7, i32 0, i32 2
  store i32 %2, ptr %11, align 8
  %12 = tail call i32 @llvm.smax.i32(i32 %3, i32 0) #7
  %13 = getelementptr inbounds %struct.nvkm_subdev, ptr %7, i32 0, i32 3
  store i32 %12, ptr %13, align 4
  %14 = icmp sgt i32 %3, -1
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %7, i32 0, i32 4
  %16 = getelementptr [51 x ptr], ptr @nvkm_subdev_type, i32 0, i32 %2
  %17 = load ptr, ptr %16, align 4
  br i1 %14, label %18, label %20

18:                                               ; preds = %9
  %19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef 16, ptr noundef nonnull @.str.68, ptr noundef %17, i32 noundef %3) #7
  br label %22

20:                                               ; preds = %9
  %21 = tail call i32 @strscpy(ptr noundef %15, ptr noundef %17, i32 noundef 16) #7
  br label %22

22:                                               ; preds = %20, %18
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 7
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @nvkm_dbgopt(ptr noundef %24, ptr noundef %15) #7
  %26 = getelementptr inbounds %struct.nvkm_subdev, ptr %7, i32 0, i32 5
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %7, i32 0, i32 6
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 71
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 71, i32 1
  %30 = load ptr, ptr %29, align 4
  store ptr %27, ptr %29, align 4
  store ptr %28, ptr %27, align 4
  %31 = getelementptr inbounds %struct.nvkm_subdev, ptr %7, i32 0, i32 6, i32 1
  store ptr %30, ptr %31, align 8
  store volatile ptr %27, ptr %30, align 4
  br label %32

32:                                               ; preds = %22, %5
  %33 = phi i32 [ 0, %22 ], [ -12, %5 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i64 633232, i64 633259, i64 633281, i64 633309}
!9 = !{i64 633640, i64 633667, i64 633700, i64 633721, i64 633748, i64 633774}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 1, i32 2000}
