; ModuleID = '/llk/IR/drivers/gpu/drm/lima/lima_l2_cache.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_l2_cache.c"
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

@.str = private unnamed_addr constant [61 x i8] c"l2 cache %uK, %u-way, %ubyte cache line, %ubit external bus\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"l2 cache wait command timeout\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_l2_cache_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %2) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %3 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #4, !srcloc !9
  %6 = load ptr, ptr %0, align 4
  %7 = tail call i64 @ktime_get() #4
  %8 = add i64 %7, 1000000
  br label %9

9:                                                ; preds = %15, %1
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %9
  %16 = tail call i64 @ktime_get() #4
  %17 = icmp sgt i64 %16, %8
  br i1 %17, label %18, label %9

18:                                               ; preds = %15
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.1) #5
  br label %26

26:                                               ; preds = %24, %18, %9
  %27 = phi i32 [ -110, %24 ], [ 0, %18 ], [ 0, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  %28 = load i16, ptr %2, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !16
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_l2_cache_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @lima_l2_cache_flush(ptr noundef %0) #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %5 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 3) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 28) #4, !srcloc !9
  br label %10

10:                                               ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @lima_l2_cache_suspend(ptr nocapture noundef %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_l2_cache_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 21
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr %struct.lima_device, ptr %2, i32 0, i32 11, i32 15, i32 2
  %8 = load i8, ptr %7, align 4, !range !19
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = getelementptr %struct.lima_device, ptr %2, i32 0, i32 11, i32 16, i32 2
  %12 = load i8, ptr %11, align 4, !range !19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = getelementptr %struct.lima_device, ptr %2, i32 0, i32 11, i32 17, i32 2
  %16 = load i8, ptr %15, align 4, !range !19
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr %struct.lima_device, ptr %2, i32 0, i32 11, i32 18, i32 2
  %20 = load i8, ptr %19, align 4, !range !19
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %18, %14, %10, %6, %1
  %23 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 5
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.lima_ip, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  %28 = load ptr, ptr %2, align 8
  %29 = lshr i32 %27, 16
  %30 = and i32 %29, 255
  %31 = add nsw i32 %30, -10
  %32 = shl nuw i32 1, %31
  %33 = lshr i32 %27, 8
  %34 = and i32 %33, 255
  %35 = shl nuw i32 1, %34
  %36 = and i32 %27, 255
  %37 = shl nuw i32 1, %36
  %38 = lshr i32 %27, 24
  %39 = shl nuw i32 1, %38
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str, i32 noundef %32, i32 noundef %35, i32 noundef %37, i32 noundef %39) #5
  %40 = tail call i32 @lima_l2_cache_flush(ptr noundef %0) #4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %43 = load ptr, ptr %24, align 4
  %44 = getelementptr i8, ptr %43, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 3) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %45 = load ptr, ptr %24, align 4
  %46 = getelementptr i8, ptr %45, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 28) #4, !srcloc !9
  br label %47

47:                                               ; preds = %42, %22, %18
  %48 = phi i32 [ %40, %22 ], [ 0, %42 ], [ -19, %18 ]
  ret i32 %48
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @lima_l2_cache_fini(ptr nocapture noundef %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2151819447}
!9 = !{i64 2390849}
!10 = !{i64 2391267}
!11 = !{i64 2151818156}
!12 = !{i64 2151818493}
!13 = !{i64 2149247808}
!14 = !{i64 2149243632}
!15 = !{i64 2149243707, i64 2149243734, i64 2149243781, i64 2149243803, i64 2149243831, i64 2149243851}
!16 = !{i64 2149270811}
!17 = !{i64 2151820131}
!18 = !{i64 2151820605}
!19 = !{i8 0, i8 2}
!20 = !{i64 2151821536}
