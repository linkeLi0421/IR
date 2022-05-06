; ModuleID = '/llk/IR/arch/arm/plat-versatile/hotplug.c_pt.bc'
source_filename = "../arch/arm/plat-versatile/hotplug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

@.str = private unnamed_addr constant [35 x i8] c"\014CPU%u: %u spurious wakeup calls\0A\00", align 1
@versatile_cpu_release = external dso_local global i32, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @versatile_immitation_cpu_die(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 asm sideeffect "mcr\09p15, 0, $1, c7, c5, 0\0A\09mcr\09p15, 0, $1, c7, c10, 4\0A\09mrc\09p15, 0, $0, c1, c0, 1\0A\09bic\09$0, $0, $3\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A\09mrc\09p15, 0, $0, c1, c0, 0\0A\09bic\09$0, $0, $2\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A", "=&r,r,Ir,Ir,~{cc}"(i32 0, i32 4, i32 %1) #2, !srcloc !8
  tail call void asm sideeffect "wfi", "~{memory}"() #2, !srcloc !9
  %4 = load volatile i32, ptr @versatile_cpu_release, align 4
  %5 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call i32 asm sideeffect "mrc\09p15, 0, $0, c1, c0, 0\0A\09orr\09$0, $0, $1\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A\09mrc\09p15, 0, $0, c1, c0, 1\0A\09orr\09$0, $0, $2\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,Ir,~{cc}"(i32 4, i32 %1) #2, !srcloc !10
  br label %21

10:                                               ; preds = %10, %2
  %11 = phi i32 [ %12, %10 ], [ 0, %2 ]
  %12 = add i32 %11, 1
  tail call void asm sideeffect "wfi", "~{memory}"() #2, !srcloc !9
  %13 = load volatile i32, ptr @versatile_cpu_release, align 4
  %14 = load i32, ptr %5, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %10

16:                                               ; preds = %10
  %17 = tail call i32 asm sideeffect "mrc\09p15, 0, $0, c1, c0, 0\0A\09orr\09$0, $0, $1\0A\09mcr\09p15, 0, $0, c1, c0, 0\0A\09mrc\09p15, 0, $0, c1, c0, 1\0A\09orr\09$0, $0, $2\0A\09mcr\09p15, 0, $0, c1, c0, 1\0A", "=&r,Ir,Ir,~{cc}"(i32 4, i32 %1) #2, !srcloc !10
  %18 = icmp eq i32 %12, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0, i32 noundef %12) #3
  br label %21

21:                                               ; preds = %19, %16, %8
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
!8 = !{i64 618, i64 650, i64 715, i64 747, i64 768, i64 800, i64 832, i64 853}
!9 = !{i64 2151140203}
!10 = !{i64 1075, i64 1107, i64 1128, i64 1160, i64 1192, i64 1213}
