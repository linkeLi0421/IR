; ModuleID = '/llk/IR/drivers/gpu/drm/lima/lima_pmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_pmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon }
%union.anon = type { %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_sched_pipe = type { %struct.drm_gpu_scheduler, i64, i32, %struct.spinlock, ptr, ptr, ptr, [8 x ptr], i32, [2 x ptr], i32, [8 x ptr], i32, ptr, ptr, i32, i8, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@.str = private unnamed_addr constant [22 x i8] c"timeout wait pmu cmd\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_pmu_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %2 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #3, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 65535) #3, !srcloc !9
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %12 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #3, !srcloc !9
  %13 = tail call fastcc i32 @lima_pmu_wait_cmd(ptr noundef %0) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %1
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ 0, %15 ], [ %13, %11 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_pmu_suspend(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @lima_pmu_hw_fini(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lima_pmu_hw_fini(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %66

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.lima_device, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr %struct.lima_device, ptr %6, i32 0, i32 11, i32 11, i32 2
  %11 = load i8, ptr %10, align 4, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %9, label %13, label %30

13:                                               ; preds = %5
  %14 = select i1 %12, i32 3, i32 7
  %15 = getelementptr %struct.lima_device, ptr %6, i32 0, i32 11, i32 12, i32 2
  %16 = load i8, ptr %15, align 4, !range !14
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 0, i32 8
  %19 = or i32 %18, %14
  %20 = getelementptr %struct.lima_device, ptr %6, i32 0, i32 11, i32 13, i32 2
  %21 = load i8, ptr %20, align 4, !range !14
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 0, i32 16
  %24 = or i32 %19, %23
  %25 = getelementptr %struct.lima_device, ptr %6, i32 0, i32 11, i32 14, i32 2
  %26 = load i8, ptr %25, align 4, !range !14
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i32 0, i32 32
  %29 = or i32 %24, %28
  br label %64

30:                                               ; preds = %5
  %31 = select i1 %12, i32 1, i32 3
  %32 = getelementptr %struct.lima_device, ptr %6, i32 0, i32 11, i32 12, i32 2
  %33 = load i8, ptr %32, align 4, !range !14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = getelementptr %struct.lima_device, ptr %6, i32 0, i32 11, i32 13, i32 2
  %37 = load i8, ptr %36, align 4, !range !14
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr %struct.lima_device, ptr %6, i32 0, i32 11, i32 14, i32 2
  %41 = load i8, ptr %40, align 4, !range !14
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39, %35, %30
  %44 = or i32 %31, 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %44, %43 ], [ %31, %39 ]
  %47 = getelementptr %struct.lima_device, ptr %6, i32 0, i32 11, i32 15, i32 2
  %48 = load i8, ptr %47, align 4, !range !14
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = getelementptr %struct.lima_device, ptr %6, i32 0, i32 11, i32 16, i32 2
  %52 = load i8, ptr %51, align 4, !range !14
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = getelementptr %struct.lima_device, ptr %6, i32 0, i32 11, i32 17, i32 2
  %56 = load i8, ptr %55, align 4, !range !14
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr %struct.lima_device, ptr %6, i32 0, i32 11, i32 18, i32 2
  %60 = load i8, ptr %59, align 4, !range !14
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58, %54, %50, %45
  %63 = or i32 %46, 8
  br label %64

64:                                               ; preds = %62, %58, %13
  %65 = phi i32 [ %63, %62 ], [ %29, %13 ], [ %46, %58 ]
  store i32 %65, ptr %2, align 4
  br label %66

66:                                               ; preds = %64, %1
  %67 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 8
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !15
  %71 = xor i32 %70, -1
  %72 = load i32, ptr %2, align 4
  %73 = and i32 %72, %71
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %87, label %75

75:                                               ; preds = %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %76 = load ptr, ptr %67, align 4
  %77 = getelementptr i8, ptr %76, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %73) #3, !srcloc !9
  %78 = load ptr, ptr %0, align 4
  %79 = getelementptr inbounds %struct.lima_device, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %83 = load ptr, ptr %67, align 4
  %84 = getelementptr i8, ptr %83, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 1) #3, !srcloc !9
  br label %87

85:                                               ; preds = %75
  %86 = tail call fastcc i32 @lima_pmu_wait_cmd(ptr noundef %0)
  br label %87

87:                                               ; preds = %85, %82, %66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_pmu_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %2 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #3, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 65535) #3, !srcloc !9
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %12 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %9) #3, !srcloc !9
  %13 = tail call fastcc i32 @lima_pmu_wait_cmd(ptr noundef %0) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %1
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ 0, %15 ], [ %13, %11 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_pmu_fini(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @lima_pmu_hw_fini(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lima_pmu_wait_cmd(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i64 @ktime_get() #3
  %4 = add i64 %3, 100000000
  %5 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !18
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %18, %1
  %12 = tail call i64 @ktime_get() #3
  %13 = icmp sgt i64 %12, %4
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !19
  br label %24

18:                                               ; preds = %11
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #3
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr i8, ptr %19, i32 16
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #3, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !18
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %11, label %24

24:                                               ; preds = %18, %14, %1
  %25 = phi i32 [ %17, %14 ], [ %8, %1 ], [ %21, %18 ]
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str) #4
  br label %33

30:                                               ; preds = %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr i8, ptr %31, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 1) #3, !srcloc !9
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi i32 [ -110, %28 ], [ 0, %30 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
!8 = !{i64 2151820771}
!9 = !{i64 2391433}
!10 = !{i64 2151821129}
!11 = !{i64 2391851}
!12 = !{i64 2151821627}
!13 = !{i64 2151821857}
!14 = !{i8 0, i8 2}
!15 = !{i64 2151822351}
!16 = !{i64 2151822581}
!17 = !{i64 2151823069}
!18 = !{i64 2151818644}
!19 = !{i64 2151818975}
!20 = !{i64 2151819869}
