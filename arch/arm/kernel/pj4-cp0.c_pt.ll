; ModuleID = '/llk/IR/arch/arm/kernel/pj4-cp0.c_pt.bc'
source_filename = "../arch/arm/kernel/pj4-cp0.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }

@__initcall__kmod_pj4_cp0__134_134_pj4_cp0_init7 = internal global ptr @pj4_cp0_init, section ".initcall7.init", align 4
@.str = private unnamed_addr constant [39 x i8] c"\016PJ4 iWMMXt v%d coprocessor enabled.\0A\00", align 1
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@iwmmxt_notifier_block = internal global %struct.notifier_block { ptr @iwmmxt_do, ptr null, i32 0 }, align 4
@thread_notify_head = external dso_local global %struct.atomic_notifier_head, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pj4_cp0__134_134_pj4_cp0_init7], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pj4_cp0_init() #0 section ".init.text" {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #4, !srcloc !8
  %2 = and i32 %1, -15728896
  %3 = icmp eq i32 %2, 1443846144
  br i1 %3, label %4, label %15

4:                                                ; preds = %0
  %5 = tail call fastcc i32 @pj4_get_iwmmxt_version() #5
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = tail call i32 asm sideeffect "mrc\09p15, 0, $0, c1, c0, 2\0A\09", "=r"() #6, !srcloc !9
  %9 = and i32 %8, -16
  %10 = tail call i32 asm sideeffect "mcr\09p15, 0, $1, c1, c0, 2\0A\09mrc\09p15, 0, $0, c1, c0, 2\0A\09mov\09$0, $0\0A\09sub\09pc, pc, #4\0A\09", "=r,r"(i32 %9) #6, !srcloc !10
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %5) #7
  %12 = load i32, ptr @elf_hwcap, align 4
  %13 = or i32 %12, 512
  store i32 %13, ptr @elf_hwcap, align 4
  %14 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @thread_notify_head, ptr noundef nonnull @iwmmxt_notifier_block) #6
  br label %15

15:                                               ; preds = %7, %4, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @pj4_get_iwmmxt_version() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 asm sideeffect "mrc\09p15, 0, $0, c1, c0, 2\0A\09", "=r"() #6, !srcloc !9
  %2 = or i32 %1, 15
  %3 = tail call i32 asm sideeffect "mcr\09p15, 0, $1, c1, c0, 2\0A\09mrc\09p15, 0, $0, c1, c0, 2\0A\09mov\09$0, $0\0A\09sub\09pc, pc, #4\0A\09", "=r,r"(i32 %2) #6, !srcloc !10
  %4 = tail call i32 asm sideeffect "mrc\09p15, 0, $0, c1, c0, 2\0A\09", "=r"() #6, !srcloc !9
  %5 = and i32 %4, 15
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = tail call i32 asm sideeffect "mcr\09p15, 0, $1, c1, c0, 2\0A\09mrc\09p15, 0, $0, c1, c0, 2\0A\09mov\09$0, $0\0A\09sub\09pc, pc, #4\0A\09", "=r,r"(i32 %1) #6, !srcloc !10
  br label %17

9:                                                ; preds = %0
  %10 = tail call i32 asm sideeffect "mrc    p1, 0, $0, c0, c0, 0\0A", "=r"() #6, !srcloc !11
  %11 = tail call i32 asm sideeffect "mcr\09p15, 0, $1, c1, c0, 2\0A\09mrc\09p15, 0, $0, c1, c0, 2\0A\09mov\09$0, $0\0A\09sub\09pc, pc, #4\0A\09", "=r,r"(i32 %1) #6, !srcloc !10
  %12 = and i32 %10, -256
  %13 = icmp eq i32 %12, 1443176448
  %14 = select i1 %13, i32 2, i32 -22
  %15 = icmp eq i32 %12, 1443172352
  %16 = select i1 %15, i32 1, i32 %14
  br label %17

17:                                               ; preds = %9, %7
  %18 = phi i32 [ -19, %7 ], [ %16, %9 ]
  ret i32 %18
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iwmmxt_do(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #3 {
  switch i32 %1, label %6 [
    i32 0, label %4
    i32 1, label %4
    i32 2, label %5
  ]

4:                                                ; preds = %3, %3
  tail call void @iwmmxt_task_release(ptr noundef %2) #6
  br label %6

5:                                                ; preds = %3
  tail call void @iwmmxt_task_switch(ptr noundef %2) #6
  br label %6

6:                                                ; preds = %5, %4, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwmmxt_task_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwmmxt_task_switch(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readnone }
attributes #5 = { cold }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 2150040766}
!9 = !{i64 1124, i64 1152}
!10 = !{i64 1283, i64 1311, i64 1391, i64 1410, i64 1433}
!11 = !{i64 1849}
