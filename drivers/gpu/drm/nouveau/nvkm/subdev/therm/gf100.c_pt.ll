; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/therm/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/therm/gf100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.nvkm_therm_clkgate_init = type { i32, i8, i32 }
%struct.nvkm_therm_clkgate_pack = type { ptr }

@.str = private unnamed_addr constant [28 x i8] c"%s: { 0x%06x, %d, 0x%08x }\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: \090x%06x = 0x%08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_clkgate_init(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 1
  %4 = icmp eq ptr %1, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 5
  %8 = getelementptr inbounds %struct.nvkm_therm, ptr %0, i32 0, i32 1, i32 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  br label %10

10:                                               ; preds = %54, %5
  %11 = phi ptr [ %1, %5 ], [ %55, %54 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %51, %10
  %15 = phi ptr [ %52, %51 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.nvkm_therm_clkgate_init, ptr %15, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = icmp eq i8 %17, 0
  br i1 %19, label %54, label %20

20:                                               ; preds = %14
  %21 = load i32, ptr %15, align 4
  %22 = shl nuw nsw i32 %18, 3
  %23 = add i32 %21, %22
  %24 = load i32, ptr %7, align 4
  %25 = icmp ugt i32 %24, 4
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nvkm_therm_clkgate_init, ptr %15, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef %8, i32 noundef %21, i32 noundef %18, i32 noundef %31) #3
  br label %32

32:                                               ; preds = %26, %20
  %33 = icmp ult i32 %21, %23
  br i1 %33, label %34, label %51

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.nvkm_therm_clkgate_init, ptr %15, i32 0, i32 2
  br label %36

36:                                               ; preds = %45, %34
  %37 = phi i32 [ %21, %34 ], [ %49, %45 ]
  %38 = load i32, ptr %7, align 4
  %39 = icmp ugt i32 %38, 4
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = load i32, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.1, ptr noundef %8, i32 noundef %37, i32 noundef %44) #3
  br label %45

45:                                               ; preds = %40, %36
  %46 = load i32, ptr %35, align 4
  %47 = load ptr, ptr %9, align 4
  %48 = getelementptr i8, ptr %47, i32 %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #4, !srcloc !9
  %49 = add i32 %37, 8
  %50 = icmp ult i32 %49, %23
  br i1 %50, label %36, label %51

51:                                               ; preds = %45, %32
  %52 = getelementptr %struct.nvkm_therm_clkgate_init, ptr %15, i32 1
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %14

54:                                               ; preds = %51, %14
  %55 = getelementptr %struct.nvkm_therm_clkgate_pack, ptr %11, i32 1
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %10

57:                                               ; preds = %54, %10, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind }
attributes #4 = { nounwind }

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
!8 = !{i64 2151476131}
!9 = !{i64 3935038}
