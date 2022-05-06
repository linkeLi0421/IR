; ModuleID = '/llk/IR/arch/arm/mach-mvebu/platsmp-a9.c_pt.bc'
source_filename = "../arch/arm/mach-mvebu/platsmp-a9.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }

@.str = private unnamed_addr constant [23 x i8] c"marvell,armada-375-smp\00", align 1
@mvebu_cortex_a9_smp_ops = internal constant %struct.smp_operations { ptr null, ptr null, ptr null, ptr @mvebu_cortex_a9_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_mvebu_armada_375_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @mvebu_cortex_a9_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"marvell,armada-380-smp\00", align 1
@armada_38x_smp_ops = internal constant %struct.smp_operations { ptr null, ptr null, ptr @armada_38x_secondary_init, ptr @mvebu_cortex_a9_boot_secondary, ptr @armada_38x_cpu_kill, ptr @armada_38x_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_mvebu_armada_380_smp = internal constant %struct.of_cpu_method { ptr @.str.1, ptr @armada_38x_smp_ops }, section "__cpu_method_of_table", align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"marvell,armada-390-smp\00", align 1
@__cpu_method_of_table_mvebu_armada_390_smp = internal constant %struct.of_cpu_method { ptr @.str.2, ptr @armada_38x_smp_ops }, section "__cpu_method_of_table", align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"\016Booting CPU %d\0A\00", align 1
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"marvell,armada375\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\013Could not start the secondary CPU: %d\0A\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__cpu_method_of_table_mvebu_armada_375_smp, ptr @__cpu_method_of_table_mvebu_armada_380_smp, ptr @__cpu_method_of_table_mvebu_armada_390_smp], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_cortex_a9_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %0) #4
  %4 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @mvebu_system_controller_set_cpu_boot_addr(ptr noundef nonnull @mvebu_cortex_a9_secondary_startup) #5
  br label %10

9:                                                ; preds = %2
  tail call void @mvebu_pmsu_set_cpu_boot_addr(i32 noundef %5, ptr noundef nonnull @mvebu_cortex_a9_secondary_startup) #5
  br label %10

10:                                               ; preds = %9, %8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #5, !srcloc !8
  %11 = and i32 %0, 31
  %12 = add nuw nsw i32 %11, 1
  %13 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %12
  %14 = lshr i32 %0, 5
  %15 = sub nsw i32 0, %14
  %16 = getelementptr i32, ptr %13, i32 %15
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %16) #5
  %17 = tail call i32 @mvebu_cpu_reset_deassert(i32 noundef %5) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %17) #4
  br label %21

21:                                               ; preds = %19, %10
  ret i32 %17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvebu_system_controller_set_cpu_boot_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvebu_cortex_a9_secondary_startup() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvebu_pmsu_set_cpu_boot_addr(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_cpu_reset_deassert(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_38x_secondary_init(i32 noundef %0) #0 {
  tail call void @mvebu_v7_pmsu_idle_exit() #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @armada_38x_cpu_kill(i32 noundef %0) #3 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_38x_cpu_die(i32 noundef %0) #0 {
  %2 = tail call i32 @armada_38x_do_cpu_suspend(i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mvebu_v7_pmsu_idle_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armada_38x_do_cpu_suspend(i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }

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
!8 = !{i64 2151335416}
