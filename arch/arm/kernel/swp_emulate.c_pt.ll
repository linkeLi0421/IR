; ModuleID = '/llk/IR/arch/arm/kernel/swp_emulate.c_pt.bc'
source_filename = "../arch/arm/kernel/swp_emulate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.undef_hook = type { %struct.list_head, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.37 }
%struct.llist_node = type { ptr }
%union.anon.37 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.23 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@__initcall__kmod_swp_emulate__243_258_swp_emulation_init7 = internal global ptr @swp_emulation_init, section ".initcall7.init", align 4
@.str = private unnamed_addr constant [18 x i8] c"cpu/swp_emulation\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"\015Registering SWP/SWPB emulation handler\0A\00", align 1
@swp_hook = internal global %struct.undef_hook { %struct.list_head zeroinitializer, i32 263196656, i32 16777360, i32 16777279, i32 16, ptr @swp_handler }, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Emulated SWP:\09\09%lu\0A\00", align 1
@swpcounter = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Emulated SWPB:\09\09%lu\0A\00", align 1
@swpbcounter = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Aborted SWP{B}:\09\09%lu\0A\00", align 1
@abtcounter = internal unnamed_addr global i32 0, align 4
@previous_pid = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Last process:\09\09%d\0A\00", align 1
@perf_swevent_enabled = external dso_local global [12 x %struct.static_key], align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Illegal memory access\00", align 1
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_swp_emulate__243_258_swp_emulation_init7], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @swp_emulation_init() #0 section ".init.text" {
  %1 = tail call i32 @cpu_architecture() #6
  %2 = icmp slt i32 %1, 9
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef null, ptr noundef nonnull @proc_status_show, ptr noundef null) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  tail call void @register_undef_hook(ptr noundef nonnull @swp_hook) #7
  br label %8

8:                                                ; preds = %6, %3, %0
  %9 = phi i32 [ 0, %6 ], [ 0, %0 ], [ -12, %3 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_status_show(ptr noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = load i32, ptr @swpcounter, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %3) #7
  %4 = load i32, ptr @swpbcounter, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %4) #7
  %5 = load i32, ptr @abtcounter, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %5) #7
  %6 = load i32, ptr @previous_pid, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %6) #7
  br label %9

9:                                                ; preds = %8, %2
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_undef_hook(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @swp_handler(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = load volatile i32, ptr getelementptr inbounds ([12 x %struct.static_key], ptr @perf_swevent_enabled, i32 0, i32 8), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = zext i32 %4 to i64
  tail call void @__perf_sw_event(i32 noundef 8, i64 noundef 1, ptr noundef %0, i64 noundef %8) #7
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr [18 x i32], ptr %0, i32 0, i32 16
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @arm_check_condition(i32 noundef %1, i32 noundef %11) #7
  switch i32 %12, label %16 [
    i32 1, label %17
    i32 0, label %13
    i32 2, label %103
  ]

13:                                               ; preds = %9
  %14 = load i32, ptr %3, align 4
  %15 = add i32 %14, 4
  store i32 %15, ptr %3, align 4
  br label %103

16:                                               ; preds = %9
  br label %103

17:                                               ; preds = %9
  %18 = tail call ptr @llvm.thread.pointer() #7
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 52
  %20 = load i32, ptr %19, align 8
  %21 = load i32, ptr @previous_pid, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 %20, ptr @previous_pid, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = lshr i32 %1, 16
  %26 = and i32 %25, 15
  %27 = getelementptr [18 x i32], ptr %0, i32 0, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %1, 15
  %30 = getelementptr [18 x i32], ptr %0, i32 0, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %1, 12
  %33 = and i32 %32, 15
  %34 = and i32 %28, -4
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(i32 %34, i32 4, i32 -1090519040) #9, !srcloc !8
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %24
  %39 = and i32 %1, 4194304
  %40 = icmp ne i32 %39, 0
  %41 = and i32 %28, 3
  %42 = icmp eq i32 %41, 0
  %43 = or i1 %40, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  br label %46

46:                                               ; preds = %67, %44
  %47 = phi i32 [ %31, %44 ], [ %58, %67 ]
  %48 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %45) #10, !srcloc !9
  %49 = and i32 %48, -13
  %50 = or i32 %49, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #7, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !11
  br i1 %40, label %51, label %53

51:                                               ; preds = %46
  %52 = tail call { i32, i32, i32 } asm sideeffect "0:\09ldrexb\09$2, [$3]\0A1:\09strexb\09$0, $1, [$3]\0A\09cmp\09\09$0, #0\0A\09moveq\09\09$1, $2\0A\09movne\09\09$0, $4\0A2:\0A\09.section\09 .text.fixup,\22ax\22\0A\09.align\09\092\0A3:\09mov\09\09$0, $5\0A\09b\09\092b\0A\09.previous\0A\09.section\09 __ex_table,\22a\22\0A\09.align\09\093\0A\09.long\09\090b, 3b\0A\09.long\09\091b, 3b\0A\09.previous", "=&r,=r,=&r,r,i,i,1,~{cc},~{memory}"(i32 %28, i32 -11, i32 -14, i32 %47) #7, !srcloc !12
  br label %55

53:                                               ; preds = %46
  %54 = tail call { i32, i32, i32 } asm sideeffect "0:\09ldrex\09$2, [$3]\0A1:\09strex\09$0, $1, [$3]\0A\09cmp\09\09$0, #0\0A\09moveq\09\09$1, $2\0A\09movne\09\09$0, $4\0A2:\0A\09.section\09 .text.fixup,\22ax\22\0A\09.align\09\092\0A3:\09mov\09\09$0, $5\0A\09b\09\092b\0A\09.previous\0A\09.section\09 __ex_table,\22a\22\0A\09.align\09\093\0A\09.long\09\090b, 3b\0A\09.long\09\091b, 3b\0A\09.previous", "=&r,=r,=&r,r,i,i,1,~{cc},~{memory}"(i32 %28, i32 -11, i32 -14, i32 %47) #7, !srcloc !13
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi { i32, i32, i32 } [ %54, %53 ], [ %52, %51 ]
  %57 = extractvalue { i32, i32, i32 } %56, 0
  %58 = extractvalue { i32, i32, i32 } %56, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #7, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !11
  switch i32 %57, label %103 [
    i32 -11, label %59
    i32 0, label %69
    i32 -14, label %77
  ], !prof !14

59:                                               ; preds = %55
  %60 = load volatile i32, ptr %18, align 4
  %61 = and i32 %60, 256
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %103, !prof !15

63:                                               ; preds = %59
  %64 = load volatile i32, ptr %18, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %63
  %68 = tail call i32 @__cond_resched() #7
  br label %46

69:                                               ; preds = %55
  %70 = extractvalue { i32, i32, i32 } %56, 1
  %71 = select i1 %40, ptr @swpbcounter, ptr @swpcounter
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %71, align 4
  %74 = load i32, ptr %3, align 4
  %75 = add i32 %74, 4
  store i32 %75, ptr %3, align 4
  %76 = getelementptr [18 x i32], ptr %0, i32 0, i32 %33
  store i32 %70, ptr %76, align 4
  br label %103

77:                                               ; preds = %55, %38, %24
  %78 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 37
  %79 = load ptr, ptr %78, align 4
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %79, i1 noundef zeroext false) #7
  br label %83

83:                                               ; preds = %82, %77
  %84 = getelementptr inbounds %struct.anon.23, ptr %79, i32 0, i32 15
  tail call void @down_read(ptr noundef %84) #7
  %85 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %79, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %88

88:                                               ; preds = %87, %83
  %89 = load ptr, ptr %78, align 4
  %90 = tail call ptr @find_vma(ptr noundef %89, i32 noundef %28) #7
  %91 = load ptr, ptr %78, align 4
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  tail call void @__mmap_lock_do_trace_released(ptr noundef %91, i1 noundef zeroext false) #7
  br label %95

95:                                               ; preds = %94, %88
  %96 = icmp eq ptr %90, null
  %97 = select i1 %96, i32 1, i32 2
  %98 = getelementptr inbounds %struct.anon.23, ptr %91, i32 0, i32 15
  tail call void @up_read(ptr noundef %98) #7
  %99 = load i32, ptr %3, align 4
  %100 = inttoptr i32 %99 to ptr
  tail call void @arm_notify_die(ptr noundef nonnull @.str.7, ptr noundef %0, i32 noundef 11, i32 noundef %97, ptr noundef %100, i32 noundef 0, i32 noundef 0) #7
  %101 = load i32, ptr @abtcounter, align 4
  %102 = add i32 %101, 1
  store i32 %102, ptr @abtcounter, align 4
  br label %103

103:                                              ; preds = %95, %69, %63, %59, %55, %16, %13, %9
  %104 = phi i32 [ -22, %16 ], [ 0, %13 ], [ -14, %9 ], [ 0, %95 ], [ 0, %69 ], [ 0, %59 ], [ 0, %63 ], [ 0, %55 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_check_condition(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__perf_sw_event(i32 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_notify_die(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

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
!8 = !{i64 2153616391, i64 2153616416}
!9 = !{i64 3470913}
!10 = !{i64 3471110}
!11 = !{i64 2150956389}
!12 = !{i64 2153612529, i64 2153612560, i64 2153612594, i64 2153612616, i64 2153612640, i64 2153612664, i64 2153612680, i64 2153612718, i64 2153612739, i64 2153612763, i64 2153612780, i64 2153612802, i64 2153612838, i64 2153612859, i64 2153612883, i64 2153612907}
!13 = !{i64 2153613168, i64 2153613199, i64 2153613233, i64 2153613255, i64 2153613279, i64 2153613303, i64 2153613319, i64 2153613357, i64 2153613378, i64 2153613402, i64 2153613419, i64 2153613441, i64 2153613477, i64 2153613498, i64 2153613522, i64 2153613546}
!14 = !{!"branch_weights", i32 2000, i32 4, i32 4000, i32 2000}
!15 = !{!"branch_weights", i32 2000, i32 1}
