; ModuleID = '/llk/IR/kernel/events/callchain.c_pt.bc'
source_filename = "../kernel/events/callchain.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.callchain_cpus_entries = type { %struct.callback_head, [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.perf_callchain_entry_ctx = type { ptr, i32, i32, i16, i8 }
%struct.perf_callchain_entry = type { i64, [0 x i64] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.83, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.83 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }

@sysctl_perf_event_max_stack = dso_local local_unnamed_addr global i32 127, section ".data..read_mostly", align 4
@sysctl_perf_event_max_contexts_per_stack = dso_local local_unnamed_addr global i32 8, section ".data..read_mostly", align 4
@callchain_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @callchain_mutex, i64 12), ptr getelementptr (i8, ptr @callchain_mutex, i64 12) } }, align 4
@nr_callchain_events = internal global %struct.atomic_t zeroinitializer, align 4
@get_callchain_buffers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [26 x i8] c"kernel/events/callchain.c\00", align 1
@callchain_recursion = internal global [4 x i32] zeroinitializer, section ".data..percpu", align 4
@callchain_cpus_entries = internal global ptr null, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @perf_callchain_kernel(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @perf_callchain_user(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_callchain_buffers(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @callchain_mutex) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nr_callchain_events) #8, !srcloc !10
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_callchain_events, ptr nonnull @nr_callchain_events, i32 1, ptr nonnull elementtype(i32) @nr_callchain_events) #8, !srcloc !11
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %4 = icmp slt i32 %3, 1
  %5 = load i1, ptr @get_callchain_buffers.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !13

8:                                                ; preds = %1
  store i1 true, ptr @get_callchain_buffers.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef null) #8
  br label %9

9:                                                ; preds = %8, %1
  br i1 %4, label %49, label %10

10:                                               ; preds = %9
  %11 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  %12 = icmp slt i32 %11, %0
  br i1 %12, label %49, label %13

13:                                               ; preds = %10
  %14 = icmp eq i32 %3, 1
  br i1 %14, label %15, label %52

15:                                               ; preds = %13
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = shl i32 %16, 2
  %18 = add i32 %17, 8
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %15
  %22 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  %23 = load i32, ptr @sysctl_perf_event_max_contexts_per_stack, align 4
  %24 = add i32 %23, %22
  %25 = shl i32 %24, 5
  %26 = add i32 %25, 32
  br label %27

27:                                               ; preds = %32, %21
  %28 = phi i32 [ -1, %21 ], [ %29, %32 ]
  %29 = tail call i32 @cpumask_next(i32 noundef %28, ptr noundef nonnull @__cpu_possible_mask) #10
  %30 = load i32, ptr @nr_cpu_ids, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %26, i32 noundef 3264) #9
  %34 = getelementptr %struct.callchain_cpus_entries, ptr %19, i32 0, i32 1, i32 %29
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %27

36:                                               ; preds = %32
  %37 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #10
  %38 = load i32, ptr @nr_cpu_ids, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %41, label %48

40:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  store volatile ptr %19, ptr @callchain_cpus_entries, align 4
  br label %52

41:                                               ; preds = %41, %36
  %42 = phi i32 [ %45, %41 ], [ %37, %36 ]
  %43 = getelementptr %struct.callchain_cpus_entries, ptr %19, i32 0, i32 1, i32 %42
  %44 = load ptr, ptr %43, align 4
  tail call void @kfree(ptr noundef %44) #8
  %45 = tail call i32 @cpumask_next(i32 noundef %42, ptr noundef nonnull @__cpu_possible_mask) #10
  %46 = load i32, ptr @nr_cpu_ids, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %41, label %48

48:                                               ; preds = %41, %36
  tail call void @kfree(ptr noundef nonnull %19) #8
  br label %49

49:                                               ; preds = %48, %15, %10, %9
  %50 = phi i32 [ -12, %15 ], [ -12, %48 ], [ -75, %10 ], [ -22, %9 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nr_callchain_events) #8, !srcloc !10
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_callchain_events, ptr nonnull @nr_callchain_events, i32 1, ptr nonnull elementtype(i32) @nr_callchain_events) #8, !srcloc !15
  br label %52

52:                                               ; preds = %49, %40, %13
  %53 = phi i32 [ %50, %49 ], [ 0, %13 ], [ 0, %40 ]
  tail call void @mutex_unlock(ptr noundef nonnull @callchain_mutex) #8
  ret i32 %53
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_callchain_buffers() local_unnamed_addr #0 {
  %1 = tail call i32 @atomic_dec_and_mutex_lock(ptr noundef nonnull @nr_callchain_events, ptr noundef nonnull @callchain_mutex) #8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @callchain_cpus_entries, align 4
  store volatile ptr null, ptr @callchain_cpus_entries, align 4
  tail call void @call_rcu(ptr noundef %4, ptr noundef nonnull @release_callchain_buffers_rcu) #8
  tail call void @mutex_unlock(ptr noundef nonnull @callchain_mutex) #8
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_callchain_entry(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #6, !srcloc !16
  %5 = add i32 %4, ptrtoint (ptr @callchain_recursion to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call ptr @llvm.thread.pointer() #8
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 15728640
  %11 = icmp ne i32 %10, 0
  %12 = and i32 %9, 16711680
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = zext i1 %11 to i32
  %16 = add nuw nsw i32 %15, %14
  %17 = and i32 %9, 16711936
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = add nuw nsw i32 %16, %19
  %21 = getelementptr i32, ptr %6, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 -1, ptr %0, align 4
  br label %49

25:                                               ; preds = %1
  store i32 1, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  store i32 %20, ptr %0, align 4
  %26 = load volatile ptr, ptr @callchain_cpus_entries, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %30 = inttoptr i32 %29 to ptr
  %31 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %30) #6, !srcloc !16
  %32 = add i32 %31, ptrtoint (ptr @callchain_recursion to i32)
  %33 = inttoptr i32 %32 to ptr
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %34 = getelementptr i32, ptr %33, i32 %20
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  br label %49

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr %struct.callchain_cpus_entries, ptr %26, i32 0, i32 1, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  %43 = load i32, ptr @sysctl_perf_event_max_contexts_per_stack, align 4
  %44 = add i32 %43, %42
  %45 = shl i32 %44, 3
  %46 = add i32 %45, 8
  %47 = mul i32 %46, %20
  %48 = getelementptr i8, ptr %41, i32 %47
  br label %49

49:                                               ; preds = %37, %28, %24
  %50 = phi ptr [ %48, %37 ], [ null, %28 ], [ null, %24 ]
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_callchain_entry(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #6, !srcloc !16
  %5 = add i32 %4, ptrtoint (ptr @callchain_recursion to i32)
  %6 = inttoptr i32 %5 to ptr
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %7 = getelementptr i32, ptr %6, i32 %0
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_perf_callchain(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca %struct.perf_callchain_entry_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  %9 = getelementptr inbounds i8, ptr %8, i32 12
  store i32 0, ptr %9, align 4, !annotation !19
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #6, !srcloc !16
  %13 = add i32 %12, ptrtoint (ptr @callchain_recursion to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call ptr @llvm.thread.pointer() #8
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 15728640
  %19 = icmp ne i32 %18, 0
  %20 = and i32 %17, 16711680
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = zext i1 %19 to i32
  %24 = add nuw nsw i32 %23, %22
  %25 = and i32 %17, 16711936
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = add nuw nsw i32 %24, %27
  %29 = getelementptr i32, ptr %14, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %122

32:                                               ; preds = %7
  store i32 1, ptr %29, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %33 = load volatile ptr, ptr @callchain_cpus_entries, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %37 = inttoptr i32 %36 to ptr
  %38 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %37) #6, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %114

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr %struct.callchain_cpus_entries, ptr %33, i32 0, i32 1, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  %45 = load i32, ptr @sysctl_perf_event_max_contexts_per_stack, align 4
  %46 = add i32 %45, %44
  %47 = shl i32 %46, 3
  %48 = add i32 %47, 8
  %49 = mul i32 %48, %28
  %50 = getelementptr i8, ptr %43, i32 %49
  %51 = icmp eq ptr %50, null
  br i1 %51, label %122, label %52

52:                                               ; preds = %39
  store ptr %50, ptr %8, align 4
  %53 = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %8, i32 0, i32 1
  store i32 %4, ptr %53, align 4
  %54 = zext i32 %1 to i64
  store i64 %54, ptr %50, align 8
  %55 = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %8, i32 0, i32 2
  store i32 %1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %8, i32 0, i32 3
  store i16 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.perf_callchain_entry_ctx, ptr %8, i32 0, i32 4
  store i8 0, ptr %57, align 2
  br i1 %2, label %58, label %76

58:                                               ; preds = %52
  %59 = getelementptr [18 x i32], ptr %0, i32 0, i32 16
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %58
  br i1 %6, label %64, label %75

64:                                               ; preds = %63
  %65 = icmp sgt i32 %45, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %64
  %67 = load ptr, ptr %8, align 4
  %68 = load i64, ptr %67, align 8
  %69 = add i64 %68, 1
  store i64 %69, ptr %67, align 8
  %70 = trunc i64 %68 to i32
  %71 = getelementptr %struct.perf_callchain_entry, ptr %67, i32 0, i32 1, i32 %70
  store i64 -128, ptr %71, align 8
  %72 = load i16, ptr %56, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %56, align 4
  br label %75

74:                                               ; preds = %64
  store i8 1, ptr %57, align 2
  br label %75

75:                                               ; preds = %74, %66, %63
  call void @perf_callchain_kernel(ptr noundef nonnull %8, ptr noundef %0)
  br label %76

76:                                               ; preds = %75, %58, %52
  br i1 %3, label %77, label %110

77:                                               ; preds = %76
  %78 = getelementptr [18 x i32], ptr %0, i32 0, i32 16
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 15
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 37
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %110, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 8112
  br label %90

90:                                               ; preds = %86, %77
  %91 = phi ptr [ %0, %77 ], [ %89, %86 ]
  %92 = icmp eq ptr %91, null
  %93 = or i1 %92, %5
  br i1 %93, label %110, label %94

94:                                               ; preds = %90
  br i1 %6, label %95, label %109

95:                                               ; preds = %94
  %96 = load i16, ptr %56, align 4
  %97 = sext i16 %96 to i32
  %98 = load i32, ptr @sysctl_perf_event_max_contexts_per_stack, align 4
  %99 = icmp sgt i32 %98, %97
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load ptr, ptr %8, align 4
  %102 = load i64, ptr %101, align 8
  %103 = add i64 %102, 1
  store i64 %103, ptr %101, align 8
  %104 = trunc i64 %102 to i32
  %105 = getelementptr %struct.perf_callchain_entry, ptr %101, i32 0, i32 1, i32 %104
  store i64 -512, ptr %105, align 8
  %106 = load i16, ptr %56, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr %56, align 4
  br label %109

108:                                              ; preds = %95
  store i8 1, ptr %57, align 2
  br label %109

109:                                              ; preds = %108, %100, %94
  call void @perf_callchain_user(ptr noundef nonnull %8, ptr noundef nonnull %91)
  br label %110

110:                                              ; preds = %109, %90, %82, %76
  %111 = call i32 @llvm.read_register.i32(metadata !0) #8
  %112 = inttoptr i32 %111 to ptr
  %113 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %112) #6, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  br label %114

114:                                              ; preds = %110, %35
  %115 = phi i32 [ %113, %110 ], [ %38, %35 ]
  %116 = phi ptr [ %50, %110 ], [ null, %35 ]
  %117 = add i32 %115, ptrtoint (ptr @callchain_recursion to i32)
  %118 = inttoptr i32 %117 to ptr
  %119 = getelementptr i32, ptr %118, i32 %28
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, -1
  store i32 %121, ptr %119, align 4
  br label %122

122:                                              ; preds = %114, %39, %7
  %123 = phi ptr [ null, %39 ], [ null, %7 ], [ %116, %114 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  ret ptr %123
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @perf_event_max_stack_handler(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_table, align 4
  %8 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %7, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false)
  %11 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 1
  store ptr %6, ptr %11, align 4
  %12 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %7, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8
  %13 = icmp eq i32 %12, 0
  %14 = icmp ne i32 %1, 0
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  call void @mutex_lock(ptr noundef nonnull @callchain_mutex) #8
  %17 = load volatile i32, ptr @nr_callchain_events, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, ptr %6, align 4
  store i32 %20, ptr %9, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ 0, %19 ], [ -16, %16 ]
  call void @mutex_unlock(ptr noundef nonnull @callchain_mutex) #8
  br label %23

23:                                               ; preds = %21, %5
  %24 = phi i32 [ %22, %21 ], [ %12, %5 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @release_callchain_buffers_rcu(ptr noundef %0) #0 {
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #10
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %12

5:                                                ; preds = %5, %1
  %6 = phi i32 [ %9, %5 ], [ %2, %1 ]
  %7 = getelementptr %struct.callchain_cpus_entries, ptr %0, i32 0, i32 1, i32 %6
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #8
  %9 = tail call i32 @cpumask_next(i32 noundef %6, ptr noundef nonnull @__cpu_possible_mask) #10
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %5, label %12

12:                                               ; preds = %5, %1
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind readonly willreturn }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 2148324415}
!10 = !{i64 661741, i64 2148163307, i64 2148163333, i64 2148163380, i64 2148163402, i64 2148163430, i64 2148163450}
!11 = !{i64 2148227253, i64 2148227285, i64 2148227314, i64 2148227348, i64 2148227379, i64 2148227402}
!12 = !{i64 2148324618}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2153410322}
!15 = !{i64 2148228926, i64 2148228952, i64 2148228981, i64 2148229015, i64 2148229046, i64 2148229069}
!16 = !{i64 697593}
!17 = !{i64 2153397771}
!18 = !{i64 2153397978}
!19 = !{!"auto-init"}
