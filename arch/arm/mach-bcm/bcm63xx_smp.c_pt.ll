; ModuleID = '/llk/IR/arch/arm/mach-bcm/bcm63xx_smp.c_pt.bc'
source_filename = "../arch/arm/mach-bcm/bcm63xx_smp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_cpu_method = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }

@.str = private unnamed_addr constant [14 x i8] c"brcm,bcm63138\00", align 1
@bcm63138_smp_ops = internal constant %struct.smp_operations { ptr null, ptr @bcm63138_smp_prepare_cpus, ptr null, ptr @bcm63138_smp_boot_secondary, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@__cpu_method_of_table_bcm63138_smp = internal constant %struct.of_cpu_method { ptr @.str, ptr @bcm63138_smp_ops }, section "__cpu_method_of_table", align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"\014SMP: Cortex-A9 SCU setup failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\013no configuration base address register!\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\013hardware reports only one core\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"\013failed to remap config base (%lu/%u) for SCU\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"\014SMP: %u cores greater than maximum (%u), clipping\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"\014SMP: secondary CPUs lack VFP unit, disabling VFP\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"arch/arm/mach-bcm/bcm63xx_smp.c\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"SMP: kernel-mode NEON enabled, restricting to UP\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@bcm63138_bootlut_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm63138-bootlut\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"\013SMP: unable to find bcm63138 boot LUT node\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"\013SMP: unable to remap boot LUT base register\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"\013SMP: failed to locate secondary CPU%d node\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__cpu_method_of_table_bcm63138_smp], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm63138_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc i32 @scu_a9_enable() #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #5
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm63138_smp_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @bcm63138_bootlut_ids, ptr noundef null) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #5
  br label %23

7:                                                ; preds = %2
  %8 = tail call ptr @of_iomap(ptr noundef nonnull %3, i32 noundef 0) #6
  tail call void @of_node_put(ptr noundef nonnull %3) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #5
  br label %23

12:                                               ; preds = %7
  %13 = tail call ptr @of_get_cpu_node(i32 noundef %0, ptr noundef null) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %0) #5
  br label %21

17:                                               ; preds = %12
  %18 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup to i32), i32 -2130706432, i32 8454144) #7, !srcloc !8
  %19 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #6, !srcloc !9
  %20 = tail call i32 @bcm63xx_pmb_power_on_cpu(ptr noundef nonnull %13) #6
  tail call void @of_node_put(ptr noundef nonnull %13) #6
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i32 [ %20, %17 ], [ -19, %15 ]
  tail call void @iounmap(ptr noundef nonnull %8) #6
  br label %23

23:                                               ; preds = %21, %10, %5
  %24 = phi i32 [ %22, %21 ], [ -12, %10 ], [ -19, %5 ]
  ret i32 %24
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @scu_a9_enable() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #7, !srcloc !10
  %2 = and i32 %1, -16711696
  %3 = icmp eq i32 %2, 1090568336
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #5
  br label %32

6:                                                ; preds = %0
  %7 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #7, !srcloc !11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #5
  br label %32

11:                                               ; preds = %6
  %12 = tail call ptr @ioremap(i32 noundef %7, i32 noundef 88) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %7, i32 noundef 88) #5
  br label %32

16:                                               ; preds = %11
  tail call void @scu_enable(ptr noundef nonnull %12) #6
  %17 = tail call i32 @scu_get_core_count(ptr noundef nonnull %12) #6
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %17, i32 noundef %18) #5
  %22 = load i32, ptr @nr_cpu_ids, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i32 [ %22, %20 ], [ %17, %16 ]
  %25 = icmp ugt i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #5
  tail call void @vfp_disable() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 85, i32 noundef 9, ptr noundef nonnull @.str.8) #6
  br label %30

28:                                               ; preds = %23
  %29 = icmp eq i32 %24, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %28, %26
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull @__cpu_possible_mask) #6
  br label %31

31:                                               ; preds = %30, %28
  tail call void @iounmap(ptr noundef nonnull %12) #6
  br label %32

32:                                               ; preds = %31, %14, %9, %4
  %33 = phi i32 [ 0, %31 ], [ -12, %14 ], [ -2, %9 ], [ -6, %4 ]
  ret i32 %33
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_get_core_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_disable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm63xx_pmb_power_on_cpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }

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
!8 = !{i64 2148728212, i64 2148728235, i64 2148728267, i64 2148728299, i64 2148728337, i64 2148728367}
!9 = !{i64 2385616}
!10 = !{i64 2152309546}
!11 = !{i64 4815958}
