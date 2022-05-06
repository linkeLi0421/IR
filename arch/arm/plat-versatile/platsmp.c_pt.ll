; ModuleID = '/llk/IR/arch/arm/plat-versatile/platsmp.c_pt.bc'
source_filename = "../arch/arm/plat-versatile/platsmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@versatile_cpu_release = dso_local global i32 -1, align 4
@versatile_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @versatile_secondary_init(i32 noundef %0) local_unnamed_addr #0 {
  store volatile i32 -1, ptr @versatile_cpu_release, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #2, !srcloc !8
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %2(ptr noundef nonnull @versatile_cpu_release, i32 noundef 4) #2
  %3 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @versatile_cpu_release to i32), i32 -2130706432, i32 8454144) #3, !srcloc !9
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (i32, ptr @versatile_cpu_release, i32 1) to i32), i32 -2130706432, i32 8454144) #3, !srcloc !9
  %5 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(i32 noundef %3, i32 noundef %4) #2
  br label %8

8:                                                ; preds = %7, %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @versatile_lock) #2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !10
  %9 = load i16, ptr @versatile_lock, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr @versatile_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @versatile_boot_secondary(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @versatile_lock) #2
  %3 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  store volatile i32 %4, ptr @versatile_cpu_release, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #2, !srcloc !8
  %5 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %5(ptr noundef nonnull @versatile_cpu_release, i32 noundef 4) #2
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @versatile_cpu_release to i32), i32 -2130706432, i32 8454144) #3, !srcloc !9
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (i32, ptr @versatile_cpu_release, i32 1) to i32), i32 -2130706432, i32 8454144) #3, !srcloc !9
  %8 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void %8(i32 noundef %6, i32 noundef %7) #2
  br label %11

11:                                               ; preds = %10, %2
  %12 = and i32 %0, 31
  %13 = add nuw nsw i32 %12, 1
  %14 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %13
  %15 = lshr i32 %0, 5
  %16 = sub nsw i32 0, %15
  %17 = getelementptr i32, ptr %14, i32 %16
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %17) #2
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = sub i32 -100, %18
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = add i32 %19, %20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %26, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !14
  %24 = load volatile i32, ptr @versatile_cpu_release, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #2
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = add i32 %19, %28
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %23, label %31

31:                                               ; preds = %26, %23, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !10
  %32 = load i16, ptr @versatile_lock, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr @versatile_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #2, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #2, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #2, !srcloc !13
  %34 = load volatile i32, ptr @versatile_cpu_release, align 4
  %35 = icmp eq i32 %34, -1
  %36 = select i1 %35, i32 0, i32 -38
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }

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
!8 = !{i64 2152489609}
!9 = !{i64 2148727014, i64 2148727037, i64 2148727069, i64 2148727101, i64 2148727139, i64 2148727169}
!10 = !{i64 2149168476}
!11 = !{i64 2149164300}
!12 = !{i64 2149164375, i64 2149164402, i64 2149164449, i64 2149164471, i64 2149164499, i64 2149164519}
!13 = !{i64 2149191479}
!14 = !{i64 2152490738}
