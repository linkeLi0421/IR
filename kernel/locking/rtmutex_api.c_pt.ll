; ModuleID = '/llk/IR/kernel/locking/rtmutex_api.c_pt.bc'
source_filename = "../kernel/locking/rtmutex_api.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt_mutex_base_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rt_mutex_base_init\22\09\09\09\09\09"
module asm "__kstrtabns_rt_mutex_base_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22rt_mutex_lock\22\09\09\09\09\09"
module asm "__kstrtabns_rt_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt_mutex_lock_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22rt_mutex_lock_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_rt_mutex_lock_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt_mutex_lock_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22rt_mutex_lock_killable\22\09\09\09\09\09"
module asm "__kstrtabns_rt_mutex_lock_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt_mutex_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22rt_mutex_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_rt_mutex_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt_mutex_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22rt_mutex_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_rt_mutex_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___rt_mutex_init:\09\09\09\09\09"
module asm "\09.asciz \09\22__rt_mutex_init\22\09\09\09\09\09"
module asm "__kstrtabns___rt_mutex_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
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
%struct.rt_mutex_waiter = type { %struct.rb_node, %struct.rb_node, ptr, ptr, i32, i32, i64, ptr }
%struct.rt_wake_q_head = type { %struct.wake_q_head, ptr }
%struct.wake_q_head = type { ptr, ptr }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }

@max_lock_depth = dso_local local_unnamed_addr global i32 1024, align 4
@__kstrtab_rt_mutex_base_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt_mutex_base_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rt_mutex_base_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt_mutex_base_init to i32), ptr @__kstrtab_rt_mutex_base_init, ptr @__kstrtabns_rt_mutex_base_init }, section "___ksymtab+rt_mutex_base_init", align 4
@__kstrtab_rt_mutex_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt_mutex_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_rt_mutex_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt_mutex_lock to i32), ptr @__kstrtab_rt_mutex_lock, ptr @__kstrtabns_rt_mutex_lock }, section "___ksymtab_gpl+rt_mutex_lock", align 4
@__kstrtab_rt_mutex_lock_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt_mutex_lock_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_rt_mutex_lock_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt_mutex_lock_interruptible to i32), ptr @__kstrtab_rt_mutex_lock_interruptible, ptr @__kstrtabns_rt_mutex_lock_interruptible }, section "___ksymtab_gpl+rt_mutex_lock_interruptible", align 4
@__kstrtab_rt_mutex_lock_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt_mutex_lock_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_rt_mutex_lock_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt_mutex_lock_killable to i32), ptr @__kstrtab_rt_mutex_lock_killable, ptr @__kstrtabns_rt_mutex_lock_killable }, section "___ksymtab_gpl+rt_mutex_lock_killable", align 4
@__kstrtab_rt_mutex_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt_mutex_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_rt_mutex_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt_mutex_trylock to i32), ptr @__kstrtab_rt_mutex_trylock, ptr @__kstrtabns_rt_mutex_trylock }, section "___ksymtab_gpl+rt_mutex_trylock", align 4
@__kstrtab_rt_mutex_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt_mutex_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_rt_mutex_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt_mutex_unlock to i32), ptr @__kstrtab_rt_mutex_unlock, ptr @__kstrtabns_rt_mutex_unlock }, section "___ksymtab_gpl+rt_mutex_unlock", align 4
@__kstrtab___rt_mutex_init = external dso_local constant [0 x i8], align 1
@__kstrtabns___rt_mutex_init = external dso_local constant [0 x i8], align 1
@__ksymtab___rt_mutex_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__rt_mutex_init to i32), ptr @__kstrtab___rt_mutex_init, ptr @__kstrtabns___rt_mutex_init }, section "___ksymtab_gpl+__rt_mutex_init", align 4
@.str = private unnamed_addr constant [25 x i8] c"kernel/locking/rtmutex.c\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"rtmutex deadlock detected\0A\00", align 1
@rt_mutex_adjust_prio_chain.prev_max = internal unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"\014Maximum lock depth %d reached task: %s (%d)\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab___rt_mutex_init, ptr @__ksymtab_rt_mutex_base_init, ptr @__ksymtab_rt_mutex_lock, ptr @__ksymtab_rt_mutex_lock_interruptible, ptr @__ksymtab_rt_mutex_lock_killable, ptr @__ksymtab_rt_mutex_trylock, ptr @__ksymtab_rt_mutex_unlock], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rt_mutex_base_init(ptr nocapture noundef writeonly %0) #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt_mutex_lock(ptr noundef %0) #1 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #9
  %3 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  %4 = ptrtoint ptr %2 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #9, !srcloc !8
  br label %5

5:                                                ; preds = %5, %1
  %6 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %3, i32 0, i32 %4) #9, !srcloc !9
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5
  %10 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !11

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @rt_mutex_slowlock(ptr noundef %0, i32 noundef 2) #9
  br label %14

14:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt_mutex_lock_interruptible(ptr noundef %0) #1 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #9
  %3 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  %4 = ptrtoint ptr %2 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #9, !srcloc !8
  br label %5

5:                                                ; preds = %5, %1
  %6 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %3, i32 0, i32 %4) #9, !srcloc !9
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5
  %10 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !11

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @rt_mutex_slowlock(ptr noundef %0, i32 noundef 1) #9
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %13, %12 ], [ 0, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt_mutex_lock_killable(ptr noundef %0) #1 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #9
  %3 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  %4 = ptrtoint ptr %2 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #9, !srcloc !8
  br label %5

5:                                                ; preds = %5, %1
  %6 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %3, i32 0, i32 %4) #9, !srcloc !9
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5
  %10 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !11

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @rt_mutex_slowlock(ptr noundef %0, i32 noundef 258) #9
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %13, %12 ], [ 0, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt_mutex_trylock(ptr noundef %0) #1 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #9
  %3 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  %4 = ptrtoint ptr %2 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #9, !srcloc !8
  br label %5

5:                                                ; preds = %5, %1
  %6 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %3, i32 0, i32 %4) #9, !srcloc !9
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5
  %10 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !11

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @rt_mutex_slowtrylock(ptr noundef %0) #9
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %13, %12 ], [ 1, %9 ]
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt_mutex_unlock(ptr noundef %0) #1 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #9
  %3 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %4 = ptrtoint ptr %2 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #9, !srcloc !8
  br label %5

5:                                                ; preds = %5, %1
  %6 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %3, i32 %4, i32 0) #9, !srcloc !9
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5
  %10 = extractvalue { i32, i32 } %6, 1
  %11 = inttoptr i32 %10 to ptr
  %12 = icmp eq ptr %2, %11
  br i1 %12, label %14, label %13, !prof !11

13:                                               ; preds = %9
  tail call fastcc void @rt_mutex_slowunlock(ptr noundef %0) #9
  br label %14

14:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt_mutex_futex_trylock(ptr noundef %0) local_unnamed_addr #1 section ".sched.text" {
  %2 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp ult ptr %3, inttoptr (i32 2 to ptr)
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %0, ptr noundef %7, ptr noundef null) #9
  %9 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = load volatile i32, ptr %2, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = and i32 %13, -2
  store volatile i32 %17, ptr %2, align 4
  br label %18

18:                                               ; preds = %16, %12, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %6) #9
  br label %19

19:                                               ; preds = %18, %1
  %20 = phi i32 [ %8, %18 ], [ 0, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rt_mutex_slowtrylock(ptr noundef %0) unnamed_addr #1 section ".sched.text" {
  %2 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp ult ptr %3, inttoptr (i32 2 to ptr)
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %0, ptr noundef %7, ptr noundef null) #9
  %9 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = load volatile i32, ptr %2, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = and i32 %13, -2
  store volatile i32 %17, ptr %2, align 4
  br label %18

18:                                               ; preds = %16, %12, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %6) #9
  br label %19

19:                                               ; preds = %18, %1
  %20 = phi i32 [ %8, %18 ], [ 0, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__rt_mutex_futex_trylock(ptr noundef %0) local_unnamed_addr #1 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #9
  %3 = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %0, ptr noundef %2, ptr noundef null) #9
  %4 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = and i32 %9, -2
  store volatile i32 %13, ptr %4, align 4
  br label %14

14:                                               ; preds = %12, %8, %1
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__rt_mutex_futex_unlock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 section ".sched.text" {
  %3 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  store ptr null, ptr %7, align 4
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @mark_wakeup_next_waiter(ptr noundef %1, ptr noundef %0)
  br label %9

9:                                                ; preds = %8, %6
  %10 = xor i1 %5, true
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mark_wakeup_next_waiter(ptr noundef %0, ptr noundef %1) unnamed_addr #1 section ".sched.text" {
  %3 = tail call ptr @llvm.thread.pointer() #9
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.rt_mutex_base, ptr %1, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %13, label %12, !prof !11

12:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

13:                                               ; preds = %8, %2
  %14 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %6, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = ptrtoint ptr %14 to i32
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %20 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %14
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call ptr @rb_next(ptr noundef %14) #9
  store ptr %24, ptr %20, align 4
  br label %25

25:                                               ; preds = %23, %18
  tail call void @rb_erase(ptr noundef %14, ptr noundef %19) #9
  store i32 %16, ptr %14, align 4
  br label %26

26:                                               ; preds = %25, %13
  %27 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 12
  %34 = load ptr, ptr %33, align 8
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi ptr [ %34, %30 ], [ null, %26 ]
  tail call void @rt_mutex_setprio(ptr noundef %3, ptr noundef %36) #9
  %37 = getelementptr inbounds %struct.rt_mutex_base, ptr %1, i32 0, i32 2
  store ptr inttoptr (i32 1 to ptr), ptr %37, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %38 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %6, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  tail call void @wake_q_add(ptr noundef %0, ptr noundef %39) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %40 = load i16, ptr %4, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt_mutex_futex_unlock(ptr noundef %0) local_unnamed_addr #1 section ".sched.text" {
  %2 = alloca %struct.rt_wake_q_head, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  store ptr inttoptr (i32 1 to ptr), ptr %2, align 4
  %3 = getelementptr inbounds %struct.wake_q_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rt_wake_q_head, ptr %2, i32 0, i32 1
  store ptr null, ptr %4, align 4
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  store ptr null, ptr %10, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %5) #9
  br label %16

11:                                               ; preds = %1
  call fastcc void @mark_wakeup_next_waiter(ptr noundef nonnull %2, ptr noundef %0) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %5) #9
  %12 = load ptr, ptr %2, align 4
  %13 = icmp eq ptr %12, inttoptr (i32 1 to ptr)
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call void @wake_up_q(ptr noundef nonnull %2) #9
  br label %15

15:                                               ; preds = %14, %11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %16

16:                                               ; preds = %15, %9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt_mutex_postunlock(ptr noundef %0) local_unnamed_addr #1 section ".sched.text" {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, inttoptr (i32 1 to ptr)
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @wake_up_q(ptr noundef %0) #9
  br label %5

5:                                                ; preds = %4, %1
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @__rt_mutex_init(ptr nocapture noundef writeonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 section ".sched.text" {
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt_mutex_init_proxy_locked(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 section ".sched.text" {
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false) #9
  %3 = ptrtoint ptr %1 to i32
  %4 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  %8 = or i32 %7, %3
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  store volatile ptr %9, ptr %10, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt_mutex_proxy_unlock(ptr noundef %0) local_unnamed_addr #6 section ".sched.text" {
  %2 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i32
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  store volatile ptr %6, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__rt_mutex_start_proxy_lock(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 section ".sched.text" {
  %4 = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %0, ptr noundef %2, ptr noundef null)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @task_blocks_on_rt_mutex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp ult ptr %11, inttoptr (i32 2 to ptr)
  %13 = select i1 %12, i32 0, i32 %7
  br label %14

14:                                               ; preds = %9, %6, %3
  %15 = phi i32 [ 1, %3 ], [ 0, %6 ], [ %13, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @try_to_take_rt_mutex(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 section ".sched.text" {
  %4 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  br label %5

5:                                                ; preds = %12, %3
  %6 = load i32, ptr %4, align 4
  %7 = or i32 %6, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #9, !srcloc !8
  br label %8

8:                                                ; preds = %8, %5
  %9 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %4, i32 %6, i32 %7) #9, !srcloc !9
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  %14 = icmp eq i32 %13, %6
  br i1 %14, label %15, label %5

15:                                               ; preds = %12
  %16 = load volatile ptr, ptr %4, align 4
  %17 = icmp ult ptr %16, inttoptr (i32 2 to ptr)
  br i1 %17, label %18, label %158

18:                                               ; preds = %15
  %19 = icmp eq ptr %2, null
  br i1 %19, label %59, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %22, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %29, label %28, !prof !11

28:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

29:                                               ; preds = %24, %20
  %30 = icmp eq ptr %22, %2
  br i1 %30, label %50, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %2, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %22, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = icmp sgt i32 %33, -1
  br i1 %38, label %158, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %2, i32 0, i32 6
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %22, i32 0, i32 6
  %43 = load i64, ptr %42, align 8
  %44 = sub i64 %41, %43
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %158

46:                                               ; preds = %39, %31
  %47 = load i32, ptr %2, align 8
  %48 = ptrtoint ptr %2 to i32
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %89, label %56

50:                                               ; preds = %29
  %51 = load i32, ptr %2, align 8
  %52 = ptrtoint ptr %2 to i32
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %89, label %54

54:                                               ; preds = %50
  %55 = tail call ptr @rb_next(ptr noundef nonnull %2) #9
  store ptr %55, ptr %21, align 4
  br label %56

56:                                               ; preds = %54, %46
  %57 = phi i32 [ %52, %54 ], [ %48, %46 ]
  %58 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  tail call void @rb_erase(ptr noundef nonnull %2, ptr noundef %58) #9
  store i32 %57, ptr %2, align 8
  br label %89

59:                                               ; preds = %18
  %60 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %150, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %65 = load i32, ptr %64, align 16
  %66 = icmp sgt i32 %65, 99
  %67 = select i1 %66, i32 120, i32 %65
  %68 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 7
  %69 = load i64, ptr %68, align 32
  %70 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %71, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %0
  br i1 %76, label %78, label %77, !prof !11

77:                                               ; preds = %73
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

78:                                               ; preds = %73, %63
  %79 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %71, i32 0, i32 5
  %80 = load i32, ptr %79, align 4
  %81 = icmp slt i32 %67, %80
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = icmp sgt i32 %67, -1
  br i1 %83, label %158, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %71, i32 0, i32 6
  %86 = load i64, ptr %85, align 8
  %87 = sub i64 %69, %86
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %158

89:                                               ; preds = %84, %78, %56, %50, %46
  %90 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %90) #9
  %91 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 112
  store ptr null, ptr %91, align 8
  %92 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %93 = load volatile ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %147, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %97, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, %0
  br i1 %102, label %104, label %103, !prof !11

103:                                              ; preds = %99
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

104:                                              ; preds = %99, %95
  %105 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %97, i32 0, i32 1
  %106 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 110
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %141, label %109

109:                                              ; preds = %104
  %110 = getelementptr %struct.rt_mutex_waiter, ptr %97, i32 0, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = icmp sgt i32 %111, -1
  %113 = getelementptr %struct.rt_mutex_waiter, ptr %97, i32 0, i32 6
  br label %114

114:                                              ; preds = %132, %109
  %115 = phi ptr [ %135, %132 ], [ %107, %109 ]
  %116 = phi i1 [ %133, %132 ], [ true, %109 ]
  %117 = getelementptr i8, ptr %115, i32 24
  %118 = load i32, ptr %117, align 4
  %119 = icmp slt i32 %111, %118
  br i1 %119, label %130, label %120

120:                                              ; preds = %114
  br i1 %112, label %121, label %123

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.rb_node, ptr %115, i32 0, i32 1
  br label %132

123:                                              ; preds = %120
  %124 = load i64, ptr %113, align 8
  %125 = getelementptr i8, ptr %115, i32 28
  %126 = load i64, ptr %125, align 8
  %127 = sub i64 %124, %126
  %128 = icmp slt i64 %127, 0
  %129 = getelementptr inbounds %struct.rb_node, ptr %115, i32 0, i32 1
  br i1 %128, label %130, label %132

130:                                              ; preds = %123, %114
  %131 = getelementptr inbounds %struct.rb_node, ptr %115, i32 0, i32 2
  br label %132

132:                                              ; preds = %130, %123, %121
  %133 = phi i1 [ %116, %130 ], [ false, %123 ], [ false, %121 ]
  %134 = phi ptr [ %131, %130 ], [ %129, %123 ], [ %122, %121 ]
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %114

137:                                              ; preds = %132
  %138 = ptrtoint ptr %115 to i32
  store i32 %138, ptr %105, align 4
  %139 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %97, i32 0, i32 1, i32 1
  store ptr null, ptr %139, align 4
  %140 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %97, i32 0, i32 1, i32 2
  store ptr null, ptr %140, align 4
  store ptr %105, ptr %134, align 4
  br i1 %133, label %144, label %146

141:                                              ; preds = %104
  store i32 0, ptr %105, align 4
  %142 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %97, i32 0, i32 1, i32 1
  store ptr null, ptr %142, align 4
  %143 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %97, i32 0, i32 1, i32 2
  store ptr null, ptr %143, align 4
  store ptr %105, ptr %106, align 4
  br label %144

144:                                              ; preds = %141, %137
  %145 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 110, i32 1
  store ptr %105, ptr %145, align 4
  br label %146

146:                                              ; preds = %144, %137
  tail call void @rb_insert_color(ptr noundef %105, ptr noundef %106) #9
  br label %147

147:                                              ; preds = %146, %89
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %148 = load i16, ptr %90, align 4
  %149 = add i16 %148, 1
  store i16 %149, ptr %90, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %150

150:                                              ; preds = %147, %59
  %151 = ptrtoint ptr %1 to i32
  %152 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %153 = load volatile ptr, ptr %152, align 4
  %154 = icmp ne ptr %153, null
  %155 = zext i1 %154 to i32
  %156 = or i32 %155, %151
  %157 = inttoptr i32 %156 to ptr
  store volatile ptr %157, ptr %4, align 4
  br label %158

158:                                              ; preds = %150, %84, %82, %39, %37, %15
  %159 = phi i32 [ 1, %150 ], [ 0, %15 ], [ 0, %84 ], [ 0, %39 ], [ 0, %37 ], [ 0, %82 ]
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @task_blocks_on_rt_mutex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 section ".sched.text" {
  %5 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  %6 = load volatile ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = and i32 %7, -2
  %9 = inttoptr i32 %8 to ptr
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %185, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %12) #9
  %13 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 2
  store ptr %2, ptr %13, align 8
  %14 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 3
  store ptr %0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 14
  %16 = load i32, ptr %15, align 16
  %17 = icmp sgt i32 %16, 99
  %18 = select i1 %17, i32 120, i32 %16
  %19 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 5
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 21, i32 7
  %21 = load i64, ptr %20, align 32
  %22 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 6
  store i64 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %63, label %26

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %28, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %35, label %34, !prof !11

34:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

35:                                               ; preds = %30, %26
  %36 = icmp sgt i32 %18, -1
  br label %37

37:                                               ; preds = %54, %35
  %38 = phi ptr [ %57, %54 ], [ %24, %35 ]
  %39 = phi i1 [ %55, %54 ], [ true, %35 ]
  %40 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %38, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp slt i32 %18, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %37
  br i1 %36, label %44, label %46

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 1
  br label %54

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %38, i32 0, i32 6
  %48 = load i64, ptr %47, align 8
  %49 = sub i64 %21, %48
  %50 = icmp slt i64 %49, 0
  %51 = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 1
  br i1 %50, label %52, label %54

52:                                               ; preds = %46, %37
  %53 = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 2
  br label %54

54:                                               ; preds = %52, %46, %44
  %55 = phi i1 [ %39, %52 ], [ false, %46 ], [ false, %44 ]
  %56 = phi ptr [ %53, %52 ], [ %51, %46 ], [ %45, %44 ]
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %37

59:                                               ; preds = %54
  %60 = ptrtoint ptr %38 to i32
  store i32 %60, ptr %1, align 4
  %61 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  store ptr null, ptr %61, align 4
  %62 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  store ptr null, ptr %62, align 4
  store ptr %1, ptr %56, align 4
  br i1 %55, label %66, label %69

63:                                               ; preds = %11
  store i32 0, ptr %1, align 4
  %64 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  store ptr null, ptr %64, align 4
  %65 = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  store ptr null, ptr %65, align 4
  store ptr %1, ptr %23, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi ptr [ %1, %63 ], [ %28, %59 ]
  %68 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1, i32 1
  store ptr %1, ptr %68, align 4
  br label %69

69:                                               ; preds = %66, %59
  %70 = phi ptr [ %28, %59 ], [ %67, %66 ]
  tail call void @rb_insert_color(ptr noundef %1, ptr noundef %23) #9
  %71 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 112
  store ptr %1, ptr %71, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %72 = load i16, ptr %12, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %74 = icmp eq i32 %8, 0
  br i1 %74, label %185, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %76) #9
  %77 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %78, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, %0
  br i1 %83, label %85, label %84, !prof !11

84:                                               ; preds = %80
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

85:                                               ; preds = %80, %75
  %86 = icmp eq ptr %78, %1
  br i1 %86, label %87, label %153

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %70, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = ptrtoint ptr %88 to i32
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 110
  %94 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 110, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %88
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = tail call ptr @rb_next(ptr noundef %88) #9
  store ptr %98, ptr %94, align 4
  br label %99

99:                                               ; preds = %97, %92
  tail call void @rb_erase(ptr noundef %88, ptr noundef %93) #9
  store i32 %90, ptr %88, align 4
  br label %100

100:                                              ; preds = %99, %87
  %101 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 1
  %102 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 110
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %135, label %105

105:                                              ; preds = %100
  %106 = load i32, ptr %19, align 4
  %107 = icmp sgt i32 %106, -1
  br label %108

108:                                              ; preds = %126, %105
  %109 = phi ptr [ %129, %126 ], [ %103, %105 ]
  %110 = phi i1 [ %127, %126 ], [ true, %105 ]
  %111 = getelementptr i8, ptr %109, i32 24
  %112 = load i32, ptr %111, align 4
  %113 = icmp slt i32 %106, %112
  br i1 %113, label %124, label %114

114:                                              ; preds = %108
  br i1 %107, label %115, label %117

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.rb_node, ptr %109, i32 0, i32 1
  br label %126

117:                                              ; preds = %114
  %118 = load i64, ptr %22, align 8
  %119 = getelementptr i8, ptr %109, i32 28
  %120 = load i64, ptr %119, align 8
  %121 = sub i64 %118, %120
  %122 = icmp slt i64 %121, 0
  %123 = getelementptr inbounds %struct.rb_node, ptr %109, i32 0, i32 1
  br i1 %122, label %124, label %126

124:                                              ; preds = %117, %108
  %125 = getelementptr inbounds %struct.rb_node, ptr %109, i32 0, i32 2
  br label %126

126:                                              ; preds = %124, %117, %115
  %127 = phi i1 [ %110, %124 ], [ false, %117 ], [ false, %115 ]
  %128 = phi ptr [ %125, %124 ], [ %123, %117 ], [ %116, %115 ]
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %108

131:                                              ; preds = %126
  %132 = ptrtoint ptr %109 to i32
  store i32 %132, ptr %101, align 4
  %133 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 1, i32 1
  store ptr null, ptr %133, align 4
  %134 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 1, i32 2
  store ptr null, ptr %134, align 4
  store ptr %101, ptr %128, align 4
  br i1 %127, label %138, label %140

135:                                              ; preds = %100
  store i32 0, ptr %101, align 4
  %136 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 1, i32 1
  store ptr null, ptr %136, align 4
  %137 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 1, i32 2
  store ptr null, ptr %137, align 4
  store ptr %101, ptr %102, align 4
  br label %138

138:                                              ; preds = %135, %131
  %139 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 110, i32 1
  store ptr %101, ptr %139, align 4
  br label %140

140:                                              ; preds = %138, %131
  tail call void @rb_insert_color(ptr noundef %101, ptr noundef %102) #9
  %141 = load volatile ptr, ptr %102, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 110, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr i8, ptr %145, i32 12
  %147 = load ptr, ptr %146, align 8
  br label %148

148:                                              ; preds = %143, %140
  %149 = phi ptr [ %147, %143 ], [ null, %140 ]
  tail call void @rt_mutex_setprio(ptr noundef nonnull %9, ptr noundef %149) #9
  %150 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 112
  %151 = load ptr, ptr %150, align 8
  %152 = icmp ne ptr %151, null
  br label %157

153:                                              ; preds = %85
  %154 = icmp eq i32 %3, 1
  %155 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 112
  %156 = load ptr, ptr %155, align 8
  br label %157

157:                                              ; preds = %153, %148
  %158 = phi ptr [ %151, %148 ], [ %156, %153 ]
  %159 = phi i1 [ %152, %148 ], [ %154, %153 ]
  %160 = icmp eq ptr %158, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %158, i32 0, i32 3
  %163 = load ptr, ptr %162, align 4
  br label %164

164:                                              ; preds = %161, %157
  %165 = phi ptr [ %163, %161 ], [ null, %157 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %166 = load i16, ptr %76, align 4
  %167 = add i16 %166, 1
  store i16 %167, ptr %76, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %168 = icmp ne ptr %165, null
  %169 = select i1 %159, i1 %168, i1 false
  br i1 %169, label %170, label %185

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %171) #9, !srcloc !8
  %172 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %171, ptr %171, i32 1, ptr elementtype(i32) %171) #9, !srcloc !20
  %173 = extractvalue { i32, i32, i32 } %172, 0
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %179, label %175, !prof !21

175:                                              ; preds = %170
  %176 = add i32 %173, 1
  %177 = or i32 %176, %173
  %178 = icmp sgt i32 %177, -1
  br i1 %178, label %181, label %179, !prof !11

179:                                              ; preds = %175, %170
  %180 = phi i32 [ 2, %170 ], [ 1, %175 ]
  tail call void @refcount_warn_saturate(ptr noundef %171, i32 noundef %180) #9
  br label %181

181:                                              ; preds = %179, %175
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %182 = load i16, ptr %0, align 4
  %183 = add i16 %182, 1
  store i16 %183, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %184 = tail call fastcc i32 @rt_mutex_adjust_prio_chain(ptr noundef nonnull %9, i32 noundef %3, ptr noundef %0, ptr noundef nonnull %165, ptr noundef %1, ptr noundef %2)
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #9
  br label %185

185:                                              ; preds = %181, %164, %69, %4
  %186 = phi i32 [ %184, %181 ], [ -35, %4 ], [ 0, %69 ], [ 0, %164 ]
  ret i32 %186
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt_mutex_start_proxy_lock(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 section ".sched.text" {
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #9
  %4 = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %0, ptr noundef %2, ptr noundef null) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @task_blocks_on_rt_mutex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp ult ptr %11, inttoptr (i32 2 to ptr)
  br i1 %12, label %15, label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ 1, %3 ], [ %7, %9 ]
  tail call fastcc void @remove_waiter(ptr noundef %0, ptr noundef %1)
  br label %15

15:                                               ; preds = %13, %9, %6
  %16 = phi i32 [ %14, %13 ], [ 0, %6 ], [ 0, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %17 = load i16, ptr %0, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @remove_waiter(ptr noundef %0, ptr noundef %1) unnamed_addr #1 section ".sched.text" {
  %3 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %11, label %10, !prof !11

10:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  %13 = load volatile ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = and i32 %14, -2
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call ptr @llvm.thread.pointer() #9
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %18) #9
  %19 = load i32, ptr %1, align 8
  %20 = ptrtoint ptr %1 to i32
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %3, align 4
  %25 = icmp eq ptr %24, %1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call ptr @rb_next(ptr noundef %1) #9
  store ptr %27, ptr %3, align 4
  br label %28

28:                                               ; preds = %26, %22
  tail call void @rb_erase(ptr noundef %1, ptr noundef %23) #9
  store i32 %20, ptr %1, align 8
  br label %29

29:                                               ; preds = %28, %11
  %30 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 112
  store ptr null, ptr %30, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %31 = load i16, ptr %18, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %33 = icmp ne i32 %15, 0
  %34 = icmp eq ptr %4, %1
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %142

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %37) #9
  %38 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %1, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = ptrtoint ptr %38 to i32
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 110
  %44 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 110, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %38
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = tail call ptr @rb_next(ptr noundef %38) #9
  store ptr %48, ptr %44, align 4
  br label %49

49:                                               ; preds = %47, %42
  tail call void @rb_erase(ptr noundef %38, ptr noundef %43) #9
  store i32 %40, ptr %38, align 4
  br label %50

50:                                               ; preds = %49, %36
  %51 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %105, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %3, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %55, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %62, label %61, !prof !11

61:                                               ; preds = %57
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

62:                                               ; preds = %57, %54
  %63 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %55, i32 0, i32 1
  %64 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 110
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %99, label %67

67:                                               ; preds = %62
  %68 = getelementptr %struct.rt_mutex_waiter, ptr %55, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = icmp sgt i32 %69, -1
  %71 = getelementptr %struct.rt_mutex_waiter, ptr %55, i32 0, i32 6
  br label %72

72:                                               ; preds = %90, %67
  %73 = phi ptr [ %93, %90 ], [ %65, %67 ]
  %74 = phi i1 [ %91, %90 ], [ true, %67 ]
  %75 = getelementptr i8, ptr %73, i32 24
  %76 = load i32, ptr %75, align 4
  %77 = icmp slt i32 %69, %76
  br i1 %77, label %88, label %78

78:                                               ; preds = %72
  br i1 %70, label %79, label %81

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.rb_node, ptr %73, i32 0, i32 1
  br label %90

81:                                               ; preds = %78
  %82 = load i64, ptr %71, align 8
  %83 = getelementptr i8, ptr %73, i32 28
  %84 = load i64, ptr %83, align 8
  %85 = sub i64 %82, %84
  %86 = icmp slt i64 %85, 0
  %87 = getelementptr inbounds %struct.rb_node, ptr %73, i32 0, i32 1
  br i1 %86, label %88, label %90

88:                                               ; preds = %81, %72
  %89 = getelementptr inbounds %struct.rb_node, ptr %73, i32 0, i32 2
  br label %90

90:                                               ; preds = %88, %81, %79
  %91 = phi i1 [ %74, %88 ], [ false, %81 ], [ false, %79 ]
  %92 = phi ptr [ %89, %88 ], [ %87, %81 ], [ %80, %79 ]
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %72

95:                                               ; preds = %90
  %96 = ptrtoint ptr %73 to i32
  store i32 %96, ptr %63, align 4
  %97 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %55, i32 0, i32 1, i32 1
  store ptr null, ptr %97, align 4
  %98 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %55, i32 0, i32 1, i32 2
  store ptr null, ptr %98, align 4
  store ptr %63, ptr %92, align 4
  br i1 %91, label %102, label %104

99:                                               ; preds = %62
  store i32 0, ptr %63, align 4
  %100 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %55, i32 0, i32 1, i32 1
  store ptr null, ptr %100, align 4
  %101 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %55, i32 0, i32 1, i32 2
  store ptr null, ptr %101, align 4
  store ptr %63, ptr %64, align 4
  br label %102

102:                                              ; preds = %99, %95
  %103 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 110, i32 1
  store ptr %63, ptr %103, align 4
  br label %104

104:                                              ; preds = %102, %95
  tail call void @rb_insert_color(ptr noundef %63, ptr noundef %64) #9
  br label %105

105:                                              ; preds = %104, %50
  %106 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 110
  %107 = load volatile ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 110, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %111, i32 12
  %113 = load ptr, ptr %112, align 8
  br label %114

114:                                              ; preds = %109, %105
  %115 = phi ptr [ %113, %109 ], [ null, %105 ]
  tail call void @rt_mutex_setprio(ptr noundef nonnull %16, ptr noundef %115) #9
  %116 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 112
  %117 = load ptr, ptr %116, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %117, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  br label %122

122:                                              ; preds = %119, %114
  %123 = phi ptr [ %121, %119 ], [ null, %114 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %124 = load i16, ptr %37, align 4
  %125 = add i16 %124, 1
  store i16 %125, ptr %37, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %126 = icmp eq ptr %123, null
  br i1 %126, label %142, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %128) #9, !srcloc !8
  %129 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %128, ptr %128, i32 1, ptr elementtype(i32) %128) #9, !srcloc !20
  %130 = extractvalue { i32, i32, i32 } %129, 0
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132, !prof !21

132:                                              ; preds = %127
  %133 = add i32 %130, 1
  %134 = or i32 %133, %130
  %135 = icmp sgt i32 %134, -1
  br i1 %135, label %138, label %136, !prof !11

136:                                              ; preds = %132, %127
  %137 = phi i32 [ 2, %127 ], [ 1, %132 ]
  tail call void @refcount_warn_saturate(ptr noundef %128, i32 noundef %137) #9
  br label %138

138:                                              ; preds = %136, %132
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %139 = load i16, ptr %0, align 4
  %140 = add i16 %139, 1
  store i16 %140, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %141 = tail call fastcc i32 @rt_mutex_adjust_prio_chain(ptr noundef nonnull %16, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %123, ptr noundef null, ptr noundef %17)
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #9
  br label %142

142:                                              ; preds = %138, %122, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rt_mutex_wait_proxy_lock(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 section ".sched.text" {
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #9
  %4 = tail call ptr @llvm.thread.pointer() #9
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  store volatile i32 1, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  %6 = tail call fastcc i32 @rt_mutex_slowlock_block(ptr noundef %0, i32 noundef 1, ptr noundef %1, ptr noundef %2)
  %7 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = and i32 %12, -2
  store volatile i32 %16, ptr %7, align 4
  br label %17

17:                                               ; preds = %15, %11, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %18 = load i16, ptr %0, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rt_mutex_slowlock_block(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #1 section ".sched.text" {
  %5 = tail call ptr @llvm.thread.pointer() #9
  %6 = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %0, ptr noundef %5, ptr noundef %3)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %89

8:                                                ; preds = %4
  %9 = icmp eq ptr %2, null
  %10 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %2, i32 0, i32 1
  %11 = and i32 %1, 257
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %1, 1
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 98, i32 1
  %16 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1, i32 1
  %17 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  %18 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  br label %19

19:                                               ; preds = %86, %8
  br i1 %9, label %23, label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr %10, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %89, label %23

23:                                               ; preds = %20, %19
  br i1 %12, label %37, label %24

24:                                               ; preds = %23
  %25 = load volatile i32, ptr %5, align 4
  %26 = and i32 %25, 256
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32, !prof !11

28:                                               ; preds = %24
  %29 = load volatile i32, ptr %5, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %24
  br i1 %14, label %33, label %89

33:                                               ; preds = %32
  %34 = load i32, ptr %15, align 4
  %35 = and i32 %34, 256
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %89

37:                                               ; preds = %33, %28, %23
  %38 = load ptr, ptr %16, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %38, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %45, label %44, !prof !11

44:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

45:                                               ; preds = %40, %37
  %46 = icmp eq ptr %38, %3
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = load volatile ptr, ptr %17, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = and i32 %49, -2
  %51 = inttoptr i32 %50 to ptr
  br label %52

52:                                               ; preds = %47, %45
  %53 = phi ptr [ %51, %47 ], [ null, %45 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %54 = load i16, ptr %0, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %56 = icmp eq ptr %53, null
  br i1 %56, label %85, label %57

57:                                               ; preds = %52
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %58 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %59 = load volatile ptr, ptr %17, align 4
  %60 = ptrtoint ptr %59 to i32
  %61 = and i32 %60, -2
  %62 = inttoptr i32 %61 to ptr
  %63 = icmp eq ptr %53, %62
  br i1 %63, label %64, label %84

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 6
  br label %66

66:                                               ; preds = %77, %64
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %67 = load volatile i32, ptr %65, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %66
  %70 = load volatile i32, ptr %58, align 8
  %71 = load volatile i32, ptr %5, align 4
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load ptr, ptr %16, align 4
  %76 = icmp eq ptr %75, %3
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !27
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !28
  %78 = load volatile ptr, ptr %17, align 4
  %79 = ptrtoint ptr %78 to i32
  %80 = and i32 %79, -2
  %81 = inttoptr i32 %80 to ptr
  %82 = icmp eq ptr %53, %81
  br i1 %82, label %66, label %84

83:                                               ; preds = %74, %69, %66
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  br label %85

84:                                               ; preds = %77, %57
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !29
  br label %86

85:                                               ; preds = %83, %52
  tail call void @schedule() #9
  br label %86

86:                                               ; preds = %85, %84
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #9
  store volatile i32 %1, ptr %18, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %87 = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %0, ptr noundef %5, ptr noundef %3)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %19, label %89

89:                                               ; preds = %86, %33, %32, %20, %4
  %90 = phi i32 [ 0, %4 ], [ -4, %32 ], [ -4, %33 ], [ -110, %20 ], [ 0, %86 ]
  %91 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  store volatile i32 0, ptr %91, align 8
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rt_mutex_cleanup_proxy_lock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 section ".sched.text" {
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #9
  %3 = tail call ptr @llvm.thread.pointer() #9
  %4 = tail call fastcc i32 @try_to_take_rt_mutex(ptr noundef %0, ptr noundef %3, ptr noundef %1)
  %5 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  %6 = load volatile ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = and i32 %7, -2
  %9 = inttoptr i32 %8 to ptr
  %10 = icmp eq ptr %3, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call fastcc void @remove_waiter(ptr noundef %0, ptr noundef %1)
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load volatile i32, ptr %5, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = and i32 %17, -2
  store volatile i32 %21, ptr %5, align 4
  br label %22

22:                                               ; preds = %20, %16, %12
  %23 = xor i1 %10, true
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %24 = load i16, ptr %0, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  ret i1 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt_mutex_adjust_pi(ptr noundef %0) local_unnamed_addr #1 section ".sched.text" {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 112
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %9 = load i32, ptr %8, align 16
  %10 = icmp sgt i32 %9, 99
  %11 = select i1 %10, i32 120, i32 %9
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 7
  %13 = load i64, ptr %12, align 32
  %14 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %5, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %11
  br i1 %16, label %17, label %24

17:                                               ; preds = %7
  %18 = icmp sgt i32 %11, -1
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %5, i32 0, i32 6
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %21, %13
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %17, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  br label %39

24:                                               ; preds = %19, %7
  %25 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %5, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  %27 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #9, !srcloc !8
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #9, !srcloc !20
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !21

31:                                               ; preds = %24
  %32 = add i32 %29, 1
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35, !prof !11

35:                                               ; preds = %31, %24
  %36 = phi i32 [ 2, %24 ], [ 1, %31 ]
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef %36) #9
  br label %37

37:                                               ; preds = %35, %31
  %38 = tail call fastcc i32 @rt_mutex_adjust_prio_chain(ptr noundef %0, i32 noundef 0, ptr noundef null, ptr noundef %26, ptr noundef null, ptr noundef %0)
  br label %39

39:                                               ; preds = %37, %23
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rt_mutex_adjust_prio_chain(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readnone %3, ptr noundef readnone %4, ptr noundef %5) unnamed_addr #1 section ".sched.text" {
  %7 = icmp eq i32 %1, 1
  %8 = load i32, ptr @max_lock_depth, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %4, null
  %12 = getelementptr inbounds %struct.rt_mutex_base, ptr %2, i32 0, i32 2
  br label %13

13:                                               ; preds = %169, %10
  %14 = phi i32 [ 1, %10 ], [ %173, %169 ]
  %15 = phi i1 [ true, %10 ], [ %90, %169 ]
  %16 = phi ptr [ %4, %10 ], [ %172, %169 ]
  %17 = phi ptr [ %0, %10 ], [ %171, %169 ]
  %18 = phi ptr [ %3, %10 ], [ %170, %169 ]
  %19 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 108
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #9
  %20 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 112
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %455, label %23

23:                                               ; preds = %13
  %24 = icmp eq ptr %16, null
  %25 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 110
  %26 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 110, i32 1
  %27 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 14
  %28 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 21, i32 7
  br label %48

29:                                               ; preds = %169, %6
  %30 = phi ptr [ %0, %6 ], [ %171, %169 ]
  %31 = phi i32 [ %8, %6 ], [ %174, %169 ]
  %32 = load i32, ptr @rt_mutex_adjust_prio_chain.prev_max, align 4
  %33 = icmp eq i32 %32, %31
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  store i32 %31, ptr @rt_mutex_adjust_prio_chain.prev_max, align 4
  %35 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 85
  %36 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 52
  %37 = load i32, ptr %36, align 8
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %31, ptr noundef %35, i32 noundef %37) #10
  br label %39

39:                                               ; preds = %34, %29
  %40 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #9, !srcloc !8
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #9, !srcloc !32
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = icmp sgt i32 %42, 0
  br i1 %45, label %473, label %46, !prof !11

46:                                               ; preds = %44
  tail call void @refcount_warn_saturate(ptr noundef %40, i32 noundef 3) #9
  br label %473

47:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !33
  tail call void @__put_task_struct(ptr noundef %30) #9
  br label %473

48:                                               ; preds = %93, %23
  %49 = phi ptr [ %21, %23 ], [ %96, %93 ]
  %50 = phi i1 [ %15, %23 ], [ %90, %93 ]
  br i1 %11, label %54, label %51

51:                                               ; preds = %48
  %52 = load volatile ptr, ptr %12, align 4
  %53 = icmp ult ptr %52, inttoptr (i32 2 to ptr)
  br i1 %53, label %455, label %54

54:                                               ; preds = %51, %48
  %55 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %49, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %18, %56
  br i1 %57, label %58, label %455

58:                                               ; preds = %54
  br i1 %24, label %68, label %59

59:                                               ; preds = %58
  %60 = load volatile ptr, ptr %25, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %455, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %26, align 4
  %64 = getelementptr i8, ptr %63, i32 -12
  %65 = icmp eq ptr %16, %64
  %66 = or i1 %7, %65
  %67 = select i1 %65, i1 %50, i1 false
  br i1 %66, label %68, label %455

68:                                               ; preds = %62, %58
  %69 = phi i1 [ %67, %62 ], [ %50, %58 ]
  %70 = load i32, ptr %27, align 16
  %71 = icmp sgt i32 %70, 99
  %72 = select i1 %71, i32 120, i32 %70
  %73 = load i64, ptr %28, align 32
  %74 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %49, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, %72
  br i1 %76, label %77, label %89

77:                                               ; preds = %68
  %78 = icmp sgt i32 %72, -1
  br i1 %78, label %84, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %49, i32 0, i32 6
  %81 = load i64, ptr %80, align 8
  %82 = icmp eq i64 %81, %73
  %83 = zext i1 %82 to i32
  br label %84

84:                                               ; preds = %79, %77
  %85 = phi i32 [ %83, %79 ], [ 1, %77 ]
  %86 = icmp eq i32 %85, 0
  %87 = or i1 %7, %86
  %88 = select i1 %86, i1 %69, i1 false
  br i1 %87, label %89, label %455

89:                                               ; preds = %84, %68
  %90 = phi i1 [ %88, %84 ], [ %69, %68 ]
  %91 = tail call i32 @_raw_spin_trylock(ptr noundef %18) #9
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %94 = load i16, ptr %19, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !34
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !35
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #9
  %96 = load ptr, ptr %20, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %455, label %48

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %49, i32 0, i32 5
  %100 = icmp eq ptr %18, %2
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.rt_mutex_base, ptr %18, i32 0, i32 2
  %103 = load volatile ptr, ptr %102, align 4
  %104 = ptrtoint ptr %103 to i32
  %105 = and i32 %104, -2
  %106 = inttoptr i32 %105 to ptr
  %107 = icmp eq ptr %106, %5
  br i1 %107, label %108, label %112

108:                                              ; preds = %101, %98
  %109 = phi ptr [ %18, %101 ], [ %2, %98 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %110 = load i16, ptr %109, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr %109, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %455

112:                                              ; preds = %101
  br i1 %90, label %176, label %113

113:                                              ; preds = %112
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %114 = load i16, ptr %19, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %116 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %116) #9, !srcloc !8
  %117 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %116, ptr %116, i32 1, ptr elementtype(i32) %116) #9, !srcloc !32
  %118 = extractvalue { i32, i32, i32 } %117, 0
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %123, label %120

120:                                              ; preds = %113
  %121 = icmp sgt i32 %118, 0
  br i1 %121, label %124, label %122, !prof !11

122:                                              ; preds = %120
  tail call void @refcount_warn_saturate(ptr noundef %116, i32 noundef 3) #9
  br label %124

123:                                              ; preds = %113
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !33
  tail call void @__put_task_struct(ptr noundef %17) #9
  br label %124

124:                                              ; preds = %123, %122, %120
  %125 = load volatile ptr, ptr %102, align 4
  %126 = icmp ult ptr %125, inttoptr (i32 2 to ptr)
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %128 = load i16, ptr %18, align 4
  %129 = add i16 %128, 1
  store i16 %129, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  br label %473

130:                                              ; preds = %124
  %131 = load volatile ptr, ptr %102, align 4
  %132 = ptrtoint ptr %131 to i32
  %133 = and i32 %132, -2
  %134 = inttoptr i32 %133 to ptr
  %135 = getelementptr inbounds %struct.task_struct, ptr %134, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %135) #9, !srcloc !8
  %136 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %135, ptr %135, i32 1, ptr elementtype(i32) %135) #9, !srcloc !20
  %137 = extractvalue { i32, i32, i32 } %136, 0
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %143, label %139, !prof !21

139:                                              ; preds = %130
  %140 = add i32 %137, 1
  %141 = or i32 %140, %137
  %142 = icmp sgt i32 %141, -1
  br i1 %142, label %145, label %143, !prof !11

143:                                              ; preds = %139, %130
  %144 = phi i32 [ 2, %130 ], [ 1, %139 ]
  tail call void @refcount_warn_saturate(ptr noundef %135, i32 noundef %144) #9
  br label %145

145:                                              ; preds = %143, %139
  %146 = getelementptr inbounds %struct.task_struct, ptr %134, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %146) #9
  %147 = getelementptr inbounds %struct.task_struct, ptr %134, i32 0, i32 112
  %148 = load ptr, ptr %147, align 8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %148, i32 0, i32 3
  %152 = load ptr, ptr %151, align 4
  br label %153

153:                                              ; preds = %150, %145
  %154 = phi ptr [ %152, %150 ], [ null, %145 ]
  %155 = getelementptr inbounds %struct.rt_mutex_base, ptr %18, i32 0, i32 1, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %156, i32 0, i32 3
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, %18
  br i1 %161, label %163, label %162, !prof !11

162:                                              ; preds = %158
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

163:                                              ; preds = %158, %153
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %164 = load i16, ptr %146, align 4
  %165 = add i16 %164, 1
  store i16 %165, ptr %146, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %166 = load i16, ptr %18, align 4
  %167 = add i16 %166, 1
  store i16 %167, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %168 = icmp eq ptr %154, null
  br i1 %168, label %459, label %169

169:                                              ; preds = %446, %163
  %170 = phi ptr [ %154, %163 ], [ %438, %446 ]
  %171 = phi ptr [ %134, %163 ], [ %273, %446 ]
  %172 = phi ptr [ %156, %163 ], [ %439, %446 ]
  %173 = add i32 %14, 1
  %174 = load i32, ptr @max_lock_depth, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %29, label %13

176:                                              ; preds = %112
  %177 = getelementptr inbounds %struct.rt_mutex_base, ptr %18, i32 0, i32 1, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %178, i32 0, i32 3
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, %18
  br i1 %183, label %185, label %184, !prof !11

184:                                              ; preds = %180
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

185:                                              ; preds = %180, %176
  %186 = load i32, ptr %49, align 8
  %187 = ptrtoint ptr %49 to i32
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %195, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.rt_mutex_base, ptr %18, i32 0, i32 1
  %191 = icmp eq ptr %178, %49
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = tail call ptr @rb_next(ptr noundef nonnull %49) #9
  store ptr %193, ptr %177, align 4
  br label %194

194:                                              ; preds = %192, %189
  tail call void @rb_erase(ptr noundef nonnull %49, ptr noundef %190) #9
  store i32 %187, ptr %49, align 8
  br label %195

195:                                              ; preds = %194, %185
  %196 = load i32, ptr %27, align 16
  %197 = icmp sgt i32 %196, 99
  %198 = select i1 %197, i32 120, i32 %196
  store i32 %198, ptr %99, align 4
  %199 = load i64, ptr %28, align 32
  %200 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %49, i32 0, i32 6
  store i64 %199, ptr %200, align 8
  %201 = getelementptr inbounds %struct.rt_mutex_base, ptr %18, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %232, label %204

204:                                              ; preds = %195
  %205 = icmp sgt i32 %198, -1
  br label %206

206:                                              ; preds = %223, %204
  %207 = phi ptr [ %226, %223 ], [ %202, %204 ]
  %208 = phi i1 [ %224, %223 ], [ true, %204 ]
  %209 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %207, i32 0, i32 5
  %210 = load i32, ptr %209, align 4
  %211 = icmp slt i32 %198, %210
  br i1 %211, label %221, label %212

212:                                              ; preds = %206
  br i1 %205, label %213, label %215

213:                                              ; preds = %212
  %214 = getelementptr inbounds %struct.rb_node, ptr %207, i32 0, i32 1
  br label %223

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %207, i32 0, i32 6
  %217 = load i64, ptr %216, align 8
  %218 = sub i64 %199, %217
  %219 = icmp slt i64 %218, 0
  %220 = getelementptr inbounds %struct.rb_node, ptr %207, i32 0, i32 1
  br i1 %219, label %221, label %223

221:                                              ; preds = %215, %206
  %222 = getelementptr inbounds %struct.rb_node, ptr %207, i32 0, i32 2
  br label %223

223:                                              ; preds = %221, %215, %213
  %224 = phi i1 [ %208, %221 ], [ false, %215 ], [ false, %213 ]
  %225 = phi ptr [ %222, %221 ], [ %220, %215 ], [ %214, %213 ]
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %206

228:                                              ; preds = %223
  %229 = ptrtoint ptr %207 to i32
  store i32 %229, ptr %49, align 4
  %230 = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 1
  store ptr null, ptr %230, align 4
  %231 = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 2
  store ptr null, ptr %231, align 4
  store ptr %49, ptr %225, align 4
  br i1 %224, label %235, label %236

232:                                              ; preds = %195
  store i32 0, ptr %49, align 4
  %233 = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 1
  store ptr null, ptr %233, align 4
  %234 = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 2
  store ptr null, ptr %234, align 4
  store ptr %49, ptr %201, align 4
  br label %235

235:                                              ; preds = %232, %228
  store ptr %49, ptr %177, align 4
  br label %236

236:                                              ; preds = %235, %228
  tail call void @rb_insert_color(ptr noundef %49, ptr noundef %201) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %237 = load i16, ptr %19, align 4
  %238 = add i16 %237, 1
  store i16 %238, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  %239 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %239) #9, !srcloc !8
  %240 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %239, ptr %239, i32 1, ptr elementtype(i32) %239) #9, !srcloc !32
  %241 = extractvalue { i32, i32, i32 } %240, 0
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %246, label %243

243:                                              ; preds = %236
  %244 = icmp sgt i32 %241, 0
  br i1 %244, label %247, label %245, !prof !11

245:                                              ; preds = %243
  tail call void @refcount_warn_saturate(ptr noundef %239, i32 noundef 3) #9
  br label %247

246:                                              ; preds = %236
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !33
  tail call void @__put_task_struct(ptr noundef %17) #9
  br label %247

247:                                              ; preds = %246, %245, %243
  %248 = load volatile ptr, ptr %102, align 4
  %249 = icmp ult ptr %248, inttoptr (i32 2 to ptr)
  br i1 %249, label %250, label %269

250:                                              ; preds = %247
  %251 = load ptr, ptr %177, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %258, label %253

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %251, i32 0, i32 3
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, %18
  br i1 %256, label %258, label %257, !prof !11

257:                                              ; preds = %253
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

258:                                              ; preds = %253, %250
  %259 = icmp eq ptr %178, %251
  br i1 %259, label %266, label %260

260:                                              ; preds = %258
  %261 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %49, i32 0, i32 2
  %262 = load ptr, ptr %261, align 8
  %263 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %49, i32 0, i32 4
  %264 = load i32, ptr %263, align 8
  %265 = tail call i32 @wake_up_state(ptr noundef %262, i32 noundef %264) #9
  br label %266

266:                                              ; preds = %260, %258
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %267 = load i16, ptr %18, align 4
  %268 = add i16 %267, 1
  store i16 %268, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  br label %473

269:                                              ; preds = %247
  %270 = load volatile ptr, ptr %102, align 4
  %271 = ptrtoint ptr %270 to i32
  %272 = and i32 %271, -2
  %273 = inttoptr i32 %272 to ptr
  %274 = getelementptr inbounds %struct.task_struct, ptr %273, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %274) #9, !srcloc !8
  %275 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %274, ptr %274, i32 1, ptr elementtype(i32) %274) #9, !srcloc !20
  %276 = extractvalue { i32, i32, i32 } %275, 0
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %282, label %278, !prof !21

278:                                              ; preds = %269
  %279 = add i32 %276, 1
  %280 = or i32 %279, %276
  %281 = icmp sgt i32 %280, -1
  br i1 %281, label %284, label %282, !prof !11

282:                                              ; preds = %278, %269
  %283 = phi i32 [ 2, %269 ], [ 1, %278 ]
  tail call void @refcount_warn_saturate(ptr noundef %274, i32 noundef %283) #9
  br label %284

284:                                              ; preds = %282, %278
  %285 = getelementptr inbounds %struct.task_struct, ptr %273, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %285) #9
  %286 = load ptr, ptr %177, align 4
  %287 = icmp eq ptr %286, null
  br i1 %287, label %293, label %288

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %286, i32 0, i32 3
  %290 = load ptr, ptr %289, align 4
  %291 = icmp eq ptr %290, %18
  br i1 %291, label %293, label %292, !prof !11

292:                                              ; preds = %288
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

293:                                              ; preds = %288, %284
  %294 = icmp eq ptr %49, %286
  br i1 %294, label %295, label %351

295:                                              ; preds = %293
  %296 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %178, i32 0, i32 1
  %297 = load i32, ptr %296, align 4
  %298 = ptrtoint ptr %296 to i32
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %308, label %300

300:                                              ; preds = %295
  %301 = getelementptr inbounds %struct.task_struct, ptr %273, i32 0, i32 110
  %302 = getelementptr inbounds %struct.task_struct, ptr %273, i32 0, i32 110, i32 1
  %303 = load ptr, ptr %302, align 4
  %304 = icmp eq ptr %303, %296
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = tail call ptr @rb_next(ptr noundef %296) #9
  store ptr %306, ptr %302, align 4
  br label %307

307:                                              ; preds = %305, %300
  tail call void @rb_erase(ptr noundef %296, ptr noundef %301) #9
  store i32 %298, ptr %296, align 4
  br label %308

308:                                              ; preds = %307, %295
  %309 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %49, i32 0, i32 1
  %310 = getelementptr inbounds %struct.task_struct, ptr %273, i32 0, i32 110
  %311 = load ptr, ptr %310, align 4
  %312 = icmp eq ptr %311, null
  br i1 %312, label %343, label %313

313:                                              ; preds = %308
  %314 = load i32, ptr %99, align 4
  %315 = icmp sgt i32 %314, -1
  br label %316

316:                                              ; preds = %334, %313
  %317 = phi ptr [ %337, %334 ], [ %311, %313 ]
  %318 = phi i1 [ %335, %334 ], [ true, %313 ]
  %319 = getelementptr i8, ptr %317, i32 24
  %320 = load i32, ptr %319, align 4
  %321 = icmp slt i32 %314, %320
  br i1 %321, label %332, label %322

322:                                              ; preds = %316
  br i1 %315, label %323, label %325

323:                                              ; preds = %322
  %324 = getelementptr inbounds %struct.rb_node, ptr %317, i32 0, i32 1
  br label %334

325:                                              ; preds = %322
  %326 = load i64, ptr %200, align 8
  %327 = getelementptr i8, ptr %317, i32 28
  %328 = load i64, ptr %327, align 8
  %329 = sub i64 %326, %328
  %330 = icmp slt i64 %329, 0
  %331 = getelementptr inbounds %struct.rb_node, ptr %317, i32 0, i32 1
  br i1 %330, label %332, label %334

332:                                              ; preds = %325, %316
  %333 = getelementptr inbounds %struct.rb_node, ptr %317, i32 0, i32 2
  br label %334

334:                                              ; preds = %332, %325, %323
  %335 = phi i1 [ %318, %332 ], [ false, %325 ], [ false, %323 ]
  %336 = phi ptr [ %333, %332 ], [ %331, %325 ], [ %324, %323 ]
  %337 = load ptr, ptr %336, align 4
  %338 = icmp eq ptr %337, null
  br i1 %338, label %339, label %316

339:                                              ; preds = %334
  %340 = ptrtoint ptr %317 to i32
  store i32 %340, ptr %309, align 4
  %341 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %49, i32 0, i32 1, i32 1
  store ptr null, ptr %341, align 4
  %342 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %49, i32 0, i32 1, i32 2
  store ptr null, ptr %342, align 4
  store ptr %309, ptr %336, align 4
  br i1 %335, label %346, label %348

343:                                              ; preds = %308
  store i32 0, ptr %309, align 4
  %344 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %49, i32 0, i32 1, i32 1
  store ptr null, ptr %344, align 4
  %345 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %49, i32 0, i32 1, i32 2
  store ptr null, ptr %345, align 4
  store ptr %309, ptr %310, align 4
  br label %346

346:                                              ; preds = %343, %339
  %347 = getelementptr inbounds %struct.task_struct, ptr %273, i32 0, i32 110, i32 1
  store ptr %309, ptr %347, align 4
  br label %348

348:                                              ; preds = %346, %339
  tail call void @rb_insert_color(ptr noundef %309, ptr noundef %310) #9
  %349 = load volatile ptr, ptr %310, align 4
  %350 = icmp eq ptr %349, null
  br i1 %350, label %426, label %420

351:                                              ; preds = %293
  %352 = icmp eq ptr %178, %49
  br i1 %352, label %353, label %429

353:                                              ; preds = %351
  %354 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %49, i32 0, i32 1
  %355 = load i32, ptr %354, align 4
  %356 = ptrtoint ptr %354 to i32
  %357 = icmp eq i32 %355, %356
  br i1 %357, label %367, label %358

358:                                              ; preds = %353
  %359 = getelementptr inbounds %struct.task_struct, ptr %273, i32 0, i32 110
  %360 = getelementptr inbounds %struct.task_struct, ptr %273, i32 0, i32 110, i32 1
  %361 = load ptr, ptr %360, align 4
  %362 = icmp eq ptr %361, %354
  br i1 %362, label %363, label %365

363:                                              ; preds = %358
  %364 = tail call ptr @rb_next(ptr noundef %354) #9
  store ptr %364, ptr %360, align 4
  br label %365

365:                                              ; preds = %363, %358
  tail call void @rb_erase(ptr noundef %354, ptr noundef %359) #9
  store i32 %356, ptr %354, align 4
  %366 = load ptr, ptr %177, align 4
  br label %367

367:                                              ; preds = %365, %353
  %368 = phi ptr [ %286, %353 ], [ %366, %365 ]
  %369 = icmp eq ptr %368, null
  br i1 %369, label %375, label %370

370:                                              ; preds = %367
  %371 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %368, i32 0, i32 3
  %372 = load ptr, ptr %371, align 4
  %373 = icmp eq ptr %372, %18
  br i1 %373, label %375, label %374, !prof !11

374:                                              ; preds = %370
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

375:                                              ; preds = %370, %367
  %376 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %368, i32 0, i32 1
  %377 = getelementptr inbounds %struct.task_struct, ptr %273, i32 0, i32 110
  %378 = load ptr, ptr %377, align 4
  %379 = icmp eq ptr %378, null
  br i1 %379, label %412, label %380

380:                                              ; preds = %375
  %381 = getelementptr %struct.rt_mutex_waiter, ptr %368, i32 0, i32 5
  %382 = load i32, ptr %381, align 4
  %383 = icmp sgt i32 %382, -1
  %384 = getelementptr %struct.rt_mutex_waiter, ptr %368, i32 0, i32 6
  br label %385

385:                                              ; preds = %403, %380
  %386 = phi ptr [ %406, %403 ], [ %378, %380 ]
  %387 = phi i1 [ %404, %403 ], [ true, %380 ]
  %388 = getelementptr i8, ptr %386, i32 24
  %389 = load i32, ptr %388, align 4
  %390 = icmp slt i32 %382, %389
  br i1 %390, label %401, label %391

391:                                              ; preds = %385
  br i1 %383, label %392, label %394

392:                                              ; preds = %391
  %393 = getelementptr inbounds %struct.rb_node, ptr %386, i32 0, i32 1
  br label %403

394:                                              ; preds = %391
  %395 = load i64, ptr %384, align 8
  %396 = getelementptr i8, ptr %386, i32 28
  %397 = load i64, ptr %396, align 8
  %398 = sub i64 %395, %397
  %399 = icmp slt i64 %398, 0
  %400 = getelementptr inbounds %struct.rb_node, ptr %386, i32 0, i32 1
  br i1 %399, label %401, label %403

401:                                              ; preds = %394, %385
  %402 = getelementptr inbounds %struct.rb_node, ptr %386, i32 0, i32 2
  br label %403

403:                                              ; preds = %401, %394, %392
  %404 = phi i1 [ %387, %401 ], [ false, %394 ], [ false, %392 ]
  %405 = phi ptr [ %402, %401 ], [ %400, %394 ], [ %393, %392 ]
  %406 = load ptr, ptr %405, align 4
  %407 = icmp eq ptr %406, null
  br i1 %407, label %408, label %385

408:                                              ; preds = %403
  %409 = ptrtoint ptr %386 to i32
  store i32 %409, ptr %376, align 4
  %410 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %368, i32 0, i32 1, i32 1
  store ptr null, ptr %410, align 4
  %411 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %368, i32 0, i32 1, i32 2
  store ptr null, ptr %411, align 4
  store ptr %376, ptr %405, align 4
  br i1 %404, label %415, label %417

412:                                              ; preds = %375
  store i32 0, ptr %376, align 4
  %413 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %368, i32 0, i32 1, i32 1
  store ptr null, ptr %413, align 4
  %414 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %368, i32 0, i32 1, i32 2
  store ptr null, ptr %414, align 4
  store ptr %376, ptr %377, align 4
  br label %415

415:                                              ; preds = %412, %408
  %416 = getelementptr inbounds %struct.task_struct, ptr %273, i32 0, i32 110, i32 1
  store ptr %376, ptr %416, align 4
  br label %417

417:                                              ; preds = %415, %408
  tail call void @rb_insert_color(ptr noundef %376, ptr noundef %377) #9
  %418 = load volatile ptr, ptr %377, align 4
  %419 = icmp eq ptr %418, null
  br i1 %419, label %426, label %420

420:                                              ; preds = %417, %348
  %421 = phi ptr [ %49, %348 ], [ %368, %417 ]
  %422 = getelementptr inbounds %struct.task_struct, ptr %273, i32 0, i32 110, i32 1
  %423 = load ptr, ptr %422, align 4
  %424 = getelementptr i8, ptr %423, i32 12
  %425 = load ptr, ptr %424, align 8
  br label %426

426:                                              ; preds = %420, %417, %348
  %427 = phi ptr [ null, %348 ], [ null, %417 ], [ %425, %420 ]
  %428 = phi ptr [ %49, %348 ], [ %368, %417 ], [ %421, %420 ]
  tail call void @rt_mutex_setprio(ptr noundef %273, ptr noundef %427) #9
  br label %429

429:                                              ; preds = %426, %351
  %430 = phi ptr [ %49, %351 ], [ %428, %426 ]
  %431 = getelementptr inbounds %struct.task_struct, ptr %273, i32 0, i32 112
  %432 = load ptr, ptr %431, align 8
  %433 = icmp eq ptr %432, null
  br i1 %433, label %437, label %434

434:                                              ; preds = %429
  %435 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %432, i32 0, i32 3
  %436 = load ptr, ptr %435, align 4
  br label %437

437:                                              ; preds = %434, %429
  %438 = phi ptr [ %436, %434 ], [ null, %429 ]
  %439 = load ptr, ptr %177, align 4
  %440 = icmp eq ptr %439, null
  br i1 %440, label %446, label %441

441:                                              ; preds = %437
  %442 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %439, i32 0, i32 3
  %443 = load ptr, ptr %442, align 4
  %444 = icmp eq ptr %443, %18
  br i1 %444, label %446, label %445, !prof !11

445:                                              ; preds = %441
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

446:                                              ; preds = %441, %437
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %447 = load i16, ptr %285, align 4
  %448 = add i16 %447, 1
  store i16 %448, ptr %285, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %449 = load i16, ptr %18, align 4
  %450 = add i16 %449, 1
  store i16 %450, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %451 = icmp ne ptr %438, null
  %452 = icmp eq ptr %430, %439
  %453 = select i1 %7, i1 true, i1 %452
  %454 = select i1 %451, i1 %453, i1 false
  br i1 %454, label %169, label %459

455:                                              ; preds = %108, %93, %84, %62, %59, %54, %51, %13
  %456 = phi i32 [ -35, %108 ], [ 0, %84 ], [ 0, %62 ], [ 0, %59 ], [ 0, %54 ], [ 0, %51 ], [ 0, %93 ], [ 0, %13 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %457 = load i16, ptr %19, align 4
  %458 = add i16 %457, 1
  store i16 %458, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  br label %462

459:                                              ; preds = %446, %163
  %460 = phi i32 [ %133, %163 ], [ %272, %446 ]
  %461 = inttoptr i32 %460 to ptr
  br label %462

462:                                              ; preds = %459, %455
  %463 = phi ptr [ %17, %455 ], [ %461, %459 ]
  %464 = phi i32 [ %456, %455 ], [ 0, %459 ]
  %465 = getelementptr inbounds %struct.task_struct, ptr %463, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !31
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %465) #9, !srcloc !8
  %466 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %465, ptr %465, i32 1, ptr elementtype(i32) %465) #9, !srcloc !32
  %467 = extractvalue { i32, i32, i32 } %466, 0
  %468 = icmp eq i32 %467, 1
  br i1 %468, label %472, label %469

469:                                              ; preds = %462
  %470 = icmp sgt i32 %467, 0
  br i1 %470, label %473, label %471, !prof !11

471:                                              ; preds = %469
  tail call void @refcount_warn_saturate(ptr noundef %465, i32 noundef 3) #9
  br label %473

472:                                              ; preds = %462
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !33
  tail call void @__put_task_struct(ptr noundef %463) #9
  br label %473

473:                                              ; preds = %472, %471, %469, %266, %127, %47, %46, %44
  %474 = phi i32 [ 0, %266 ], [ 0, %127 ], [ -35, %44 ], [ -35, %46 ], [ -35, %47 ], [ %464, %469 ], [ %464, %471 ], [ %464, %472 ]
  ret i32 %474
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rt_mutex_slowlock(ptr noundef %0, i32 noundef %1) unnamed_addr #1 section ".sched.text" {
  %3 = alloca %struct.rt_mutex_waiter, align 8
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i32 56, i1 false) #9, !annotation !36
  %5 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  store i32 %6, ptr %5, align 4
  %7 = ptrtoint ptr %3 to i32
  store i32 %7, ptr %3, align 8
  %8 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %3, i32 0, i32 4
  store i32 3, ptr %8, align 8
  %9 = tail call ptr @llvm.thread.pointer() #9
  %10 = call fastcc i32 @try_to_take_rt_mutex(ptr noundef %0, ptr noundef %9, ptr noundef null) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  store volatile i32 %1, ptr %13, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !37
  %14 = call fastcc i32 @task_blocks_on_rt_mutex(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %9, i32 noundef 0) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19, !prof !11

16:                                               ; preds = %12
  %17 = call fastcc i32 @rt_mutex_slowlock_block(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef nonnull %3) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19, !prof !11

19:                                               ; preds = %16, %12
  %20 = phi i32 [ %17, %16 ], [ %14, %12 ]
  store volatile i32 0, ptr %13, align 8
  call fastcc void @remove_waiter(ptr noundef %0, ptr noundef nonnull %3) #9
  %21 = icmp eq i32 %20, -35
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1544, i32 noundef 9, ptr noundef nonnull @.str.1) #9
  br label %23

23:                                               ; preds = %23, %22
  store volatile i32 1, ptr %13, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !38
  call void @schedule() #9
  br label %23

24:                                               ; preds = %19, %16
  %25 = phi i32 [ 0, %16 ], [ %20, %19 ]
  %26 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  %27 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load volatile i32, ptr %26, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = and i32 %31, -2
  store volatile i32 %35, ptr %26, align 4
  br label %36

36:                                               ; preds = %34, %30, %24, %2
  %37 = phi i32 [ 0, %2 ], [ %25, %24 ], [ %25, %30 ], [ %25, %34 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #9
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rt_mutex_slowunlock(ptr noundef %0) unnamed_addr #1 section ".sched.text" {
  %2 = alloca %struct.rt_wake_q_head, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  store ptr inttoptr (i32 1 to ptr), ptr %2, align 4
  %3 = getelementptr inbounds %struct.wake_q_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rt_wake_q_head, ptr %2, i32 0, i32 1
  store ptr null, ptr %4, align 4
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 1
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rt_mutex_base, ptr %0, i32 0, i32 2
  br label %11

11:                                               ; preds = %25, %9
  %12 = phi i32 [ %5, %9 ], [ %26, %25 ]
  %13 = load volatile ptr, ptr %10, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = and i32 %14, -2
  %16 = inttoptr i32 %15 to ptr
  store ptr %16, ptr %10, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %12) #9
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #9, !srcloc !8
  br label %17

17:                                               ; preds = %17, %11
  %18 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %10, i32 %15, i32 0) #9, !srcloc !9
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %17

21:                                               ; preds = %17
  %22 = extractvalue { i32, i32 } %18, 1
  %23 = inttoptr i32 %22 to ptr
  %24 = icmp eq ptr %23, %16
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %27 = load volatile ptr, ptr %6, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %11, label %29

29:                                               ; preds = %25, %1
  %30 = phi i32 [ %5, %1 ], [ %26, %25 ]
  call fastcc void @mark_wakeup_next_waiter(ptr noundef nonnull %2, ptr noundef %0)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %30) #9
  %31 = load ptr, ptr %2, align 4
  %32 = icmp eq ptr %31, inttoptr (i32 1 to ptr)
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call void @wake_up_q(ptr noundef nonnull %2) #9
  br label %34

34:                                               ; preds = %33, %29
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %35

35:                                               ; preds = %34, %21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_setprio(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #4

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 667277, i64 2148157248, i64 2148157274, i64 2148157321, i64 2148157343, i64 2148157371, i64 2148157391}
!9 = !{i64 678651, i64 678672, i64 678695, i64 678714, i64 678733}
!10 = !{i64 2150836427}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2150837651}
!13 = !{i64 2150810459, i64 2150810955, i64 2150810496, i64 2150810552, i64 2150810586, i64 2150810610, i64 2150810651, i64 2150810672, i64 2150810700, i64 2150810734}
!14 = !{i64 2150863060}
!15 = !{i64 2148835881}
!16 = !{i64 2148831705}
!17 = !{i64 2148831780, i64 2148831807, i64 2148831854, i64 2148831876, i64 2148831904, i64 2148831924}
!18 = !{i64 2148858884}
!19 = !{i64 2150855761}
!20 = !{i64 2148170121, i64 2148170153, i64 2148170182, i64 2148170216, i64 2148170247, i64 2148170270}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 573200}
!23 = !{i64 2148860025}
!24 = !{i64 2150902774}
!25 = !{i64 2149084049}
!26 = !{i64 2150865537}
!27 = !{i64 2150865766}
!28 = !{i64 2150865608}
!29 = !{i64 2149084266}
!30 = !{i64 2150870597}
!31 = !{i64 2148270343}
!32 = !{i64 2148172478, i64 2148172510, i64 2148172539, i64 2148172573, i64 2148172604, i64 2148172627}
!33 = !{i64 2149301362}
!34 = !{i64 2150859013}
!35 = !{i64 2150858855}
!36 = !{!"auto-init"}
!37 = !{i64 2150880736}
!38 = !{i64 2150876589}
