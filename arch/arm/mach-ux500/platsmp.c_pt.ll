; ModuleID = '/llk/IR/arch/arm/mach-ux500/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-ux500/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }

@.str = private unnamed_addr constant [15 x i8] c"ste,dbx500-smp\00", align 1
@ux500_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @ux500_smp_prepare_cpus, ptr null, ptr @ux500_boot_secondary, ptr null, ptr @ux500_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_ux500_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @ux500_smp_ops }, section "__cpu_method_of_table", align 4
@ux500_smp_prepare_cpus.scu_base = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ste,dbx500-backupram\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\013No backupram base address\0A\00", align 1
@backupram = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"\013No backupram remap\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"arm,cortex-a9-scu\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"\013No SCU base address\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\013No SCU remap\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__cpu_method_of_table_ux500_smp], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ux500_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #5
  br label %33

6:                                                ; preds = %1
  %7 = tail call ptr @of_iomap(ptr noundef nonnull %2, i32 noundef 0) #4
  store ptr %7, ptr @backupram, align 4
  tail call void @of_node_put(ptr noundef nonnull %2) #4
  %8 = load ptr, ptr @backupram, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #5
  br label %33

12:                                               ; preds = %6
  %13 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4) #4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #5
  br label %33

17:                                               ; preds = %12
  %18 = tail call ptr @of_iomap(ptr noundef nonnull %13, i32 noundef 0) #4
  store ptr %18, ptr @ux500_smp_prepare_cpus.scu_base, align 4
  tail call void @of_node_put(ptr noundef nonnull %13) #4
  %19 = load ptr, ptr @ux500_smp_prepare_cpus.scu_base, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #5
  br label %33

23:                                               ; preds = %17
  tail call void @scu_enable(ptr noundef nonnull %19) #4
  %24 = load ptr, ptr @ux500_smp_prepare_cpus.scu_base, align 4
  %25 = tail call i32 @scu_get_core_count(ptr noundef %24) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %27, %23
  %28 = phi i32 [ %29, %27 ], [ 0, %23 ]
  tail call void @_set_bit(i32 noundef %28, ptr noundef nonnull @__cpu_possible_mask) #4
  %29 = add nuw i32 %28, 1
  %30 = icmp eq i32 %29, %25
  br i1 %30, label %31, label %27

31:                                               ; preds = %27, %23
  %32 = load ptr, ptr @ux500_smp_prepare_cpus.scu_base, align 4
  tail call void @iounmap(ptr noundef %32) #4
  br label %33

33:                                               ; preds = %31, %21, %15, %10, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ux500_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #6, !srcloc !9
  %4 = load ptr, ptr @backupram, align 4
  %5 = getelementptr i8, ptr %4, i32 8180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr @backupram, align 4
  %7 = getelementptr i8, ptr %6, i32 8176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -1577128703) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %8 = and i32 %0, 31
  %9 = add nuw nsw i32 %8, 1
  %10 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %9
  %11 = lshr i32 %0, 5
  %12 = sub nsw i32 0, %11
  %13 = getelementptr i32, ptr %10, i32 %12
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %13) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ux500_cpu_die(i32 noundef %0) #1 {
  tail call void asm sideeffect "wfi", "~{memory}"() #4, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_get_core_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{i64 2152688543}
!9 = !{i64 2148726548, i64 2148726571, i64 2148726603, i64 2148726635, i64 2148726673, i64 2148726703}
!10 = !{i64 3614516}
!11 = !{i64 2152689279}
!12 = !{i64 2152689537}
!13 = !{i64 2152689617}
