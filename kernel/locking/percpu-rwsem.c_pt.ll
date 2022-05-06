; ModuleID = '/llk/IR/kernel/locking/percpu-rwsem.c_pt.bc'
source_filename = "../kernel/locking/percpu-rwsem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___percpu_init_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22__percpu_init_rwsem\22\09\09\09\09\09"
module asm "__kstrtabns___percpu_init_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_free_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_free_rwsem\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_free_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___percpu_down_read:\09\09\09\09\09"
module asm "\09.asciz \09\22__percpu_down_read\22\09\09\09\09\09"
module asm "__kstrtabns___percpu_down_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_down_write:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_down_write\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_down_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_percpu_up_write:\09\09\09\09\09"
module asm "\09.asciz \09\22percpu_up_write\22\09\09\09\09\09"
module asm "__kstrtabns_percpu_up_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.32, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.32 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__percpu_init_rwsem.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [14 x i8] c"&sem->waiters\00", align 1
@__kstrtab___percpu_init_rwsem = external dso_local constant [0 x i8], align 1
@__kstrtabns___percpu_init_rwsem = external dso_local constant [0 x i8], align 1
@__ksymtab___percpu_init_rwsem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__percpu_init_rwsem to i32), ptr @__kstrtab___percpu_init_rwsem, ptr @__kstrtabns___percpu_init_rwsem }, section "___ksymtab_gpl+__percpu_init_rwsem", align 4
@__kstrtab_percpu_free_rwsem = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_free_rwsem = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_free_rwsem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_free_rwsem to i32), ptr @__kstrtab_percpu_free_rwsem, ptr @__kstrtabns_percpu_free_rwsem }, section "___ksymtab_gpl+percpu_free_rwsem", align 4
@__kstrtab___percpu_down_read = external dso_local constant [0 x i8], align 1
@__kstrtabns___percpu_down_read = external dso_local constant [0 x i8], align 1
@__ksymtab___percpu_down_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__percpu_down_read to i32), ptr @__kstrtab___percpu_down_read, ptr @__kstrtabns___percpu_down_read }, section "___ksymtab_gpl+__percpu_down_read", align 4
@__kstrtab_percpu_down_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_down_write = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_down_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_down_write to i32), ptr @__kstrtab_percpu_down_write, ptr @__kstrtabns_percpu_down_write }, section "___ksymtab_gpl+percpu_down_write", align 4
@__kstrtab_percpu_up_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_percpu_up_write = external dso_local constant [0 x i8], align 1
@__ksymtab_percpu_up_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @percpu_up_write to i32), ptr @__kstrtab_percpu_up_write, ptr @__kstrtabns_percpu_up_write }, section "___ksymtab_gpl+percpu_up_write", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab___percpu_down_read, ptr @__ksymtab___percpu_init_rwsem, ptr @__ksymtab_percpu_down_write, ptr @__ksymtab_percpu_free_rwsem, ptr @__ksymtab_percpu_up_write], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__percpu_init_rwsem(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #7
  %5 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = icmp eq ptr %4, null
  br i1 %6, label %11, label %7, !prof !9

7:                                                ; preds = %3
  tail call void @rcu_sync_init(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 2
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @__percpu_init_rwsem.__key) #8
  %10 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 4
  store volatile i32 0, ptr %10, align 4
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 0, %7 ], [ -12, %3 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sync_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @percpu_free_rwsem(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @rcu_sync_dtor(ptr noundef %0) #8
  %6 = load ptr, ptr %2, align 4
  tail call void @free_percpu(ptr noundef %6) #8
  store ptr null, ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sync_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__percpu_down_read(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !10
  %4 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #4, !srcloc !11
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %14 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 4
  %15 = load volatile i32, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %31, label %17, !prof !15

17:                                               ; preds = %2
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !10
  %19 = load ptr, ptr %4, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #4, !srcloc !11
  %24 = add i32 %23, %20
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  store i32 %27, ptr %25, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #8, !srcloc !12
  %28 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 2
  %29 = tail call i32 @rcuwait_wake_up(ptr noundef %28) #8
  br i1 %1, label %31, label %30

30:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  tail call fastcc void @percpu_rwsem_wait(ptr noundef %0, i1 noundef zeroext true)
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %31

31:                                               ; preds = %30, %17, %2
  %32 = phi i1 [ true, %30 ], [ false, %17 ], [ true, %2 ]
  ret i1 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @percpu_rwsem_wait(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %5 = tail call ptr @llvm.thread.pointer() #8
  store i32 0, ptr %3, align 4
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @percpu_rwsem_wake_function, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %9) #8
  br i1 %1, label %10, label %39

10:                                               ; preds = %2
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %11 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !10
  %12 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = call i32 @llvm.read_register.i32(metadata !0) #8
  %16 = inttoptr i32 %15 to ptr
  %17 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #4, !srcloc !11
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #8, !srcloc !12
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %22 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 4
  %23 = load volatile i32, ptr %22, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26, !prof !15

25:                                               ; preds = %10
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  br label %62

26:                                               ; preds = %10
  %27 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !10
  %28 = load ptr, ptr %12, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = call i32 @llvm.read_register.i32(metadata !0) #8
  %31 = inttoptr i32 %30 to ptr
  %32 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #4, !srcloc !11
  %33 = add i32 %32, %29
  %34 = inttoptr i32 %33 to ptr
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #8, !srcloc !12
  %37 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 2
  %38 = call i32 @rcuwait_wake_up(ptr noundef %37) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  br label %47

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 4
  %41 = load volatile i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #8, !srcloc !21
  %44 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %40) #8, !srcloc !22
  %45 = extractvalue { i32, i32 } %44, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %43, %39, %26
  %48 = phi i32 [ 1, %39 ], [ 9, %26 ], [ 1, %43 ]
  %49 = load i32, ptr %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, ptr %3, align 4
  %51 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 3, i32 1
  %52 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 3, i32 1, i32 1
  %53 = load ptr, ptr %52, align 4
  store ptr %7, ptr %52, align 4
  store ptr %51, ptr %7, align 4
  store ptr %53, ptr %8, align 4
  store volatile ptr %7, ptr %53, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  %54 = load i16, ptr %9, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %56 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  store volatile i32 2, ptr %56, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !29
  %57 = load volatile ptr, ptr %4, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !30
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %59, %47
  call void @schedule() #8
  store volatile i32 2, ptr %56, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !29
  %60 = load volatile ptr, ptr %4, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !30
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %59

62:                                               ; preds = %43, %25
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  %63 = load i16, ptr %9, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !25
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !26
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  br label %65

65:                                               ; preds = %62, %59, %47
  %66 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  store volatile i32 0, ptr %66, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @percpu_down_write(ptr noundef %0) #0 {
  tail call void @rcu_sync_enter(ptr noundef %0) #8
  %2 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 4
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #8, !srcloc !21
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %2) #8, !srcloc !22
  %7 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %1
  tail call fastcc void @percpu_rwsem_wait(ptr noundef %0, i1 noundef zeroext false)
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 2
  %12 = tail call ptr @llvm.thread.pointer() #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !31
  store volatile ptr %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 1
  store volatile i32 2, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !32
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  %16 = icmp ult i32 %15, %14
  br i1 %16, label %17, label %41

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 1
  br label %19

19:                                               ; preds = %37, %17
  %20 = phi i32 [ %15, %17 ], [ %39, %37 ]
  %21 = phi i32 [ %14, %17 ], [ %38, %37 ]
  %22 = load ptr, ptr %18, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %24

24:                                               ; preds = %24, %19
  %25 = phi i32 [ %20, %19 ], [ %33, %24 ]
  %26 = phi i32 [ 0, %19 ], [ %32, %24 ]
  %27 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %23
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %26
  %33 = tail call i32 @cpumask_next(i32 noundef %25, ptr noundef nonnull @__cpu_possible_mask) #9
  %34 = icmp ult i32 %33, %21
  br i1 %34, label %24, label %35

35:                                               ; preds = %24
  %36 = icmp eq i32 %32, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  tail call void @schedule() #8
  store volatile i32 2, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !32
  %38 = load i32, ptr @nr_cpu_ids, align 4
  %39 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  %40 = icmp ult i32 %39, %38
  br i1 %40, label %19, label %41

41:                                               ; preds = %37, %35, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !33
  store volatile ptr null, ptr %11, align 4
  store volatile i32 0, ptr %13, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sync_enter(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @percpu_up_write(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !34
  store volatile i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %0, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %3, i32 noundef 3, i32 noundef 1, ptr noundef %0) #8
  tail call void @rcu_sync_exit(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sync_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @percpu_rwsem_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load i32, ptr %0, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !10
  %10 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #4, !srcloc !11
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #8, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %20 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %3, i32 0, i32 4
  %21 = load volatile i32, ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24, !prof !15

23:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  br label %45

24:                                               ; preds = %8
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !10
  %26 = load ptr, ptr %10, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #4, !srcloc !11
  %31 = add i32 %30, %27
  %32 = inttoptr i32 %31 to ptr
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  store i32 %34, ptr %32, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #8, !srcloc !12
  %35 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %3, i32 0, i32 2
  %36 = tail call i32 @rcuwait_wake_up(ptr noundef %35) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  br label %75

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.percpu_rw_semaphore, ptr %3, i32 0, i32 4
  %39 = load volatile i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #8, !srcloc !21
  %42 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %38) #8, !srcloc !22
  %43 = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %41, %23
  %46 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #8, !srcloc !21
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #8, !srcloc !35
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52, !prof !9

52:                                               ; preds = %45
  %53 = add i32 %50, 1
  %54 = or i32 %53, %50
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %58, label %56, !prof !15

56:                                               ; preds = %52, %45
  %57 = phi i32 [ 2, %45 ], [ 1, %52 ]
  tail call void @refcount_warn_saturate(ptr noundef %48, i32 noundef %57) #8
  br label %58

58:                                               ; preds = %56, %52
  %59 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3
  %60 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %59, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  store ptr %61, ptr %63, align 4
  store volatile ptr %62, ptr %61, align 4
  store volatile ptr %59, ptr %59, align 4
  store ptr %59, ptr %60, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !36
  store volatile ptr null, ptr %46, align 4
  %64 = tail call i32 @wake_up_process(ptr noundef %47) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %48) #8, !srcloc !21
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %48, ptr %48, i32 1, ptr elementtype(i32) %48) #8, !srcloc !38
  %66 = extractvalue { i32, i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %71, label %68

68:                                               ; preds = %58
  %69 = icmp sgt i32 %66, 0
  br i1 %69, label %72, label %70, !prof !15

70:                                               ; preds = %68
  tail call void @refcount_warn_saturate(ptr noundef %48, i32 noundef 3) #8
  br label %72

71:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !39
  tail call void @__put_task_struct(ptr noundef %47) #8
  br label %72

72:                                               ; preds = %71, %70, %68
  %73 = lshr exact i32 %6, 3
  %74 = xor i32 %73, 1
  br label %75

75:                                               ; preds = %72, %41, %37, %24
  %76 = phi i32 [ %74, %72 ], [ 1, %41 ], [ 1, %24 ], [ 1, %37 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 280764, i64 280825}
!11 = !{i64 287869}
!12 = !{i64 283781}
!13 = !{i64 2150807370}
!14 = !{i64 2147919494}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2150832003}
!17 = !{i64 2150832051}
!18 = !{i64 2150815818}
!19 = !{i64 2150815866}
!20 = !{i64 2148114122}
!21 = !{i64 252017, i64 2147753583, i64 2147753609, i64 2147753656, i64 2147753678, i64 2147753706, i64 2147753726}
!22 = !{i64 334548, i64 334565, i64 334589, i64 334615, i64 334633}
!23 = !{i64 2148114466}
!24 = !{i64 2148878138}
!25 = !{i64 2148873962}
!26 = !{i64 2148874037, i64 2148874064, i64 2148874111, i64 2148874133, i64 2148874161, i64 2148874181}
!27 = !{i64 281009}
!28 = !{i64 2148902282}
!29 = !{i64 2150823433}
!30 = !{i64 2150829378}
!31 = !{i64 2150746705}
!32 = !{i64 2150844110}
!33 = !{i64 2150840415}
!34 = !{i64 2147921740}
!35 = !{i64 2147828742, i64 2147828774, i64 2147828803, i64 2147828837, i64 2147828868, i64 2147828891}
!36 = !{i64 2150818030}
!37 = !{i64 2147928940}
!38 = !{i64 2147831099, i64 2147831131, i64 2147831160, i64 2147831194, i64 2147831225, i64 2147831248}
!39 = !{i64 2149326618}
