; ModuleID = '/llk/IR/arch/arm/mach-spear/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-spear/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@spear_pen_release = dso_local global i32 -1, align 4
@spear13xx_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr @spear13xx_smp_init_cpus, ptr @spear13xx_smp_prepare_cpus, ptr @spear13xx_secondary_init, ptr @spear13xx_boot_secondary, ptr null, ptr @spear13xx_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [53 x i8] c"\014SMP: %u cores greater than maximum (%u), clipping\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@boot_lock = internal global %struct.spinlock zeroinitializer, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @spear13xx_smp_init_cpus() #0 section ".init.text" {
  %1 = tail call i32 @scu_get_core_count(ptr noundef nonnull inttoptr (i32 -58720256 to ptr)) #4
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ugt i32 %1, %2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1, i32 noundef %2) #5
  %6 = load i32, ptr @nr_cpu_ids, align 4
  br label %7

7:                                                ; preds = %4, %0
  %8 = phi i32 [ %6, %4 ], [ %1, %0 ]
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %10, %7
  %11 = phi i32 [ %12, %10 ], [ 0, %7 ]
  tail call void @_set_bit(i32 noundef %11, ptr noundef nonnull @__cpu_possible_mask) #4
  %12 = add nuw i32 %11, 1
  %13 = icmp eq i32 %12, %8
  br i1 %13, label %14, label %10

14:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @spear13xx_smp_prepare_cpus(i32 noundef %0) #0 section ".init.text" {
  tail call void @scu_enable(ptr noundef nonnull inttoptr (i32 -58720256 to ptr)) #4
  %2 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @spear13xx_secondary_startup to i32), i32 -2130706432, i32 8454144) #6, !srcloc !8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -109050368 to ptr), i32 %2) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spear13xx_secondary_init(i32 noundef %0) #1 {
  store volatile i32 -1, ptr @spear_pen_release, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #4, !srcloc !10
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %2(ptr noundef nonnull @spear_pen_release, i32 noundef 4) #4
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @spear_pen_release to i32), i32 -2130706432, i32 8454144) #6, !srcloc !8
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (i32, ptr @spear_pen_release, i32 1) to i32), i32 -2130706432, i32 8454144) #6, !srcloc !8
  %5 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(i32 noundef %3, i32 noundef %4) #4
  br label %8

8:                                                ; preds = %7, %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @boot_lock) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  %9 = load i16, ptr @boot_lock, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear13xx_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @boot_lock) #4
  store volatile i32 %0, ptr @spear_pen_release, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #4, !srcloc !10
  %3 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %3(ptr noundef nonnull @spear_pen_release, i32 noundef 4) #4
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @spear_pen_release to i32), i32 -2130706432, i32 8454144) #6, !srcloc !8
  %5 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (i32, ptr @spear_pen_release, i32 1) to i32), i32 -2130706432, i32 8454144) #6, !srcloc !8
  %6 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void %6(i32 noundef %4, i32 noundef %5) #4
  br label %9

9:                                                ; preds = %8, %2
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = sub i32 -100, %10
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = add i32 %11, %12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %18, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  %16 = load volatile i32, ptr @spear_pen_release, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #4
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = add i32 %11, %20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %15, label %23

23:                                               ; preds = %18, %15, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  %24 = load i16, ptr @boot_lock, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr @boot_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !14
  %26 = load volatile i32, ptr @spear_pen_release, align 4
  %27 = icmp eq i32 %26, -1
  %28 = select i1 %27, i32 0, i32 -38
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spear13xx_cpu_die(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_get_core_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spear13xx_secondary_startup() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

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
!8 = !{i64 2148727432, i64 2148727455, i64 2148727487, i64 2148727519, i64 2148727557, i64 2148727587}
!9 = !{i64 2384836}
!10 = !{i64 2152920557}
!11 = !{i64 2149168894}
!12 = !{i64 2149164718}
!13 = !{i64 2149164793, i64 2149164820, i64 2149164867, i64 2149164889, i64 2149164917, i64 2149164937}
!14 = !{i64 2149191897}
!15 = !{i64 2152921656}
