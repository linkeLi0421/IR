; ModuleID = '/llk/IR/arch/arm/mach-actions/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-actions/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [17 x i8] c"actions,s500-smp\00", align 1
@s500_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @s500_smp_prepare_cpus, ptr null, ptr @s500_smp_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_s500_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @s500_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"actions,s500-timer\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\013%s: missing timer\0A\00", align 1
@__func__.s500_smp_prepare_cpus = private unnamed_addr constant [22 x i8] c"s500_smp_prepare_cpus\00", align 1
@timer_base_addr = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"\013%s: could not map timer registers\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"actions,s500-sps\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"\013%s: missing sps\0A\00", align 1
@sps_base_addr = internal unnamed_addr global ptr null, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"\013%s: could not map sps registers\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"arm,cortex-a9-scu\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\013%s: missing scu\0A\00", align 1
@scu_base_addr = internal unnamed_addr global ptr null, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"\013%s: could not map scu registers\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__cpu_method_of_table_s500_smp], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @s500_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s500_smp_prepare_cpus) #5
  br label %38

6:                                                ; preds = %1
  %7 = tail call ptr @of_iomap(ptr noundef nonnull %2, i32 noundef 0) #4
  store ptr %7, ptr @timer_base_addr, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s500_smp_prepare_cpus) #5
  br label %38

11:                                               ; preds = %6
  %12 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.s500_smp_prepare_cpus) #5
  br label %38

16:                                               ; preds = %11
  %17 = tail call ptr @of_iomap(ptr noundef nonnull %12, i32 noundef 0) #4
  store ptr %17, ptr @sps_base_addr, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.s500_smp_prepare_cpus) #5
  br label %38

21:                                               ; preds = %16
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #6, !srcloc !8
  %23 = and i32 %22, -16711696
  %24 = icmp eq i32 %23, 1090568336
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7) #4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.s500_smp_prepare_cpus) #5
  br label %38

30:                                               ; preds = %25
  %31 = tail call ptr @of_iomap(ptr noundef nonnull %26, i32 noundef 0) #4
  store ptr %31, ptr @scu_base_addr, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.s500_smp_prepare_cpus) #5
  br label %38

35:                                               ; preds = %30
  %36 = tail call i32 @scu_get_core_count(ptr noundef nonnull %31) #4
  %37 = load ptr, ptr @scu_base_addr, align 4
  tail call void @scu_enable(ptr noundef %37) #4
  br label %38

38:                                               ; preds = %35, %33, %28, %21, %19, %14, %9, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s500_smp_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = icmp ugt i32 %0, 3
  br i1 %3, label %31, label %4

4:                                                ; preds = %2
  switch i32 %0, label %13 [
    i32 2, label %5
    i32 3, label %9
  ]

5:                                                ; preds = %4
  %6 = load ptr, ptr @sps_base_addr, align 4
  %7 = tail call i32 @owl_sps_set_pg(ptr noundef %6, i32 noundef 32, i32 noundef 2097152, i1 noundef zeroext true) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %31

9:                                                ; preds = %4
  %10 = load ptr, ptr @sps_base_addr, align 4
  %11 = tail call i32 @owl_sps_set_pg(ptr noundef %10, i32 noundef 64, i32 noundef 4194304, i1 noundef zeroext true) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %9, %5, %4
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 42949600) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  %15 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #6, !srcloc !10
  %16 = load ptr, ptr @timer_base_addr, align 4
  %17 = getelementptr i8, ptr %16, i32 80
  %18 = shl nuw nsw i32 %0, 2
  %19 = add nsw i32 %18, -4
  %20 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %15) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %21 = load ptr, ptr @timer_base_addr, align 4
  %22 = getelementptr i8, ptr %21, i32 92
  %23 = getelementptr i8, ptr %22, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 21930) #4, !srcloc !11
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #4
  tail call void @smp_send_reschedule(i32 noundef %0) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %25 = load ptr, ptr @timer_base_addr, align 4
  %26 = getelementptr i8, ptr %25, i32 80
  %27 = getelementptr i8, ptr %26, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %28 = load ptr, ptr @timer_base_addr, align 4
  %29 = getelementptr i8, ptr %28, i32 92
  %30 = getelementptr i8, ptr %29, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #4, !srcloc !11
  br label %31

31:                                               ; preds = %13, %9, %5, %2
  %32 = phi i32 [ 0, %13 ], [ %11, %9 ], [ %7, %5 ], [ -22, %2 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_get_core_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_send_reschedule(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_sps_set_pg(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #2

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
!8 = !{i64 2152672748}
!9 = !{i64 2152685427}
!10 = !{i64 2148727512, i64 2148727535, i64 2148727567, i64 2148727599, i64 2148727637, i64 2148727667}
!11 = !{i64 2384916}
!12 = !{i64 2152686204}
!13 = !{i64 2149164798}
!14 = !{i64 2149164873, i64 2149164900, i64 2149164947, i64 2149164969, i64 2149164997, i64 2149165017}
!15 = !{i64 2152686474}
!16 = !{i64 2152687225}
!17 = !{i64 2152687580}
