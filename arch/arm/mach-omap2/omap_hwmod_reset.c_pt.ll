; ModuleID = '/llk/IR/arch/arm/mach-omap2/omap_hwmod_reset.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_hwmod_reset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_hwmod_rtc_unlock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #2, !srcloc !8
  br label %3

3:                                                ; preds = %8, %1
  %4 = phi i32 [ 0, %1 ], [ %10, %8 ]
  %5 = tail call i32 @omap_hwmod_read(ptr noundef %0, i16 noundef zeroext 68) #2
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #2
  %10 = add nuw nsw i32 %4, 1
  %11 = icmp eq i32 %10, 50
  br i1 %11, label %12, label %3

12:                                               ; preds = %8, %3
  tail call void @omap_hwmod_write(i32 noundef -2082010349, ptr noundef %0, i16 noundef zeroext 108) #2
  tail call void @omap_hwmod_write(i32 noundef -1784352288, ptr noundef %0, i16 noundef zeroext 112) #2
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #2, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_hwmod_write(i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_hwmod_rtc_lock(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #2, !srcloc !8
  br label %3

3:                                                ; preds = %8, %1
  %4 = phi i32 [ 0, %1 ], [ %10, %8 ]
  %5 = tail call i32 @omap_hwmod_read(ptr noundef %0, i16 noundef zeroext 68) #2
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #2
  %10 = add nuw nsw i32 %4, 1
  %11 = icmp eq i32 %10, 50
  br i1 %11, label %12, label %3

12:                                               ; preds = %8, %3
  tail call void @omap_hwmod_write(i32 noundef 0, ptr noundef %0, i16 noundef zeroext 108) #2
  tail call void @omap_hwmod_write(i32 noundef 0, ptr noundef %0, i16 noundef zeroext 112) #2
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #2, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!8 = !{i64 306938, i64 306999}
!9 = !{i64 309955}
