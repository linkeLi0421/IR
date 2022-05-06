; ModuleID = '/llk/IR/kernel/locking/rwsem.c_pt.bc'
source_filename = "../kernel/locking/rwsem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___init_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22__init_rwsem\22\09\09\09\09\09"
module asm "__kstrtabns___init_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_read:\09\09\09\09\09"
module asm "\09.asciz \09\22down_read\22\09\09\09\09\09"
module asm "__kstrtabns_down_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_read_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22down_read_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_down_read_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_read_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22down_read_killable\22\09\09\09\09\09"
module asm "__kstrtabns_down_read_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22down_read_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_down_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_write:\09\09\09\09\09"
module asm "\09.asciz \09\22down_write\22\09\09\09\09\09"
module asm "__kstrtabns_down_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_write_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22down_write_killable\22\09\09\09\09\09"
module asm "__kstrtabns_down_write_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_write_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22down_write_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_down_write_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_up_read:\09\09\09\09\09"
module asm "\09.asciz \09\22up_read\22\09\09\09\09\09"
module asm "__kstrtabns_up_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_up_write:\09\09\09\09\09"
module asm "\09.asciz \09\22up_write\22\09\09\09\09\09"
module asm "__kstrtabns_up_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_downgrade_write:\09\09\09\09\09"
module asm "\09.asciz \09\22downgrade_write\22\09\09\09\09\09"
module asm "__kstrtabns_downgrade_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.wake_q_head = type { ptr, ptr }
%struct.rwsem_waiter = type { %struct.list_head, ptr, i32, i32, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.32, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.cpumask = type { [1 x i32] }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.32 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab___init_rwsem = external dso_local constant [0 x i8], align 1
@__kstrtabns___init_rwsem = external dso_local constant [0 x i8], align 1
@__ksymtab___init_rwsem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__init_rwsem to i32), ptr @__kstrtab___init_rwsem, ptr @__kstrtabns___init_rwsem }, section "___ksymtab+__init_rwsem", align 4
@__kstrtab_down_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_read = external dso_local constant [0 x i8], align 1
@__ksymtab_down_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_read to i32), ptr @__kstrtab_down_read, ptr @__kstrtabns_down_read }, section "___ksymtab+down_read", align 4
@__kstrtab_down_read_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_read_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_down_read_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_read_interruptible to i32), ptr @__kstrtab_down_read_interruptible, ptr @__kstrtabns_down_read_interruptible }, section "___ksymtab+down_read_interruptible", align 4
@__kstrtab_down_read_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_read_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_down_read_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_read_killable to i32), ptr @__kstrtab_down_read_killable, ptr @__kstrtabns_down_read_killable }, section "___ksymtab+down_read_killable", align 4
@__kstrtab_down_read_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_read_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_down_read_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_read_trylock to i32), ptr @__kstrtab_down_read_trylock, ptr @__kstrtabns_down_read_trylock }, section "___ksymtab+down_read_trylock", align 4
@__kstrtab_down_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_write = external dso_local constant [0 x i8], align 1
@__ksymtab_down_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_write to i32), ptr @__kstrtab_down_write, ptr @__kstrtabns_down_write }, section "___ksymtab+down_write", align 4
@__kstrtab_down_write_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_write_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_down_write_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_write_killable to i32), ptr @__kstrtab_down_write_killable, ptr @__kstrtabns_down_write_killable }, section "___ksymtab+down_write_killable", align 4
@__kstrtab_down_write_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_write_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_down_write_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_write_trylock to i32), ptr @__kstrtab_down_write_trylock, ptr @__kstrtabns_down_write_trylock }, section "___ksymtab+down_write_trylock", align 4
@__kstrtab_up_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_up_read = external dso_local constant [0 x i8], align 1
@__ksymtab_up_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @up_read to i32), ptr @__kstrtab_up_read, ptr @__kstrtabns_up_read }, section "___ksymtab+up_read", align 4
@__kstrtab_up_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_up_write = external dso_local constant [0 x i8], align 1
@__ksymtab_up_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @up_write to i32), ptr @__kstrtab_up_write, ptr @__kstrtabns_up_write }, section "___ksymtab+up_write", align 4
@__kstrtab_downgrade_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_downgrade_write = external dso_local constant [0 x i8], align 1
@__ksymtab_downgrade_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @downgrade_write to i32), ptr @__kstrtab_downgrade_write, ptr @__kstrtabns_downgrade_write }, section "___ksymtab+downgrade_write", align 4
@rwsem_read_trylock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [23 x i8] c"kernel/locking/rwsem.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab___init_rwsem, ptr @__ksymtab_down_read, ptr @__ksymtab_down_read_interruptible, ptr @__ksymtab_down_read_killable, ptr @__ksymtab_down_read_trylock, ptr @__ksymtab_down_write, ptr @__ksymtab_down_write_killable, ptr @__ksymtab_down_write_trylock, ptr @__ksymtab_downgrade_write, ptr @__ksymtab_up_read, ptr @__ksymtab_up_write], section "llvm.metadata"

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__init_rwsem(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  store volatile i32 0, ptr %0, align 4
  %4 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 3
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 4
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 4, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1
  store volatile i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 2
  store volatile i32 0, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @down_read(ptr noundef %0) #1 section ".sched.text" {
  %2 = tail call fastcc i32 @__down_read_common(ptr noundef %0, i32 noundef 2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @down_read_interruptible(ptr noundef %0) #1 section ".sched.text" {
  %2 = tail call fastcc i32 @__down_read_common(ptr noundef %0, i32 noundef 1) #8
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 0, i32 -4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @down_read_killable(ptr noundef %0) #1 section ".sched.text" {
  %2 = tail call fastcc i32 @__down_read_common(ptr noundef %0, i32 noundef 258) #8
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 0, i32 -4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @down_read_trylock(ptr noundef %0) #1 {
  %2 = load volatile i32, ptr %0, align 4
  br label %3

3:                                                ; preds = %13, %1
  %4 = phi i32 [ %2, %1 ], [ %14, %13 ]
  %5 = and i32 %4, -2147483641
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = add nuw i32 %4, 256
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %9

9:                                                ; preds = %9, %7
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %4, i32 %8, ptr elementtype(i32) %0) #8, !srcloc !9
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9
  %14 = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %15 = icmp eq i32 %14, %4
  br i1 %15, label %16, label %3, !prof !11

16:                                               ; preds = %13
  %17 = tail call ptr @llvm.thread.pointer() #8
  %18 = ptrtoint ptr %17 to i32
  %19 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 2
  %22 = or i32 %21, %18
  %23 = or i32 %22, 1
  store volatile i32 %23, ptr %19, align 4
  br label %24

24:                                               ; preds = %16, %3
  %25 = phi i32 [ 1, %16 ], [ 0, %3 ]
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @down_write(ptr noundef %0) #1 section ".sched.text" {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %2

2:                                                ; preds = %2, %1
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 0, i32 1, ptr elementtype(i32) %0) #8, !srcloc !9
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %2

6:                                                ; preds = %2
  %7 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1
  %11 = tail call ptr @llvm.thread.pointer() #8
  %12 = ptrtoint ptr %11 to i32
  store volatile i32 %12, ptr %10, align 4
  br label %15

13:                                               ; preds = %6
  %14 = tail call fastcc ptr @rwsem_down_write_slowpath(ptr noundef %0, i32 noundef 2) #8
  br label %15

15:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @down_write_killable(ptr noundef %0) #1 section ".sched.text" {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %2

2:                                                ; preds = %2, %1
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 0, i32 1, ptr elementtype(i32) %0) #8, !srcloc !9
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %2

6:                                                ; preds = %2
  %7 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1
  %11 = tail call ptr @llvm.thread.pointer() #8
  %12 = ptrtoint ptr %11 to i32
  store volatile i32 %12, ptr %10, align 4
  br label %16

13:                                               ; preds = %6
  %14 = tail call fastcc ptr @rwsem_down_write_slowpath(ptr noundef %0, i32 noundef 258) #8
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %9
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ 0, %16 ], [ -4, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @down_write_trylock(ptr noundef %0) #1 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %2

2:                                                ; preds = %2, %1
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 0, i32 1, ptr elementtype(i32) %0) #8, !srcloc !9
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %2

6:                                                ; preds = %2
  %7 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1
  %11 = tail call ptr @llvm.thread.pointer() #8
  %12 = ptrtoint ptr %11 to i32
  store volatile i32 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %6
  %14 = zext i1 %8 to i32
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @up_read(ptr noundef %0) #1 {
  %2 = alloca %struct.wake_q_head, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 -256, ptr elementtype(i32) %0) #8, !srcloc !13
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = and i32 %4, -253
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %23, !prof !14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #8, !srcloc !8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 2, ptr elementtype(i32) %8) #8, !srcloc !15
  br label %14

14:                                               ; preds = %12, %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store ptr inttoptr (i32 1 to ptr), ptr %2, align 8
  %15 = getelementptr inbounds %struct.wake_q_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 3
  %17 = call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #8
  %18 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 4
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  call fastcc void @rwsem_mark_wake(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #8
  br label %22

22:                                               ; preds = %21, %14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #8
  call void @wake_up_q(ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  br label %23

23:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @up_write(ptr noundef %0) #1 {
  %2 = alloca %struct.wake_q_head, align 8
  %3 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1
  store volatile i32 0, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 -1, ptr elementtype(i32) %0) #8, !srcloc !17
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8, !prof !11

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store ptr inttoptr (i32 1 to ptr), ptr %2, align 8
  %9 = getelementptr inbounds %struct.wake_q_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 3
  %11 = call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 4
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  call fastcc void @rwsem_mark_wake(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #8
  br label %16

16:                                               ; preds = %15, %8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #8
  call void @wake_up_q(ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  br label %17

17:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @downgrade_write(ptr noundef %0) #1 {
  %2 = alloca %struct.wake_q_head, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 255, ptr elementtype(i32) %0) #8, !srcloc !17
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = tail call ptr @llvm.thread.pointer() #8
  %6 = ptrtoint ptr %5 to i32
  %7 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = or i32 %9, %6
  %11 = or i32 %10, 1
  store volatile i32 %11, ptr %7, align 4
  %12 = and i32 %4, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store ptr inttoptr (i32 1 to ptr), ptr %2, align 8
  %15 = getelementptr inbounds %struct.wake_q_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 3
  %17 = call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #8
  %18 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 4
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  call fastcc void @rwsem_mark_wake(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #8
  br label %22

22:                                               ; preds = %21, %14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #8
  call void @wake_up_q(ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  br label %23

23:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__down_read_common(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = alloca %struct.rwsem_waiter, align 4
  %4 = alloca %struct.wake_q_head, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 256, ptr elementtype(i32) %0) #8, !srcloc !13
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %7 = icmp slt i32 %6, 0
  %8 = load i1, ptr @rwsem_read_trylock.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !14

11:                                               ; preds = %2
  store i1 true, ptr @rwsem_read_trylock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #8
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %13, label %29

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1
  %15 = load volatile i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %26, %13
  %17 = phi i32 [ %15, %13 ], [ %27, %26 ]
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = or i32 %17, 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #8, !srcloc !8
  br label %22

22:                                               ; preds = %22, %20
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 %17, i32 %21, ptr elementtype(i32) %14) #8, !srcloc !9
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22
  %27 = extractvalue { i32, i32 } %23, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %28 = icmp eq i32 %27, %17
  br i1 %28, label %29, label %16, !prof !11

29:                                               ; preds = %26, %16, %12
  %30 = and i32 %6, -2147483641
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = tail call ptr @llvm.thread.pointer() #8
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 2
  %38 = or i32 %37, %34
  %39 = or i32 %38, 1
  store volatile i32 %39, ptr %35, align 4
  br label %166

40:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %41 = getelementptr inbounds i8, ptr %3, i32 20
  store i32 0, ptr %41, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store ptr inttoptr (i32 1 to ptr), ptr %4, align 8
  %42 = getelementptr inbounds %struct.wake_q_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %42, align 4
  %43 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  %47 = icmp sgt i32 %6, 511
  %48 = and i1 %47, %46
  %49 = and i32 %6, 1
  %50 = icmp eq i32 %49, 0
  %51 = and i1 %50, %48
  %52 = and i32 %6, 5
  %53 = icmp ne i32 %52, 0
  %54 = or i1 %53, %51
  %55 = tail call ptr @llvm.thread.pointer() #8
  br i1 %54, label %73, label %56

56:                                               ; preds = %40
  %57 = ptrtoint ptr %55 to i32
  %58 = load volatile i32, ptr %43, align 4
  %59 = and i32 %58, 2
  %60 = or i32 %59, %57
  %61 = or i32 %60, 1
  store volatile i32 %61, ptr %43, align 4
  %62 = and i32 %6, -254
  %63 = icmp eq i32 %62, 258
  br i1 %63, label %64, label %164

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %65) #8
  %66 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 4
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %66
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  call fastcc void @rwsem_mark_wake(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %4) #8
  br label %70

70:                                               ; preds = %69, %64
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %71 = load i16, ptr %65, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %65, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  call void @wake_up_q(ptr noundef nonnull %4) #8
  br label %164

73:                                               ; preds = %40
  %74 = getelementptr inbounds %struct.rwsem_waiter, ptr %3, i32 0, i32 1
  store ptr %55, ptr %74, align 4
  %75 = getelementptr inbounds %struct.rwsem_waiter, ptr %3, i32 0, i32 2
  store i32 1, ptr %75, align 4
  %76 = load volatile i32, ptr @jiffies, align 64
  %77 = add i32 %76, 1
  %78 = getelementptr inbounds %struct.rwsem_waiter, ptr %3, i32 0, i32 3
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %79) #8
  %80 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 4
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  br i1 %82, label %83, label %95

83:                                               ; preds = %73
  %84 = load volatile i32, ptr %0, align 4
  %85 = and i32 %84, 5
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !27
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %88 = load i16, ptr %79, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %79, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  %90 = ptrtoint ptr %55 to i32
  %91 = load volatile i32, ptr %43, align 4
  %92 = and i32 %91, 2
  %93 = or i32 %92, %90
  %94 = or i32 %93, 1
  store volatile i32 %94, ptr %43, align 4
  br label %164

95:                                               ; preds = %83, %73
  %96 = phi i32 [ -256, %73 ], [ -254, %83 ]
  %97 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 4, i32 1
  %98 = load ptr, ptr %97, align 4
  store ptr %3, ptr %97, align 4
  store ptr %80, ptr %3, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %98, ptr %99, align 4
  store volatile ptr %3, ptr %98, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !28
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %100 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %96, ptr elementtype(i32) %0) #8, !srcloc !13
  %101 = extractvalue { i32, i32 } %100, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !29
  %102 = and i32 %101, -255
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %95
  %105 = load volatile i32, ptr %43, align 4
  %106 = and i32 %105, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #8, !srcloc !8
  %109 = call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 2, ptr elementtype(i32) %43) #8, !srcloc !15
  br label %116

110:                                              ; preds = %95
  %111 = and i32 %101, 1
  %112 = icmp ne i32 %111, 0
  %113 = and i32 %96, 2
  %114 = icmp eq i32 %113, 0
  %115 = or i1 %114, %112
  br i1 %115, label %117, label %116

116:                                              ; preds = %110, %108, %104
  call fastcc void @rwsem_mark_wake(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #8
  br label %117

117:                                              ; preds = %116, %110
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %118 = load i16, ptr %79, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %79, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  call void @wake_up_q(ptr noundef nonnull %4) #8
  %120 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 1
  store volatile i32 %1, ptr %120, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !30
  %121 = load volatile ptr, ptr %74, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !31
  %122 = icmp eq ptr %121, null
  br i1 %122, label %152, label %123

123:                                              ; preds = %117
  %124 = and i32 %1, 257
  %125 = icmp eq i32 %124, 0
  %126 = and i32 %1, 1
  %127 = icmp eq i32 %126, 0
  %128 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 98, i32 1
  br label %129

129:                                              ; preds = %149, %123
  br i1 %125, label %149, label %130

130:                                              ; preds = %129
  %131 = load volatile i32, ptr %55, align 4
  %132 = and i32 %131, 256
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138, !prof !11

134:                                              ; preds = %130
  %135 = load volatile i32, ptr %55, align 4
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %134, %130
  br i1 %127, label %139, label %143

139:                                              ; preds = %138
  %140 = load i32, ptr %128, align 4
  %141 = and i32 %140, 256
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %139, %138
  call void @_raw_spin_lock_irq(ptr noundef %79) #8
  %144 = load ptr, ptr %74, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %147 = load i16, ptr %79, align 4
  %148 = add i16 %147, 1
  store i16 %148, ptr %79, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %152

149:                                              ; preds = %139, %134, %129
  call void @schedule() #8
  store volatile i32 %1, ptr %120, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !30
  %150 = load volatile ptr, ptr %74, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !31
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %129

152:                                              ; preds = %149, %146, %117
  store volatile i32 0, ptr %120, align 8
  br label %164

153:                                              ; preds = %143
  %154 = load ptr, ptr %99, align 4
  %155 = load ptr, ptr %3, align 4
  %156 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  store ptr %154, ptr %156, align 4
  store volatile ptr %155, ptr %154, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %99, align 4
  %157 = load volatile ptr, ptr %80, align 4
  %158 = icmp eq ptr %157, %80
  br i1 %158, label %159, label %161, !prof !14

159:                                              ; preds = %153
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %160 = call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 6, ptr elementtype(i32) %0) #8, !srcloc !15
  br label %161

161:                                              ; preds = %159, %153
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %162 = load i16, ptr %79, align 4
  %163 = add i16 %162, 1
  store i16 %163, ptr %79, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  store volatile i32 0, ptr %120, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  br label %167

164:                                              ; preds = %152, %87, %70, %56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  %165 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %165, label %167, label %166

166:                                              ; preds = %164, %32
  br label %167

167:                                              ; preds = %166, %164, %161
  %168 = phi i32 [ 0, %166 ], [ -4, %164 ], [ -4, %161 ]
  ret i32 %168
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rwsem_mark_wake(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %5 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rwsem_waiter, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %12, label %111

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.rwsem_waiter, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @wake_q_add(ptr noundef %2, ptr noundef %14) #8
  br label %111

15:                                               ; preds = %3
  %16 = load volatile i32, ptr %0, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %111, label %18, !prof !14

18:                                               ; preds = %15
  %19 = icmp eq i32 %1, 2
  br i1 %19, label %47, label %20

20:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 256, ptr elementtype(i32) %0) #8, !srcloc !17
  %22 = extractvalue { i32, i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !33
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25, !prof !11

25:                                               ; preds = %20
  %26 = and i32 %22, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.rwsem_waiter, ptr %6, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = sub i32 %30, %31
  %33 = icmp slt i32 %32, 0
  %34 = select i1 %33, i32 -252, i32 -256
  br label %44

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.rwsem_waiter, ptr %6, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 2
  %42 = or i32 %41, %38
  %43 = or i32 %42, 1
  store volatile i32 %43, ptr %39, align 4
  br label %47

44:                                               ; preds = %28, %25
  %45 = phi i32 [ -256, %25 ], [ %34, %28 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %45, ptr elementtype(i32) %0) #8, !srcloc !34
  br label %111

47:                                               ; preds = %35, %18
  %48 = phi i32 [ 0, %18 ], [ -256, %35 ]
  store volatile ptr %4, ptr %4, align 8
  %49 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %49, align 4
  %50 = load ptr, ptr %5, align 4
  %51 = icmp eq ptr %50, %5
  br i1 %51, label %69, label %52

52:                                               ; preds = %66, %47
  %53 = phi ptr [ %55, %66 ], [ %50, %47 ]
  %54 = phi i32 [ %67, %66 ], [ 0, %47 ]
  %55 = load ptr, ptr %53, align 4
  %56 = getelementptr inbounds %struct.rwsem_waiter, ptr %53, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = add i32 %54, 1
  %61 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %62, ptr %63, align 4
  store volatile ptr %55, ptr %62, align 4
  %64 = load ptr, ptr %49, align 4
  store ptr %53, ptr %49, align 4
  store ptr %4, ptr %53, align 4
  store ptr %64, ptr %61, align 4
  store volatile ptr %53, ptr %64, align 4
  %65 = icmp sgt i32 %60, 255
  br i1 %65, label %69, label %66, !prof !14

66:                                               ; preds = %59, %52
  %67 = phi i32 [ %54, %52 ], [ %60, %59 ]
  %68 = icmp eq ptr %55, %5
  br i1 %68, label %69, label %52

69:                                               ; preds = %66, %59, %47
  %70 = phi i32 [ 0, %47 ], [ %60, %59 ], [ %67, %66 ]
  %71 = shl i32 %70, 8
  %72 = add i32 %71, %48
  %73 = load volatile i32, ptr %0, align 4
  %74 = load volatile ptr, ptr %5, align 4
  %75 = icmp eq ptr %74, %5
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = and i32 %73, 4
  %78 = xor i32 %77, -2
  %79 = add i32 %78, %72
  br label %88

80:                                               ; preds = %69
  %81 = icmp eq i32 %70, 0
  %82 = and i32 %73, 4
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %81, i1 true, i1 %83
  %85 = add i32 %72, -4
  %86 = select i1 %84, i32 %72, i32 %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %80, %76
  %89 = phi i32 [ %79, %76 ], [ %86, %80 ]
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %90 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %89, ptr elementtype(i32) %0) #8, !srcloc !34
  br label %91

91:                                               ; preds = %88, %80
  %92 = load ptr, ptr %4, align 8
  %93 = icmp eq ptr %92, %4
  br i1 %93, label %111, label %94

94:                                               ; preds = %109, %91
  %95 = phi ptr [ %96, %109 ], [ %92, %91 ]
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.rwsem_waiter, ptr %95, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %99) #8, !srcloc !8
  %100 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %99, ptr %99, i32 1, ptr elementtype(i32) %99) #8, !srcloc !17
  %101 = extractvalue { i32, i32, i32 } %100, 0
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103, !prof !14

103:                                              ; preds = %94
  %104 = add i32 %101, 1
  %105 = or i32 %104, %101
  %106 = icmp sgt i32 %105, -1
  br i1 %106, label %109, label %107, !prof !11

107:                                              ; preds = %103, %94
  %108 = phi i32 [ 2, %94 ], [ 1, %103 ]
  call void @refcount_warn_saturate(ptr noundef %99, i32 noundef %108) #8
  br label %109

109:                                              ; preds = %107, %103
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !35
  store volatile ptr null, ptr %97, align 4
  call void @wake_q_add_safe(ptr noundef %2, ptr noundef %98) #8
  %110 = icmp eq ptr %96, %4
  br i1 %110, label %111, label %94

111:                                              ; preds = %109, %91, %44, %15, %12, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add_safe(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rwsem_down_write_slowpath(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.rwsem_waiter, align 4
  %4 = alloca %struct.wake_q_head, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %5 = getelementptr inbounds i8, ptr %3, i32 20
  store i32 0, ptr %5, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store ptr inttoptr (i32 1 to ptr), ptr %4, align 8
  %6 = getelementptr inbounds %struct.wake_q_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  %7 = tail call ptr @llvm.thread.pointer() #8
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %120

11:                                               ; preds = %2
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !36
  %12 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, -4
  %15 = inttoptr i32 %14 to ptr
  %16 = and i32 %13, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = icmp ne i32 %14, 0
  %20 = and i32 %13, 1
  %21 = icmp eq i32 %20, 0
  %22 = and i1 %19, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 6
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %29 = load volatile i32, ptr %28, align 8
  br label %31

30:                                               ; preds = %23, %11
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !37
  br label %120

31:                                               ; preds = %27, %18
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !37
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !38
  %32 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 2
  %33 = call zeroext i1 @osq_lock(ptr noundef %32) #8
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !39
  br label %120

35:                                               ; preds = %31
  %36 = call fastcc i32 @rwsem_spin_on_owner(ptr noundef %0) #8
  %37 = and i32 %36, 7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %119, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 14
  br label %41

41:                                               ; preds = %112, %39
  %42 = phi i32 [ %36, %39 ], [ %115, %112 ]
  %43 = phi i64 [ 0, %39 ], [ %113, %112 ]
  %44 = phi i32 [ 0, %39 ], [ %114, %112 ]
  %45 = phi i32 [ 1, %39 ], [ %42, %112 ]
  %46 = load volatile i32, ptr %0, align 4
  br label %47

47:                                               ; preds = %57, %41
  %48 = phi i32 [ %46, %41 ], [ %58, %57 ]
  %49 = and i32 %48, -251
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = or i32 %48, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %53

53:                                               ; preds = %53, %51
  %54 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %48, i32 %52, ptr elementtype(i32) %0) #8, !srcloc !9
  %55 = extractvalue { i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %53

57:                                               ; preds = %53
  %58 = extractvalue { i32, i32 } %54, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %59 = icmp eq i32 %58, %48
  br i1 %59, label %60, label %47, !prof !11

60:                                               ; preds = %57
  %61 = ptrtoint ptr %7 to i32
  store volatile i32 %61, ptr %12, align 4
  call void @osq_unlock(ptr noundef %32) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !39
  br label %252

62:                                               ; preds = %47
  switch i32 %42, label %101 [
    i32 4, label %63
    i32 2, label %112
  ]

63:                                               ; preds = %62
  %64 = icmp eq i32 %45, 4
  br i1 %64, label %79, label %65

65:                                               ; preds = %63
  %66 = load volatile i32, ptr %12, align 4
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %118

69:                                               ; preds = %65
  %70 = load volatile i32, ptr %0, align 4
  %71 = ashr i32 %70, 8
  %72 = call i32 @llvm.smin.i32(i32 %71, i32 30) #8
  %73 = mul i32 %72, 1000
  %74 = add i32 %73, 20000
  %75 = sdiv i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = call i64 @sched_clock() #8
  %78 = add i64 %77, %76
  br label %101

79:                                               ; preds = %63
  %80 = add i32 %44, 1
  %81 = and i32 %80, 15
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %79
  %84 = call i64 @sched_clock() #8
  %85 = icmp ugt i64 %84, %43
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = load volatile i32, ptr %12, align 4
  br label %88

88:                                               ; preds = %98, %86
  %89 = phi i32 [ %87, %86 ], [ %99, %98 ]
  %90 = and i32 %89, 3
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %118

92:                                               ; preds = %88
  %93 = or i32 %89, 2
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #8, !srcloc !8
  br label %94

94:                                               ; preds = %94, %92
  %95 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 %89, i32 %93, ptr elementtype(i32) %12) #8, !srcloc !9
  %96 = extractvalue { i32, i32 } %95, 0
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %94

98:                                               ; preds = %94
  %99 = extractvalue { i32, i32 } %95, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  %100 = icmp eq i32 %99, %89
  br i1 %100, label %118, label %88, !prof !11

101:                                              ; preds = %83, %79, %69, %62
  %102 = phi i64 [ %43, %83 ], [ %43, %79 ], [ %78, %69 ], [ %43, %62 ]
  %103 = phi i32 [ %80, %83 ], [ %80, %79 ], [ 0, %69 ], [ %44, %62 ]
  %104 = load volatile i32, ptr %7, align 4
  %105 = and i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load i32, ptr %40, align 16
  %109 = icmp slt i32 %108, 100
  %110 = icmp ne i32 %45, 2
  %111 = select i1 %109, i1 %110, i1 false
  br i1 %111, label %118, label %112

112:                                              ; preds = %107, %62
  %113 = phi i64 [ %102, %107 ], [ %43, %62 ]
  %114 = phi i32 [ %103, %107 ], [ %44, %62 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !40
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !41
  %115 = call fastcc i32 @rwsem_spin_on_owner(ptr noundef %0) #8
  %116 = and i32 %115, 7
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %41

118:                                              ; preds = %112, %107, %101, %98, %88, %65
  call void @osq_unlock(ptr noundef %32) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !39
  br label %120

119:                                              ; preds = %35
  call void @osq_unlock(ptr noundef %32) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !39
  br label %120

120:                                              ; preds = %119, %118, %34, %30, %2
  %121 = getelementptr inbounds %struct.rwsem_waiter, ptr %3, i32 0, i32 1
  store ptr %7, ptr %121, align 4
  %122 = getelementptr inbounds %struct.rwsem_waiter, ptr %3, i32 0, i32 2
  store i32 0, ptr %122, align 4
  %123 = load volatile i32, ptr @jiffies, align 64
  %124 = add i32 %123, 1
  %125 = getelementptr inbounds %struct.rwsem_waiter, ptr %3, i32 0, i32 3
  store i32 %124, ptr %125, align 4
  %126 = getelementptr inbounds %struct.rwsem_waiter, ptr %3, i32 0, i32 4
  store i8 0, ptr %126, align 4
  %127 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %127) #8
  %128 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 4
  %129 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 4, i32 1
  %130 = load ptr, ptr %129, align 4
  store ptr %3, ptr %129, align 4
  store ptr %128, ptr %3, align 4
  %131 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %130, ptr %131, align 4
  store volatile ptr %3, ptr %130, align 4
  %132 = load ptr, ptr %128, align 4
  %133 = icmp eq ptr %132, %3
  br i1 %133, label %146, label %134

134:                                              ; preds = %120
  %135 = load volatile i32, ptr %0, align 4
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = icmp ugt i32 %135, 255
  %140 = zext i1 %139 to i32
  call fastcc void @rwsem_mark_wake(ptr noundef %0, i32 noundef %140, ptr noundef nonnull %4)
  %141 = load ptr, ptr %4, align 8
  %142 = icmp eq ptr %141, inttoptr (i32 1 to ptr)
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %144 = load i16, ptr %127, align 4
  %145 = add i16 %144, 1
  store i16 %145, ptr %127, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  call void @wake_up_q(ptr noundef nonnull %4) #8
  store ptr inttoptr (i32 1 to ptr), ptr %4, align 8
  store ptr %4, ptr %6, align 4
  call void @_raw_spin_lock_irq(ptr noundef %127) #8
  br label %148

146:                                              ; preds = %120
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %147 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 2, ptr elementtype(i32) %0) #8, !srcloc !42
  br label %148

148:                                              ; preds = %146, %143, %138, %134
  %149 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  store volatile i32 %1, ptr %149, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !43
  %150 = and i32 %1, 257
  %151 = icmp eq i32 %150, 0
  %152 = and i32 %1, 1
  %153 = icmp eq i32 %152, 0
  %154 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 98, i32 1
  br label %155

155:                                              ; preds = %228, %148
  %156 = load ptr, ptr %128, align 4
  %157 = icmp eq ptr %156, %3
  %158 = load volatile i32, ptr %0, align 4
  br label %159

159:                                              ; preds = %198, %155
  %160 = phi i32 [ %158, %155 ], [ %199, %198 ]
  %161 = and i32 %160, 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  br i1 %157, label %167, label %205

164:                                              ; preds = %159
  %165 = and i32 %160, -255
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %182, label %170

167:                                              ; preds = %163
  store i8 1, ptr %126, align 4
  %168 = and i32 %160, -255
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %182, label %205

170:                                              ; preds = %164
  %171 = load ptr, ptr %121, align 4
  %172 = getelementptr inbounds %struct.task_struct, ptr %171, i32 0, i32 14
  %173 = load i32, ptr %172, align 16
  %174 = icmp sgt i32 %173, 99
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i32, ptr %125, align 4
  %177 = load volatile i32, ptr @jiffies, align 64
  %178 = sub i32 %176, %177
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %205

180:                                              ; preds = %175, %170
  %181 = or i32 %160, 4
  br label %192

182:                                              ; preds = %167, %164
  %183 = and i32 %160, -6
  %184 = or i32 %183, 1
  %185 = load volatile ptr, ptr %128, align 4
  %186 = icmp eq ptr %185, %128
  br i1 %186, label %191, label %187

187:                                              ; preds = %182
  %188 = load ptr, ptr %129, align 4
  %189 = icmp eq ptr %185, %188
  %190 = and i32 %184, -7
  br i1 %189, label %192, label %191

191:                                              ; preds = %187, %182
  br label %192

192:                                              ; preds = %191, %187, %180
  %193 = phi i32 [ %190, %187 ], [ %184, %191 ], [ %181, %180 ]
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %194

194:                                              ; preds = %194, %192
  %195 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %160, i32 %193, ptr elementtype(i32) %0) #8, !srcloc !9
  %196 = extractvalue { i32, i32 } %195, 0
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %194

198:                                              ; preds = %194
  %199 = extractvalue { i32, i32 } %195, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %200 = icmp eq i32 %199, %160
  br i1 %200, label %201, label %159, !prof !11

201:                                              ; preds = %198
  %202 = and i32 %193, 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %229, label %204

204:                                              ; preds = %201
  store i8 1, ptr %126, align 4
  br label %205

205:                                              ; preds = %204, %175, %167, %163
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %206 = load i16, ptr %127, align 4
  %207 = add i16 %206, 1
  store i16 %207, ptr %127, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br i1 %151, label %221, label %208

208:                                              ; preds = %205
  %209 = load volatile i32, ptr %7, align 4
  %210 = and i32 %209, 256
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %216, !prof !11

212:                                              ; preds = %208
  %213 = load volatile i32, ptr %7, align 4
  %214 = and i32 %213, 1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %212, %208
  br i1 %153, label %217, label %237

217:                                              ; preds = %216
  %218 = load i32, ptr %154, align 4
  %219 = and i32 %218, 256
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %237

221:                                              ; preds = %217, %212, %205
  %222 = load i8, ptr %126, align 4, !range !44
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %225 = call fastcc i32 @rwsem_spin_on_owner(ptr noundef %0)
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %228, label %227

227:                                              ; preds = %224, %221
  call void @schedule() #8
  store volatile i32 %1, ptr %149, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !47
  br label %228

228:                                              ; preds = %227, %224
  call void @_raw_spin_lock_irq(ptr noundef %127) #8
  br label %155

229:                                              ; preds = %201
  %230 = load ptr, ptr %131, align 4
  %231 = load ptr, ptr %3, align 4
  %232 = getelementptr inbounds %struct.list_head, ptr %231, i32 0, i32 1
  store ptr %230, ptr %232, align 4
  store volatile ptr %231, ptr %230, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %131, align 4
  %233 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1
  %234 = ptrtoint ptr %7 to i32
  store volatile i32 %234, ptr %233, align 4
  store volatile i32 0, ptr %149, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %235 = load i16, ptr %127, align 4
  %236 = add i16 %235, 1
  store i16 %236, ptr %127, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %252

237:                                              ; preds = %217, %216
  store volatile i32 0, ptr %149, align 8
  call void @_raw_spin_lock_irq(ptr noundef %127) #8
  %238 = load ptr, ptr %131, align 4
  %239 = load ptr, ptr %3, align 4
  %240 = getelementptr inbounds %struct.list_head, ptr %239, i32 0, i32 1
  store ptr %238, ptr %240, align 4
  store volatile ptr %239, ptr %238, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %131, align 4
  %241 = load volatile ptr, ptr %128, align 4
  %242 = icmp eq ptr %241, %128
  br i1 %242, label %243, label %245, !prof !14

243:                                              ; preds = %237
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %244 = call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 6, ptr elementtype(i32) %0) #8, !srcloc !15
  br label %245

245:                                              ; preds = %243, %237
  %246 = load volatile ptr, ptr %128, align 4
  %247 = icmp eq ptr %246, %128
  br i1 %247, label %249, label %248

248:                                              ; preds = %245
  call fastcc void @rwsem_mark_wake(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4)
  br label %249

249:                                              ; preds = %248, %245
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %250 = load i16, ptr %127, align 4
  %251 = add i16 %250, 1
  store i16 %251, ptr %127, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  call void @wake_up_q(ptr noundef nonnull %4) #8
  br label %252

252:                                              ; preds = %249, %229, %60
  %253 = phi ptr [ %0, %229 ], [ inttoptr (i32 -4 to ptr), %249 ], [ %0, %60 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret ptr %253
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rwsem_spin_on_owner(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.rw_semaphore, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = and i32 %3, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %1
  %9 = and i32 %3, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %8
  %12 = icmp eq i32 %4, 0
  br i1 %12, label %54, label %13

13:                                               ; preds = %11
  %14 = load volatile i32, ptr %2, align 4
  %15 = and i32 %14, -4
  %16 = inttoptr i32 %15 to ptr
  %17 = icmp eq ptr %16, %5
  %18 = xor i32 %14, %3
  %19 = and i32 %18, 3
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %17, i1 %20, i1 false
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 6
  %24 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  br label %36

25:                                               ; preds = %44, %13
  %26 = phi i32 [ %14, %13 ], [ %46, %44 ]
  %27 = phi i32 [ %15, %13 ], [ %47, %44 ]
  %28 = and i32 %26, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = and i32 %26, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = icmp eq i32 %27, 0
  %35 = select i1 %34, i32 1, i32 2
  br label %54

36:                                               ; preds = %44, %22
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !48
  %37 = tail call ptr @llvm.thread.pointer() #8
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load volatile i32, ptr %23, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = load volatile i32, ptr %24, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !49
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !50
  %46 = load volatile i32, ptr %2, align 4
  %47 = and i32 %46, -4
  %48 = inttoptr i32 %47 to ptr
  %49 = icmp eq ptr %48, %5
  %50 = xor i32 %46, %3
  %51 = and i32 %50, 3
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %49, i1 %52, i1 false
  br i1 %53, label %36, label %25

54:                                               ; preds = %41, %36, %33, %30, %25, %11, %8, %1
  %55 = phi i32 [ %35, %33 ], [ 8, %25 ], [ 4, %30 ], [ 4, %8 ], [ 8, %1 ], [ 1, %11 ], [ 8, %36 ], [ 8, %41 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @osq_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @osq_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

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
!8 = !{i64 453467, i64 2147943438, i64 2147943464, i64 2147943511, i64 2147943533, i64 2147943561, i64 2147943581}
!9 = !{i64 439530, i64 439554, i64 439575, i64 439592, i64 439609}
!10 = !{i64 2148068254}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148053056}
!13 = !{i64 2147956334, i64 2147956366, i64 2147956395, i64 2147956429, i64 2147956460, i64 2147956483}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2147961856, i64 2147961882, i64 2147961911, i64 2147961945, i64 2147961976, i64 2147961999}
!16 = !{i64 2148054473}
!17 = !{i64 2147957108, i64 2147957140, i64 2147957169, i64 2147957203, i64 2147957234, i64 2147957257}
!18 = !{i64 2148052671}
!19 = !{i64 2148069052}
!20 = !{i64 2148069252}
!21 = !{!"auto-init"}
!22 = !{i64 2149208087}
!23 = !{i64 2149203911}
!24 = !{i64 2149203986, i64 2149204013, i64 2149204060, i64 2149204082, i64 2149204110, i64 2149204130}
!25 = !{i64 348951}
!26 = !{i64 2149232231}
!27 = !{i64 2150812989}
!28 = !{i64 2148053472}
!29 = !{i64 2148053675}
!30 = !{i64 2150816153}
!31 = !{i64 2150821843}
!32 = !{i64 2148054888}
!33 = !{i64 2148055090}
!34 = !{i64 2147955650, i64 2147955676, i64 2147955705, i64 2147955739, i64 2147955770, i64 2147955793}
!35 = !{i64 2150805702}
!36 = !{i64 2150810865}
!37 = !{i64 2150810935}
!38 = !{i64 2150811685}
!39 = !{i64 2150812050}
!40 = !{i64 2150811982}
!41 = !{i64 2150811824}
!42 = !{i64 2147963428, i64 2147963454, i64 2147963483, i64 2147963517, i64 2147963548, i64 2147963571}
!43 = !{i64 2150836223}
!44 = !{i8 0, i8 2}
!45 = !{i64 2150836392}
!46 = !{i64 2150836440}
!47 = !{i64 2150839231}
!48 = !{i64 2150811211}
!49 = !{i64 2150811440}
!50 = !{i64 2150811282}
