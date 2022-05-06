; ModuleID = '/llk/IR/kernel/power/process.c_pt.bc'
source_filename = "../kernel/power/process.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.86, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.67 }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.86 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rlimit = type { i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }

@freeze_timeout_msecs = dso_local local_unnamed_addr global i32 20000, section ".data..read_mostly", align 4
@pm_freezing = external dso_local local_unnamed_addr global i8, align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str = private unnamed_addr constant [37 x i8] c"\016Freezing user space processes ... \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\01cdone.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"\016Freezing remaining freezable tasks ... \00", align 1
@pm_nosig_freezing = external dso_local local_unnamed_addr global i8, align 1
@thaw_processes.___tp_str = internal global ptr @.str.4, section "__tracepoint_str", align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"thaw_processes\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"\016Restarting tasks ... \00", align 1
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@.str.6 = private unnamed_addr constant [23 x i8] c"kernel/power/process.c\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\01cdone.\0A\00", align 1
@thaw_processes.___tp_str.8 = internal global ptr @.str.4, section "__tracepoint_str", align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"\016Restarting kernel threads ... \00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.10 = private unnamed_addr constant [89 x i8] c"\013Freezing of tasks %s after %d.%03d seconds (%d tasks refusing to freeze, wq_busy=%d):\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"aborted\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"\01c(elapsed %d.%03d seconds) \00", align 1
@__tracepoint_suspend_resume = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @thaw_processes.___tp_str, ptr @thaw_processes.___tp_str.8], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @freeze_processes() local_unnamed_addr #0 {
  %1 = tail call i32 @__usermodehelper_disable(i32 noundef 1) #5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %34

3:                                                ; preds = %0
  %4 = tail call ptr @llvm.thread.pointer() #5
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, -2147483648
  store i32 %7, ptr %5, align 4
  %8 = load i8, ptr @pm_freezing, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @system_freezing_cnt) #5, !srcloc !9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @system_freezing_cnt, ptr nonnull @system_freezing_cnt, i32 1, ptr nonnull elementtype(i32) @system_freezing_cnt) #5, !srcloc !10
  br label %12

12:                                               ; preds = %10, %3
  tail call void @pm_wakeup_clear(i32 noundef 0) #5
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  store i8 1, ptr @pm_freezing, align 1
  %14 = tail call fastcc i32 @try_to_freeze_tasks(i1 noundef zeroext true)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  tail call void @__usermodehelper_set_disable_depth(i32 noundef 2) #5
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  %19 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %27, !prof !11

22:                                               ; preds = %12
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  %24 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27, !prof !11

27:                                               ; preds = %22, %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/process.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #5, !srcloc !12
  unreachable

28:                                               ; preds = %16
  %29 = load i32, ptr @freeze_timeout_msecs, align 4
  %30 = tail call i32 @__msecs_to_jiffies(i32 noundef %29) #5
  %31 = tail call zeroext i1 @oom_killer_disable(i32 noundef %30) #5
  br i1 %31, label %34, label %32

32:                                               ; preds = %28, %22
  %33 = phi i32 [ -16, %28 ], [ %14, %22 ]
  tail call void @thaw_processes()
  br label %34

34:                                               ; preds = %32, %28, %0
  %35 = phi i32 [ %1, %0 ], [ %33, %32 ], [ 0, %28 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usermodehelper_disable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_clear(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @try_to_freeze_tasks(i1 noundef zeroext %0) unnamed_addr #0 {
  %2 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #5
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = load i32, ptr @freeze_timeout_msecs, align 4
  %5 = tail call i32 @__msecs_to_jiffies(i32 noundef %4) #5
  %6 = add i32 %5, %3
  br i1 %0, label %8, label %7

7:                                                ; preds = %1
  tail call void @freeze_workqueues_begin() #5
  br label %8

8:                                                ; preds = %7, %1
  br label %9

9:                                                ; preds = %71, %8
  %10 = phi i32 [ %75, %71 ], [ 1000, %8 ]
  %11 = phi i1 [ %62, %71 ], [ false, %8 ]
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #5
  %12 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %13 = getelementptr i8, ptr %12, i32 -1116
  %14 = icmp eq ptr %13, @init_task
  br i1 %14, label %50, label %20

15:                                               ; preds = %44, %20
  %16 = phi i32 [ %22, %20 ], [ %45, %44 ]
  %17 = load volatile ptr, ptr %21, align 4
  %18 = getelementptr i8, ptr %17, i32 -1116
  %19 = icmp eq ptr %18, @init_task
  br i1 %19, label %50, label %20

20:                                               ; preds = %15, %9
  %21 = phi ptr [ %17, %15 ], [ %12, %9 ]
  %22 = phi i32 [ %16, %15 ], [ 0, %9 ]
  %23 = getelementptr i8, ptr %21, i32 500
  %24 = load ptr, ptr %23, align 16
  %25 = getelementptr inbounds %struct.signal_struct, ptr %24, i32 0, i32 3
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %15, label %28

28:                                               ; preds = %20
  %29 = tail call ptr @llvm.thread.pointer() #5
  br label %30

30:                                               ; preds = %44, %28
  %31 = phi ptr [ %26, %28 ], [ %46, %44 ]
  %32 = phi i32 [ %22, %28 ], [ %45, %44 ]
  %33 = getelementptr i8, ptr %31, i32 -1388
  %34 = icmp eq ptr %33, %29
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = tail call zeroext i1 @freeze_task(ptr noundef %33) #5
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %38 = getelementptr i8, ptr %31, i32 -840
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 30
  %41 = and i32 %40, 1
  %42 = xor i32 %41, 1
  %43 = add i32 %42, %32
  br label %44

44:                                               ; preds = %37, %35, %30
  %45 = phi i32 [ %32, %30 ], [ %32, %35 ], [ %43, %37 ]
  %46 = load volatile ptr, ptr %31, align 4
  %47 = load ptr, ptr %23, align 16
  %48 = getelementptr inbounds %struct.signal_struct, ptr %47, i32 0, i32 3
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %15, label %30

50:                                               ; preds = %15, %9
  %51 = phi i32 [ 0, %9 ], [ %16, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #5, !srcloc !9
  %52 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #5, !srcloc !15
  %53 = extractvalue { i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !17
  br label %56

56:                                               ; preds = %55, %50
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  br i1 %0, label %61, label %57

57:                                               ; preds = %56
  %58 = tail call zeroext i1 @freeze_workqueues_busy() #5
  %59 = zext i1 %58 to i32
  %60 = add i32 %51, %59
  br label %61

61:                                               ; preds = %57, %56
  %62 = phi i1 [ %11, %56 ], [ %58, %57 ]
  %63 = phi i32 [ %51, %56 ], [ %60, %57 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %61
  %66 = load volatile i32, ptr @jiffies, align 64
  %67 = sub i32 %6, %66
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = tail call zeroext i1 @pm_wakeup_pending() #5
  br i1 %70, label %76, label %71

71:                                               ; preds = %69
  %72 = sdiv i32 %10, 2
  tail call void @usleep_range_state(i32 noundef %72, i32 noundef %10, i32 noundef 2) #5
  %73 = icmp slt i32 %10, 8000
  %74 = zext i1 %73 to i32
  %75 = shl i32 %10, %74
  br label %9

76:                                               ; preds = %69, %65, %61
  %77 = phi i1 [ true, %69 ], [ false, %61 ], [ false, %65 ]
  %78 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #5
  %79 = sub i64 %78, %2
  %80 = tail call i64 @llvm.abs.i64(i64 %79, i1 false) #5
  %81 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %80) #7, !srcloc !19
  %82 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %80, i64 %81, i32 0) #7, !srcloc !20
  %83 = extractvalue { i64, i32 } %82, 0
  %84 = icmp slt i64 %79, 0
  %85 = lshr i64 %83, 18
  %86 = sub nsw i64 0, %85
  %87 = select i1 %84, i64 %86, i64 %85
  %88 = trunc i64 %87 to i32
  br i1 %64, label %146, label %89

89:                                               ; preds = %76
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  %91 = select i1 %77, ptr @.str.11, ptr @.str.12
  %92 = udiv i32 %88, 1000
  %93 = urem i32 %88, 1000
  %94 = zext i1 %62 to i32
  %95 = sub nuw i32 %63, %94
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %91, i32 noundef %92, i32 noundef %93, i32 noundef %95, i32 noundef %94) #6
  br i1 %62, label %97, label %98

97:                                               ; preds = %89
  tail call void @show_all_workqueues() #5
  br label %98

98:                                               ; preds = %97, %89
  br i1 %77, label %152, label %99

99:                                               ; preds = %98
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #5
  %100 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %101 = getelementptr i8, ptr %100, i32 -1116
  %102 = icmp eq ptr %101, @init_task
  br i1 %102, label %140, label %107

103:                                              ; preds = %135, %107
  %104 = load volatile ptr, ptr %108, align 4
  %105 = getelementptr i8, ptr %104, i32 -1116
  %106 = icmp eq ptr %105, @init_task
  br i1 %106, label %140, label %107

107:                                              ; preds = %103, %99
  %108 = phi ptr [ %104, %103 ], [ %100, %99 ]
  %109 = getelementptr i8, ptr %108, i32 500
  %110 = load ptr, ptr %109, align 16
  %111 = getelementptr inbounds %struct.signal_struct, ptr %110, i32 0, i32 3
  %112 = load volatile ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, %111
  br i1 %113, label %103, label %114

114:                                              ; preds = %107
  %115 = tail call ptr @llvm.thread.pointer() #5
  br label %116

116:                                              ; preds = %135, %114
  %117 = phi ptr [ %112, %114 ], [ %136, %135 ]
  %118 = getelementptr i8, ptr %117, i32 -1388
  %119 = icmp eq ptr %118, %115
  br i1 %119, label %135, label %120

120:                                              ; preds = %116
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %121 = getelementptr i8, ptr %117, i32 -840
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 1073741824
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load volatile i32, ptr @system_freezing_cnt, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %135, label %128, !prof !11

128:                                              ; preds = %125
  %129 = tail call zeroext i1 @freezing_slow_path(ptr noundef %118) #5
  br i1 %129, label %130, label %135

130:                                              ; preds = %128
  %131 = load i32, ptr %121, align 4
  %132 = and i32 %131, 65536
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  tail call void @sched_show_task(ptr noundef %118) #5
  br label %135

135:                                              ; preds = %134, %130, %128, %125, %120, %116
  %136 = load volatile ptr, ptr %117, align 4
  %137 = load ptr, ptr %109, align 16
  %138 = getelementptr inbounds %struct.signal_struct, ptr %137, i32 0, i32 3
  %139 = icmp eq ptr %136, %138
  br i1 %139, label %103, label %116

140:                                              ; preds = %103, %99
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #5, !srcloc !9
  %141 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #5, !srcloc !15
  %142 = extractvalue { i32, i32 } %141, 0
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !17
  br label %145

145:                                              ; preds = %144, %140
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  br label %152

146:                                              ; preds = %76
  %147 = freeze i32 %88
  %148 = udiv i32 %147, 1000
  %149 = mul i32 %148, 1000
  %150 = sub i32 %147, %149
  %151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %148, i32 noundef %150) #6
  br label %152

152:                                              ; preds = %146, %145, %98
  %153 = phi i32 [ -16, %98 ], [ -16, %145 ], [ 0, %146 ]
  ret i32 %153
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__usermodehelper_set_disable_depth(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @oom_killer_disable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thaw_processes() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #5
  %2 = load ptr, ptr @thaw_processes.___tp_str, align 4
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !21
  %16 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %2, i32 noundef 0, i1 noundef zeroext true) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !22
  br label %17

17:                                               ; preds = %15, %5, %0
  %18 = load i8, ptr @pm_freezing, align 1, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @system_freezing_cnt) #5, !srcloc !9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @system_freezing_cnt, ptr nonnull @system_freezing_cnt, i32 1, ptr nonnull elementtype(i32) @system_freezing_cnt) #5, !srcloc !23
  br label %22

22:                                               ; preds = %20, %17
  store i8 0, ptr @pm_freezing, align 1
  store i8 0, ptr @pm_nosig_freezing, align 1
  tail call void @oom_killer_enable() #5
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  tail call void @__usermodehelper_set_disable_depth(i32 noundef 1) #5
  tail call void @thaw_workqueues() #5
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #5
  %24 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %25 = getelementptr i8, ptr %24, i32 -1116
  %26 = icmp eq ptr %25, @init_task
  br i1 %26, label %52, label %31

27:                                               ; preds = %47, %31
  %28 = load volatile ptr, ptr %32, align 4
  %29 = getelementptr i8, ptr %28, i32 -1116
  %30 = icmp eq ptr %29, @init_task
  br i1 %30, label %52, label %31

31:                                               ; preds = %27, %22
  %32 = phi ptr [ %28, %27 ], [ %24, %22 ]
  %33 = getelementptr i8, ptr %32, i32 500
  %34 = load ptr, ptr %33, align 16
  %35 = getelementptr inbounds %struct.signal_struct, ptr %34, i32 0, i32 3
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %27, label %38

38:                                               ; preds = %47, %31
  %39 = phi ptr [ %48, %47 ], [ %36, %31 ]
  %40 = getelementptr i8, ptr %39, i32 -1388
  %41 = icmp eq ptr %40, %1
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %39, i32 -840
  %44 = load i32, ptr %43, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47, !prof !24

46:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 212, i32 noundef 9, ptr noundef null) #5
  br label %47

47:                                               ; preds = %46, %42, %38
  tail call void @__thaw_task(ptr noundef %40) #5
  %48 = load volatile ptr, ptr %39, align 4
  %49 = load ptr, ptr %33, align 16
  %50 = getelementptr inbounds %struct.signal_struct, ptr %49, i32 0, i32 3
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %27, label %38

52:                                               ; preds = %27, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #5, !srcloc !9
  %53 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #5, !srcloc !15
  %54 = extractvalue { i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !17
  br label %57

57:                                               ; preds = %56, %52
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %58 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %63, !prof !24

61:                                               ; preds = %57
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 217, i32 noundef 9, ptr noundef null) #5
  %62 = load i32, ptr %58, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = phi i32 [ %62, %61 ], [ %59, %57 ]
  %65 = and i32 %64, 2147483647
  store i32 %65, ptr %58, align 4
  tail call void @__usermodehelper_set_disable_depth(i32 noundef 0) #5
  tail call void @schedule() #5
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #6
  %67 = load ptr, ptr @thaw_processes.___tp_str.8, align 4
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 5
  %74 = getelementptr i32, ptr @__cpu_online_mask, i32 %73
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %72, 31
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %70
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !21
  %81 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %67, i32 noundef 0, i1 noundef zeroext false) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !22
  br label %82

82:                                               ; preds = %80, %70, %63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @freeze_kernel_threads() local_unnamed_addr #0 {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  store i8 1, ptr @pm_nosig_freezing, align 1
  %2 = tail call fastcc i32 @try_to_freeze_tasks(i1 noundef zeroext false)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %6

6:                                                ; preds = %4, %0
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  %8 = tail call ptr @llvm.thread.pointer() #5
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !11

12:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/process.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #5, !srcloc !25
  unreachable

13:                                               ; preds = %6
  br i1 %3, label %15, label %14

14:                                               ; preds = %13
  tail call void @thaw_kernel_threads()
  br label %15

15:                                               ; preds = %14, %13
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thaw_kernel_threads() local_unnamed_addr #0 {
  store i8 0, ptr @pm_nosig_freezing, align 1
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #6
  tail call void @thaw_workqueues() #5
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #5
  %2 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %3 = getelementptr i8, ptr %2, i32 -1116
  %4 = icmp eq ptr %3, @init_task
  br i1 %4, label %31, label %9

5:                                                ; preds = %26, %9
  %6 = load volatile ptr, ptr %10, align 4
  %7 = getelementptr i8, ptr %6, i32 -1116
  %8 = icmp eq ptr %7, @init_task
  br i1 %8, label %31, label %9

9:                                                ; preds = %5, %0
  %10 = phi ptr [ %6, %5 ], [ %2, %0 ]
  %11 = getelementptr i8, ptr %10, i32 500
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr inbounds %struct.signal_struct, ptr %12, i32 0, i32 3
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %5, label %16

16:                                               ; preds = %26, %9
  %17 = phi ptr [ %27, %26 ], [ %12, %9 ]
  %18 = phi ptr [ %28, %26 ], [ %14, %9 ]
  %19 = getelementptr i8, ptr %18, i32 -840
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %18, i32 -1388
  tail call void @__thaw_task(ptr noundef %24) #5
  %25 = load ptr, ptr %11, align 16
  br label %26

26:                                               ; preds = %23, %16
  %27 = phi ptr [ %17, %16 ], [ %25, %23 ]
  %28 = load volatile ptr, ptr %18, align 4
  %29 = getelementptr inbounds %struct.signal_struct, ptr %27, i32 0, i32 3
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %5, label %16

31:                                               ; preds = %5, %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #5, !srcloc !9
  %32 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #5, !srcloc !15
  %33 = extractvalue { i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !17
  br label %36

36:                                               ; preds = %35, %31
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  tail call void @schedule() #5
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @oom_killer_enable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thaw_workqueues() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__thaw_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @freeze_workqueues_begin() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freeze_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freeze_workqueues_busy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_wakeup_pending() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_all_workqueues() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_show_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_suspend_resume(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 439752, i64 2147929723, i64 2147929749, i64 2147929796, i64 2147929818, i64 2147929846, i64 2147929866}
!10 = !{i64 2147941935, i64 2147941961, i64 2147941990, i64 2147942024, i64 2147942055, i64 2147942078}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2154815310, i64 2154815797, i64 2154815347, i64 2154815403, i64 2154815437, i64 2154815461, i64 2154815502, i64 2154815523, i64 2154815551, i64 2154815585}
!13 = !{i64 2153349231}
!14 = !{i64 2149243575}
!15 = !{i64 1746999, i64 1747022, i64 1747042, i64 1747066, i64 1747082}
!16 = !{i64 2149231517}
!17 = !{i64 2149231592, i64 2149231619, i64 2149231666, i64 2149231688, i64 2149231716, i64 2149231736}
!18 = !{i64 2149281178}
!19 = !{i64 869284, i64 869311}
!20 = !{i64 869979, i64 870006, i64 870039, i64 870060, i64 870087, i64 870113}
!21 = !{i64 2154403839}
!22 = !{i64 2154404015}
!23 = !{i64 2147944292, i64 2147944318, i64 2147944347, i64 2147944381, i64 2147944412, i64 2147944435}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2154817432, i64 2154817919, i64 2154817469, i64 2154817525, i64 2154817559, i64 2154817583, i64 2154817624, i64 2154817645, i64 2154817673, i64 2154817707}
