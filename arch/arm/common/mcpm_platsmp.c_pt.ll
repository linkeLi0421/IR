; ModuleID = '/llk/IR/arch/arm/common/mcpm_platsmp.c_pt.bc'
source_filename = "../arch/arm/common/mcpm_platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mcpm_smp_ops = internal constant %struct.smp_operations { ptr null, ptr null, ptr @mcpm_secondary_init, ptr @mcpm_boot_secondary, ptr @mcpm_cpu_kill, ptr @mcpm_cpu_die, ptr @mcpm_cpu_can_disable, ptr null }, section ".init.rodata", align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mcpm_smp_set_ops() local_unnamed_addr #0 section ".init.text" {
  tail call void @smp_set_ops(ptr noundef nonnull @mcpm_smp_ops) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_set_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcpm_secondary_init(i32 noundef %0) #2 {
  %2 = tail call i32 @mcpm_cpu_powered_up() #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcpm_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 255
  %6 = lshr i32 %4, 8
  %7 = and i32 %6, 255
  tail call void @mcpm_set_entry_vector(i32 noundef %5, i32 noundef %7, ptr noundef null) #4
  %8 = tail call i32 @mcpm_cpu_power_up(i32 noundef %5, i32 noundef %7) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  tail call void @mcpm_set_entry_vector(i32 noundef %5, i32 noundef %7, ptr noundef nonnull @secondary_startup) #4
  %11 = and i32 %0, 31
  %12 = add nuw nsw i32 %11, 1
  %13 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %12
  %14 = lshr i32 %0, 5
  %15 = sub nsw i32 0, %14
  %16 = getelementptr i32, ptr %13, i32 %15
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %16) #4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !9
  br label %17

17:                                               ; preds = %10, %2
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mcpm_cpu_kill(i32 noundef %0) #2 {
  %2 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 255
  %5 = lshr i32 %3, 8
  %6 = and i32 %5, 255
  %7 = tail call i32 @mcpm_wait_for_cpu_powerdown(i32 noundef %4, i32 noundef %6) #4
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mcpm_cpu_die(i32 noundef %0) #2 {
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #5, !srcloc !10
  %3 = and i32 %2, 255
  %4 = lshr i32 %2, 8
  %5 = and i32 %4, 255
  tail call void @mcpm_set_entry_vector(i32 noundef %3, i32 noundef %5, ptr noundef null) #4
  tail call void @mcpm_cpu_power_down() #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mcpm_cpu_can_disable(i32 noundef %0) #3 {
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcpm_cpu_powered_up() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_set_entry_vector(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcpm_cpu_power_up(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcpm_wait_for_cpu_powerdown(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_cpu_power_down() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

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
!8 = !{i64 2148817227}
!9 = !{i64 2148817302, i64 2148817329, i64 2148817376, i64 2148817398, i64 2148817426, i64 2148817446}
!10 = !{i64 2152495252}
