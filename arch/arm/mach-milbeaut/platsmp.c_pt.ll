; ModuleID = '/llk/IR/arch/arm/mach-milbeaut/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-milbeaut/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@.str = private unnamed_addr constant [28 x i8] c"socionext,milbeaut-m10v-smp\00", align 1
@m10v_smp_ops = internal global %struct.smp_operations { ptr null, ptr @m10v_smp_init, ptr null, ptr @m10v_boot_secondary, ptr @m10v_cpu_kill, ptr @m10v_cpu_die, ptr null, ptr null }, section ".init.data", align 4
@__cpu_method_of_table_m10v_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @m10v_smp_ops }, section "__cpu_method_of_table", align 4
@__initcall__kmod_platsmp__247_147_m10v_pm_init7 = internal global ptr @m10v_pm_init, section ".initcall7.init", align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"socionext,milbeaut-smp-sram\00", align 1
@m10v_smp_base = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"\016MCPM boot on cpu_%u cluster_%u\0A\00", align 1
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"\016%s: cpu %u l_cpu %u cluster %u\0A\00", align 1
@__func__.m10v_boot_secondary = private unnamed_addr constant [20 x i8] c"m10v_boot_secondary\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"socionext,milbeaut-evb\00", align 1
@m10v_pm_ops = internal constant %struct.platform_suspend_ops { ptr @m10v_pm_valid, ptr null, ptr null, ptr null, ptr @m10v_pm_enter, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@phys_reset = internal unnamed_addr global ptr null, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__cpu_method_of_table_m10v_smp, ptr @__initcall__kmod_platsmp__247_147_m10v_pm_init7], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @m10v_pm_init() #0 section ".init.text" {
  %1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @suspend_set_ops(ptr noundef nonnull @m10v_pm_ops) #5
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @m10v_smp_init(i32 noundef %0) #1 {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @of_iomap(ptr noundef nonnull %2, i32 noundef 0) #5
  store ptr %5, ptr @m10v_smp_base, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #6, !srcloc !8
  %9 = and i32 %8, 255
  %10 = lshr i32 %8, 8
  %11 = and i32 %10, 255
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %9, i32 noundef %11) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %13 = load ptr, ptr @m10v_smp_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 305419896) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %14 = load ptr, ptr @m10v_smp_base, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 305419896) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %16 = load ptr, ptr @m10v_smp_base, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 305419896) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %18 = load ptr, ptr @m10v_smp_base, align 4
  %19 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 305419896) #5, !srcloc !10
  br label %20

20:                                               ; preds = %7, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m10v_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = load ptr, ptr @m10v_smp_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 255
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %24, label %10

10:                                               ; preds = %5
  %11 = lshr i32 %7, 8
  %12 = and i32 %11, 255
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.m10v_boot_secondary, i32 noundef %8, i32 noundef %0, i32 noundef %12) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #6, !srcloc !12
  %15 = load ptr, ptr @m10v_smp_base, align 4
  %16 = shl nuw nsw i32 %8, 2
  %17 = getelementptr i8, ptr %15, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #5, !srcloc !10
  %18 = and i32 %0, 31
  %19 = add nuw nsw i32 %18, 1
  %20 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %19
  %21 = lshr i32 %0, 5
  %22 = sub nsw i32 0, %21
  %23 = getelementptr i32, ptr %20, i32 %22
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %23) #5
  br label %24

24:                                               ; preds = %10, %5, %2
  %25 = phi i32 [ 0, %10 ], [ -6, %2 ], [ -22, %5 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m10v_cpu_kill(i32 noundef %0) #1 {
  %2 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %4 = load ptr, ptr @m10v_smp_base, align 4
  %5 = shl i32 %3, 2
  %6 = and i32 %5, 1020
  %7 = getelementptr i8, ptr %4, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 305419896) #5, !srcloc !10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @m10v_cpu_die(i32 noundef %0) #1 {
  %2 = tail call i32 @gic_cpu_if_down(i32 noundef 0) #5
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_louis \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "wfi", "~{memory}"() #5, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_cpu_if_down(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @m10v_pm_valid(i32 noundef %0) #4 {
  %2 = and i32 %0, -2
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m10v_pm_enter(i32 noundef %0) #1 {
  switch i32 %0, label %7 [
    i32 2, label %2
    i32 3, label %3
  ]

2:                                                ; preds = %1
  tail call void asm sideeffect "wfi", ""() #5, !srcloc !16
  br label %7

3:                                                ; preds = %1
  %4 = tail call i32 @cpu_pm_enter() #5
  %5 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @m10v_die) #5
  %6 = tail call i32 @cpu_pm_exit() #5
  br label %7

7:                                                ; preds = %3, %2, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @m10v_die(i32 noundef %0) #1 {
  tail call void @setup_mm_for_reboot() #5
  tail call void asm sideeffect "wfi", ""() #5, !srcloc !17
  %2 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 5), align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %3, i32 -2130706432, i32 8454144) #6, !srcloc !12
  %5 = inttoptr i32 %4 to ptr
  store ptr %5, ptr @phys_reset, align 4
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @cpu_resume to i32), i32 -2130706432, i32 8454144) #6, !srcloc !12
  tail call void %5(i32 noundef %6) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_mm_for_reboot() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_resume() #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
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
!8 = !{i64 2153537376}
!9 = !{i64 2153543408}
!10 = !{i64 2841918}
!11 = !{i64 2153541919}
!12 = !{i64 2148782890, i64 2148782913, i64 2148782945, i64 2148782977, i64 2148783015, i64 2148783045}
!13 = !{i64 2153544593}
!14 = !{i64 2153543608, i64 2153543625, i64 2153543655, i64 2153543703, i64 2153543746, i64 2153543794, i64 2153543808, i64 2153543858, i64 2153543906, i64 2153543964, i64 2153544012, i64 2153544026, i64 2153544040}
!15 = !{i64 2153544266}
!16 = !{i64 2734}
!17 = !{i64 2470}
