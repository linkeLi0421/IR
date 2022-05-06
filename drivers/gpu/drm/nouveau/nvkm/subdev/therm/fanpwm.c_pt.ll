; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/therm/fanpwm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/fanpwm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_therm_fan = type { i32, i32, i8, i8, i16, i16, i32, [10 x %struct.nvbios_therm_trip_point], i8, i8, i8 }
%struct.nvbios_therm_trip_point = type { i32, i32, i32 }
%struct.nvkm_therm = type { ptr, %struct.nvkm_subdev, %struct.nvkm_alarm, %struct.spinlock, ptr, i32, i32, i32, %struct.nvbios_therm_sensor, ptr, %struct.anon.120, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_alarm = type { %struct.list_head, %struct.list_head, i64, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvbios_therm_sensor = type { i16, i16, i16, i16, i8, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold, %struct.nvbios_therm_threshold }
%struct.nvbios_therm_threshold = type { i8, i8 }
%struct.anon.120 = type { %struct.spinlock, %struct.nvkm_alarm, [4 x i32] }
%struct.anon.121 = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dcb_gpio_func = type { i8, i8, [2 x i8], i8 }
%struct.nvkm_therm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fan = type { ptr, ptr, %struct.nvbios_therm_fan, %struct.nvbios_perf_fan, %struct.nvkm_alarm, %struct.spinlock, i32, ptr, ptr, %struct.dcb_gpio_func }
%struct.nvbios_perf_fan = type { i32 }
%struct.nvkm_fanpwm = type { %struct.nvkm_fan, %struct.dcb_gpio_func }

@.str = private unnamed_addr constant [9 x i8] c"NvFanPWM\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PWM\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_fanpwm_create(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvbios_therm_fan, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 21
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(144) %3, i8 0, i32 144, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 @nvbios_fan_parse(ptr noundef %9, ptr noundef nonnull %3) #7
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dcb_gpio_func, ptr %1, i32 0, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = icmp ne i8 %14, 0
  %16 = call zeroext i1 @nvkm_boolopt(ptr noundef %12, ptr noundef nonnull @.str, i1 noundef zeroext %15) #7
  br i1 %16, label %17, label %43

17:                                               ; preds = %2
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.nvkm_therm_func, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = load i32, ptr %3, align 4
  %23 = icmp eq i32 %22, 1
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %43, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.nvkm_therm_func, ptr %18, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dcb_gpio_func, ptr %1, i32 0, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = call i32 %27(ptr noundef %0, i32 noundef %30, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %32 = icmp eq i32 %31, -19
  br i1 %32, label %43, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %35 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 224) #8
  %36 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  store ptr %35, ptr %36, align 8
  %37 = icmp eq ptr %35, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.nvkm_fan, ptr %35, i32 0, i32 1
  store ptr @.str.1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nvkm_fan, ptr %35, i32 0, i32 7
  store ptr @nvkm_fanpwm_get, ptr %40, align 8
  %41 = getelementptr inbounds %struct.nvkm_fan, ptr %35, i32 0, i32 8
  store ptr @nvkm_fanpwm_set, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nvkm_fanpwm, ptr %35, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(5) %42, ptr noundef align 1 dereferenceable(5) %1, i32 5, i1 false)
  br label %43

43:                                               ; preds = %38, %33, %25, %17, %2
  %44 = phi i32 [ 0, %38 ], [ -19, %25 ], [ -19, %17 ], [ -19, %2 ], [ -12, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #7
  ret i32 %44
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_fan_parse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvkm_boolopt(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fanpwm_get(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 15
  %11 = load i32, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.nvkm_therm_func, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_fanpwm, ptr %5, i32 0, i32 1, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = call i32 %14(ptr noundef %0, i32 noundef %17, ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr %2, align 4
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = load i32, ptr %3, align 4
  %25 = call i32 @llvm.umax.i32(i32 %20, i32 %24)
  %26 = icmp slt i32 %11, 65
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nvkm_fanpwm, ptr %5, i32 0, i32 1, i32 2
  %29 = load i8, ptr %28, align 2
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27, %23
  %33 = sub i32 %25, %24
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi i32 [ %33, %32 ], [ %24, %27 ]
  %36 = mul i32 %35, 100
  %37 = udiv i32 %36, %25
  br label %44

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.nvkm_fanpwm, ptr %5, i32 0, i32 1
  %40 = load i8, ptr %39, align 8
  %41 = load i8, ptr %15, align 1
  %42 = call i32 @nvkm_gpio_get(ptr noundef %9, i32 noundef 0, i8 noundef zeroext %40, i8 noundef zeroext %41) #7
  %43 = mul i32 %42, 100
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i32 [ %37, %34 ], [ %43, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fanpwm_set(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 15
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_fan, ptr %4, i32 0, i32 3
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_fan, ptr %4, i32 0, i32 2, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.nvkm_therm_func, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.nvkm_fanpwm, ptr %4, i32 0, i32 1, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = tail call i32 %17(ptr noundef %0, i32 noundef %22) #7
  %24 = load i32, ptr %11, align 4
  br label %25

25:                                               ; preds = %19, %14
  %26 = phi i32 [ %24, %19 ], [ %12, %14 ]
  %27 = phi i32 [ %23, %19 ], [ 1, %14 ]
  %28 = udiv i32 %27, %26
  br label %29

29:                                               ; preds = %25, %2
  %30 = phi i32 [ %28, %25 ], [ %10, %2 ]
  %31 = mul i32 %30, %1
  %32 = add i32 %31, 99
  %33 = udiv i32 %32, 100
  %34 = icmp slt i32 %8, 65
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.nvkm_fanpwm, ptr %4, i32 0, i32 1, i32 2
  %37 = load i8, ptr %36, align 2
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35, %29
  %41 = sub i32 %30, %33
  br label %42

42:                                               ; preds = %40, %35
  %43 = phi i32 [ %41, %40 ], [ %33, %35 ]
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr inbounds %struct.nvkm_therm_func, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvkm_fanpwm, ptr %4, i32 0, i32 1, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = tail call i32 %46(ptr noundef %0, i32 noundef %49, i32 noundef %30, i32 noundef %43) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr inbounds %struct.nvkm_therm_func, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = load i8, ptr %47, align 1
  %57 = zext i8 %56 to i32
  %58 = tail call i32 %55(ptr noundef %0, i32 noundef %57, i1 noundef zeroext true) #7
  br label %59

59:                                               ; preds = %52, %42
  %60 = phi i32 [ %58, %52 ], [ %50, %42 ]
  ret i32 %60
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpio_get(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
