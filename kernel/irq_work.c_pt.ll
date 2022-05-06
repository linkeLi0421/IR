; ModuleID = '/llk/IR/kernel/irq_work.c_pt.bc'
source_filename = "../kernel/irq_work.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_work_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_work_queue\22\09\09\09\09\09"
module asm "__kstrtabns_irq_work_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_work_run:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_work_run\22\09\09\09\09\09"
module asm "__kstrtabns_irq_work_run:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_work_sync\22\09\09\09\09\09"
module asm "__kstrtabns_irq_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.llist_head = type { ptr }
%struct.cpumask = type { [1 x i32] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.rcuwait = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.32, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.32 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_irq_work_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_work_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_work_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_work_queue to i32), ptr @__kstrtab_irq_work_queue, ptr @__kstrtabns_irq_work_queue }, section "___ksymtab_gpl+irq_work_queue", align 4
@irq_work_queue_on.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [18 x i8] c"kernel/irq_work.c\00", align 1
@irq_work_queue_on.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@raised_list = internal global %struct.llist_head zeroinitializer, section ".data..percpu", align 4
@lazy_list = internal global %struct.llist_head zeroinitializer, section ".data..percpu", align 4
@irq_work_needs_cpu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_irq_work_run = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_work_run = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_work_run = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_work_run to i32), ptr @__kstrtab_irq_work_run, ptr @__kstrtabns_irq_work_run }, section "___ksymtab_gpl+irq_work_run", align 4
@__kstrtab_irq_work_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_work_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_work_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_work_sync to i32), ptr @__kstrtab_irq_work_sync, ptr @__kstrtabns_irq_work_sync }, section "___ksymtab_gpl+irq_work_sync", align 4
@__initcall__kmod_irq_work__192_317_irq_work_init_threadsearly = internal global ptr @irq_work_init_threads, section ".initcallearly.init", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_irq_work__192_317_irq_work_init_threadsearly, ptr @__ksymtab_irq_work_queue, ptr @__ksymtab_irq_work_run, ptr @__ksymtab_irq_work_sync], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_irq_work_raise() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_work_queue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.__call_single_node, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #5, !srcloc !10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 35, ptr elementtype(i32) %2) #5, !srcloc !11
  %4 = extractvalue { i32, i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %8 = load volatile i32, ptr %2, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #4
  br i1 %10, label %14, label %18

14:                                               ; preds = %7
  %15 = add i32 %13, ptrtoint (ptr @raised_list to i32)
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call zeroext i1 @llist_add_batch(ptr noundef %0, ptr noundef %0, ptr noundef %16) #5
  br i1 %17, label %24, label %25

18:                                               ; preds = %7
  %19 = add i32 %13, ptrtoint (ptr @lazy_list to i32)
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call zeroext i1 @llist_add_batch(ptr noundef %0, ptr noundef %0, ptr noundef %20) #5
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = tail call zeroext i1 @tick_nohz_tick_stopped() #5
  br i1 %23, label %24, label %25

24:                                               ; preds = %22, %14
  tail call void @arch_irq_work_raise() #5
  br label %25

25:                                               ; preds = %24, %22, %18, %14
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %26

26:                                               ; preds = %25, %1
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_work_queue_on(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %1, 5
  %4 = getelementptr i32, ptr @__cpu_online_mask, i32 %3
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %1, 31
  %7 = shl nuw i32 1, %6
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  %10 = load i1, ptr @irq_work_queue_on.__already_done, align 1
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %13, label %12, !prof !15

12:                                               ; preds = %2
  store i1 true, ptr @irq_work_queue_on.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef null) #5
  br label %13

13:                                               ; preds = %12, %2
  %14 = getelementptr inbounds %struct.__call_single_node, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #5, !srcloc !10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 35, ptr elementtype(i32) %14) #5, !srcloc !11
  %16 = extractvalue { i32, i32, i32 } %15, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %20 = tail call ptr @llvm.thread.pointer() #5
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 15728640
  %28 = icmp ne i32 %27, 0
  %29 = load i1, ptr @irq_work_queue_on.__already_done.1, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !17

32:                                               ; preds = %24
  store i1 true, ptr @irq_work_queue_on.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef null) #5
  br label %33

33:                                               ; preds = %32, %24
  tail call void @__smp_call_single_queue(i32 noundef %1, ptr noundef %0) #5
  br label %52

34:                                               ; preds = %19
  %35 = load volatile i32, ptr %14, align 4
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #4
  br i1 %37, label %41, label %45

41:                                               ; preds = %34
  %42 = add i32 %40, ptrtoint (ptr @raised_list to i32)
  %43 = inttoptr i32 %42 to ptr
  %44 = tail call zeroext i1 @llist_add_batch(ptr noundef %0, ptr noundef %0, ptr noundef %43) #5
  br i1 %44, label %51, label %52

45:                                               ; preds = %34
  %46 = add i32 %40, ptrtoint (ptr @lazy_list to i32)
  %47 = inttoptr i32 %46 to ptr
  %48 = tail call zeroext i1 @llist_add_batch(ptr noundef %0, ptr noundef %0, ptr noundef %47) #5
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = tail call zeroext i1 @tick_nohz_tick_stopped() #5
  br i1 %50, label %51, label %52

51:                                               ; preds = %49, %41
  tail call void @arch_irq_work_raise() #5
  br label %52

52:                                               ; preds = %51, %49, %45, %41, %33
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  br label %53

53:                                               ; preds = %52, %13
  ret i1 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__smp_call_single_queue(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_work_needs_cpu() local_unnamed_addr #0 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #4, !srcloc !19
  %4 = add i32 %3, ptrtoint (ptr @raised_list to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i32, ptr @smp_on_up, align 4
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = add i32 %3, ptrtoint (ptr @lazy_list to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %11, %0
  %17 = tail call ptr @llvm.thread.pointer() #5
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp ne i32 %25, 0
  %27 = load i1, ptr @irq_work_needs_cpu.__already_done, align 1
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %30, label %29, !prof !15

29:                                               ; preds = %16
  store i1 true, ptr @irq_work_needs_cpu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 9, ptr noundef null) #5
  br label %30

30:                                               ; preds = %29, %16, %11
  %31 = phi i1 [ false, %11 ], [ true, %29 ], [ true, %16 ]
  ret i1 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_work_single(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.__call_single_node, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, -2
  store volatile i32 %4, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !20
  %5 = getelementptr inbounds %struct.irq_work, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0) #5
  %7 = and i32 %3, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #5, !srcloc !10
  br label %8

8:                                                ; preds = %8, %1
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 %4, i32 %7, ptr elementtype(i32) %2) #5, !srcloc !22
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  %13 = load i32, ptr @smp_on_up, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.irq_work, ptr %0, i32 0, i32 2
  %17 = tail call i32 @rcuwait_wake_up(ptr noundef %16) #5
  br label %18

18:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_work_run() #0 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #4, !srcloc !19
  %4 = add i32 %3, ptrtoint (ptr @raised_list to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !24
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !17

9:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/irq_work.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 235, 0\0A.popsection", ""() #5, !srcloc !25
  unreachable

10:                                               ; preds = %0
  %11 = load volatile ptr, ptr %5, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #5, !srcloc !10
  %14 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %5) #5, !srcloc !27
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !28
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %13
  %18 = inttoptr i32 %15 to ptr
  br label %19

19:                                               ; preds = %38, %17
  %20 = phi ptr [ %21, %38 ], [ %18, %17 ]
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.__call_single_node, ptr %20, i32 0, i32 1
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, -2
  store volatile i32 %24, ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !20
  %25 = getelementptr inbounds %struct.irq_work, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void %26(ptr noundef nonnull %20) #5
  %27 = and i32 %23, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #5, !srcloc !10
  br label %28

28:                                               ; preds = %28, %19
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 %24, i32 %27, ptr elementtype(i32) %22) #5, !srcloc !22
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %28

32:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  %33 = load i32, ptr @smp_on_up, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.irq_work, ptr %20, i32 0, i32 2
  %37 = tail call i32 @rcuwait_wake_up(ptr noundef %36) #5
  br label %38

38:                                               ; preds = %35, %32
  %39 = icmp eq ptr %21, null
  br i1 %39, label %40, label %19

40:                                               ; preds = %38, %13, %10
  %41 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %42 = inttoptr i32 %41 to ptr
  %43 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %42) #4, !srcloc !19
  %44 = add i32 %43, ptrtoint (ptr @lazy_list to i32)
  %45 = inttoptr i32 %44 to ptr
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !24
  %47 = and i32 %46, 128
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50, !prof !17

49:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/irq_work.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 235, 0\0A.popsection", ""() #5, !srcloc !25
  unreachable

50:                                               ; preds = %40
  %51 = load volatile ptr, ptr %45, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %80, label %53

53:                                               ; preds = %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #5, !srcloc !10
  %54 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %45) #5, !srcloc !27
  %55 = extractvalue { i32, i32 } %54, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !28
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %80, label %57

57:                                               ; preds = %53
  %58 = inttoptr i32 %55 to ptr
  br label %59

59:                                               ; preds = %78, %57
  %60 = phi ptr [ %61, %78 ], [ %58, %57 ]
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.__call_single_node, ptr %60, i32 0, i32 1
  %63 = load volatile i32, ptr %62, align 4
  %64 = and i32 %63, -2
  store volatile i32 %64, ptr %62, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !20
  %65 = getelementptr inbounds %struct.irq_work, ptr %60, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void %66(ptr noundef nonnull %60) #5
  %67 = and i32 %63, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #5, !srcloc !10
  br label %68

68:                                               ; preds = %68, %59
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 %64, i32 %67, ptr elementtype(i32) %62) #5, !srcloc !22
  %70 = extractvalue { i32, i32 } %69, 0
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %68

72:                                               ; preds = %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  %73 = load i32, ptr @smp_on_up, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.irq_work, ptr %60, i32 0, i32 2
  %77 = tail call i32 @rcuwait_wake_up(ptr noundef %76) #5
  br label %78

78:                                               ; preds = %75, %72
  %79 = icmp eq ptr %61, null
  br i1 %79, label %80, label %59

80:                                               ; preds = %78, %53, %50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_work_tick() local_unnamed_addr #0 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #4, !srcloc !19
  %4 = add i32 %3, ptrtoint (ptr @raised_list to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = load i32, ptr @smp_on_up, align 4
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %46, label %11

11:                                               ; preds = %0
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !24
  %13 = and i32 %12, 128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16, !prof !17

15:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/irq_work.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 235, 0\0A.popsection", ""() #5, !srcloc !25
  unreachable

16:                                               ; preds = %11
  %17 = load volatile ptr, ptr %5, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19

19:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #5, !srcloc !10
  %20 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %5) #5, !srcloc !27
  %21 = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !28
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %19
  %24 = inttoptr i32 %21 to ptr
  br label %25

25:                                               ; preds = %44, %23
  %26 = phi ptr [ %27, %44 ], [ %24, %23 ]
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.__call_single_node, ptr %26, i32 0, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, -2
  store volatile i32 %30, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !20
  %31 = getelementptr inbounds %struct.irq_work, ptr %26, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef nonnull %26) #5
  %33 = and i32 %29, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #5, !srcloc !10
  br label %34

34:                                               ; preds = %34, %25
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 %30, i32 %33, ptr elementtype(i32) %28) #5, !srcloc !22
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %34

38:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  %39 = load i32, ptr @smp_on_up, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.irq_work, ptr %26, i32 0, i32 2
  %43 = tail call i32 @rcuwait_wake_up(ptr noundef %42) #5
  br label %44

44:                                               ; preds = %41, %38
  %45 = icmp eq ptr %27, null
  br i1 %45, label %46, label %25

46:                                               ; preds = %44, %19, %16, %0
  %47 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %48 = inttoptr i32 %47 to ptr
  %49 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #4, !srcloc !19
  %50 = add i32 %49, ptrtoint (ptr @lazy_list to i32)
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !24
  %53 = and i32 %52, 128
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56, !prof !17

55:                                               ; preds = %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/irq_work.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 235, 0\0A.popsection", ""() #5, !srcloc !25
  unreachable

56:                                               ; preds = %46
  %57 = load volatile ptr, ptr %51, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %86, label %59

59:                                               ; preds = %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #5, !srcloc !10
  %60 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %51) #5, !srcloc !27
  %61 = extractvalue { i32, i32 } %60, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !28
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %86, label %63

63:                                               ; preds = %59
  %64 = inttoptr i32 %61 to ptr
  br label %65

65:                                               ; preds = %84, %63
  %66 = phi ptr [ %67, %84 ], [ %64, %63 ]
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.__call_single_node, ptr %66, i32 0, i32 1
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, -2
  store volatile i32 %70, ptr %68, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !20
  %71 = getelementptr inbounds %struct.irq_work, ptr %66, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  tail call void %72(ptr noundef nonnull %66) #5
  %73 = and i32 %69, -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #5, !srcloc !10
  br label %74

74:                                               ; preds = %74, %65
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 %70, i32 %73, ptr elementtype(i32) %68) #5, !srcloc !22
  %76 = extractvalue { i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %74

78:                                               ; preds = %74
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !23
  %79 = load i32, ptr @smp_on_up, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.irq_work, ptr %66, i32 0, i32 2
  %83 = tail call i32 @rcuwait_wake_up(ptr noundef %82) #5
  br label %84

84:                                               ; preds = %81, %78
  %85 = icmp eq ptr %67, null
  br i1 %85, label %86, label %65

86:                                               ; preds = %84, %59, %56
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_work_sync(ptr noundef %0) #0 {
  %2 = load i32, ptr @smp_on_up, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.__call_single_node, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %22

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.irq_work, ptr %0, i32 0, i32 2
  %11 = tail call ptr @llvm.thread.pointer() #5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !29
  store volatile ptr %11, ptr %10, align 4
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  store volatile i32 2, ptr %12, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !30
  %13 = getelementptr inbounds %struct.__call_single_node, ptr %0, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %17, %9
  tail call void @schedule() #5
  store volatile i32 2, ptr %12, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !30
  %18 = load volatile i32, ptr %13, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %17

21:                                               ; preds = %17, %9
  store volatile ptr null, ptr %10, align 4
  store volatile i32 0, ptr %12, align 8
  br label %26

22:                                               ; preds = %22, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !31
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !32
  %23 = load volatile i32, ptr %5, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22, %21, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal i32 @irq_work_init_threads() #2 section ".init.text" {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tick_nohz_tick_stopped() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

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
!9 = !{i64 2148119810}
!10 = !{i64 507847, i64 2147997818, i64 2147997844, i64 2147997891, i64 2147997913, i64 2147997941, i64 2147997961}
!11 = !{i64 2148017695, i64 2148017727, i64 2148017756, i64 2148017790, i64 2148017821, i64 2148017844}
!12 = !{i64 2148120011}
!13 = !{i64 2151873742}
!14 = !{i64 2151873790}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2151876174}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2151880065}
!19 = !{i64 421786}
!20 = !{i64 2151883020}
!21 = !{i64 2148122635}
!22 = !{i64 493910, i64 493934, i64 493955, i64 493972, i64 493989}
!23 = !{i64 2148122835}
!24 = !{i64 405818}
!25 = !{i64 2151886202, i64 2151886684, i64 2151886239, i64 2151886295, i64 2151886329, i64 2151886353, i64 2151886394, i64 2151886415, i64 2151886443, i64 2151886477}
!26 = !{i64 2148443679}
!27 = !{i64 516497, i64 516514, i64 516538, i64 516564, i64 516582}
!28 = !{i64 2148444006}
!29 = !{i64 2150744858}
!30 = !{i64 2151899939}
!31 = !{i64 2151900204}
!32 = !{i64 2151900046}
