; ModuleID = '/llk/IR/fs/jbd2/checkpoint.c_pt.bc'
source_filename = "../fs/jbd2/checkpoint.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.journal_s = type { i32, i32, i32, %struct.mutex, ptr, ptr, i32, %struct.rwlock_t, i32, %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, [64 x ptr], %struct.shrinker, %struct.percpu_counter, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i64, [56 x i8], ptr, i32, %struct.atomic_t, %struct.spinlock, ptr, i32, i32, i32, i32, [16 x i8], ptr, i32, i32, i32, %struct.timer_list, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, i32, i32, i32, i64, i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.transaction_stats_s, i32, ptr, ptr, i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.transaction_stats_s = type { i32, i32, %struct.transaction_run_stats_s }
%struct.transaction_run_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.journal_head = type { ptr, %struct.spinlock, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [56 x i8] c"\013%s: needed %d blocks and only had %d space available\0A\00", align 1
@__func__.__jbd2_log_wait_for_space = private unnamed_addr constant [26 x i8] c"__jbd2_log_wait_for_space\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"\013%s: no way to get more journal space in %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"fs/jbd2/checkpoint.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.3 = private unnamed_addr constant [43 x i8] c"\013JBD2: %s: Waiting for Godot: block %llu\0A\00", align 1
@__tracepoint_jbd2_checkpoint = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_jbd2_shrink_checkpoint_list = external dso_local global %struct.tracepoint, align 4
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_jbd2_checkpoint_stats = external dso_local global %struct.tracepoint, align 4
@__tracepoint_jbd2_drop_transaction = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__jbd2_log_wait_for_space(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 47
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 26
  %7 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 11
  %8 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 7
  %9 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 19
  %10 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 39
  %11 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 12
  %12 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 36
  %13 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 35
  br label %14

14:                                               ; preds = %95, %1
  %15 = load i32, ptr %6, align 4
  %16 = add i32 %15, -32
  %17 = load ptr, ptr %7, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.transaction_s, ptr %17, i32 0, i32 18
  %21 = load volatile i32, ptr %20, align 4
  %22 = sub i32 %16, %21
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i32 [ %22, %19 ], [ %16, %14 ]
  %25 = call i32 @llvm.smax.i32(i32 %24, i32 0) #7
  %26 = icmp ult i32 %25, %5
  br i1 %26, label %27, label %96

27:                                               ; preds = %23
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %8, i32 0) #7, !srcloc !9
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  call void @mutex_lock_io(ptr noundef %9) #7
  call void @_raw_write_lock(ptr noundef %8) #7
  %28 = load i32, ptr %0, align 8
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  call void @mutex_unlock(ptr noundef %9) #7
  br label %96

32:                                               ; preds = %27
  call void @_raw_spin_lock(ptr noundef %10) #7
  %33 = load i32, ptr %6, align 4
  %34 = add i32 %33, -32
  %35 = load ptr, ptr %7, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = call i32 @llvm.smax.i32(i32 %34, i32 0) #7
  %39 = icmp slt i32 %38, %5
  br i1 %39, label %49, label %91

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.transaction_s, ptr %35, i32 0, i32 18
  %42 = load volatile i32, ptr %41, align 4
  %43 = sub i32 %34, %42
  %44 = call i32 @llvm.smax.i32(i32 %43, i32 0) #7
  %45 = icmp slt i32 %44, %5
  br i1 %45, label %46, label %91

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.transaction_s, ptr %35, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %37
  %50 = phi i32 [ %44, %46 ], [ %38, %37 ]
  %51 = phi i32 [ %48, %46 ], [ 0, %37 ]
  %52 = load ptr, ptr %11, align 8
  %53 = icmp eq ptr %52, null
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %54 = load i16, ptr %10, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %8, i32 0) #7, !srcloc !9
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br i1 %53, label %58, label %56

56:                                               ; preds = %49
  %57 = call i32 @jbd2_log_do_checkpoint(ptr noundef %0)
  br label %88

58:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !15
  %59 = load i32, ptr %0, align 8
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = call i32 @jbd2_journal_get_log_tail(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %3, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69, !prof !16

68:                                               ; preds = %65
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #7, !srcloc !17
  unreachable

69:                                               ; preds = %65
  %70 = load i32, ptr %0, align 8
  %71 = and i32 %70, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %12, align 8
  %75 = call i32 @blkdev_issue_flush(ptr noundef %74) #7
  %76 = load i32, ptr %3, align 4
  br label %78

77:                                               ; preds = %62, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %83

78:                                               ; preds = %73, %69
  %79 = phi i32 [ %76, %73 ], [ %66, %69 ]
  %80 = load i32, ptr %2, align 4
  %81 = call i32 @__jbd2_update_log_tail(ptr noundef %0, i32 noundef %80, i32 noundef %79) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78, %77
  %84 = icmp eq i32 %51, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %83
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.__jbd2_log_wait_for_space, i32 noundef %5, i32 noundef %50) #8
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.__jbd2_log_wait_for_space, ptr noundef %13) #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 160, i32 noundef 9, ptr noundef null) #7
  call void @jbd2_journal_abort(ptr noundef %0, i32 noundef -5) #7
  br label %88

88:                                               ; preds = %85, %78, %56
  call void @_raw_write_lock(ptr noundef %8) #7
  br label %94

89:                                               ; preds = %83
  call void @mutex_unlock(ptr noundef %9) #7
  %90 = call i32 @jbd2_log_wait_commit(ptr noundef %0, i32 noundef %51) #7
  call void @_raw_write_lock(ptr noundef %8) #7
  br label %95

91:                                               ; preds = %40, %37
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %92 = load i16, ptr %10, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %94

94:                                               ; preds = %91, %88
  call void @mutex_unlock(ptr noundef %9) #7
  br label %95

95:                                               ; preds = %94, %89
  br label %14

96:                                               ; preds = %31, %23
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_log_do_checkpoint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_plug, align 4
  %5 = alloca %struct.blk_plug, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !15
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = call i32 @jbd2_journal_get_log_tail(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !16

17:                                               ; preds = %14
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #7, !srcloc !17
  unreachable

18:                                               ; preds = %14
  %19 = load i32, ptr %0, align 8
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 36
  %24 = load ptr, ptr %23, align 8
  %25 = call i32 @blkdev_issue_flush(ptr noundef %24) #7
  %26 = load i32, ptr %7, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i32 [ %26, %22 ], [ %15, %18 ]
  %29 = load i32, ptr %6, align 4
  %30 = call i32 @__jbd2_update_log_tail(ptr noundef %0, i32 noundef %29, i32 noundef %28) #7
  br label %31

31:                                               ; preds = %27, %11, %1
  %32 = phi i32 [ %30, %27 ], [ -5, %1 ], [ 1, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_checkpoint, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = tail call ptr @llvm.thread.pointer() #7
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !18
  %47 = call i32 @__traceiter_jbd2_checkpoint(ptr noundef null, ptr noundef %0, i32 noundef %32) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  br label %48

48:                                               ; preds = %46, %35, %31
  %49 = icmp slt i32 %32, 1
  br i1 %49, label %278, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 39
  call void @_raw_spin_lock(ptr noundef %51) #7
  %52 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 12
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %249, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.transaction_s, ptr %53, i32 0, i32 16
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load volatile i32, ptr @jiffies, align 64
  store i32 %60, ptr %56, align 4
  %61 = load ptr, ptr %52, align 8
  %62 = icmp eq ptr %61, %53
  br i1 %62, label %63, label %249

63:                                               ; preds = %59, %55
  %64 = getelementptr inbounds %struct.transaction_s, ptr %53, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.transaction_s, ptr %53, i32 0, i32 8
  %67 = getelementptr inbounds %struct.transaction_s, ptr %53, i32 0, i32 16, i32 2
  %68 = getelementptr inbounds %struct.transaction_s, ptr %53, i32 0, i32 16, i32 1
  %69 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 35
  %70 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 19
  br label %71

71:                                               ; preds = %190, %63
  %72 = phi i32 [ 0, %63 ], [ %191, %190 ]
  br label %73

73:                                               ; preds = %138, %71
  %74 = load ptr, ptr %66, align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %192, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %74, align 4
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.buffer_head, ptr %77, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #7, !srcloc !20
  %83 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 1, ptr elementtype(i32) %82) #7, !srcloc !21
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %84 = load i16, ptr %51, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %51, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %86 = load volatile i32, ptr %77, align 4
  %87 = and i32 %86, 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %203, label %89

89:                                               ; preds = %81
  call void @__wait_on_buffer(ptr noundef %77) #7
  br label %203

90:                                               ; preds = %76
  %91 = getelementptr inbounds %struct.journal_head, ptr %74, i32 0, i32 7
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %134, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.transaction_s, ptr %92, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = load i32, ptr %68, align 4
  %98 = add i32 %97, 1
  store i32 %98, ptr %68, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %99 = load i16, ptr %51, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %51, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %101 = load i32, ptr %0, align 8
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104, !prof !22

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.buffer_head, ptr %77, i32 0, i32 3
  %106 = load i64, ptr %105, align 8
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %69, i64 noundef %106) #8
  br label %108

108:                                              ; preds = %104, %94
  %109 = icmp eq i32 %72, 0
  br i1 %109, label %125, label %110

110:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false) #7, !annotation !15
  call void @blk_start_plug(ptr noundef nonnull %5) #7
  br label %111

111:                                              ; preds = %111, %110
  %112 = phi i32 [ %115, %111 ], [ 0, %110 ]
  %113 = getelementptr %struct.journal_s, ptr %0, i32 0, i32 20, i32 %112
  %114 = load ptr, ptr %113, align 4
  call void @write_dirty_buffer(ptr noundef %114, i32 noundef 2048) #7
  %115 = add nuw nsw i32 %112, 1
  %116 = icmp eq i32 %115, %72
  br i1 %116, label %117, label %111

117:                                              ; preds = %111
  call void @blk_finish_plug(ptr noundef nonnull %5) #7
  br label %118

118:                                              ; preds = %118, %117
  %119 = phi i32 [ %122, %118 ], [ 0, %117 ]
  %120 = getelementptr %struct.journal_s, ptr %0, i32 0, i32 20, i32 %119
  %121 = load ptr, ptr %120, align 4
  call void @__brelse(ptr noundef %121) #7
  %122 = add nuw nsw i32 %119, 1
  %123 = icmp eq i32 %122, %72
  br i1 %123, label %124, label %118

124:                                              ; preds = %118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  br label %125

125:                                              ; preds = %124, %108
  %126 = call i32 @jbd2_log_start_commit(ptr noundef %0, i32 noundef %96) #7
  call void @mutex_unlock(ptr noundef %70) #7
  %127 = call i32 @jbd2_log_wait_commit(ptr noundef %0, i32 noundef %96) #7
  call void @mutex_lock_io(ptr noundef %70) #7
  br label %128

128:                                              ; preds = %222, %203, %125
  call void @_raw_spin_lock(ptr noundef %51) #7
  %129 = load ptr, ptr %52, align 8
  %130 = icmp eq ptr %129, %53
  br i1 %130, label %131, label %249

131:                                              ; preds = %128
  %132 = load i32, ptr %64, align 4
  %133 = icmp eq i32 %132, %65
  br i1 %133, label %190, label %249

134:                                              ; preds = %90
  %135 = load volatile i32, ptr %77, align 4
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = call i32 @__jbd2_journal_remove_checkpoint(ptr noundef nonnull %74)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %73, label %249

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.buffer_head, ptr %77, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %142) #7, !srcloc !20
  %143 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %142, ptr %142, i32 1, ptr elementtype(i32) %142) #7, !srcloc !21
  %144 = load volatile i32, ptr %77, align 4
  %145 = and i32 %144, 131072
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147, !prof !22

147:                                              ; preds = %141
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 305, 0\0A.popsection", ""() #7, !srcloc !23
  unreachable

148:                                              ; preds = %141
  %149 = add nuw nsw i32 %72, 1
  %150 = getelementptr %struct.journal_s, ptr %0, i32 0, i32 20, i32 %72
  store ptr %77, ptr %150, align 4
  %151 = getelementptr inbounds %struct.journal_head, ptr %74, i32 0, i32 11
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.journal_head, ptr %74, i32 0, i32 13
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.journal_head, ptr %74, i32 0, i32 12
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.journal_head, ptr %156, i32 0, i32 13
  store ptr %154, ptr %157, align 4
  %158 = load ptr, ptr %155, align 4
  %159 = load ptr, ptr %153, align 4
  %160 = getelementptr inbounds %struct.journal_head, ptr %159, i32 0, i32 12
  store ptr %158, ptr %160, align 4
  %161 = getelementptr inbounds %struct.transaction_s, ptr %152, i32 0, i32 8
  %162 = load ptr, ptr %161, align 8
  %163 = icmp eq ptr %162, %74
  br i1 %163, label %164, label %168

164:                                              ; preds = %148
  %165 = load ptr, ptr %155, align 4
  %166 = icmp eq ptr %165, %74
  %167 = select i1 %166, ptr null, ptr %165
  store ptr %167, ptr %161, align 8
  br label %168

168:                                              ; preds = %164, %148
  %169 = getelementptr inbounds %struct.transaction_s, ptr %152, i32 0, i32 9
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  store ptr %74, ptr %153, align 4
  br label %180

173:                                              ; preds = %168
  store ptr %170, ptr %155, align 4
  %174 = load ptr, ptr %169, align 4
  %175 = getelementptr inbounds %struct.journal_head, ptr %174, i32 0, i32 13
  %176 = load ptr, ptr %175, align 4
  store ptr %176, ptr %153, align 4
  %177 = getelementptr inbounds %struct.journal_head, ptr %176, i32 0, i32 12
  store ptr %74, ptr %177, align 4
  %178 = load ptr, ptr %155, align 4
  %179 = getelementptr inbounds %struct.journal_head, ptr %178, i32 0, i32 13
  br label %180

180:                                              ; preds = %173, %172
  %181 = phi ptr [ %179, %173 ], [ %155, %172 ]
  store ptr %74, ptr %181, align 4
  store ptr %74, ptr %169, align 4
  %182 = load i32, ptr %67, align 4
  %183 = add i32 %182, 1
  store i32 %183, ptr %67, align 4
  %184 = icmp eq i32 %149, 64
  br i1 %184, label %199, label %185

185:                                              ; preds = %180
  %186 = tail call ptr @llvm.thread.pointer() #7
  %187 = load volatile i32, ptr %186, align 4
  %188 = and i32 %187, 2
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %185, %131
  %191 = phi i32 [ %149, %185 ], [ 0, %131 ]
  br label %71

192:                                              ; preds = %73
  %193 = icmp eq i32 %72, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %192
  %195 = load ptr, ptr %52, align 8
  %196 = icmp eq ptr %195, %53
  br i1 %196, label %197, label %249

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.transaction_s, ptr %53, i32 0, i32 9
  br label %223

199:                                              ; preds = %192, %185, %180
  %200 = phi i32 [ %72, %192 ], [ 64, %180 ], [ %149, %185 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %201 = load i16, ptr %51, align 4
  %202 = add i16 %201, 1
  store i16 %202, ptr %51, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %205

203:                                              ; preds = %89, %81
  call void @__brelse(ptr noundef %77) #7
  %204 = icmp eq i32 %72, 0
  br i1 %204, label %128, label %205

205:                                              ; preds = %203, %199
  %206 = phi i32 [ %200, %199 ], [ %72, %203 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #7, !annotation !15
  call void @blk_start_plug(ptr noundef nonnull %4) #7
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %205
  call void @blk_finish_plug(ptr noundef nonnull %4) #7
  br label %222

209:                                              ; preds = %209, %205
  %210 = phi i32 [ %213, %209 ], [ 0, %205 ]
  %211 = getelementptr %struct.journal_s, ptr %0, i32 0, i32 20, i32 %210
  %212 = load ptr, ptr %211, align 4
  call void @write_dirty_buffer(ptr noundef %212, i32 noundef 2048) #7
  %213 = add nuw nsw i32 %210, 1
  %214 = icmp eq i32 %213, %206
  br i1 %214, label %215, label %209

215:                                              ; preds = %209
  call void @blk_finish_plug(ptr noundef nonnull %4) #7
  br label %216

216:                                              ; preds = %216, %215
  %217 = phi i32 [ %220, %216 ], [ 0, %215 ]
  %218 = getelementptr %struct.journal_s, ptr %0, i32 0, i32 20, i32 %217
  %219 = load ptr, ptr %218, align 4
  call void @__brelse(ptr noundef %219) #7
  %220 = add nuw nsw i32 %217, 1
  %221 = icmp eq i32 %220, %206
  br i1 %221, label %222, label %216

222:                                              ; preds = %216, %208
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  br label %128

223:                                              ; preds = %243, %197
  %224 = load i32, ptr %64, align 4
  %225 = icmp eq i32 %224, %65
  br i1 %225, label %226, label %249

226:                                              ; preds = %246, %223
  %227 = load ptr, ptr %198, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %249, label %229

229:                                              ; preds = %226
  %230 = load ptr, ptr %227, align 4
  %231 = load volatile i32, ptr %230, align 4
  %232 = and i32 %231, 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %246, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.buffer_head, ptr %230, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %235) #7, !srcloc !20
  %236 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %235, ptr %235, i32 1, ptr elementtype(i32) %235) #7, !srcloc !21
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %237 = load i16, ptr %51, align 4
  %238 = add i16 %237, 1
  store i16 %238, ptr %51, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %239 = load volatile i32, ptr %230, align 4
  %240 = and i32 %239, 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %234
  call void @__wait_on_buffer(ptr noundef %230) #7
  br label %243

243:                                              ; preds = %242, %234
  call void @__brelse(ptr noundef %230) #7
  call void @_raw_spin_lock(ptr noundef %51) #7
  %244 = load ptr, ptr %52, align 8
  %245 = icmp eq ptr %244, %53
  br i1 %245, label %223, label %249

246:                                              ; preds = %229
  %247 = call i32 @__jbd2_journal_remove_checkpoint(ptr noundef nonnull %227)
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %226, label %249

249:                                              ; preds = %246, %243, %226, %223, %194, %138, %131, %128, %59, %50
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %250 = load i16, ptr %51, align 4
  %251 = add i16 %250, 1
  store i16 %251, ptr %51, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !15
  %252 = load i32, ptr %0, align 8
  %253 = and i32 %252, 2
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %275

255:                                              ; preds = %249
  %256 = call i32 @jbd2_journal_get_log_tail(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %275, label %258

258:                                              ; preds = %255
  %259 = load i32, ptr %3, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %262, !prof !16

261:                                              ; preds = %258
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #7, !srcloc !17
  unreachable

262:                                              ; preds = %258
  %263 = load i32, ptr %0, align 8
  %264 = and i32 %263, 32
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %271, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 36
  %268 = load ptr, ptr %267, align 8
  %269 = call i32 @blkdev_issue_flush(ptr noundef %268) #7
  %270 = load i32, ptr %3, align 4
  br label %271

271:                                              ; preds = %266, %262
  %272 = phi i32 [ %270, %266 ], [ %259, %262 ]
  %273 = load i32, ptr %2, align 4
  %274 = call i32 @__jbd2_update_log_tail(ptr noundef %0, i32 noundef %273, i32 noundef %272) #7
  br label %275

275:                                              ; preds = %271, %255, %249
  %276 = phi i32 [ %274, %271 ], [ -5, %249 ], [ 1, %255 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %277 = call i32 @llvm.smin.i32(i32 %276, i32 0)
  br label %278

278:                                              ; preds = %275, %48
  %279 = phi i32 [ %277, %275 ], [ %32, %48 ]
  ret i32 %279
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_cleanup_journal_tail(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !15
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = call i32 @jbd2_journal_get_log_tail(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !16

13:                                               ; preds = %10
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #7, !srcloc !17
  unreachable

14:                                               ; preds = %10
  %15 = load i32, ptr %0, align 8
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 36
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @blkdev_issue_flush(ptr noundef %20) #7
  %22 = load i32, ptr %3, align 4
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i32 [ %22, %18 ], [ %11, %14 ]
  %25 = load i32, ptr %2, align 4
  %26 = call i32 @__jbd2_update_log_tail(ptr noundef %0, i32 noundef %25, i32 noundef %24) #7
  br label %27

27:                                               ; preds = %23, %7, %1
  %28 = phi i32 [ %26, %23 ], [ -5, %1 ], [ 1, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_log_wait_commit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_abort(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_log_start_commit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__jbd2_journal_remove_checkpoint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %86, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = load volatile i32, ptr %6, align 4
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.journal_s, ptr %7, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %12) #7
  %13 = load ptr, ptr %2, align 4
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi ptr [ %13, %11 ], [ %3, %5 ]
  %16 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.journal_head, ptr %19, i32 0, i32 13
  store ptr %17, ptr %20, align 4
  %21 = load ptr, ptr %18, align 4
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr inbounds %struct.journal_head, ptr %22, i32 0, i32 12
  store ptr %21, ptr %23, align 4
  %24 = getelementptr inbounds %struct.transaction_s, ptr %15, i32 0, i32 8
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = load ptr, ptr %18, align 4
  %29 = icmp eq ptr %28, %0
  %30 = select i1 %29, ptr null, ptr %28
  store ptr %30, ptr %24, align 8
  br label %31

31:                                               ; preds = %27, %14
  %32 = getelementptr inbounds %struct.transaction_s, ptr %15, i32 0, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load ptr, ptr %18, align 4
  %37 = icmp eq ptr %36, %0
  %38 = select i1 %37, ptr null, ptr %36
  store ptr %38, ptr %32, align 4
  br label %39

39:                                               ; preds = %35, %31
  store ptr null, ptr %2, align 4
  %40 = getelementptr inbounds %struct.journal_s, ptr %7, i32 0, i32 22
  %41 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %40, i64 noundef -1, i32 noundef %41) #7
  tail call void @jbd2_journal_put_journal_head(ptr noundef %0) #7
  %42 = getelementptr inbounds %struct.transaction_s, ptr %3, i32 0, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %86

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.transaction_s, ptr %3, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.transaction_s, ptr %3, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %51, 8
  br i1 %52, label %53, label %86

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.transaction_s, ptr %3, i32 0, i32 16
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load volatile i32, ptr @jiffies, align 64
  %59 = icmp ult i32 %58, %55
  %60 = select i1 %59, i32 1073741822, i32 0
  %61 = sub i32 %58, %55
  %62 = add i32 %61, %60
  store i32 %62, ptr %54, align 4
  br label %63

63:                                               ; preds = %57, %53
  %64 = getelementptr inbounds %struct.journal_s, ptr %7, i32 0, i32 36
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.block_device, ptr %65, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.transaction_s, ptr %3, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_checkpoint_stats, i32 0, i32 1), align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %63
  %73 = tail call ptr @llvm.thread.pointer() #7
  %74 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = lshr i32 %75, 5
  %77 = getelementptr i32, ptr @__cpu_online_mask, i32 %76
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %75, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %72
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !24
  %84 = tail call i32 @__traceiter_jbd2_checkpoint_stats(ptr noundef null, i32 noundef %67, i32 noundef %69, ptr noundef %54) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  br label %85

85:                                               ; preds = %83, %72, %63
  tail call void @__jbd2_journal_drop_transaction(ptr noundef %7, ptr noundef nonnull %3)
  tail call void @jbd2_journal_free_transaction(ptr noundef nonnull %3) #7
  br label %86

86:                                               ; preds = %85, %49, %45, %39, %1
  %87 = phi i32 [ 1, %85 ], [ 0, %1 ], [ 0, %45 ], [ 0, %39 ], [ 0, %49 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_get_log_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__jbd2_update_log_tail(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @jbd2_journal_shrink_checkpoint_list(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 23
  br label %22

10:                                               ; preds = %167
  tail call void @_raw_spin_lock(ptr noundef %4) #7
  %11 = load ptr, ptr %5, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10, %2
  %14 = phi i32 [ 0, %2 ], [ %34, %10 ]
  %15 = phi i32 [ 0, %2 ], [ %38, %10 ]
  %16 = phi i32 [ 0, %2 ], [ %169, %10 ]
  %17 = phi i32 [ 0, %2 ], [ %45, %10 ]
  %18 = phi i32 [ 0, %2 ], [ %168, %10 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %19 = load i16, ptr %4, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %21 = load i32, ptr %1, align 4
  br label %177

22:                                               ; preds = %10, %8
  %23 = phi ptr [ %6, %8 ], [ %11, %10 ]
  %24 = phi i32 [ 0, %8 ], [ %168, %10 ]
  %25 = phi i32 [ 0, %8 ], [ %34, %10 ]
  %26 = load ptr, ptr %9, align 8
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr %23, ptr %26
  %29 = icmp eq i32 %25, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.transaction_s, ptr %28, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %22
  %34 = phi i32 [ %25, %22 ], [ %32, %30 ]
  %35 = getelementptr inbounds %struct.transaction_s, ptr %23, i32 0, i32 22
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.transaction_s, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %156, %33
  %40 = phi ptr [ %28, %33 ], [ %43, %156 ]
  %41 = phi i32 [ %24, %33 ], [ %157, %156 ]
  %42 = getelementptr inbounds %struct.transaction_s, ptr %40, i32 0, i32 21
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.transaction_s, ptr %40, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.transaction_s, ptr %40, i32 0, i32 8
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %92, label %49

49:                                               ; preds = %39
  %50 = load i32, ptr %1, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %89, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.journal_head, ptr %47, i32 0, i32 13
  %54 = load ptr, ptr %53, align 4
  br label %55

55:                                               ; preds = %86, %52
  %56 = phi i32 [ %50, %52 ], [ %87, %86 ]
  %57 = phi ptr [ %47, %52 ], [ %60, %86 ]
  %58 = phi i32 [ 0, %52 ], [ %84, %86 ]
  %59 = getelementptr inbounds %struct.journal_head, ptr %57, i32 0, i32 12
  %60 = load ptr, ptr %59, align 4
  %61 = add i32 %56, -1
  store i32 %61, ptr %1, align 4
  %62 = load ptr, ptr %57, align 4
  %63 = getelementptr inbounds %struct.journal_head, ptr %57, i32 0, i32 7
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %83

66:                                               ; preds = %55
  %67 = load volatile i32, ptr %62, align 4
  %68 = and i32 %67, 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load volatile i32, ptr %62, align 4
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = add i32 %58, 1
  %76 = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef %57) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = tail call ptr @llvm.thread.pointer() #7
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78, %70, %66, %55
  %84 = phi i32 [ %58, %70 ], [ %75, %78 ], [ %58, %66 ], [ %58, %55 ]
  %85 = icmp eq ptr %57, %54
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr %1, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %55

89:                                               ; preds = %86, %49
  %90 = phi i32 [ %84, %86 ], [ 0, %49 ]
  %91 = add i32 %90, %41
  br label %159

92:                                               ; preds = %83, %78, %74, %39
  %93 = phi i1 [ true, %39 ], [ true, %83 ], [ true, %78 ], [ false, %74 ]
  %94 = phi i32 [ 0, %39 ], [ %84, %83 ], [ %75, %78 ], [ %75, %74 ]
  %95 = load i32, ptr %1, align 4
  %96 = add i32 %94, %41
  %97 = icmp eq i32 %95, 0
  br i1 %97, label %159, label %98

98:                                               ; preds = %92
  %99 = tail call ptr @llvm.thread.pointer() #7
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %100, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %159

103:                                              ; preds = %98
  br i1 %93, label %104, label %156

104:                                              ; preds = %103
  %105 = getelementptr inbounds %struct.transaction_s, ptr %40, i32 0, i32 9
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %151, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.journal_head, ptr %106, i32 0, i32 13
  %110 = load ptr, ptr %109, align 4
  br label %111

111:                                              ; preds = %141, %108
  %112 = phi i32 [ %95, %108 ], [ %142, %141 ]
  %113 = phi ptr [ %106, %108 ], [ %116, %141 ]
  %114 = phi i32 [ 0, %108 ], [ %139, %141 ]
  %115 = getelementptr inbounds %struct.journal_head, ptr %113, i32 0, i32 12
  %116 = load ptr, ptr %115, align 4
  %117 = add i32 %112, -1
  store i32 %117, ptr %1, align 4
  %118 = load ptr, ptr %113, align 4
  %119 = getelementptr inbounds %struct.journal_head, ptr %113, i32 0, i32 7
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %138

122:                                              ; preds = %111
  %123 = load volatile i32, ptr %118, align 4
  %124 = and i32 %123, 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = load volatile i32, ptr %118, align 4
  %128 = and i32 %127, 2
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = add i32 %114, 1
  %132 = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef %113) #7
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %130
  %135 = load volatile i32, ptr %99, align 4
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %134, %126, %122, %111
  %139 = phi i32 [ %114, %126 ], [ %131, %134 ], [ %114, %122 ], [ %114, %111 ]
  %140 = icmp eq ptr %113, %110
  br i1 %140, label %146, label %141

141:                                              ; preds = %138
  %142 = load i32, ptr %1, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %111

144:                                              ; preds = %141
  %145 = add i32 %139, %96
  br label %159

146:                                              ; preds = %138, %134, %130
  %147 = phi i32 [ %131, %130 ], [ %139, %138 ], [ %131, %134 ]
  %148 = load i32, ptr %1, align 4
  %149 = add i32 %147, %96
  %150 = icmp eq i32 %148, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %146, %104
  %152 = phi i32 [ %149, %146 ], [ %96, %104 ]
  %153 = load volatile i32, ptr %99, align 4
  %154 = and i32 %153, 2
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151, %103
  %157 = phi i32 [ %96, %103 ], [ %152, %151 ]
  %158 = icmp eq ptr %40, %36
  br i1 %158, label %165, label %39

159:                                              ; preds = %151, %146, %144, %98, %92, %89
  %160 = phi i32 [ %91, %89 ], [ %145, %144 ], [ %96, %92 ], [ %96, %98 ], [ %149, %146 ], [ %152, %151 ]
  %161 = icmp eq ptr %40, %36
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  store ptr %43, ptr %9, align 8
  %163 = getelementptr inbounds %struct.transaction_s, ptr %43, i32 0, i32 1
  %164 = load i32, ptr %163, align 4
  br label %167

165:                                              ; preds = %159, %156
  %166 = phi i32 [ %160, %159 ], [ %157, %156 ]
  store ptr null, ptr %9, align 8
  br label %167

167:                                              ; preds = %165, %162
  %168 = phi i32 [ %160, %162 ], [ %166, %165 ]
  %169 = phi i32 [ %164, %162 ], [ 0, %165 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %170 = load i16, ptr %4, align 4
  %171 = add i16 %170, 1
  store i16 %171, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %172 = tail call i32 @__cond_resched() #7
  %173 = load i32, ptr %1, align 4
  %174 = icmp ne i32 %173, 0
  %175 = icmp ne i32 %169, 0
  %176 = select i1 %174, i1 %175, i1 false
  br i1 %176, label %10, label %177

177:                                              ; preds = %167, %13
  %178 = phi i32 [ %21, %13 ], [ %173, %167 ]
  %179 = phi i32 [ %14, %13 ], [ %34, %167 ]
  %180 = phi i32 [ %15, %13 ], [ %38, %167 ]
  %181 = phi i32 [ %16, %13 ], [ %169, %167 ]
  %182 = phi i32 [ %17, %13 ], [ %45, %167 ]
  %183 = phi i32 [ %18, %13 ], [ %168, %167 ]
  %184 = sub i32 %3, %178
  %185 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_shrink_checkpoint_list, i32 0, i32 1), align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %177
  %188 = tail call ptr @llvm.thread.pointer() #7
  %189 = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 2
  %190 = load i32, ptr %189, align 8
  %191 = lshr i32 %190, 5
  %192 = getelementptr i32, ptr @__cpu_online_mask, i32 %191
  %193 = load volatile i32, ptr %192, align 4
  %194 = and i32 %190, 31
  %195 = shl nuw i32 1, %194
  %196 = and i32 %195, %193
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %187
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  %199 = tail call i32 @__traceiter_jbd2_shrink_checkpoint_list(ptr noundef null, ptr noundef %0, i32 noundef %179, i32 noundef %182, i32 noundef %180, i32 noundef %183, i32 noundef %184, i32 noundef %181) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !27
  br label %200

200:                                              ; preds = %198, %187, %177
  ret i32 %183
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__jbd2_journal_clean_checkpoint_list(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %93, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.transaction_s, ptr %4, i32 0, i32 22
  %8 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %92, %6
  %10 = phi ptr [ %4, %6 ], [ %12, %92 ]
  %11 = getelementptr inbounds %struct.transaction_s, ptr %10, i32 0, i32 21
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.transaction_s, ptr %10, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %46, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.journal_head, ptr %14, i32 0, i32 13
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %43, %16
  %20 = phi ptr [ %14, %16 ], [ %22, %43 ]
  %21 = getelementptr inbounds %struct.journal_head, ptr %20, i32 0, i32 12
  %22 = load ptr, ptr %21, align 4
  br i1 %1, label %36, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %20, align 4
  %25 = getelementptr inbounds %struct.journal_head, ptr %20, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load volatile i32, ptr %24, align 4
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load volatile i32, ptr %24, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32, %19
  %37 = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef %20) #7
  %38 = icmp eq i32 %37, 0
  %39 = tail call ptr @llvm.thread.pointer() #7
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 2
  %42 = icmp ne i32 %41, 0
  br i1 %38, label %43, label %51

43:                                               ; preds = %36
  %44 = icmp eq ptr %20, %18
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %46, label %19

46:                                               ; preds = %43, %32, %28, %23, %9
  %47 = tail call ptr @llvm.thread.pointer() #7
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %93

51:                                               ; preds = %36
  %52 = icmp eq ptr %10, %8
  %53 = select i1 %42, i1 true, i1 %52
  br i1 %53, label %93, label %92

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.transaction_s, ptr %10, i32 0, i32 9
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %87, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.journal_head, ptr %56, i32 0, i32 13
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %84, %58
  %62 = phi ptr [ %56, %58 ], [ %64, %84 ]
  %63 = getelementptr inbounds %struct.journal_head, ptr %62, i32 0, i32 12
  %64 = load ptr, ptr %63, align 4
  br i1 %1, label %78, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %62, align 4
  %67 = getelementptr inbounds %struct.journal_head, ptr %62, i32 0, i32 7
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load volatile i32, ptr %66, align 4
  %72 = and i32 %71, 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load volatile i32, ptr %66, align 4
  %76 = and i32 %75, 2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %74, %61
  %79 = tail call i32 @__jbd2_journal_remove_checkpoint(ptr noundef %62) #7
  %80 = icmp eq i32 %79, 0
  %81 = load volatile i32, ptr %47, align 4
  %82 = and i32 %81, 2
  %83 = icmp ne i32 %82, 0
  br i1 %80, label %84, label %89

84:                                               ; preds = %78
  %85 = icmp eq ptr %62, %60
  %86 = select i1 %83, i1 true, i1 %85
  br i1 %86, label %87, label %61

87:                                               ; preds = %84, %74, %70, %65, %54
  %88 = load volatile i32, ptr %47, align 4
  br label %93

89:                                               ; preds = %78
  %90 = icmp eq ptr %10, %8
  %91 = select i1 %83, i1 true, i1 %90
  br i1 %91, label %93, label %92

92:                                               ; preds = %89, %51
  br label %9

93:                                               ; preds = %89, %87, %51, %46, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @jbd2_journal_destroy_checkpoint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %9, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %7 = load i16, ptr %2, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  ret void

9:                                                ; preds = %9, %1
  tail call void @__jbd2_journal_clean_checkpoint_list(ptr noundef %0, i1 noundef zeroext true)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %10 = load i16, ptr %2, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %12 = tail call i32 @__cond_resched() #7
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %13 = load ptr, ptr %3, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %6, label %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_put_journal_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__jbd2_journal_drop_transaction(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %5 = load volatile i32, ptr %4, align 4
  store volatile i32 %5, ptr %3, align 4
  %6 = lshr i32 %5, 16
  %7 = and i32 %5, 65535
  %8 = icmp eq i32 %7, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %8, label %9, label %10, !prof !16

9:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 782, 0\0A.popsection", ""() #7, !srcloc !28
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 23
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 21
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 22
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.transaction_s, ptr %13, i32 0, i32 22
  store ptr %17, ptr %18, align 8
  %19 = load ptr, ptr %12, align 4
  %20 = load ptr, ptr %16, align 8
  %21 = getelementptr inbounds %struct.transaction_s, ptr %20, i32 0, i32 21
  store ptr %19, ptr %21, align 4
  %22 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 12
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load ptr, ptr %12, align 4
  store ptr %26, ptr %22, align 8
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi ptr [ %26, %25 ], [ %23, %15 ]
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store ptr null, ptr %22, align 8
  br label %31

31:                                               ; preds = %30, %27, %10
  %32 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 8
  br i1 %34, label %36, label %35, !prof !22

35:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 795, 0\0A.popsection", ""() #7, !srcloc !29
  unreachable

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 6
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40, !prof !22

40:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 796, 0\0A.popsection", ""() #7, !srcloc !30
  unreachable

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45, !prof !22

45:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 797, 0\0A.popsection", ""() #7, !srcloc !31
  unreachable

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 10
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50, !prof !22

50:                                               ; preds = %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 798, 0\0A.popsection", ""() #7, !srcloc !32
  unreachable

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 8
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55, !prof !22

55:                                               ; preds = %51
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 799, 0\0A.popsection", ""() #7, !srcloc !33
  unreachable

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60, !prof !22

60:                                               ; preds = %56
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 800, 0\0A.popsection", ""() #7, !srcloc !34
  unreachable

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 17
  %63 = load volatile i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65, !prof !22

65:                                               ; preds = %61
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 801, 0\0A.popsection", ""() #7, !srcloc !35
  unreachable

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 11
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %1
  br i1 %69, label %70, label %71, !prof !16

70:                                               ; preds = %66
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 802, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.journal_s, ptr %0, i32 0, i32 10
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, %1
  br i1 %74, label %75, label %76, !prof !16

75:                                               ; preds = %71
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 803, 0\0A.popsection", ""() #7, !srcloc !37
  unreachable

76:                                               ; preds = %71
  %77 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_jbd2_drop_transaction, i32 0, i32 1), align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = tail call ptr @llvm.thread.pointer() #7
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 8
  %83 = lshr i32 %82, 5
  %84 = getelementptr i32, ptr @__cpu_online_mask, i32 %83
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %82, 31
  %87 = shl nuw i32 1, %86
  %88 = and i32 %87, %85
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %79
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !38
  %91 = tail call i32 @__traceiter_jbd2_drop_transaction(ptr noundef null, ptr noundef %0, ptr noundef %1) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !39
  br label %92

92:                                               ; preds = %90, %79, %76
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @jbd2_journal_free_transaction(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__jbd2_journal_insert_checkpoint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load volatile i32, ptr %3, align 4
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !16

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 751, 0\0A.popsection", ""() #7, !srcloc !40
  unreachable

12:                                               ; preds = %7, %2
  %13 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !22

16:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jbd2/checkpoint.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 752, 0\0A.popsection", ""() #7, !srcloc !41
  unreachable

17:                                               ; preds = %12
  %18 = tail call ptr @jbd2_journal_grab_journal_head(ptr noundef %3) #7
  store ptr %1, ptr %13, align 4
  %19 = getelementptr inbounds %struct.transaction_s, ptr %1, i32 0, i32 8
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 13
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 12
  br label %34

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 12
  store ptr %20, ptr %26, align 4
  %27 = load ptr, ptr %19, align 8
  %28 = getelementptr inbounds %struct.journal_head, ptr %27, i32 0, i32 13
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.journal_head, ptr %0, i32 0, i32 13
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.journal_head, ptr %29, i32 0, i32 12
  store ptr %0, ptr %31, align 4
  %32 = load ptr, ptr %26, align 4
  %33 = getelementptr inbounds %struct.journal_head, ptr %32, i32 0, i32 13
  br label %34

34:                                               ; preds = %25, %22
  %35 = phi ptr [ %33, %25 ], [ %24, %22 ]
  store ptr %0, ptr %35, align 4
  store ptr %0, ptr %19, align 8
  %36 = load ptr, ptr %1, align 8
  %37 = getelementptr inbounds %struct.journal_s, ptr %36, i32 0, i32 22
  %38 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %37, i64 noundef 1, i32 noundef %38) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jbd2_journal_grab_journal_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_checkpoint(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_dirty_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_shrink_checkpoint_list(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_checkpoint_stats(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_jbd2_drop_transaction(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2149048182}
!9 = !{i64 1551396}
!10 = !{i64 2149036929}
!11 = !{i64 2149037004, i64 2149037031, i64 2149037078, i64 2149037100, i64 2149037128, i64 2149037148}
!12 = !{i64 2149086151}
!13 = !{i64 2149041105}
!14 = !{i64 2149064108}
!15 = !{!"auto-init"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2153768528, i64 2153769013, i64 2153768565, i64 2153768621, i64 2153768655, i64 2153768679, i64 2153768720, i64 2153768741, i64 2153768769, i64 2153768803}
!18 = !{i64 2153374797}
!19 = !{i64 2153374969}
!20 = !{i64 422842, i64 2147912813, i64 2147912839, i64 2147912886, i64 2147912908, i64 2147912936, i64 2147912956}
!21 = !{i64 2147924228, i64 2147924254, i64 2147924283, i64 2147924317, i64 2147924348, i64 2147924371}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2153767447, i64 2153767932, i64 2153767484, i64 2153767540, i64 2153767574, i64 2153767598, i64 2153767639, i64 2153767660, i64 2153767688, i64 2153767722}
!24 = !{i64 2153616850}
!25 = !{i64 2153617034}
!26 = !{i64 2153748000}
!27 = !{i64 2153748300}
!28 = !{i64 2153772732, i64 2153773217, i64 2153772769, i64 2153772825, i64 2153772859, i64 2153772883, i64 2153772924, i64 2153772945, i64 2153772973, i64 2153773007}
!29 = !{i64 2153773882, i64 2153774367, i64 2153773919, i64 2153773975, i64 2153774009, i64 2153774033, i64 2153774074, i64 2153774095, i64 2153774123, i64 2153774157}
!30 = !{i64 2153775029, i64 2153775514, i64 2153775066, i64 2153775122, i64 2153775156, i64 2153775180, i64 2153775221, i64 2153775242, i64 2153775270, i64 2153775304}
!31 = !{i64 2153776173, i64 2153776658, i64 2153776210, i64 2153776266, i64 2153776300, i64 2153776324, i64 2153776365, i64 2153776386, i64 2153776414, i64 2153776448}
!32 = !{i64 2153777332, i64 2153777817, i64 2153777369, i64 2153777425, i64 2153777459, i64 2153777483, i64 2153777524, i64 2153777545, i64 2153777573, i64 2153777607}
!33 = !{i64 2153778503, i64 2153778988, i64 2153778540, i64 2153778596, i64 2153778630, i64 2153778654, i64 2153778695, i64 2153778716, i64 2153778744, i64 2153778778}
!34 = !{i64 2153779683, i64 2153780168, i64 2153779720, i64 2153779776, i64 2153779810, i64 2153779834, i64 2153779875, i64 2153779896, i64 2153779924, i64 2153779958}
!35 = !{i64 2153780830, i64 2153781315, i64 2153780867, i64 2153780923, i64 2153780957, i64 2153780981, i64 2153781022, i64 2153781043, i64 2153781071, i64 2153781105}
!36 = !{i64 2153781998, i64 2153782483, i64 2153782035, i64 2153782091, i64 2153782125, i64 2153782149, i64 2153782190, i64 2153782211, i64 2153782239, i64 2153782273}
!37 = !{i64 2153783157, i64 2153783642, i64 2153783194, i64 2153783250, i64 2153783284, i64 2153783308, i64 2153783349, i64 2153783370, i64 2153783398, i64 2153783432}
!38 = !{i64 2153463934}
!39 = !{i64 2153468203}
!40 = !{i64 2153770204, i64 2153770689, i64 2153770241, i64 2153770297, i64 2153770331, i64 2153770355, i64 2153770396, i64 2153770417, i64 2153770445, i64 2153770479}
!41 = !{i64 2153771396, i64 2153771881, i64 2153771433, i64 2153771489, i64 2153771523, i64 2153771547, i64 2153771588, i64 2153771609, i64 2153771637, i64 2153771671}
