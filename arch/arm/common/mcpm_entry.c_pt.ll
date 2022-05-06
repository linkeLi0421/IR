; ModuleID = '/llk/IR/arch/arm/common/mcpm_entry.c_pt.bc'
source_filename = "../arch/arm/common/mcpm_entry.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcpm_is_available:\09\09\09\09\09"
module asm "\09.asciz \09\22mcpm_is_available\22\09\09\09\09\09"
module asm "__kstrtabns_mcpm_is_available:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.sync_struct = type { [4 x %struct.mcpm_sync_struct] }
%struct.mcpm_sync_struct = type { [4 x %struct.anon.63], i8, [63 x i8], i8, [63 x i8] }
%struct.anon.63 = type { i8, [63 x i8] }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mcpm_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mcpm_entry_vectors = external dso_local global [4 x [4 x i32]], align 4
@mcpm_entry_early_pokes = external dso_local global [4 x [4 x [2 x i32]]], align 4
@platform_ops = internal unnamed_addr global ptr null, align 4
@__kstrtab_mcpm_is_available = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcpm_is_available = external dso_local constant [0 x i8], align 1
@__ksymtab_mcpm_is_available = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcpm_is_available to i32), ptr @__kstrtab_mcpm_is_available, ptr @__kstrtabns_mcpm_is_available }, section "___ksymtab_gpl+mcpm_is_available", align 4
@mcpm_lock = internal global %struct.arch_spinlock_t zeroinitializer, align 4
@mcpm_cpu_use_count = internal unnamed_addr global [4 x [4 x i32]] zeroinitializer, align 4
@mcpm_cpu_power_down.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [29 x i8] c"arch/arm/common/mcpm_entry.c\00", align 1
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@mcpm_wait_for_cpu_powerdown.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"\014%s: cpu %u, cluster %u failed to power down (%d)\0A\00", align 1
@__func__.mcpm_wait_for_cpu_powerdown = private unnamed_addr constant [28 x i8] c"mcpm_wait_for_cpu_powerdown\00", align 1
@mcpm_cpu_suspend.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\013%s returned %d\0A\00", align 1
@__func__.mcpm_loopback = private unnamed_addr constant [14 x i8] c"mcpm_loopback\00", align 1
@mcpm_sync = dso_local global %struct.sync_struct zeroinitializer, align 64
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@mcpm_power_up_setup_phys = external dso_local global i32, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_mcpm_is_available], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mcpm_set_entry_vector(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = ptrtoint ptr %2 to i32
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %6, i32 -2130706432, i32 8454144) #8, !srcloc !8
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ %7, %5 ], [ 0, %3 ]
  %10 = getelementptr [4 x [4 x i32]], ptr @mcpm_entry_vectors, i32 0, i32 %1, i32 %0
  store i32 %9, ptr %10, align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %11(ptr noundef %10, i32 noundef 4) #9
  %12 = ptrtoint ptr %10 to i32
  %13 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %12, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %14 = getelementptr i8, ptr %10, i32 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %15, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %17 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %8
  tail call void %17(i32 noundef %13, i32 noundef %16) #9
  br label %20

20:                                               ; preds = %19, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mcpm_set_early_poke(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr [4 x [4 x [2 x i32]]], ptr @mcpm_entry_early_pokes, i32 0, i32 %1, i32 %0
  store i32 %2, ptr %5, align 4
  %6 = getelementptr i32, ptr %5, i32 1
  store i32 %3, ptr %6, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %7(ptr noundef %5, i32 noundef 8) #9
  %8 = ptrtoint ptr %5 to i32
  %9 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %8, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %10 = getelementptr i8, ptr %5, i32 8
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %11, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %13 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  tail call void %13(i32 noundef %9, i32 noundef %12) #9
  br label %16

16:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local i32 @mcpm_platform_register(ptr noundef %0) local_unnamed_addr #1 section ".init.text" {
  %2 = load ptr, ptr @platform_ops, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr %0, ptr @platform_ops, align 4
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i32 [ 0, %4 ], [ -16, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mcpm_is_available() #2 {
  %1 = load ptr, ptr @platform_ops, align 4
  %2 = icmp ne ptr %1, null
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mcpm_cpu_power_up(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @platform_ops, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %2
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #9, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @mcpm_lock) #9, !srcloc !10
  %6 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @mcpm_lock, i32 65536) #9, !srcloc !11
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = lshr i32 %7, 16
  %9 = and i32 %7, 65535
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %5
  tail call void asm sideeffect "wfe", "~{memory}"() #9, !srcloc !12
  %12 = load volatile i16, ptr @mcpm_lock, align 4
  %13 = zext i16 %12 to i32
  %14 = icmp eq i32 %8, %13
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %16 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %1, i32 %0
  %17 = load i32, ptr %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %1, i32 0
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %1, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %1, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %1, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %17, 1
  store i32 %27, ptr %16, align 4
  %28 = icmp ugt i32 %17, 1
  br i1 %28, label %29, label %30, !prof !14

29:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/common/mcpm_entry.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 225, 0\0A.popsection", ""() #9, !srcloc !15
  unreachable

30:                                               ; preds = %15
  %31 = or i32 %22, %20
  %32 = or i32 %31, %24
  %33 = or i32 %32, %26
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load ptr, ptr @platform_ops, align 4
  %37 = getelementptr inbounds %struct.mcpm_platform_ops, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(i32 noundef %1) #9
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i32 [ %39, %35 ], [ 0, %30 ]
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %18, i1 true, i1 %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @platform_ops, align 4
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(i32 noundef %0, i32 noundef %1) #9
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i32 [ %41, %40 ], [ %47, %44 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %50 = load i16, ptr @mcpm_lock, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr @mcpm_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !19
  br label %52

52:                                               ; preds = %48, %2
  %53 = phi i32 [ %49, %48 ], [ -49, %2 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mcpm_cpu_power_down() local_unnamed_addr #0 {
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #8, !srcloc !20
  %2 = and i32 %1, 255
  %3 = lshr i32 %1, 8
  %4 = and i32 %3, 255
  %5 = load ptr, ptr @platform_ops, align 4
  %6 = icmp eq ptr %5, null
  %7 = load i1, ptr @mcpm_cpu_power_down.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !14

10:                                               ; preds = %0
  store i1 true, ptr @mcpm_cpu_power_down.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef null) #9
  br label %11

11:                                               ; preds = %10, %0
  br i1 %6, label %12, label %13

12:                                               ; preds = %11
  ret void

13:                                               ; preds = %11
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !21
  %15 = and i32 %14, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !14

17:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/common/mcpm_entry.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 251, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

18:                                               ; preds = %13
  tail call void @setup_mm_for_reboot() #9
  tail call fastcc void @__mcpm_cpu_going_down(i32 noundef %2, i32 noundef %4)
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @mcpm_lock) #9, !srcloc !10
  %19 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @mcpm_lock, i32 65536) #9, !srcloc !11
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = lshr i32 %20, 16
  %22 = and i32 %20, 65535
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %24, %18
  tail call void asm sideeffect "wfe", "~{memory}"() #9, !srcloc !12
  %25 = load volatile i16, ptr @mcpm_lock, align 4
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %28, label %24

28:                                               ; preds = %24, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %29 = tail call fastcc i32 @__mcpm_cluster_state(i32 noundef %4)
  %30 = icmp eq i32 %29, 34
  br i1 %30, label %32, label %31, !prof !23

31:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/common/mcpm_entry.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 257, 0\0A.popsection", ""() #9, !srcloc !24
  unreachable

32:                                               ; preds = %28
  %33 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %4, i32 %2
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -1
  store i32 %35, ptr %33, align 4
  %36 = icmp eq i32 %35, 0
  %37 = icmp ugt i32 %35, 1
  br i1 %37, label %38, label %39, !prof !14

38:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/common/mcpm_entry.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #9, !srcloc !25
  unreachable

39:                                               ; preds = %32
  %40 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %4, i32 0
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %4, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, %41
  %45 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %4, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %44, %46
  %48 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %4, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %47, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %39
  %53 = tail call fastcc zeroext i1 @__mcpm_outbound_enter_critical(i32 noundef %2, i32 noundef %4)
  br i1 %53, label %54, label %66

54:                                               ; preds = %52
  %55 = load ptr, ptr @platform_ops, align 4
  %56 = getelementptr inbounds %struct.mcpm_platform_ops, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  tail call void %57(i32 noundef %2, i32 noundef %4) #9
  %58 = load ptr, ptr @platform_ops, align 4
  %59 = getelementptr inbounds %struct.mcpm_platform_ops, ptr %58, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  tail call void %60(i32 noundef %4) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %61 = load i16, ptr @mcpm_lock, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr @mcpm_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  %63 = load ptr, ptr @platform_ops, align 4
  %64 = getelementptr inbounds %struct.mcpm_platform_ops, ptr %63, i32 0, i32 6
  %65 = load ptr, ptr %64, align 4
  tail call void %65() #9
  tail call fastcc void @__mcpm_outbound_leave_critical(i32 noundef %4, i32 noundef 33)
  br label %77

66:                                               ; preds = %52, %39
  br i1 %36, label %67, label %71

67:                                               ; preds = %66
  %68 = load ptr, ptr @platform_ops, align 4
  %69 = getelementptr inbounds %struct.mcpm_platform_ops, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  tail call void %70(i32 noundef %2, i32 noundef %4) #9
  br label %71

71:                                               ; preds = %67, %66
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %72 = load i16, ptr @mcpm_lock, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr @mcpm_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  %74 = load ptr, ptr @platform_ops, align 4
  %75 = getelementptr inbounds %struct.mcpm_platform_ops, ptr %74, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  tail call void %76() #9
  br label %77

77:                                               ; preds = %71, %54
  tail call fastcc void @__mcpm_cpu_down(i32 noundef %2, i32 noundef %4)
  br i1 %36, label %78, label %79

78:                                               ; preds = %77
  tail call void asm sideeffect "wfi", "~{memory}"() #9, !srcloc !26
  br label %79

79:                                               ; preds = %78, %77
  %80 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 5), align 4
  %81 = ptrtoint ptr %80 to i32
  %82 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %81, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %83 = inttoptr i32 %82 to ptr
  %84 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @mcpm_entry_point to i32), i32 -2130706432, i32 8454144) #8, !srcloc !8
  tail call void %83(i32 noundef %84, i1 noundef zeroext false) #10
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_mm_for_reboot() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__mcpm_cpu_going_down(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %1
  %4 = getelementptr [4 x %struct.anon.63], ptr %3, i32 0, i32 %0
  store i8 20, ptr %4, align 64
  %5 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %5(ptr noundef %4, i32 noundef 1) #9
  %6 = ptrtoint ptr %4 to i32
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %6, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %8 = getelementptr i8, ptr %4, i32 1
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %9, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %11 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void %11(i32 noundef %7, i32 noundef %10) #9
  br label %14

14:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__mcpm_cluster_state(i32 noundef %0) unnamed_addr #0 {
  %2 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %0, i32 1
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %6(ptr noundef %2, i32 noundef 1) #9
  %7 = ptrtoint ptr %2 to i32
  %8 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %7, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %9 = getelementptr i8, ptr %2, i32 1
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %10, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %12 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  tail call void %12(i32 noundef %8, i32 noundef %11) #9
  br label %15

15:                                               ; preds = %14, %5, %1
  %16 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %16(ptr noundef %2, i32 noundef 1) #9
  %17 = load i8, ptr %2, align 64
  %18 = sext i8 %17 to i32
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__mcpm_outbound_enter_critical(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %1
  %4 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %1, i32 1
  store i8 35, ptr %4, align 64
  %5 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %5(ptr noundef %4, i32 noundef 1) #9
  %6 = ptrtoint ptr %4 to i32
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %6, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %8 = getelementptr i8, ptr %4, i32 1
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %9, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %11 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void %11(i32 noundef %7, i32 noundef %10) #9
  br label %14

14:                                               ; preds = %13, %2
  %15 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %1, i32 3
  %16 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %19(ptr noundef %15, i32 noundef 1) #9
  %20 = ptrtoint ptr %15 to i32
  %21 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %20, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %22 = getelementptr i8, ptr %15, i32 1
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %23, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %25 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  tail call void %25(i32 noundef %21, i32 noundef %24) #9
  br label %28

28:                                               ; preds = %27, %18, %14
  %29 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %29(ptr noundef %15, i32 noundef 1) #9
  %30 = load i8, ptr %15, align 64
  %31 = icmp eq i8 %30, 50
  br i1 %31, label %129, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %36(ptr noundef %3, i32 noundef 256) #9
  %37 = ptrtoint ptr %3 to i32
  %38 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %37, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %39 = getelementptr i8, ptr %3, i32 256
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %40, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %42 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  tail call void %42(i32 noundef %38, i32 noundef %41) #9
  br label %45

45:                                               ; preds = %44, %35, %32
  %46 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %46(ptr noundef %3, i32 noundef 256) #9
  %47 = icmp eq i32 %0, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %45
  %49 = ptrtoint ptr %3 to i32
  %50 = getelementptr i8, ptr %3, i32 1
  %51 = ptrtoint ptr %50 to i32
  br label %52

52:                                               ; preds = %64, %48
  %53 = load i8, ptr %3, align 64
  switch i8 %53, label %129 [
    i8 20, label %54
    i8 17, label %66
  ]

54:                                               ; preds = %52
  tail call void asm sideeffect "wfe", "~{memory}"() #9, !srcloc !27
  %55 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %58(ptr noundef %3, i32 noundef 1) #9
  %59 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %49, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %60 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %51, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %61 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  tail call void %61(i32 noundef %59, i32 noundef %60) #9
  br label %64

64:                                               ; preds = %63, %57, %54
  %65 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %65(ptr noundef %3, i32 noundef 1) #9
  br label %52

66:                                               ; preds = %52
  %67 = icmp eq i32 %0, 1
  br i1 %67, label %89, label %68

68:                                               ; preds = %66, %45
  %69 = getelementptr [4 x %struct.anon.63], ptr %3, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  %71 = getelementptr [4 x %struct.anon.63], ptr %3, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %71 to i32
  br label %73

73:                                               ; preds = %85, %68
  %74 = load i8, ptr %69, align 64
  switch i8 %74, label %129 [
    i8 20, label %75
    i8 17, label %87
  ]

75:                                               ; preds = %73
  tail call void asm sideeffect "wfe", "~{memory}"() #9, !srcloc !27
  %76 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %79(ptr noundef %69, i32 noundef 1) #9
  %80 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %70, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %81 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %72, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %82 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  tail call void %82(i32 noundef %80, i32 noundef %81) #9
  br label %85

85:                                               ; preds = %84, %78, %75
  %86 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %86(ptr noundef %69, i32 noundef 1) #9
  br label %73

87:                                               ; preds = %73
  %88 = icmp eq i32 %0, 2
  br i1 %88, label %110, label %89

89:                                               ; preds = %87, %66
  %90 = getelementptr [4 x %struct.anon.63], ptr %3, i32 0, i32 2
  %91 = ptrtoint ptr %90 to i32
  %92 = getelementptr [4 x %struct.anon.63], ptr %3, i32 0, i32 2, i32 1
  %93 = ptrtoint ptr %92 to i32
  br label %94

94:                                               ; preds = %106, %89
  %95 = load i8, ptr %90, align 64
  switch i8 %95, label %129 [
    i8 20, label %96
    i8 17, label %108
  ]

96:                                               ; preds = %94
  tail call void asm sideeffect "wfe", "~{memory}"() #9, !srcloc !27
  %97 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %106, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %100(ptr noundef %90, i32 noundef 1) #9
  %101 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %91, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %102 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %93, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %103 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  tail call void %103(i32 noundef %101, i32 noundef %102) #9
  br label %106

106:                                              ; preds = %105, %99, %96
  %107 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %107(ptr noundef %90, i32 noundef 1) #9
  br label %94

108:                                              ; preds = %94
  %109 = icmp eq i32 %0, 3
  br i1 %109, label %135, label %110

110:                                              ; preds = %108, %87
  %111 = getelementptr [4 x %struct.anon.63], ptr %3, i32 0, i32 3
  %112 = ptrtoint ptr %111 to i32
  %113 = getelementptr [4 x %struct.anon.63], ptr %3, i32 0, i32 3, i32 1
  %114 = ptrtoint ptr %113 to i32
  br label %115

115:                                              ; preds = %127, %110
  %116 = load i8, ptr %111, align 64
  switch i8 %116, label %129 [
    i8 20, label %117
    i8 17, label %135
  ]

117:                                              ; preds = %115
  tail call void asm sideeffect "wfe", "~{memory}"() #9, !srcloc !27
  %118 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %121(ptr noundef %111, i32 noundef 1) #9
  %122 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %112, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %123 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %114, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %124 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %120
  tail call void %124(i32 noundef %122, i32 noundef %123) #9
  br label %127

127:                                              ; preds = %126, %120, %117
  %128 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %128(ptr noundef %111, i32 noundef 1) #9
  br label %115

129:                                              ; preds = %115, %94, %73, %52, %28
  tail call void asm sideeffect "dmb ", "~{memory}"() #9, !srcloc !28
  store i8 34, ptr %4, align 64
  %130 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %130(ptr noundef %4, i32 noundef 1) #9
  %131 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  tail call void %131(i32 noundef %7, i32 noundef %10) #9
  br label %134

134:                                              ; preds = %133, %129
  tail call void asm sideeffect "sev", "~{memory}"() #9, !srcloc !29
  br label %135

135:                                              ; preds = %134, %115, %108
  %136 = phi i1 [ false, %134 ], [ true, %108 ], [ true, %115 ]
  ret i1 %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__mcpm_outbound_leave_critical(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call void asm sideeffect "dmb ", "~{memory}"() #9, !srcloc !28
  %3 = trunc i32 %1 to i8
  %4 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %0, i32 1
  store i8 %3, ptr %4, align 64
  %5 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %5(ptr noundef %4, i32 noundef 1) #9
  %6 = ptrtoint ptr %4 to i32
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %6, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %8 = getelementptr i8, ptr %4, i32 1
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %9, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %11 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void %11(i32 noundef %7, i32 noundef %10) #9
  br label %14

14:                                               ; preds = %13, %2
  tail call void asm sideeffect "sev", "~{memory}"() #9, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__mcpm_cpu_down(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call void asm sideeffect "dmb ", "~{memory}"() #9, !srcloc !30
  %3 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %1
  %4 = getelementptr [4 x %struct.anon.63], ptr %3, i32 0, i32 %0
  store i8 17, ptr %4, align 64
  %5 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %5(ptr noundef %4, i32 noundef 1) #9
  %6 = ptrtoint ptr %4 to i32
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %6, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %8 = getelementptr i8, ptr %4, i32 1
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %9, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %11 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  tail call void %11(i32 noundef %7, i32 noundef %10) #9
  br label %14

14:                                               ; preds = %13, %2
  tail call void asm sideeffect "sev", "~{memory}"() #9, !srcloc !31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_entry_point() #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mcpm_wait_for_cpu_powerdown(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @platform_ops, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.mcpm_platform_ops, ptr %3, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i1 [ true, %2 ], [ %8, %5 ]
  %11 = load i1, ptr @mcpm_wait_for_cpu_powerdown.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !14

14:                                               ; preds = %9
  store i1 true, ptr @mcpm_wait_for_cpu_powerdown.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 312, i32 noundef 9, ptr noundef null) #9
  br label %15

15:                                               ; preds = %14, %9
  br i1 %10, label %24, label %16

16:                                               ; preds = %15
  %17 = load ptr, ptr @platform_ops, align 4
  %18 = getelementptr inbounds %struct.mcpm_platform_ops, ptr %17, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(i32 noundef %0, i32 noundef %1) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mcpm_wait_for_cpu_powerdown, i32 noundef %0, i32 noundef %1, i32 noundef %20) #11
  br label %24

24:                                               ; preds = %22, %16, %15
  %25 = phi i32 [ -49, %15 ], [ %20, %22 ], [ 0, %16 ]
  ret i32 %25
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mcpm_cpu_suspend() local_unnamed_addr #0 {
  %1 = load ptr, ptr @platform_ops, align 4
  %2 = icmp eq ptr %1, null
  %3 = load i1, ptr @mcpm_cpu_suspend.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !14

6:                                                ; preds = %0
  store i1 true, ptr @mcpm_cpu_suspend.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 325, i32 noundef 9, ptr noundef null) #9
  br label %7

7:                                                ; preds = %6, %0
  br i1 %2, label %34, label %8

8:                                                ; preds = %7
  %9 = load ptr, ptr @platform_ops, align 4
  %10 = getelementptr inbounds %struct.mcpm_platform_ops, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %8
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #8, !srcloc !20
  %15 = and i32 %14, 255
  %16 = lshr i32 %14, 8
  %17 = and i32 %16, 255
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @mcpm_lock) #9, !srcloc !10
  %18 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @mcpm_lock, i32 65536) #9, !srcloc !11
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = lshr i32 %19, 16
  %21 = and i32 %19, 65535
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %23, %13
  tail call void asm sideeffect "wfe", "~{memory}"() #9, !srcloc !12
  %24 = load volatile i16, ptr @mcpm_lock, align 4
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %20, %25
  br i1 %26, label %27, label %23

27:                                               ; preds = %23, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %28 = load ptr, ptr @platform_ops, align 4
  %29 = getelementptr inbounds %struct.mcpm_platform_ops, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  tail call void %30(i32 noundef %15, i32 noundef %17) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %31 = load i16, ptr @mcpm_lock, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr @mcpm_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  br label %33

33:                                               ; preds = %27, %8
  tail call void @mcpm_cpu_power_down()
  br label %34

34:                                               ; preds = %33, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mcpm_cpu_powered_up() local_unnamed_addr #0 {
  %1 = load ptr, ptr @platform_ops, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #8, !srcloc !20
  %5 = and i32 %4, 255
  %6 = lshr i32 %4, 8
  %7 = and i32 %6, 255
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @mcpm_lock) #9, !srcloc !10
  %9 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @mcpm_lock, i32 65536) #9, !srcloc !11
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = lshr i32 %10, 16
  %12 = and i32 %10, 65535
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %14, %3
  tail call void asm sideeffect "wfe", "~{memory}"() #9, !srcloc !12
  %15 = load volatile i16, ptr @mcpm_lock, align 4
  %16 = zext i16 %15 to i32
  %17 = icmp eq i32 %11, %16
  br i1 %17, label %18, label %14

18:                                               ; preds = %14, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  %19 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %7, i32 %5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %7, i32 0
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %7, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, %23
  %27 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %7, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %26, %28
  %30 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %7, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %18
  %35 = load ptr, ptr @platform_ops, align 4
  %36 = getelementptr inbounds %struct.mcpm_platform_ops, ptr %35, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void %37(i32 noundef %7) #9
  br label %40

40:                                               ; preds = %39, %34, %18
  br i1 %21, label %41, label %42

41:                                               ; preds = %40
  store i32 1, ptr %19, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load ptr, ptr @platform_ops, align 4
  %44 = getelementptr inbounds %struct.mcpm_platform_ops, ptr %43, i32 0, i32 7
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  tail call void %45(i32 noundef %5, i32 noundef %7) #9
  br label %48

48:                                               ; preds = %47, %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %49 = load i16, ptr @mcpm_lock, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr @mcpm_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #9, !srcloc !33
  br label %51

51:                                               ; preds = %48, %0
  %52 = phi i32 [ 0, %48 ], [ -49, %0 ]
  ret i32 %52
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @mcpm_loopback(ptr noundef %0) local_unnamed_addr #5 section ".init.text" {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #9, !srcloc !9
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #9, !srcloc !34
  %2 = tail call i32 @cpu_pm_enter() #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = ptrtoint ptr %0 to i32
  %6 = tail call i32 @cpu_suspend(i32 noundef %5, ptr noundef nonnull @nocache_trampoline) #9
  %7 = tail call i32 @cpu_pm_exit() #9
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ %2, %1 ], [ %6, %4 ]
  tail call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #9, !srcloc !35
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.mcpm_loopback, i32 noundef %9) #11
  br label %13

13:                                               ; preds = %11, %8
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nocache_trampoline(i32 noundef %0) #6 section ".init.text" {
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #8, !srcloc !20
  %3 = and i32 %2, 255
  %4 = lshr i32 %2, 8
  %5 = and i32 %4, 255
  tail call void @mcpm_set_entry_vector(i32 noundef %3, i32 noundef %5, ptr noundef nonnull @cpu_resume_no_hyp)
  tail call void @setup_mm_for_reboot() #9
  tail call fastcc void @__mcpm_cpu_going_down(i32 noundef %3, i32 noundef %5)
  %6 = tail call fastcc zeroext i1 @__mcpm_outbound_enter_critical(i32 noundef %3, i32 noundef %5)
  br i1 %6, label %8, label %7, !prof !23

7:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/common/mcpm_entry.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 385, 0\0A.popsection", ""() #9, !srcloc !36
  unreachable

8:                                                ; preds = %1
  %9 = inttoptr i32 %0 to ptr
  tail call void %9() #9
  tail call fastcc void @__mcpm_outbound_leave_critical(i32 noundef %5, i32 noundef 33)
  tail call fastcc void @__mcpm_cpu_down(i32 noundef %3, i32 noundef %5)
  %10 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 5), align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %11, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @mcpm_entry_point to i32), i32 -2130706432, i32 8454144) #8, !srcloc !8
  tail call void %13(i32 noundef %14, i1 noundef zeroext false) #10
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @mcpm_sync_init(ptr noundef %0) local_unnamed_addr #5 section ".init.text" {
  br label %2

2:                                                ; preds = %12, %1
  %3 = phi i32 [ 0, %1 ], [ %13, %12 ]
  %4 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %3
  %5 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %3, i32 1
  store i8 33, ptr %5, align 64
  %6 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %3, i32 3
  store i8 49, ptr %6, align 64
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi i32 [ 0, %2 ], [ %10, %7 ]
  %9 = getelementptr [4 x %struct.anon.63], ptr %4, i32 0, i32 %8
  store i8 17, ptr %9, align 64
  %10 = add nuw nsw i32 %8, 1
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %7

12:                                               ; preds = %7
  %13 = add nuw nsw i32 %3, 1
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %2

15:                                               ; preds = %12
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #8, !srcloc !20
  %17 = lshr i32 %16, 8
  %18 = and i32 %17, 255
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #12
  %21 = icmp ult i32 %20, %19
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %18
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ %20, %22 ], [ %28, %24 ]
  %26 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %18, i32 %25
  store i32 1, ptr %26, align 4
  %27 = getelementptr [4 x %struct.anon.63], ptr %23, i32 0, i32 %25
  store i8 19, ptr %27, align 64
  %28 = tail call i32 @cpumask_next(i32 noundef %25, ptr noundef nonnull @__cpu_online_mask) #12
  %29 = icmp ult i32 %28, %19
  br i1 %29, label %24, label %30

30:                                               ; preds = %24, %15
  %31 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %18, i32 1
  store i8 34, ptr %31, align 64
  %32 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %32(ptr noundef nonnull @mcpm_sync, i32 noundef 1536) #9
  %33 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @mcpm_sync to i32), i32 -2130706432, i32 8454144) #8, !srcloc !8
  %34 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (%struct.sync_struct, ptr @mcpm_sync, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0) to i32), i32 -2130706432, i32 8454144) #8, !srcloc !8
  %35 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  tail call void %35(i32 noundef %33, i32 noundef %34) #9
  br label %38

38:                                               ; preds = %37, %30
  %39 = icmp eq ptr %0, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %38
  %41 = ptrtoint ptr %0 to i32
  %42 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %41, i32 -2130706432, i32 8454144) #8, !srcloc !8
  store i32 %42, ptr @mcpm_power_up_setup_phys, align 4
  %43 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %43(ptr noundef nonnull @mcpm_power_up_setup_phys, i32 noundef 4) #9
  %44 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @mcpm_power_up_setup_phys to i32), i32 -2130706432, i32 8454144) #8, !srcloc !8
  %45 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr getelementptr inbounds (i32, ptr @mcpm_power_up_setup_phys, i32 1) to i32), i32 -2130706432, i32 8454144) #8, !srcloc !8
  %46 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  tail call void %46(i32 noundef %44, i32 noundef %45) #9
  br label %49

49:                                               ; preds = %48, %40, %38
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_resume_no_hyp() #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold noreturn nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly willreturn }

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
!8 = !{i64 2148792713, i64 2148792736, i64 2148792768, i64 2148792800, i64 2148792838, i64 2148792868}
!9 = !{i64 317092}
!10 = !{i64 421418, i64 2147911389, i64 2147911415, i64 2147911462, i64 2147911484, i64 2147911512, i64 2147911532}
!11 = !{i64 1370357, i64 1370380, i64 1370400, i64 1370424, i64 1370440}
!12 = !{i64 2148858695}
!13 = !{i64 2148861811}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2152065634, i64 2152066127, i64 2152065671, i64 2152065727, i64 2152065761, i64 2152065785, i64 2152065826, i64 2152065847, i64 2152065875, i64 2152065909}
!16 = !{i64 2148862404}
!17 = !{i64 2148858228}
!18 = !{i64 2148858303, i64 2148858330, i64 2148858377, i64 2148858399, i64 2148858427, i64 2148858447}
!19 = !{i64 316902}
!20 = !{i64 2152060184}
!21 = !{i64 319389}
!22 = !{i64 2152069895, i64 2152070388, i64 2152069932, i64 2152069988, i64 2152070022, i64 2152070046, i64 2152070087, i64 2152070108, i64 2152070136, i64 2152070170}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 2152070993, i64 2152071486, i64 2152071030, i64 2152071086, i64 2152071120, i64 2152071144, i64 2152071185, i64 2152071206, i64 2152071234, i64 2152071268}
!25 = !{i64 2152072184, i64 2152072677, i64 2152072221, i64 2152072277, i64 2152072311, i64 2152072335, i64 2152072376, i64 2152072397, i64 2152072425, i64 2152072459}
!26 = !{i64 2152072963}
!27 = !{i64 2152061888}
!28 = !{i64 2152061467}
!29 = !{i64 2152061638}
!30 = !{i64 2152061235}
!31 = !{i64 2152061423}
!32 = !{i64 316657, i64 316718}
!33 = !{i64 319674}
!34 = !{i64 2152083121}
!35 = !{i64 2152083169}
!36 = !{i64 2152079778, i64 2152080271, i64 2152079815, i64 2152079871, i64 2152079905, i64 2152079929, i64 2152079970, i64 2152079991, i64 2152080019, i64 2152080053}
