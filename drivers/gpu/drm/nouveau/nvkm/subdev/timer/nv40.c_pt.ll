; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/timer/nv40.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_timer_func = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@nv40_timer = internal constant %struct.nvkm_timer_func { ptr @nv40_timer_init, ptr @nv04_timer_intr, ptr @nv04_timer_read, ptr @nv04_timer_time, ptr @nv04_timer_alarm_init, ptr @nv04_timer_alarm_fini }, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: unknown input clock freq\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: input frequency : %dHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: numerator       : %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: denominator     : %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%s: timer frequency : %dHz\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv40_timer_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_timer_new_(ptr noundef nonnull @nv40_timer, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_timer_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv40_timer_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_timer, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 37376
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 37392
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %11 = icmp ne i32 %7, 0
  %12 = icmp ne i32 %10, 0
  %13 = select i1 %11, i1 %12, i1 false
  %14 = select i1 %13, i32 %7, i32 1
  %15 = select i1 %13, i32 %10, i32 1
  %16 = getelementptr inbounds %struct.nvkm_timer, ptr %0, i32 0, i32 1, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_timer, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef %23) #4
  br label %24

24:                                               ; preds = %19, %1
  %25 = urem i32 %14, 5
  %26 = icmp eq i32 %25, 0
  %27 = urem i32 %15, 5
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %38, label %30

30:                                               ; preds = %38, %24
  %31 = phi i32 [ %14, %24 ], [ %41, %38 ]
  %32 = phi i32 [ %15, %24 ], [ %42, %38 ]
  %33 = and i32 %31, 1
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %32, 1
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %54, label %48

38:                                               ; preds = %38, %24
  %39 = phi i32 [ %42, %38 ], [ %15, %24 ]
  %40 = phi i32 [ %41, %38 ], [ %14, %24 ]
  %41 = udiv i32 %40, 5
  %42 = udiv i32 %39, 5
  %43 = urem i32 %41, 5
  %44 = icmp eq i32 %43, 0
  %45 = urem i32 %42, 5
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %38, label %30

48:                                               ; preds = %54, %30
  %49 = phi i32 [ %31, %30 ], [ %57, %54 ]
  %50 = phi i32 [ %32, %30 ], [ %58, %54 ]
  %51 = icmp ugt i32 %49, 65535
  %52 = icmp ugt i32 %50, 65535
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %64, label %72

54:                                               ; preds = %54, %30
  %55 = phi i32 [ %58, %54 ], [ %32, %30 ]
  %56 = phi i32 [ %57, %54 ], [ %31, %30 ]
  %57 = lshr i32 %56, 1
  %58 = lshr i32 %55, 1
  %59 = and i32 %56, 2
  %60 = icmp eq i32 %59, 0
  %61 = and i32 %55, 2
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %54, label %48

64:                                               ; preds = %64, %48
  %65 = phi i32 [ %68, %64 ], [ %50, %48 ]
  %66 = phi i32 [ %67, %64 ], [ %49, %48 ]
  %67 = lshr i32 %66, 1
  %68 = lshr i32 %65, 1
  %69 = icmp ugt i32 %66, 131071
  %70 = icmp ugt i32 %65, 131071
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %64, label %72

72:                                               ; preds = %64, %48
  %73 = phi i32 [ %49, %48 ], [ %67, %64 ]
  %74 = phi i32 [ %50, %48 ], [ %68, %64 ]
  %75 = load i32, ptr %16, align 4
  %76 = icmp ugt i32 %75, 3
  br i1 %76, label %77, label %100

77:                                               ; preds = %72
  %78 = load ptr, ptr %2, align 4
  %79 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.nvkm_timer, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.1, ptr noundef %81, i32 noundef 0) #4
  %82 = load i32, ptr %16, align 4
  %83 = icmp ugt i32 %82, 3
  br i1 %83, label %84, label %100

84:                                               ; preds = %77
  %85 = load ptr, ptr %2, align 4
  %86 = getelementptr inbounds %struct.nvkm_device, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %87, ptr noundef nonnull @.str.2, ptr noundef %81, i32 noundef %73) #4
  %88 = load i32, ptr %16, align 4
  %89 = icmp ugt i32 %88, 3
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load ptr, ptr %2, align 4
  %92 = getelementptr inbounds %struct.nvkm_device, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.3, ptr noundef %81, i32 noundef %74) #4
  %94 = load i32, ptr %16, align 4
  %95 = icmp ugt i32 %94, 3
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load ptr, ptr %2, align 4
  %98 = getelementptr inbounds %struct.nvkm_device, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %99, ptr noundef nonnull @.str.4, ptr noundef %81, i32 noundef 0) #4
  br label %100

100:                                              ; preds = %96, %90, %84, %77, %72
  %101 = load ptr, ptr %4, align 4
  %102 = getelementptr i8, ptr %101, i32 37376
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %73) #3, !srcloc !11
  %103 = load ptr, ptr %4, align 4
  %104 = getelementptr i8, ptr %103, i32 37392
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %74) #3, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_timer_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nv04_timer_read(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_timer_time(ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_timer_alarm_init(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_timer_alarm_fini(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 3942682}
!9 = !{i64 2151482135}
!10 = !{i64 2151483357}
!11 = !{i64 3942264}
