; ModuleID = '/llk/IR/drivers/gpu/drm/lima/lima_bcast.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_bcast.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon.51 }
%union.anon.51 = type { %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_bcast_enable(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 11, i32 23, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %6 = and i32 %5, -65536
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %8, %2
  %9 = phi i32 [ %18, %8 ], [ 0, %2 ]
  %10 = phi i32 [ %17, %8 ], [ %6, %2 ]
  %11 = getelementptr %struct.lima_device, ptr %0, i32 0, i32 12, i32 1, i32 11, i32 %9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.lima_ip, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -11
  %16 = shl nuw i32 1, %15
  %17 = or i32 %16, %10
  %18 = add nuw nsw i32 %9, 1
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %8

20:                                               ; preds = %8, %2
  %21 = phi i32 [ %6, %2 ], [ %17, %8 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %22 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #3, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_bcast_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %2 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = shl i32 %3, 16
  %5 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %7 = load i32, ptr %2, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #3, !srcloc !11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @lima_bcast_suspend(ptr nocapture noundef %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_bcast_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 5
  %4 = getelementptr %struct.lima_device, ptr %2, i32 0, i32 11, i32 11, i32 2
  %5 = load i8, ptr %4, align 4, !range !14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %3, align 4
  %9 = or i32 %8, 1
  store i32 %9, ptr %3, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr %struct.lima_device, ptr %2, i32 0, i32 11, i32 12, i32 2
  %12 = load i8, ptr %11, align 4, !range !14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %3, align 4
  %16 = or i32 %15, 2
  store i32 %16, ptr %3, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr %struct.lima_device, ptr %2, i32 0, i32 11, i32 13, i32 2
  %19 = load i8, ptr %18, align 4, !range !14
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %3, align 4
  %23 = or i32 %22, 4
  store i32 %23, ptr %3, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr %struct.lima_device, ptr %2, i32 0, i32 11, i32 14, i32 2
  %26 = load i8, ptr %25, align 4, !range !14
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %3, align 4
  %30 = or i32 %29, 8
  store i32 %30, ptr %3, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = getelementptr %struct.lima_device, ptr %2, i32 0, i32 11, i32 15, i32 2
  %33 = load i8, ptr %32, align 4, !range !14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %3, align 4
  %37 = or i32 %36, 16
  store i32 %37, ptr %3, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = getelementptr %struct.lima_device, ptr %2, i32 0, i32 11, i32 16, i32 2
  %40 = load i8, ptr %39, align 4, !range !14
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %3, align 4
  %44 = or i32 %43, 32
  store i32 %44, ptr %3, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = getelementptr %struct.lima_device, ptr %2, i32 0, i32 11, i32 17, i32 2
  %47 = load i8, ptr %46, align 4, !range !14
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %3, align 4
  %51 = or i32 %50, 64
  store i32 %51, ptr %3, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = getelementptr %struct.lima_device, ptr %2, i32 0, i32 11, i32 18, i32 2
  %54 = load i8, ptr %53, align 4, !range !14
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %3, align 4
  %58 = or i32 %57, 128
  store i32 %58, ptr %3, align 4
  br label %59

59:                                               ; preds = %56, %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %60 = load i32, ptr %3, align 4
  %61 = shl i32 %60, 16
  %62 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #3, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %64 = load i32, ptr %3, align 4
  %65 = load ptr, ptr %62, align 4
  %66 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #3, !srcloc !11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @lima_bcast_fini(ptr nocapture noundef %0) local_unnamed_addr #2 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
!8 = !{i64 360316}
!9 = !{i64 2151808475}
!10 = !{i64 2151808702}
!11 = !{i64 359898}
!12 = !{i64 2151809088}
!13 = !{i64 2151809492}
!14 = !{i8 0, i8 2}
