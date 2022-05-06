; ModuleID = '/llk/IR/drivers/clk/mmp/pwr-island.c_pt.bc'
source_filename = "../drivers/clk/mmp/pwr-island.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mmp_pm_domain = type { %struct.generic_pm_domain, ptr, ptr, i32, i32, i32, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.5 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.5 = type { %struct.mutex }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mmp_pm_domain_register(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 824) #3
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.mmp_pm_domain, ptr %9, i32 0, i32 1
  store ptr %1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.mmp_pm_domain, ptr %9, i32 0, i32 3
  store i32 %2, ptr %13, align 8
  %14 = getelementptr inbounds %struct.mmp_pm_domain, ptr %9, i32 0, i32 4
  store i32 %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mmp_pm_domain, ptr %9, i32 0, i32 5
  store i32 %4, ptr %15, align 8
  %16 = getelementptr inbounds %struct.mmp_pm_domain, ptr %9, i32 0, i32 6
  store i32 %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mmp_pm_domain, ptr %9, i32 0, i32 2
  store ptr %6, ptr %17, align 4
  %18 = tail call i32 @pm_genpd_init(ptr noundef nonnull %9, ptr noundef null, i1 noundef zeroext true) #4
  %19 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 10
  store ptr %0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 19
  store ptr @mmp_pm_domain_power_on, ptr %20, align 8
  %21 = getelementptr inbounds %struct.generic_pm_domain, ptr %9, i32 0, i32 18
  store ptr @mmp_pm_domain_power_off, ptr %21, align 4
  br label %22

22:                                               ; preds = %11, %7
  %23 = phi ptr [ %9, %11 ], [ inttoptr (i32 -12 to ptr), %7 ]
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_pm_domain_power_on(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmp_pm_domain, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.mmp_pm_domain, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %12 = getelementptr inbounds %struct.mmp_pm_domain, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = or i32 %13, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %15 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #4, !srcloc !11
  %16 = or i32 %14, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %17 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #4, !srcloc !11
  %18 = getelementptr inbounds %struct.mmp_pm_domain, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.mmp_pm_domain, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %21, %7
  %26 = xor i32 %19, -1
  %27 = and i32 %16, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %28 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %27) #4, !srcloc !11
  %29 = getelementptr inbounds %struct.mmp_pm_domain, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = or i32 %30, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %32 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #4, !srcloc !11
  %33 = load i32, ptr %18, align 4
  %34 = or i32 %33, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %35 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %34) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %36 = load ptr, ptr %9, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %16) #4, !srcloc !11
  br label %37

37:                                               ; preds = %25, %21
  %38 = load ptr, ptr %2, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %38, i32 noundef %8) #4
  br label %41

41:                                               ; preds = %40, %37
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_pm_domain_power_off(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmp_pm_domain, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmp_pm_domain, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %8) #4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ 0, %6 ]
  %14 = getelementptr inbounds %struct.mmp_pm_domain, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %17 = getelementptr inbounds %struct.mmp_pm_domain, ptr %0, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = xor i32 %18, -1
  %20 = and i32 %16, -257
  %21 = and i32 %20, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %22 = load ptr, ptr %14, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #4, !srcloc !11
  %23 = load ptr, ptr %7, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %23, i32 noundef %13) #4
  br label %26

26:                                               ; preds = %25, %12, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind allocsize(2) }
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
!8 = !{i64 3851240}
!9 = !{i64 2151470148}
!10 = !{i64 2151470330}
!11 = !{i64 3850822}
!12 = !{i64 2151470638}
!13 = !{i64 2151470946}
!14 = !{i64 2151471254}
!15 = !{i64 2151471562}
!16 = !{i64 2151471881}
!17 = !{i64 2151474062}
!18 = !{i64 2151474244}
