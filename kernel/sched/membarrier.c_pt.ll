; ModuleID = '/llk/IR/kernel/sched/membarrier.c_pt.bc'
source_filename = "../kernel/sched/membarrier.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [8 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [16 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i32, i32, [12 x i8], %struct.__call_single_data, %struct.hrtimer, i64, ptr, i32, i32, %struct.cpu_stop_work, [20 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [52 x i8], %struct.sched_avg, i64, [56 x i8], %struct.anon.20 }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.20 = type { %struct.raw_spinlock, i32, i32, i32, i32, [44 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.21, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.21 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.22, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.22 = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.79, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 64
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@membarrier_private_expedited.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [26 x i8] c"kernel/sched/membarrier.c\00", align 1

@sys_membarrier = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_membarrier

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @membarrier_exec_mmap(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 9
  store volatile i32 0, ptr %2, align 4
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !10
  %4 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %5) #2, !srcloc !11
  %7 = add i32 %6, ptrtoint (ptr getelementptr inbounds (%struct.rq, ptr @runqueues, i32 0, i32 28) to i32)
  %8 = inttoptr i32 %7 to ptr
  store i32 0, ptr %8, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #6, !srcloc !12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @membarrier_update_current_mm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #2, !srcloc !11
  %5 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq ptr %0, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 9
  %10 = load volatile i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ %10, %8 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 28
  %14 = load volatile i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %12
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store volatile i32 %12, ptr %13, align 4
  br label %17

17:                                               ; preds = %16, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_membarrier(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [1 x %struct.cpumask], align 4
  %5 = icmp eq i32 %0, 128
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = icmp ugt i32 %1, 1
  br i1 %7, label %109, label %8, !prof !13

8:                                                ; preds = %6
  %9 = icmp eq i32 %1, 0
  %10 = select i1 %9, i32 -1, i32 %2
  %11 = tail call fastcc i32 @membarrier_private_expedited(i32 noundef 2, i32 noundef %10) #6
  br label %109

12:                                               ; preds = %3
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %14, label %109, !prof !14

14:                                               ; preds = %12
  switch i32 %0, label %109 [
    i32 0, label %15
    i32 1, label %16
    i32 2, label %20
    i32 4, label %61
    i32 8, label %72
    i32 16, label %74
    i32 32, label %85
    i32 64, label %87
    i32 256, label %98
  ]

15:                                               ; preds = %14
  br label %109

16:                                               ; preds = %14
  %17 = load volatile i32, ptr @__num_online_cpus, align 4
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %109

19:                                               ; preds = %16
  tail call void @synchronize_rcu() #6
  br label %109

20:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %21 = load volatile i32, ptr @__num_online_cpus, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %60, label %23

23:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  tail call void @cpus_read_lock() #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #7
  %26 = icmp ult i32 %25, %24
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = tail call ptr @llvm.thread.pointer() #6
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  br label %31

31:                                               ; preds = %54, %27
  %32 = phi i32 [ %25, %27 ], [ %56, %54 ]
  %33 = phi i32 [ 0, %27 ], [ %55, %54 ]
  %34 = icmp eq i32 %32, %30
  br i1 %34, label %54, label %35

35:                                               ; preds = %31
  %36 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, ptrtoint (ptr @runqueues to i32)
  %39 = inttoptr i32 %38 to ptr
  %40 = getelementptr inbounds %struct.rq, ptr %39, i32 0, i32 28
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.rq, ptr %39, i32 0, i32 14
  %46 = load volatile ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 37
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = and i32 %32, 31
  %52 = shl nuw i32 1, %51
  %53 = or i32 %52, %33
  br label %54

54:                                               ; preds = %50, %44, %35, %31
  %55 = phi i32 [ %33, %44 ], [ %33, %35 ], [ %33, %31 ], [ %53, %50 ]
  %56 = tail call i32 @cpumask_next(i32 noundef %32, ptr noundef nonnull @__cpu_online_mask) #7
  %57 = icmp ult i32 %56, %24
  br i1 %57, label %31, label %58

58:                                               ; preds = %54, %23
  %59 = phi i32 [ 0, %23 ], [ %55, %54 ]
  store i32 %59, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !18
  call void @smp_call_function_many(ptr noundef nonnull %4, ptr noundef nonnull @ipi_mb, ptr noundef null, i1 noundef zeroext true) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !19
  call void @cpus_read_unlock() #6
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !20
  br label %60

60:                                               ; preds = %58, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %109

61:                                               ; preds = %14
  %62 = tail call ptr @llvm.thread.pointer() #6
  %63 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 37
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.anon, ptr %64, i32 0, i32 9
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %109

69:                                               ; preds = %61
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #6, !srcloc !21
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 8, ptr elementtype(i32) %65) #6, !srcloc !22
  tail call fastcc void @sync_runqueues_membarrier_state(ptr noundef %64) #6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #6, !srcloc !21
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 4, ptr elementtype(i32) %65) #6, !srcloc !22
  br label %109

72:                                               ; preds = %14
  %73 = tail call fastcc i32 @membarrier_private_expedited(i32 noundef 0, i32 noundef -1) #6
  br label %109

74:                                               ; preds = %14
  %75 = tail call ptr @llvm.thread.pointer() #6
  %76 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 37
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.anon, ptr %77, i32 0, i32 9
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %74
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %78) #6, !srcloc !21
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %78, ptr %78, i32 2, ptr elementtype(i32) %78) #6, !srcloc !22
  tail call fastcc void @sync_runqueues_membarrier_state(ptr noundef %77) #6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %78) #6, !srcloc !21
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %78, ptr %78, i32 1, ptr elementtype(i32) %78) #6, !srcloc !22
  br label %109

85:                                               ; preds = %14
  %86 = tail call fastcc i32 @membarrier_private_expedited(i32 noundef 1, i32 noundef -1) #6
  br label %109

87:                                               ; preds = %14
  %88 = tail call ptr @llvm.thread.pointer() #6
  %89 = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 37
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.anon, ptr %90, i32 0, i32 9
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %92, 16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %87
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #6, !srcloc !21
  %96 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 34, ptr elementtype(i32) %91) #6, !srcloc !22
  tail call fastcc void @sync_runqueues_membarrier_state(ptr noundef %90) #6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #6, !srcloc !21
  %97 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 16, ptr elementtype(i32) %91) #6, !srcloc !22
  br label %109

98:                                               ; preds = %14
  %99 = tail call ptr @llvm.thread.pointer() #6
  %100 = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 37
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.anon, ptr %101, i32 0, i32 9
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %103, 64
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #6, !srcloc !21
  %107 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 130, ptr elementtype(i32) %102) #6, !srcloc !22
  tail call fastcc void @sync_runqueues_membarrier_state(ptr noundef %101) #6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #6, !srcloc !21
  %108 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 64, ptr elementtype(i32) %102) #6, !srcloc !22
  br label %109

109:                                              ; preds = %106, %98, %95, %87, %85, %82, %74, %72, %69, %61, %60, %19, %16, %15, %14, %12, %8, %6
  %110 = phi i32 [ %11, %8 ], [ %86, %85 ], [ %73, %72 ], [ 0, %60 ], [ 511, %15 ], [ -22, %6 ], [ -22, %12 ], [ 0, %19 ], [ 0, %16 ], [ -22, %14 ], [ 0, %61 ], [ 0, %69 ], [ 0, %74 ], [ 0, %82 ], [ 0, %87 ], [ 0, %95 ], [ 0, %98 ], [ 0, %106 ]
  ret i32 %110
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @membarrier_private_expedited(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [1 x %struct.cpumask], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !23
  %4 = tail call ptr @llvm.thread.pointer() #6
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  switch i32 %0, label %17 [
    i32 1, label %7
    i32 2, label %12
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 9
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %97, label %36

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 9
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %97, label %28

17:                                               ; preds = %2
  %18 = icmp ne i32 %0, 0
  %19 = load i1, ptr @membarrier_private_expedited.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !13

22:                                               ; preds = %17
  store i1 true, ptr @membarrier_private_expedited.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 331, i32 noundef 9, ptr noundef null) #6
  br label %23

23:                                               ; preds = %22, %17
  %24 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 9
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %97, label %28

28:                                               ; preds = %23, %12
  %29 = phi ptr [ @ipi_rseq, %12 ], [ @ipi_mb, %23 ]
  %30 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 10
  %31 = load volatile i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %97, label %33

33:                                               ; preds = %28
  %34 = load volatile i32, ptr @__num_online_cpus, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %97, label %36

36:                                               ; preds = %33, %7
  %37 = phi i1 [ false, %33 ], [ true, %7 ]
  %38 = phi ptr [ %29, %33 ], [ @ipi_sync_core, %7 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !24
  %39 = icmp slt i32 %1, 0
  tail call void @cpus_read_lock() #6
  br i1 %39, label %64, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %42 = icmp ugt i32 %41, %1
  br i1 %42, label %43, label %96

43:                                               ; preds = %40
  %44 = lshr i32 %1, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %1, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %96, label %51

51:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %52 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, ptrtoint (ptr @runqueues to i32)
  %55 = inttoptr i32 %54 to ptr
  %56 = getelementptr inbounds %struct.rq, ptr %55, i32 0, i32 14
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 37
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %6
  br i1 %62, label %90, label %63

63:                                               ; preds = %59, %51
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  br label %96

64:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %65 = load i32, ptr @nr_cpu_ids, align 4
  %66 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #7
  %67 = icmp ult i32 %66, %65
  br i1 %67, label %68, label %92

68:                                               ; preds = %86, %64
  %69 = phi i32 [ %88, %86 ], [ %66, %64 ]
  %70 = phi i32 [ %87, %86 ], [ 0, %64 ]
  %71 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, ptrtoint (ptr @runqueues to i32)
  %74 = inttoptr i32 %73 to ptr
  %75 = getelementptr inbounds %struct.rq, ptr %74, i32 0, i32 14
  %76 = load volatile ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 37
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %6
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = and i32 %69, 31
  %84 = shl nuw i32 1, %83
  %85 = or i32 %70, %84
  br label %86

86:                                               ; preds = %82, %78, %68
  %87 = phi i32 [ %85, %82 ], [ %70, %78 ], [ %70, %68 ]
  %88 = tail call i32 @cpumask_next(i32 noundef %69, ptr noundef nonnull @__cpu_online_mask) #7
  %89 = icmp ult i32 %88, %65
  br i1 %89, label %68, label %92

90:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  %91 = tail call i32 @smp_call_function_single(i32 noundef %1, ptr noundef nonnull %38, ptr noundef null, i32 noundef 1) #6
  br label %96

92:                                               ; preds = %86, %64
  %93 = phi i32 [ 0, %64 ], [ %87, %86 ]
  store i32 %93, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  br i1 %37, label %95, label %94

94:                                               ; preds = %92
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  call void @smp_call_function_many(ptr noundef nonnull %3, ptr noundef nonnull %38, ptr noundef null, i1 noundef zeroext true) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !26
  br label %96

95:                                               ; preds = %92
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull %38, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %3) #6
  br label %96

96:                                               ; preds = %95, %94, %90, %63, %43, %40
  call void @cpus_read_unlock() #6
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !27
  br label %97

97:                                               ; preds = %96, %33, %28, %23, %12, %7
  %98 = phi i32 [ 0, %96 ], [ -1, %7 ], [ -1, %12 ], [ -1, %23 ], [ 0, %33 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function_many(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipi_mb(ptr nocapture noundef readnone %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sync_runqueues_membarrier_state(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [1 x %struct.cpumask], align 4
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 9
  %4 = load volatile i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %5 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 10
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load volatile i32, ptr @__num_online_cpus, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %18

11:                                               ; preds = %8, %1
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !10
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #2, !srcloc !11
  %16 = add i32 %15, ptrtoint (ptr getelementptr inbounds (%struct.rq, ptr @runqueues, i32 0, i32 28) to i32)
  %17 = inttoptr i32 %16 to ptr
  store i32 %4, ptr %17, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #6, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !29
  br label %46

18:                                               ; preds = %8
  tail call void @synchronize_rcu() #6
  tail call void @cpus_read_lock() #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #7
  %21 = icmp ult i32 %20, %19
  br i1 %21, label %22, label %44

22:                                               ; preds = %40, %18
  %23 = phi i32 [ %42, %40 ], [ %20, %18 ]
  %24 = phi i32 [ %41, %40 ], [ 0, %18 ]
  %25 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, ptrtoint (ptr @runqueues to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.rq, ptr %28, i32 0, i32 14
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 37
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = and i32 %23, 31
  %38 = shl nuw i32 1, %37
  %39 = or i32 %24, %38
  br label %40

40:                                               ; preds = %36, %32, %22
  %41 = phi i32 [ %39, %36 ], [ %24, %32 ], [ %24, %22 ]
  %42 = tail call i32 @cpumask_next(i32 noundef %23, ptr noundef nonnull @__cpu_online_mask) #7
  %43 = icmp ult i32 %42, %19
  br i1 %43, label %22, label %44

44:                                               ; preds = %40, %18
  %45 = phi i32 [ 0, %18 ], [ %41, %40 ]
  store i32 %45, ptr %2, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ipi_sync_rq_state, ptr noundef %0, i1 noundef zeroext true, ptr noundef nonnull %2) #6
  call void @cpus_read_unlock() #6
  br label %46

46:                                               ; preds = %44, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipi_sync_rq_state(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #6
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !10
  %8 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 9
  %9 = load volatile i32, ptr %8, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #2, !srcloc !11
  %13 = add i32 %12, ptrtoint (ptr getelementptr inbounds (%struct.rq, ptr @runqueues, i32 0, i32 28) to i32)
  %14 = inttoptr i32 %13 to ptr
  store i32 %9, ptr %14, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #6, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !30
  br label %15

15:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipi_sync_core(ptr nocapture noundef readnone %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipi_rseq(ptr nocapture noundef readnone %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !32
  %2 = tail call ptr @llvm.thread.pointer() #6
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 135
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 1
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 133
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @_set_bit(i32 noundef 2, ptr noundef %2) #6
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind readonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
!9 = !{i64 2156345918}
!10 = !{i64 645881, i64 645942}
!11 = !{i64 652986}
!12 = !{i64 648898}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2156360204}
!16 = !{i64 2149039148}
!17 = !{i64 2149039365}
!18 = !{i64 2156397040}
!19 = !{i64 2156397100}
!20 = !{i64 2156397206}
!21 = !{i64 617134, i64 2148118700, i64 2148118726, i64 2148118773, i64 2148118795, i64 2148118823, i64 2148118843}
!22 = !{i64 2148189740, i64 2148189766, i64 2148189795, i64 2148189829, i64 2148189860, i64 2148189883}
!23 = !{!"auto-init"}
!24 = !{i64 2156399422}
!25 = !{i64 2156440095}
!26 = !{i64 2156440155}
!27 = !{i64 2156440273}
!28 = !{i64 2156332682}
!29 = !{i64 2156448736}
!30 = !{i64 2156345792}
!31 = !{i64 2156332808}
!32 = !{i64 2156332934}
