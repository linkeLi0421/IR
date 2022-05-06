; ModuleID = '/llk/IR/arch/arm/mach-zynq/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-zynq/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zynq_cpun_start:\09\09\09\09\09"
module asm "\09.asciz \09\22zynq_cpun_start\22\09\09\09\09\09"
module asm "__kstrtabns_zynq_cpun_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@zynq_secondary_trampoline_end = external dso_local global i8, align 1
@zynq_secondary_trampoline = external dso_local global i8, align 1
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@zynq_cpun_start.zero = internal unnamed_addr global ptr null, align 4
@zynq_secondary_trampoline_jump = external dso_local global i8, align 1
@.str = private unnamed_addr constant [38 x i8] c"\014BOOTUP jump vectors not accessible\0A\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"\014Can't start CPU%d: Wrong starting address %x\0A\00", align 1
@__kstrtab_zynq_cpun_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_zynq_cpun_start = external dso_local constant [0 x i8], align 1
@__ksymtab_zynq_cpun_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zynq_cpun_start to i32), ptr @__kstrtab_zynq_cpun_start, ptr @__kstrtabns_zynq_cpun_start }, section "___ksymtab+zynq_cpun_start", align 4
@zynq_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr @zynq_smp_init_cpus, ptr @zynq_smp_prepare_cpus, ptr @zynq_secondary_init, ptr @zynq_boot_secondary, ptr @zynq_cpu_kill, ptr @zynq_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@zynq_scu_base = external dso_local local_unnamed_addr global ptr, align 4
@ncores = internal unnamed_addr global i32 0, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_zynq_cpun_start], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zynq_cpun_start(i32 noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %0, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = icmp eq i32 %0, 0
  %9 = icmp uge i32 %0, sub (i32 ptrtoint (ptr @zynq_secondary_trampoline_end to i32), i32 ptrtoint (ptr @zynq_secondary_trampoline to i32))
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  tail call void @zynq_slcr_cpu_stop(i32 noundef %4) #5
  br i1 %8, label %32, label %12

12:                                               ; preds = %11
  %13 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 -1073741824, i32 -2130706432, i32 8454144) #6, !srcloc !8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @ioremap(i32 noundef 0, i32 noundef sub (i32 ptrtoint (ptr @zynq_secondary_trampoline_end to i32), i32 ptrtoint (ptr @zynq_secondary_trampoline to i32))) #5
  store ptr %16, ptr @zynq_cpun_start.zero, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %35

20:                                               ; preds = %12
  store ptr inttoptr (i32 -1073741824 to ptr), ptr @zynq_cpun_start.zero, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi ptr [ %16, %15 ], [ inttoptr (i32 -1073741824 to ptr), %20 ]
  tail call void @mmiocpy(ptr noundef nonnull %22, ptr noundef nonnull @zynq_secondary_trampoline, i32 noundef sub (i32 ptrtoint (ptr @zynq_secondary_trampoline_jump to i32), i32 ptrtoint (ptr @zynq_secondary_trampoline to i32))) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %23 = load ptr, ptr @zynq_cpun_start.zero, align 4
  %24 = getelementptr i8, ptr %23, i32 sub (i32 ptrtoint (ptr @zynq_secondary_trampoline_jump to i32), i32 ptrtoint (ptr @zynq_secondary_trampoline to i32))
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %0) #5, !srcloc !10
  %25 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %25() #5
  %26 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  tail call void %26(i32 noundef 0, i32 noundef sub (i32 ptrtoint (ptr @zynq_secondary_trampoline_end to i32), i32 ptrtoint (ptr @zynq_secondary_trampoline to i32))) #5
  br label %29

29:                                               ; preds = %28, %21
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #5, !srcloc !11
  br i1 %14, label %32, label %30

30:                                               ; preds = %29
  %31 = load ptr, ptr @zynq_cpun_start.zero, align 4
  tail call void @iounmap(ptr noundef %31) #5
  br label %32

32:                                               ; preds = %30, %29, %11
  tail call void @zynq_slcr_cpu_start(i32 noundef %4) #5
  br label %35

33:                                               ; preds = %7, %2
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %0) #7
  br label %35

35:                                               ; preds = %33, %32, %18
  %36 = phi i32 [ -1, %33 ], [ 0, %32 ], [ -1, %18 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zynq_slcr_cpu_stop(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zynq_slcr_cpu_start(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @zynq_smp_init_cpus() #3 section ".init.text" {
  %1 = load ptr, ptr @zynq_scu_base, align 4
  %2 = tail call i32 @scu_get_core_count(ptr noundef %1) #5
  store i32 %2, ptr @ncores, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %6, %4 ], [ 0, %0 ]
  tail call void @_set_bit(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #5
  %6 = add nuw nsw i32 %5, 1
  %7 = load i32, ptr @ncores, align 4
  %8 = icmp slt i32 %6, %7
  %9 = icmp ult i32 %5, 15
  %10 = and i1 %9, %8
  br i1 %10, label %4, label %11

11:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @zynq_smp_prepare_cpus(i32 noundef %0) #3 section ".init.text" {
  %2 = load ptr, ptr @zynq_scu_base, align 4
  tail call void @scu_enable(ptr noundef %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zynq_secondary_init(i32 noundef %0) #0 {
  tail call void asm sideeffect "mrc  p15, 0, r12, c15, c0, 0\0Aorr  r12, r12, #1\0Amcr  p15, 0, r12, c15, c0, 0\0A", "~{r12}"() #5, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @secondary_startup_arm to i32), i32 -2130706432, i32 8454144) #6, !srcloc !8
  %4 = tail call i32 @zynq_cpun_start(i32 noundef %3, i32 noundef %0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @zynq_cpu_kill(i32 noundef %0) #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = add i32 %2, 5
  br label %4

4:                                                ; preds = %6, %1
  %5 = tail call zeroext i1 @zynq_slcr_cpu_state_read(i32 noundef %0) #5
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = sub i32 %3, %7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %11, label %4

10:                                               ; preds = %4
  tail call void @zynq_slcr_cpu_stop(i32 noundef %0) #5
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi i32 [ 1, %10 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @zynq_cpu_die(i32 noundef %0) #4 {
  tail call void @zynq_slcr_cpu_state_write(i32 noundef %0, i1 noundef zeroext true) #5
  br label %2

2:                                                ; preds = %2, %1
  %3 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %4 = tail call i32 %3() #5
  br label %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_get_core_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup_arm() #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zynq_slcr_cpu_state_read(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zynq_slcr_cpu_state_write(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2148524954, i64 2148524977, i64 2148525009, i64 2148525041, i64 2148525079, i64 2148525109}
!9 = !{i64 2152706403}
!10 = !{i64 998573}
!11 = !{i64 2152706721}
!12 = !{i64 5221259, i64 5221301, i64 5221331}
