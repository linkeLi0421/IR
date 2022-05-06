; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/therm/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/gk104.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gk104_clkgate_engine_info = type { i32, i32, i8 }
%struct.gf100_idle_filter = type { i32, i32 }
%struct.nvkm_therm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.gk104_therm = type { %struct.nvkm_therm, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gk104_clkgate_engine_info = dso_local constant [9 x %struct.gk104_clkgate_engine_info] [%struct.gk104_clkgate_engine_info { i32 33, i32 0, i8 0 }, %struct.gk104_clkgate_engine_info { i32 38, i32 0, i8 4 }, %struct.gk104_clkgate_engine_info { i32 39, i32 0, i8 8 }, %struct.gk104_clkgate_engine_info { i32 40, i32 0, i8 12 }, %struct.gk104_clkgate_engine_info { i32 28, i32 0, i8 16 }, %struct.gk104_clkgate_engine_info { i32 28, i32 1, i8 20 }, %struct.gk104_clkgate_engine_info { i32 37, i32 0, i8 24 }, %struct.gk104_clkgate_engine_info { i32 28, i32 2, i8 28 }, %struct.gk104_clkgate_engine_info { i32 51, i32 0, i8 0 }], align 4
@gk104_idle_filter = dso_local constant %struct.gf100_idle_filter { i32 4096, i32 4096 }, align 4
@gk104_therm_func = internal constant %struct.nvkm_therm_func { ptr @gf119_therm_init, ptr @g84_therm_fini, ptr null, ptr @gf119_fan_pwm_ctrl, ptr @gf119_fan_pwm_get, ptr @gf119_fan_pwm_set, ptr @gf119_fan_pwm_clock, ptr @g84_temp_get, ptr @gt215_therm_fan_sense, ptr @nvkm_therm_program_alarms_polling, ptr @gf100_clkgate_init, ptr @gk104_clkgate_enable, ptr @gk104_clkgate_fini }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_clkgate_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gk104_therm, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 51
  br i1 %7, label %34, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  br label %10

10:                                               ; preds = %29, %8
  %11 = phi i32 [ %6, %8 ], [ %32, %29 ]
  %12 = phi i32 [ 0, %8 ], [ %30, %29 ]
  %13 = getelementptr %struct.gk104_clkgate_engine_info, ptr %5, i32 %12, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @nvkm_device_subdev(ptr noundef %3, i32 noundef %11, i32 noundef %14) #3
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %10
  %18 = getelementptr %struct.gk104_clkgate_engine_info, ptr %5, i32 %12, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = or i32 %20, 131584
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr i8, ptr %22, i32 %21
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %25 = and i32 %24, -65281
  %26 = or i32 %25, 17664
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #3, !srcloc !11
  br label %29

29:                                               ; preds = %17, %10
  %30 = add i32 %12, 1
  %31 = getelementptr %struct.gk104_clkgate_engine_info, ptr %5, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 51
  br i1 %33, label %34, label %10

34:                                               ; preds = %29, %1
  %35 = getelementptr inbounds %struct.gk104_therm, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 131720
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %37) #3, !srcloc !11
  %41 = load ptr, ptr %35, align 4
  %42 = getelementptr inbounds %struct.gf100_idle_filter, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %38, align 4
  %45 = getelementptr i8, ptr %44, i32 131724
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #3, !srcloc !11
  %46 = load i32, ptr %5, align 4
  %47 = icmp eq i32 %46, 51
  br i1 %47, label %72, label %48

48:                                               ; preds = %67, %34
  %49 = phi i32 [ %70, %67 ], [ %46, %34 ]
  %50 = phi i32 [ %68, %67 ], [ 0, %34 ]
  %51 = getelementptr %struct.gk104_clkgate_engine_info, ptr %5, i32 %50, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = tail call ptr @nvkm_device_subdev(ptr noundef %3, i32 noundef %49, i32 noundef %52) #3
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %48
  %56 = getelementptr %struct.gk104_clkgate_engine_info, ptr %5, i32 %50, i32 2
  %57 = load i8, ptr %56, align 4
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, 131584
  %60 = load ptr, ptr %38, align 4
  %61 = getelementptr i8, ptr %60, i32 %59
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %63 = and i32 %62, -256
  %64 = or i32 %63, 69
  %65 = load ptr, ptr %38, align 4
  %66 = getelementptr i8, ptr %65, i32 %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #3, !srcloc !11
  br label %67

67:                                               ; preds = %55, %48
  %68 = add i32 %50, 1
  %69 = getelementptr %struct.gk104_clkgate_engine_info, ptr %5, i32 %68
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 51
  br i1 %71, label %72, label %48

72:                                               ; preds = %67, %34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_subdev(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gk104_clkgate_fini(ptr nocapture noundef readonly %0, i1 zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gk104_therm, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 51
  br i1 %8, label %35, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  br label %11

11:                                               ; preds = %30, %9
  %12 = phi i32 [ %7, %9 ], [ %33, %30 ]
  %13 = phi i32 [ 0, %9 ], [ %31, %30 ]
  %14 = getelementptr %struct.gk104_clkgate_engine_info, ptr %6, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @nvkm_device_subdev(ptr noundef %4, i32 noundef %12, i32 noundef %15) #3
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %11
  %19 = getelementptr %struct.gk104_clkgate_engine_info, ptr %6, i32 %13, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = or i32 %21, 131584
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr i8, ptr %23, i32 %22
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %26 = and i32 %25, -256
  %27 = or i32 %26, 84
  %28 = load ptr, ptr %10, align 4
  %29 = getelementptr i8, ptr %28, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #3, !srcloc !11
  br label %30

30:                                               ; preds = %18, %11
  %31 = add i32 %13, 1
  %32 = getelementptr %struct.gk104_clkgate_engine_info, ptr %6, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 51
  br i1 %34, label %35, label %11

35:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk104_therm_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 232) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  tail call void @nvkm_therm_ctor(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @gk104_therm_func) #3
  store ptr %6, ptr %3, align 4
  %9 = getelementptr inbounds %struct.gk104_therm, ptr %6, i32 0, i32 1
  store ptr @gk104_clkgate_engine_info, ptr %9, align 8
  %10 = getelementptr inbounds %struct.gk104_therm, ptr %6, i32 0, i32 2
  store ptr @gk104_idle_filter, ptr %10, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_therm_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf119_therm_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g84_therm_fini(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_fan_pwm_ctrl(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_fan_pwm_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_fan_pwm_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_fan_pwm_clock(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g84_temp_get(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gt215_therm_fan_sense(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_therm_program_alarms_polling(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_clkgate_init(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
!8 = !{i64 3937592}
!9 = !{i64 2151477045}
!10 = !{i64 2151478267}
!11 = !{i64 3937174}
