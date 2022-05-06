; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk20a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/volt/gk20a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_volt_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cvb_coef = type { i32, i32, i32, i32, i32, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_device_tegra = type { ptr, %struct.nvkm_device, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.127, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.127 = type { %struct.mutex, %struct.nvkm_mm, ptr, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_volt = type { ptr, %struct.nvkm_subdev, i8, i8, [256 x %struct.anon.89], i32, i32, i8, i8, i8, i32 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.89 = type { i32, i8 }
%struct.gk20a_volt = type { %struct.nvkm_volt, ptr }

@gk20a_volt = internal constant %struct.nvkm_volt_func { ptr null, ptr null, ptr null, ptr @gk20a_volt_vid_get, ptr @gk20a_volt_vid_set, ptr @gk20a_volt_set_id, ptr null }, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: the default voltage is %duV\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: %2d: vid=%d, uv=%d\0A\00", align 1
@gk20a_cvb_coef = internal constant [15 x %struct.cvb_coef] [%struct.cvb_coef { i32 1209886, i32 -36468, i32 515, i32 417, i32 -13123, i32 203 }, %struct.cvb_coef { i32 1130804, i32 -27659, i32 296, i32 298, i32 -10834, i32 221 }, %struct.cvb_coef { i32 1162871, i32 -27110, i32 247, i32 238, i32 -10681, i32 268 }, %struct.cvb_coef { i32 1220458, i32 -28654, i32 247, i32 179, i32 -10376, i32 298 }, %struct.cvb_coef { i32 1280953, i32 -30204, i32 247, i32 119, i32 -9766, i32 304 }, %struct.cvb_coef { i32 1344547, i32 -31777, i32 247, i32 119, i32 -8545, i32 292 }, %struct.cvb_coef { i32 1420168, i32 -34227, i32 269, i32 60, i32 -7172, i32 256 }, %struct.cvb_coef { i32 1490757, i32 -35955, i32 274, i32 60, i32 -5188, i32 197 }, %struct.cvb_coef { i32 1599112, i32 -42583, i32 398, i32 0, i32 -1831, i32 119 }, %struct.cvb_coef { i32 1366986, i32 -16459, i32 -274, i32 0, i32 -3204, i32 72 }, %struct.cvb_coef { i32 1391884, i32 -17078, i32 -274, i32 -60, i32 -1526, i32 30 }, %struct.cvb_coef { i32 1415522, i32 -17497, i32 -274, i32 -60, i32 -458, i32 0 }, %struct.cvb_coef { i32 1464061, i32 -18331, i32 -274, i32 -119, i32 1831, i32 -72 }, %struct.cvb_coef { i32 1524225, i32 -20064, i32 -254, i32 -119, i32 4272, i32 -155 }, %struct.cvb_coef { i32 1608418, i32 -21643, i32 -269, i32 0, i32 763, i32 -48 }], align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: set voltage as %duv\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: prev=%d, target=%d, condition=%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_volt_ctor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.nvkm_device_func, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr %10(ptr noundef %0) #5
  tail call void @nvkm_volt_ctor(ptr noundef nonnull @gk20a_volt, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %6) #5
  %12 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @regulator_get_voltage(ptr noundef %13) #5
  %15 = getelementptr inbounds %struct.nvkm_volt, ptr %6, i32 0, i32 1, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 3
  br i1 %17, label %18, label %24

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.nvkm_volt, ptr %6, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_volt, ptr %6, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef %23, i32 noundef %14) #6
  br label %24

24:                                               ; preds = %18, %7
  %25 = load ptr, ptr %12, align 8
  %26 = getelementptr inbounds %struct.gk20a_volt, ptr %6, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  %27 = trunc i32 %4 to i8
  %28 = getelementptr inbounds %struct.nvkm_volt, ptr %6, i32 0, i32 3
  store i8 %27, ptr %28, align 1
  %29 = and i32 %4, 255
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %100, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %11, i32 0, i32 10
  %33 = getelementptr inbounds %struct.nvkm_volt, ptr %6, i32 0, i32 1, i32 1
  %34 = getelementptr inbounds %struct.nvkm_volt, ptr %6, i32 0, i32 1, i32 4
  br label %35

35:                                               ; preds = %95, %31
  %36 = phi i8 [ %27, %31 ], [ %96, %95 ]
  %37 = phi i32 [ 0, %31 ], [ %97, %95 ]
  %38 = trunc i32 %37 to i8
  %39 = getelementptr %struct.nvkm_volt, ptr %6, i32 0, i32 4, i32 %37
  %40 = getelementptr %struct.nvkm_volt, ptr %6, i32 0, i32 4, i32 %37, i32 1
  store i8 %38, ptr %40, align 4
  %41 = getelementptr %struct.cvb_coef, ptr %3, i32 %37
  %42 = load i32, ptr %32, align 8
  %43 = getelementptr %struct.cvb_coef, ptr %3, i32 %37, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = mul i32 %44, %42
  %46 = icmp sgt i32 %45, 0
  %47 = select i1 %46, i32 50, i32 -50
  %48 = add i32 %47, %45
  %49 = sdiv i32 %48, 100
  %50 = getelementptr %struct.cvb_coef, ptr %3, i32 %37, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %49, %51
  %53 = mul i32 %52, %42
  %54 = icmp sgt i32 %53, 0
  %55 = select i1 %54, i32 50, i32 -50
  %56 = add i32 %55, %53
  %57 = sdiv i32 %56, 100
  %58 = load i32, ptr %41, align 4
  %59 = getelementptr %struct.cvb_coef, ptr %3, i32 %37, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = mul i32 %60, %42
  %62 = icmp sgt i32 %61, 0
  %63 = select i1 %62, i32 50, i32 -50
  %64 = add i32 %63, %61
  %65 = sdiv i32 %64, 100
  %66 = getelementptr %struct.cvb_coef, ptr %3, i32 %37, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %65, %67
  %69 = getelementptr %struct.cvb_coef, ptr %3, i32 %37, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = mul i32 %70, -10
  %72 = icmp sgt i32 %71, 0
  %73 = select i1 %72, i32 5, i32 -5
  %74 = add i32 %73, %71
  %75 = sdiv i32 %74, 10
  %76 = add i32 %68, %75
  %77 = mul i32 %76, -10
  %78 = icmp sgt i32 %77, 0
  %79 = select i1 %78, i32 5, i32 -5
  %80 = add i32 %79, %77
  %81 = sdiv i32 %80, 10
  %82 = add i32 %58, 999
  %83 = add i32 %82, %57
  %84 = add i32 %83, %81
  %85 = srem i32 %84, 1000
  %86 = sub i32 %84, %85
  %87 = tail call i32 @llvm.smax.i32(i32 %86, i32 %5)
  store i32 %87, ptr %39, align 4
  %88 = load i32, ptr %15, align 4
  %89 = icmp ugt i32 %88, 3
  br i1 %89, label %90, label %95

90:                                               ; preds = %35
  %91 = load ptr, ptr %33, align 4
  %92 = getelementptr inbounds %struct.nvkm_device, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.1, ptr noundef %34, i32 noundef %37, i32 noundef %37, i32 noundef %87) #6
  %94 = load i8, ptr %28, align 1
  br label %95

95:                                               ; preds = %90, %35
  %96 = phi i8 [ %94, %90 ], [ %36, %35 ]
  %97 = add nuw nsw i32 %37, 1
  %98 = zext i8 %96 to i32
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %35, label %100

100:                                              ; preds = %95, %24
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_volt_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_volt_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 2128) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = tail call i32 @gk20a_volt_ctor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @gk20a_cvb_coef, i32 noundef 15, i32 noundef 0, ptr noundef nonnull %6)
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk20a_volt_vid_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gk20a_volt, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regulator_get_voltage(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %14, %1
  %10 = phi i32 [ %15, %14 ], [ 0, %1 ]
  %11 = getelementptr %struct.nvkm_volt, ptr %0, i32 0, i32 4, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, %4
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = add nuw nsw i32 %10, 1
  %16 = icmp eq i32 %15, %7
  br i1 %16, label %17, label %9

17:                                               ; preds = %14, %9, %1
  %18 = phi i32 [ -22, %1 ], [ -22, %14 ], [ %10, %9 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk20a_volt_vid_set(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = zext i8 %1 to i32
  br label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 4
  %14 = zext i8 %1 to i32
  %15 = getelementptr %struct.nvkm_volt, ptr %0, i32 0, i32 4, i32 %14
  %16 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef %13, i32 noundef %16) #6
  br label %17

17:                                               ; preds = %8, %6
  %18 = phi i32 [ %7, %6 ], [ %14, %8 ]
  %19 = getelementptr inbounds %struct.gk20a_volt, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.nvkm_volt, ptr %0, i32 0, i32 4, i32 %18
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @regulator_set_voltage(ptr noundef %20, i32 noundef %22, i32 noundef 1200000) #5
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk20a_volt_set_id(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gk20a_volt, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regulator_get_voltage(ptr noundef %5) #5
  %7 = zext i8 %1 to i32
  %8 = getelementptr %struct.nvkm_volt, ptr %0, i32 0, i32 4, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 3
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.3, ptr noundef %18, i32 noundef %6, i32 noundef %9, i32 noundef %2) #6
  br label %19

19:                                               ; preds = %13, %3
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = icmp slt i32 %2, 0
  %23 = icmp slt i32 %9, %6
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = icmp sgt i32 %2, 0
  %27 = icmp sgt i32 %9, %6
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %51

29:                                               ; preds = %25, %21, %19
  %30 = getelementptr %struct.nvkm_volt, ptr %0, i32 0, i32 4, i32 %7, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = load i32, ptr %10, align 4
  %33 = icmp ugt i32 %32, 3
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = zext i8 %31 to i32
  br label %45

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvkm_volt, ptr %0, i32 0, i32 1, i32 4
  %42 = zext i8 %31 to i32
  %43 = getelementptr %struct.nvkm_volt, ptr %0, i32 0, i32 4, i32 %42
  %44 = load i32, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.2, ptr noundef %41, i32 noundef %44) #6
  br label %45

45:                                               ; preds = %36, %34
  %46 = phi i32 [ %35, %34 ], [ %42, %36 ]
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr %struct.nvkm_volt, ptr %0, i32 0, i32 4, i32 %46
  %49 = load i32, ptr %48, align 4
  %50 = tail call i32 @regulator_set_voltage(ptr noundef %47, i32 noundef %49, i32 noundef 1200000) #5
  br label %51

51:                                               ; preds = %45, %25
  %52 = phi i32 [ %50, %45 ], [ 0, %25 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind allocsize(2) }

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
