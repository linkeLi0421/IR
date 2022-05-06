; ModuleID = '/llk/IR/arch/arm/mach-spear/hotplug.c_pt.bc'
source_filename = "../arch/arm/mach-spear/hotplug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@.str = private unnamed_addr constant [35 x i8] c"\014CPU%u: %u spurious wakeup calls\0A\00", align 1
@spear_pen_release = external dso_local global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spear13xx_cpu_die(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 asm sideeffect "\09mcr\09p15, 0, $1, c7, c5, 0\0A\09dsb\0A\09mrc\09p15, 0, $0, c1, c0, 1\0A\09bic\09$0, $0, #0x20\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A\09mrc\09p15, 0, $0, c1, c0, 0\0A\09bic\09$0, $0, $2\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A", "=&r,r,Ir,~{cc},~{memory}"(i32 0, i32 4) #2, !srcloc !8
  tail call void asm sideeffect "wfi", "~{memory}"() #2, !srcloc !9
  %3 = load volatile i32, ptr @spear_pen_release, align 4
  %4 = icmp eq i32 %3, %0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 asm sideeffect "mrc\09p15, 0, $0, c1, c0, 0\0A\09orr\09$0, $0, $1\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A\09mrc\09p15, 0, $0, c1, c0, 1\0A\09orr\09$0, $0, #0x20\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,~{cc}"(i32 4) #2, !srcloc !10
  br label %17

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %9, %7 ], [ 0, %1 ]
  %9 = add i32 %8, 1
  tail call void asm sideeffect "wfi", "~{memory}"() #2, !srcloc !9
  %10 = load volatile i32, ptr @spear_pen_release, align 4
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %12, label %7

12:                                               ; preds = %7
  %13 = tail call i32 asm sideeffect "mrc\09p15, 0, $0, c1, c0, 0\0A\09orr\09$0, $0, $1\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A\09mrc\09p15, 0, $0, c1, c0, 1\0A\09orr\09$0, $0, #0x20\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,~{cc}"(i32 4) #2, !srcloc !10
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0, i32 noundef %9) #3
  br label %17

17:                                               ; preds = %15, %12, %5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { cold nounwind }

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
!8 = !{i64 462, i64 495, i64 537, i64 569, i64 593, i64 625, i64 657, i64 678}
!9 = !{i64 2152918648}
!10 = !{i64 846, i64 878, i64 899, i64 931, i64 963, i64 987}
