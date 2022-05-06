; ModuleID = '/llk/IR/kernel/locking/mutex.c_pt.bc'
source_filename = "../kernel/locking/mutex.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mutex_init:\09\09\09\09\09"
module asm "\09.asciz \09\22__mutex_init\22\09\09\09\09\09"
module asm "__kstrtabns___mutex_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mutex_is_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22mutex_is_locked\22\09\09\09\09\09"
module asm "__kstrtabns_mutex_is_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22mutex_lock\22\09\09\09\09\09"
module asm "__kstrtabns_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mutex_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22mutex_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_mutex_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ww_mutex_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22ww_mutex_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_ww_mutex_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ww_mutex_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22ww_mutex_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_ww_mutex_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mutex_lock_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22mutex_lock_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_mutex_lock_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mutex_lock_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22mutex_lock_killable\22\09\09\09\09\09"
module asm "__kstrtabns_mutex_lock_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mutex_lock_io:\09\09\09\09\09"
module asm "\09.asciz \09\22mutex_lock_io\22\09\09\09\09\09"
module asm "__kstrtabns_mutex_lock_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mutex_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22mutex_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_mutex_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ww_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22ww_mutex_lock\22\09\09\09\09\09"
module asm "__kstrtabns_ww_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ww_mutex_lock_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22ww_mutex_lock_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_ww_mutex_lock_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atomic_dec_and_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22atomic_dec_and_mutex_lock\22\09\09\09\09\09"
module asm "__kstrtabns_atomic_dec_and_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wake_q_head = type { ptr, ptr }
%struct.mutex_waiter = type { %struct.list_head, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.32 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab___mutex_init = external dso_local constant [0 x i8], align 1
@__kstrtabns___mutex_init = external dso_local constant [0 x i8], align 1
@__ksymtab___mutex_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mutex_init to i32), ptr @__kstrtab___mutex_init, ptr @__kstrtabns___mutex_init }, section "___ksymtab+__mutex_init", align 4
@__kstrtab_mutex_is_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_mutex_is_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_mutex_is_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mutex_is_locked to i32), ptr @__kstrtab_mutex_is_locked, ptr @__kstrtabns_mutex_is_locked }, section "___ksymtab+mutex_is_locked", align 4
@__kstrtab_mutex_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_mutex_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_mutex_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mutex_lock to i32), ptr @__kstrtab_mutex_lock, ptr @__kstrtabns_mutex_lock }, section "___ksymtab+mutex_lock", align 4
@__kstrtab_mutex_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_mutex_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_mutex_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mutex_unlock to i32), ptr @__kstrtab_mutex_unlock, ptr @__kstrtabns_mutex_unlock }, section "___ksymtab+mutex_unlock", align 4
@__kstrtab_ww_mutex_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ww_mutex_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_ww_mutex_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ww_mutex_unlock to i32), ptr @__kstrtab_ww_mutex_unlock, ptr @__kstrtabns_ww_mutex_unlock }, section "___ksymtab+ww_mutex_unlock", align 4
@__kstrtab_ww_mutex_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ww_mutex_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_ww_mutex_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ww_mutex_trylock to i32), ptr @__kstrtab_ww_mutex_trylock, ptr @__kstrtabns_ww_mutex_trylock }, section "___ksymtab+ww_mutex_trylock", align 4
@__kstrtab_mutex_lock_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_mutex_lock_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_mutex_lock_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mutex_lock_interruptible to i32), ptr @__kstrtab_mutex_lock_interruptible, ptr @__kstrtabns_mutex_lock_interruptible }, section "___ksymtab+mutex_lock_interruptible", align 4
@__kstrtab_mutex_lock_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_mutex_lock_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_mutex_lock_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mutex_lock_killable to i32), ptr @__kstrtab_mutex_lock_killable, ptr @__kstrtabns_mutex_lock_killable }, section "___ksymtab+mutex_lock_killable", align 4
@__kstrtab_mutex_lock_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_mutex_lock_io = external dso_local constant [0 x i8], align 1
@__ksymtab_mutex_lock_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mutex_lock_io to i32), ptr @__kstrtab_mutex_lock_io, ptr @__kstrtabns_mutex_lock_io }, section "___ksymtab_gpl+mutex_lock_io", align 4
@__kstrtab_mutex_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_mutex_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_mutex_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mutex_trylock to i32), ptr @__kstrtab_mutex_trylock, ptr @__kstrtabns_mutex_trylock }, section "___ksymtab+mutex_trylock", align 4
@__kstrtab_ww_mutex_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ww_mutex_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_ww_mutex_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ww_mutex_lock to i32), ptr @__kstrtab_ww_mutex_lock, ptr @__kstrtabns_ww_mutex_lock }, section "___ksymtab+ww_mutex_lock", align 4
@__kstrtab_ww_mutex_lock_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_ww_mutex_lock_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_ww_mutex_lock_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ww_mutex_lock_interruptible to i32), ptr @__kstrtab_ww_mutex_lock_interruptible, ptr @__kstrtabns_ww_mutex_lock_interruptible }, section "___ksymtab+ww_mutex_lock_interruptible", align 4
@__kstrtab_atomic_dec_and_mutex_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_atomic_dec_and_mutex_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_atomic_dec_and_mutex_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atomic_dec_and_mutex_lock to i32), ptr @__kstrtab_atomic_dec_and_mutex_lock, ptr @__kstrtabns_atomic_dec_and_mutex_lock }, section "___ksymtab+atomic_dec_and_mutex_lock", align 4
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab___mutex_init, ptr @__ksymtab_atomic_dec_and_mutex_lock, ptr @__ksymtab_mutex_is_locked, ptr @__ksymtab_mutex_lock, ptr @__ksymtab_mutex_lock_interruptible, ptr @__ksymtab_mutex_lock_io, ptr @__ksymtab_mutex_lock_killable, ptr @__ksymtab_mutex_trylock, ptr @__ksymtab_mutex_unlock, ptr @__ksymtab_ww_mutex_lock, ptr @__ksymtab_ww_mutex_lock_interruptible, ptr @__ksymtab_ww_mutex_trylock, ptr @__ksymtab_ww_mutex_unlock], section "llvm.metadata"

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__mutex_init(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  store volatile i32 0, ptr %0, align 4
  %4 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 3
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 3, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 2
  store volatile i32 0, ptr %7, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mutex_is_locked(ptr noundef %0) #1 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = icmp ugt i32 %2, 7
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mutex_lock(ptr noundef %0) #2 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #8
  %3 = ptrtoint ptr %2 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %4

4:                                                ; preds = %4, %1
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 0, i32 %3, ptr elementtype(i32) %0) #8, !srcloc !9
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %4

8:                                                ; preds = %4
  %9 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call fastcc void @__mutex_lock_slowpath(ptr noundef %0)
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__mutex_lock_slowpath(ptr noundef %0) unnamed_addr #3 section ".sched.text" {
  %2 = tail call fastcc i32 @__mutex_lock(ptr noundef %0, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mutex_unlock(ptr noundef %0) #2 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #8
  %3 = ptrtoint ptr %2 to i32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %4

4:                                                ; preds = %4, %1
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %3, i32 0, ptr elementtype(i32) %0) #8, !srcloc !9
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %4

8:                                                ; preds = %4
  %9 = extractvalue { i32, i32 } %5, 1
  %10 = icmp eq i32 %9, %3
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call fastcc void @__mutex_unlock_slowpath(ptr noundef %0)
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__mutex_unlock_slowpath(ptr noundef %0) unnamed_addr #3 section ".sched.text" {
  %2 = alloca %struct.wake_q_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store ptr inttoptr (i32 1 to ptr), ptr %2, align 8
  %3 = getelementptr inbounds %struct.wake_q_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = load volatile i32, ptr %0, align 4
  br label %5

5:                                                ; preds = %15, %1
  %6 = phi i32 [ %4, %1 ], [ %16, %15 ]
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = and i32 %6, 7
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %11

11:                                               ; preds = %11, %9
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %6, i32 %10, ptr elementtype(i32) %0) #8, !srcloc !9
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32 } %12, 1
  %17 = icmp eq i32 %16, %6
  br i1 %17, label %18, label %5, !prof !12

18:                                               ; preds = %15
  %19 = and i32 %6, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %51, label %21

21:                                               ; preds = %18, %5
  %22 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %22) #8
  %23 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 3
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.mutex_waiter, ptr %24, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  call void @wake_q_add(ptr noundef nonnull %2, ptr noundef %28) #8
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi ptr [ null, %21 ], [ %28, %26 ]
  br i1 %8, label %48, label %31

31:                                               ; preds = %29
  %32 = load volatile i32, ptr %0, align 4
  %33 = ptrtoint ptr %30 to i32
  %34 = icmp eq ptr %30, null
  br label %35

35:                                               ; preds = %45, %31
  %36 = phi i32 [ %32, %31 ], [ %46, %45 ]
  %37 = and i32 %36, 1
  %38 = or i32 %37, %33
  %39 = or i32 %38, 4
  %40 = select i1 %34, i32 %38, i32 %39
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %41

41:                                               ; preds = %41, %35
  %42 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %36, i32 %40, ptr elementtype(i32) %0) #8, !srcloc !9
  %43 = extractvalue { i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %41

45:                                               ; preds = %41
  %46 = extractvalue { i32, i32 } %42, 1
  %47 = icmp eq i32 %46, %36
  br i1 %47, label %48, label %35, !prof !12

48:                                               ; preds = %45, %29
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %49 = load i16, ptr %22, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %22, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  call void @wake_up_q(ptr noundef nonnull %2) #8
  br label %51

51:                                               ; preds = %48, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ww_mutex_unlock(ptr noundef %0) #2 section ".sched.text" {
  %2 = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %3, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = add i32 %7, -1
  store i32 %10, ptr %6, align 4
  br label %11

11:                                               ; preds = %9, %5
  store ptr null, ptr %2, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = tail call ptr @llvm.thread.pointer() #8
  %14 = ptrtoint ptr %13 to i32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %15

15:                                               ; preds = %15, %12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %14, i32 0, ptr elementtype(i32) %0) #8, !srcloc !9
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = extractvalue { i32, i32 } %16, 1
  %21 = icmp eq i32 %20, %14
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call fastcc void @__mutex_unlock_slowpath(ptr noundef %0) #8
  br label %23

23:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ww_mutex_trylock(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %30

4:                                                ; preds = %2
  %5 = tail call ptr @llvm.thread.pointer() #8
  %6 = ptrtoint ptr %5 to i32
  %7 = load volatile i32, ptr %0, align 4
  br label %8

8:                                                ; preds = %27, %4
  %9 = phi i32 [ %7, %4 ], [ %28, %27 ]
  %10 = and i32 %9, 7
  %11 = and i32 %9, -8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = and i32 %9, 4
  %15 = icmp ne i32 %14, 0
  %16 = icmp eq i32 %11, %6
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %73

18:                                               ; preds = %13
  %19 = and i32 %9, 3
  br label %20

20:                                               ; preds = %18, %8
  %21 = phi i32 [ %19, %18 ], [ %10, %8 ]
  %22 = or i32 %21, %6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %23

23:                                               ; preds = %23, %20
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %9, i32 %22, ptr elementtype(i32) %0) #8, !srcloc !9
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23
  %28 = extractvalue { i32, i32 } %24, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %29 = icmp eq i32 %28, %9
  br i1 %29, label %73, label %8, !prof !12

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 3
  store i16 0, ptr %35, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = tail call ptr @llvm.thread.pointer() #8
  %38 = ptrtoint ptr %37 to i32
  %39 = load volatile i32, ptr %0, align 4
  br label %40

40:                                               ; preds = %59, %36
  %41 = phi i32 [ %39, %36 ], [ %60, %59 ]
  %42 = and i32 %41, 7
  %43 = and i32 %41, -8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = and i32 %41, 4
  %47 = icmp ne i32 %46, 0
  %48 = icmp eq i32 %43, %38
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  %51 = and i32 %41, 3
  br label %52

52:                                               ; preds = %50, %40
  %53 = phi i32 [ %51, %50 ], [ %42, %40 ]
  %54 = or i32 %53, %38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %55

55:                                               ; preds = %55, %52
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %41, i32 %54, ptr elementtype(i32) %0) #8, !srcloc !9
  %57 = extractvalue { i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %55

59:                                               ; preds = %55
  %60 = extractvalue { i32, i32 } %56, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %61 = icmp eq i32 %60, %41
  br i1 %61, label %62, label %40, !prof !12

62:                                               ; preds = %59
  %63 = load i32, ptr %31, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %31, align 4
  %65 = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 1
  store ptr %1, ptr %65, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %66 = load volatile i32, ptr %0, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69, !prof !12

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %70) #8
  tail call fastcc void @__ww_mutex_check_waiters(ptr noundef %0, ptr noundef nonnull %1) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %71 = load i16, ptr %70, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %70, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %73

73:                                               ; preds = %69, %62, %45, %27, %13
  %74 = phi i32 [ 1, %62 ], [ 1, %69 ], [ 0, %13 ], [ 1, %27 ], [ 0, %45 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mutex_trylock(ptr noundef %0) #2 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #8
  %3 = ptrtoint ptr %2 to i32
  %4 = load volatile i32, ptr %0, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = phi i32 [ %4, %1 ], [ %25, %24 ]
  %7 = and i32 %6, 7
  %8 = and i32 %6, -8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = and i32 %6, 4
  %12 = icmp ne i32 %11, 0
  %13 = icmp eq i32 %8, %3
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = and i32 %6, 3
  br label %17

17:                                               ; preds = %15, %5
  %18 = phi i32 [ %16, %15 ], [ %7, %5 ]
  %19 = or i32 %18, %3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %20

20:                                               ; preds = %20, %17
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %6, i32 %19, ptr elementtype(i32) %0) #8, !srcloc !9
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %20

24:                                               ; preds = %20
  %25 = extractvalue { i32, i32 } %21, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %26 = icmp eq i32 %25, %6
  br i1 %26, label %27, label %5, !prof !12

27:                                               ; preds = %24, %10
  %28 = phi i32 [ 1, %24 ], [ 0, %10 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mutex_lock_interruptible(ptr noundef %0) #2 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #8
  %3 = ptrtoint ptr %2 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %4

4:                                                ; preds = %4, %1
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 0, i32 %3, ptr elementtype(i32) %0) #8, !srcloc !9
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %4

8:                                                ; preds = %4
  %9 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc i32 @__mutex_lock_interruptible_slowpath(ptr noundef %0)
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %12, %11 ], [ 0, %8 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__mutex_lock_interruptible_slowpath(ptr noundef %0) unnamed_addr #3 section ".sched.text" {
  %2 = tail call fastcc i32 @__mutex_lock(ptr noundef %0, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mutex_lock_killable(ptr noundef %0) #2 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #8
  %3 = ptrtoint ptr %2 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %4

4:                                                ; preds = %4, %1
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 0, i32 %3, ptr elementtype(i32) %0) #8, !srcloc !9
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %4

8:                                                ; preds = %4
  %9 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc i32 @__mutex_lock_killable_slowpath(ptr noundef %0)
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %12, %11 ], [ 0, %8 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__mutex_lock_killable_slowpath(ptr noundef %0) unnamed_addr #3 section ".sched.text" {
  %2 = tail call fastcc i32 @__mutex_lock(ptr noundef %0, i32 noundef 258)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mutex_lock_io(ptr noundef %0) #2 section ".sched.text" {
  %2 = tail call i32 @io_schedule_prepare() #8
  %3 = tail call ptr @llvm.thread.pointer() #8
  %4 = ptrtoint ptr %3 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %5

5:                                                ; preds = %5, %1
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 0, i32 %4, ptr elementtype(i32) %0) #8, !srcloc !9
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5
  %10 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call fastcc void @__mutex_lock_slowpath(ptr noundef %0) #8
  br label %13

13:                                               ; preds = %12, %9
  tail call void @io_schedule_finish(i32 noundef %2) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_prepare() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule_finish(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ww_mutex_lock(ptr noundef %0, ptr noundef %1) #2 section ".sched.text" {
  %3 = tail call ptr @llvm.thread.pointer() #8
  %4 = ptrtoint ptr %3 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %5

5:                                                ; preds = %5, %2
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 0, i32 %4, ptr elementtype(i32) %0) #8, !srcloc !9
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5
  %10 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = icmp eq ptr %1, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 1
  store ptr %1, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %19 = load volatile i32, ptr %0, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22, !prof !12

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %23) #8
  tail call fastcc void @__ww_mutex_check_waiters(ptr noundef %0, ptr noundef nonnull %1) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %24 = load i16, ptr %23, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %28

26:                                               ; preds = %9
  %27 = tail call fastcc i32 @__ww_mutex_lock_slowpath(ptr noundef %0, ptr noundef %1)
  br label %28

28:                                               ; preds = %26, %22, %14, %12
  %29 = phi i32 [ %27, %26 ], [ 0, %12 ], [ 0, %14 ], [ 0, %22 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ww_mutex_lock_slowpath(ptr noundef %0, ptr noundef %1) unnamed_addr #3 section ".sched.text" {
  %3 = tail call fastcc i32 @__ww_mutex_lock(ptr noundef %0, i32 noundef 2, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ww_mutex_lock_interruptible(ptr noundef %0, ptr noundef %1) #2 section ".sched.text" {
  %3 = tail call ptr @llvm.thread.pointer() #8
  %4 = ptrtoint ptr %3 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %5

5:                                                ; preds = %5, %2
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 0, i32 %4, ptr elementtype(i32) %0) #8, !srcloc !9
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %5

9:                                                ; preds = %5
  %10 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = icmp eq ptr %1, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 1
  store ptr %1, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %19 = load volatile i32, ptr %0, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22, !prof !12

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %23) #8
  tail call fastcc void @__ww_mutex_check_waiters(ptr noundef %0, ptr noundef nonnull %1) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %24 = load i16, ptr %23, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %28

26:                                               ; preds = %9
  %27 = tail call fastcc i32 @__ww_mutex_lock_interruptible_slowpath(ptr noundef %0, ptr noundef %1)
  br label %28

28:                                               ; preds = %26, %22, %14, %12
  %29 = phi i32 [ %27, %26 ], [ 0, %12 ], [ 0, %14 ], [ 0, %22 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ww_mutex_lock_interruptible_slowpath(ptr noundef %0, ptr noundef %1) unnamed_addr #3 section ".sched.text" {
  %3 = tail call fastcc i32 @__ww_mutex_lock(ptr noundef %0, i32 noundef 1, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atomic_dec_and_mutex_lock(ptr noundef %0, ptr noundef %1) #2 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, i32 -1, ptr elementtype(i32) %0) #8, !srcloc !19
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !20
  br label %31

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #8
  %9 = ptrtoint ptr %8 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #8, !srcloc !8
  br label %10

10:                                               ; preds = %10, %7
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 0, i32 %9, ptr elementtype(i32) %1) #8, !srcloc !9
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  %15 = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call fastcc void @__mutex_lock_slowpath(ptr noundef %1) #8
  br label %18

18:                                               ; preds = %17, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #8, !srcloc !22
  %20 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #8, !srcloc !8
  br label %23

23:                                               ; preds = %23, %22
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 %9, i32 0, ptr elementtype(i32) %1) #8, !srcloc !9
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23
  %28 = extractvalue { i32, i32 } %24, 1
  %29 = icmp eq i32 %28, %9
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call fastcc void @__mutex_unlock_slowpath(ptr noundef %1) #8
  br label %31

31:                                               ; preds = %30, %27, %18, %6
  %32 = phi i32 [ 1, %18 ], [ 0, %6 ], [ 0, %27 ], [ 0, %30 ]
  ret i32 %32
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ww_mutex_check_waiters(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  %6 = icmp eq ptr %4, null
  %7 = or i1 %5, %6
  br i1 %7, label %61, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 4
  %10 = icmp eq ptr %1, null
  %11 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 1
  br label %12

12:                                               ; preds = %56, %8
  %13 = phi ptr [ %4, %8 ], [ %57, %56 ]
  %14 = getelementptr inbounds %struct.mutex_waiter, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %56, label %17

17:                                               ; preds = %12
  %18 = load i16, ptr %9, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %15, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %61, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %15, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %11, align 4
  %28 = sub i32 %26, %27
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.mutex_waiter, ptr %13, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @wake_up_process(ptr noundef %32) #8
  br label %61

34:                                               ; preds = %17
  %35 = load volatile i32, ptr %0, align 4
  %36 = and i32 %35, -8
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %10, i1 true, i1 %37
  br i1 %38, label %56, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %15, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %11, align 4
  %45 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %15, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 %44, %46
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = inttoptr i32 %36 to ptr
  %51 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 3
  store i16 1, ptr %51, align 4
  %52 = tail call ptr @llvm.thread.pointer() #8
  %53 = icmp eq ptr %52, %50
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = tail call i32 @wake_up_process(ptr noundef nonnull %50) #8
  br label %61

56:                                               ; preds = %43, %39, %34, %12
  %57 = load ptr, ptr %13, align 4
  %58 = icmp eq ptr %57, %3
  %59 = icmp eq ptr %57, null
  %60 = or i1 %58, %59
  br i1 %60, label %61, label %12

61:                                               ; preds = %56, %54, %49, %30, %24, %20, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__mutex_lock(ptr noundef %0, i32 noundef %1) unnamed_addr #2 section ".sched.text" {
  %3 = alloca %struct.mutex_waiter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #8, !annotation !24
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %4 = tail call ptr @llvm.thread.pointer() #8
  %5 = ptrtoint ptr %4 to i32
  %6 = load volatile i32, ptr %0, align 4
  br label %7

7:                                                ; preds = %26, %2
  %8 = phi i32 [ %6, %2 ], [ %27, %26 ]
  %9 = and i32 %8, 7
  %10 = and i32 %8, -8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = and i32 %8, 4
  %14 = icmp ne i32 %13, 0
  %15 = icmp eq i32 %10, %5
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = and i32 %8, 3
  br label %19

19:                                               ; preds = %17, %7
  %20 = phi i32 [ %18, %17 ], [ %9, %7 ]
  %21 = or i32 %20, %5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %22

22:                                               ; preds = %22, %19
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %8, i32 %21, ptr elementtype(i32) %0) #8, !srcloc !9
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22
  %27 = extractvalue { i32, i32 } %23, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %28 = icmp eq i32 %27, %8
  br i1 %28, label %84, label %7, !prof !12

29:                                               ; preds = %12
  %30 = load volatile i32, ptr %4, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %29
  %34 = load volatile i32, ptr %0, align 4
  %35 = and i32 %34, -8
  %36 = inttoptr i32 %35 to ptr
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 6
  %40 = load volatile i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %77, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %44 = load volatile i32, ptr %43, align 8
  br label %45

45:                                               ; preds = %42, %33
  %46 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 2
  %47 = tail call zeroext i1 @osq_lock(ptr noundef %46) #8
  br i1 %47, label %48, label %77

48:                                               ; preds = %75, %45
  %49 = load volatile i32, ptr %0, align 4
  br label %50

50:                                               ; preds = %69, %48
  %51 = phi i32 [ %49, %48 ], [ %70, %69 ]
  %52 = and i32 %51, 7
  %53 = and i32 %51, -8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = and i32 %51, 4
  %57 = icmp ne i32 %56, 0
  %58 = icmp eq i32 %53, %5
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = and i32 %51, 3
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi i32 [ %61, %60 ], [ %52, %50 ]
  %64 = or i32 %63, %5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %65

65:                                               ; preds = %65, %62
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %51, i32 %64, ptr elementtype(i32) %0) #8, !srcloc !9
  %67 = extractvalue { i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %65

69:                                               ; preds = %65
  %70 = extractvalue { i32, i32 } %66, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %71 = icmp eq i32 %70, %51
  br i1 %71, label %83, label %50, !prof !12

72:                                               ; preds = %55
  %73 = inttoptr i32 %53 to ptr
  %74 = tail call fastcc zeroext i1 @mutex_spin_on_owner(ptr noundef %0, ptr noundef nonnull %73, ptr noundef null, ptr noundef null) #8
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !27
  br label %48

76:                                               ; preds = %72
  tail call void @osq_unlock(ptr noundef %46) #8
  br label %77

77:                                               ; preds = %76, %45, %38, %29
  %78 = load volatile i32, ptr %4, align 4
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  store volatile i32 0, ptr %82, align 8
  tail call void @schedule_preempt_disabled() #8
  br label %85

83:                                               ; preds = %69
  tail call void @osq_unlock(ptr noundef %46) #8
  br label %84

84:                                               ; preds = %83, %26
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  br label %261

85:                                               ; preds = %81, %77
  %86 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %86) #8
  %87 = load volatile i32, ptr %0, align 4
  br label %88

88:                                               ; preds = %107, %85
  %89 = phi i32 [ %87, %85 ], [ %108, %107 ]
  %90 = and i32 %89, 7
  %91 = and i32 %89, -8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %88
  %94 = and i32 %89, 4
  %95 = icmp ne i32 %94, 0
  %96 = icmp eq i32 %91, %5
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = and i32 %89, 3
  br label %100

100:                                              ; preds = %98, %88
  %101 = phi i32 [ %99, %98 ], [ %90, %88 ]
  %102 = or i32 %101, %5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %103

103:                                              ; preds = %103, %100
  %104 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %89, i32 %102, ptr elementtype(i32) %0) #8, !srcloc !9
  %105 = extractvalue { i32, i32 } %104, 0
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %103

107:                                              ; preds = %103
  %108 = extractvalue { i32, i32 } %104, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %109 = icmp eq i32 %108, %89
  br i1 %109, label %247, label %88, !prof !12

110:                                              ; preds = %93
  %111 = getelementptr inbounds %struct.mutex_waiter, ptr %3, i32 0, i32 1
  store ptr %4, ptr %111, align 4
  %112 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 3
  %113 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 3, i32 1
  %114 = load ptr, ptr %113, align 4
  store ptr %3, ptr %113, align 4
  store ptr %112, ptr %3, align 4
  %115 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %114, ptr %115, align 4
  store volatile ptr %3, ptr %114, align 4
  %116 = load ptr, ptr %112, align 4
  %117 = icmp eq ptr %116, %3
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %119 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #8, !srcloc !29
  br label %120

120:                                              ; preds = %118, %110
  %121 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  store volatile i32 %1, ptr %121, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !30
  %122 = and i32 %1, 257
  %123 = icmp eq i32 %122, 0
  %124 = and i32 %1, 1
  %125 = icmp eq i32 %124, 0
  %126 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 98, i32 1
  br label %127

127:                                              ; preds = %237, %120
  %128 = load volatile i32, ptr %0, align 4
  br label %129

129:                                              ; preds = %148, %127
  %130 = phi i32 [ %128, %127 ], [ %149, %148 ]
  %131 = and i32 %130, 7
  %132 = and i32 %130, -8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %129
  %135 = and i32 %130, 4
  %136 = icmp ne i32 %135, 0
  %137 = icmp eq i32 %132, %5
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %139, label %151

139:                                              ; preds = %134
  %140 = and i32 %130, 3
  br label %141

141:                                              ; preds = %139, %129
  %142 = phi i32 [ %140, %139 ], [ %131, %129 ]
  %143 = or i32 %142, %5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %144

144:                                              ; preds = %144, %141
  %145 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %130, i32 %143, ptr elementtype(i32) %0) #8, !srcloc !9
  %146 = extractvalue { i32, i32 } %145, 0
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %144

148:                                              ; preds = %144
  %149 = extractvalue { i32, i32 } %145, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %150 = icmp eq i32 %149, %130
  br i1 %150, label %239, label %129, !prof !12

151:                                              ; preds = %134
  br i1 %123, label %165, label %152

152:                                              ; preds = %151
  %153 = load volatile i32, ptr %4, align 4
  %154 = and i32 %153, 256
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160, !prof !12

156:                                              ; preds = %152
  %157 = load volatile i32, ptr %4, align 4
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %156, %152
  br i1 %125, label %161, label %250

161:                                              ; preds = %160
  %162 = load i32, ptr %126, align 4
  %163 = and i32 %162, 256
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %250

165:                                              ; preds = %161, %156, %151
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %166 = load i16, ptr %86, align 4
  %167 = add i16 %166, 1
  store i16 %167, ptr %86, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  call void @schedule_preempt_disabled() #8
  %168 = load ptr, ptr %112, align 4
  %169 = icmp eq ptr %168, %3
  store volatile i32 %1, ptr %121, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !31
  %170 = load volatile i32, ptr %0, align 4
  br label %171

171:                                              ; preds = %197, %165
  %172 = phi i32 [ %170, %165 ], [ %198, %197 ]
  %173 = and i32 %172, 7
  %174 = and i32 %172, -8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %189, label %176

176:                                              ; preds = %171
  %177 = and i32 %172, 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = icmp eq i32 %174, %5
  br i1 %180, label %181, label %203

181:                                              ; preds = %179
  %182 = and i32 %172, 3
  br label %189

183:                                              ; preds = %176
  %184 = and i32 %172, 2
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %169, i1 %185, i1 false
  br i1 %186, label %187, label %203

187:                                              ; preds = %183
  %188 = or i32 %173, 2
  br label %189

189:                                              ; preds = %187, %181, %171
  %190 = phi i32 [ %182, %181 ], [ %188, %187 ], [ %173, %171 ]
  %191 = phi i32 [ %5, %181 ], [ %174, %187 ], [ %5, %171 ]
  %192 = or i32 %191, %190
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %193

193:                                              ; preds = %193, %189
  %194 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %172, i32 %192, ptr elementtype(i32) %0) #8, !srcloc !9
  %195 = extractvalue { i32, i32 } %194, 0
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %193

197:                                              ; preds = %193
  %198 = extractvalue { i32, i32 } %194, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %199 = icmp eq i32 %198, %172
  br i1 %199, label %200, label %171, !prof !12

200:                                              ; preds = %197
  %201 = icmp eq i32 %191, %5
  %202 = select i1 %201, i1 true, i1 %175
  br i1 %202, label %238, label %203

203:                                              ; preds = %200, %183, %179
  br i1 %169, label %204, label %237

204:                                              ; preds = %231, %203
  %205 = load volatile i32, ptr %0, align 4
  br label %206

206:                                              ; preds = %225, %204
  %207 = phi i32 [ %205, %204 ], [ %226, %225 ]
  %208 = and i32 %207, 7
  %209 = and i32 %207, -8
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %206
  %212 = and i32 %207, 4
  %213 = icmp ne i32 %212, 0
  %214 = icmp eq i32 %209, %5
  %215 = select i1 %213, i1 %214, i1 false
  br i1 %215, label %216, label %228

216:                                              ; preds = %211
  %217 = and i32 %207, 3
  br label %218

218:                                              ; preds = %216, %206
  %219 = phi i32 [ %217, %216 ], [ %208, %206 ]
  %220 = or i32 %219, %5
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %221

221:                                              ; preds = %221, %218
  %222 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %207, i32 %220, ptr elementtype(i32) %0) #8, !srcloc !9
  %223 = extractvalue { i32, i32 } %222, 0
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %221

225:                                              ; preds = %221
  %226 = extractvalue { i32, i32 } %222, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %227 = icmp eq i32 %226, %207
  br i1 %227, label %238, label %206, !prof !12

228:                                              ; preds = %211
  %229 = inttoptr i32 %209 to ptr
  %230 = call fastcc zeroext i1 @mutex_spin_on_owner(ptr noundef %0, ptr noundef nonnull %229, ptr noundef null, ptr noundef nonnull %3) #8
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !27
  br label %204

232:                                              ; preds = %228
  %233 = load volatile i32, ptr %4, align 4
  %234 = and i32 %233, 2
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %232
  store volatile i32 0, ptr %121, align 8
  call void @schedule_preempt_disabled() #8
  br label %237

237:                                              ; preds = %236, %232, %203
  call void @_raw_spin_lock(ptr noundef %86) #8
  br label %127

238:                                              ; preds = %225, %200
  call void @_raw_spin_lock(ptr noundef %86) #8
  br label %239

239:                                              ; preds = %238, %148
  store volatile i32 0, ptr %121, align 8
  %240 = load ptr, ptr %115, align 4
  %241 = load ptr, ptr %3, align 4
  %242 = getelementptr inbounds %struct.list_head, ptr %241, i32 0, i32 1
  store ptr %240, ptr %242, align 4
  store volatile ptr %241, ptr %240, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %115, align 4
  %243 = load volatile ptr, ptr %112, align 4
  %244 = icmp eq ptr %243, %112
  br i1 %244, label %245, label %247, !prof !12

245:                                              ; preds = %239
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %246 = call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 7, ptr elementtype(i32) %0) #8, !srcloc !32
  br label %247

247:                                              ; preds = %245, %239, %107
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %248 = load i16, ptr %86, align 4
  %249 = add i16 %248, 1
  store i16 %249, ptr %86, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !33
  br label %261

250:                                              ; preds = %161, %160
  %251 = load ptr, ptr %115, align 4
  store volatile i32 0, ptr %121, align 8
  %252 = load ptr, ptr %3, align 4
  %253 = getelementptr inbounds %struct.list_head, ptr %252, i32 0, i32 1
  store ptr %251, ptr %253, align 4
  store volatile ptr %252, ptr %251, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %115, align 4
  %254 = load volatile ptr, ptr %112, align 4
  %255 = icmp eq ptr %254, %112
  br i1 %255, label %256, label %258, !prof !12

256:                                              ; preds = %250
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %257 = call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 7, ptr elementtype(i32) %0) #8, !srcloc !32
  br label %258

258:                                              ; preds = %256, %250
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %259 = load i16, ptr %86, align 4
  %260 = add i16 %259, 1
  store i16 %260, ptr %86, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !34
  br label %261

261:                                              ; preds = %258, %247, %84
  %262 = phi i32 [ 0, %84 ], [ 0, %247 ], [ -4, %258 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i32 %262
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule_preempt_disabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @osq_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mutex_spin_on_owner(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readnone %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %6 = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 3
  %8 = load volatile i32, ptr %0, align 4
  %9 = and i32 %8, -8
  %10 = inttoptr i32 %9 to ptr
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %46

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 6
  %14 = icmp eq ptr %2, null
  %15 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 2
  %16 = icmp eq ptr %3, null
  br label %17

17:                                               ; preds = %41, %12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !35
  %18 = load volatile i32, ptr %13, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %17
  %21 = load volatile i32, ptr %5, align 8
  %22 = tail call ptr @llvm.thread.pointer() #8
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %20
  br i1 %14, label %41, label %27

27:                                               ; preds = %26
  %28 = load i32, ptr %15, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load volatile ptr, ptr %6, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %30, %27
  br i1 %16, label %34, label %38

34:                                               ; preds = %33
  %35 = load volatile i32, ptr %0, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %46

38:                                               ; preds = %33
  %39 = load ptr, ptr %7, align 4
  %40 = icmp eq ptr %39, %3
  br i1 %40, label %41, label %46

41:                                               ; preds = %38, %34, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !36
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !37
  %42 = load volatile i32, ptr %0, align 4
  %43 = and i32 %42, -8
  %44 = inttoptr i32 %43 to ptr
  %45 = icmp eq ptr %44, %1
  br i1 %45, label %17, label %46

46:                                               ; preds = %41, %38, %34, %30, %20, %17, %4
  %47 = phi i1 [ true, %4 ], [ false, %38 ], [ false, %34 ], [ false, %30 ], [ false, %17 ], [ false, %20 ], [ true, %41 ]
  ret i1 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @osq_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ww_mutex_lock(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 section ".sched.text" {
  %4 = alloca %struct.mutex_waiter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #8, !annotation !24
  %5 = icmp eq ptr %2, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %481, label %10, !prof !38

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 3
  store i16 0, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %10, %3
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %17 = tail call ptr @llvm.thread.pointer() #8
  %18 = ptrtoint ptr %17 to i32
  %19 = load volatile i32, ptr %0, align 4
  br label %20

20:                                               ; preds = %39, %16
  %21 = phi i32 [ %19, %16 ], [ %40, %39 ]
  %22 = and i32 %21, 7
  %23 = and i32 %21, -8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = and i32 %21, 4
  %27 = icmp ne i32 %26, 0
  %28 = icmp eq i32 %23, %18
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = and i32 %21, 3
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi i32 [ %31, %30 ], [ %22, %20 ]
  %34 = or i32 %33, %18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %35

35:                                               ; preds = %35, %32
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %21, i32 %34, ptr elementtype(i32) %0) #8, !srcloc !9
  %37 = extractvalue { i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %35

39:                                               ; preds = %35
  %40 = extractvalue { i32, i32 } %36, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %41 = icmp eq i32 %40, %21
  br i1 %41, label %97, label %20, !prof !12

42:                                               ; preds = %25
  %43 = load volatile i32, ptr %17, align 4
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %90

46:                                               ; preds = %42
  %47 = load volatile i32, ptr %0, align 4
  %48 = and i32 %47, -8
  %49 = inttoptr i32 %48 to ptr
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 6
  %53 = load volatile i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %90, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %57 = load volatile i32, ptr %56, align 8
  br label %58

58:                                               ; preds = %55, %46
  %59 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 2
  %60 = tail call zeroext i1 @osq_lock(ptr noundef %59) #8
  br i1 %60, label %61, label %90

61:                                               ; preds = %88, %58
  %62 = load volatile i32, ptr %0, align 4
  br label %63

63:                                               ; preds = %82, %61
  %64 = phi i32 [ %62, %61 ], [ %83, %82 ]
  %65 = and i32 %64, 7
  %66 = and i32 %64, -8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %63
  %69 = and i32 %64, 4
  %70 = icmp ne i32 %69, 0
  %71 = icmp eq i32 %66, %18
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = and i32 %64, 3
  br label %75

75:                                               ; preds = %73, %63
  %76 = phi i32 [ %74, %73 ], [ %65, %63 ]
  %77 = or i32 %76, %18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %78

78:                                               ; preds = %78, %75
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %64, i32 %77, ptr elementtype(i32) %0) #8, !srcloc !9
  %80 = extractvalue { i32, i32 } %79, 0
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %78

82:                                               ; preds = %78
  %83 = extractvalue { i32, i32 } %79, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %84 = icmp eq i32 %83, %64
  br i1 %84, label %96, label %63, !prof !12

85:                                               ; preds = %68
  %86 = inttoptr i32 %66 to ptr
  %87 = tail call fastcc zeroext i1 @mutex_spin_on_owner(ptr noundef %0, ptr noundef nonnull %86, ptr noundef %2, ptr noundef null) #8
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !27
  br label %61

89:                                               ; preds = %85
  tail call void @osq_unlock(ptr noundef %59) #8
  br label %90

90:                                               ; preds = %89, %58, %51, %42
  %91 = load volatile i32, ptr %17, align 4
  %92 = and i32 %91, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 1
  store volatile i32 0, ptr %95, align 8
  tail call void @schedule_preempt_disabled() #8
  br label %111

96:                                               ; preds = %82
  tail call void @osq_unlock(ptr noundef %59) #8
  br label %97

97:                                               ; preds = %96, %39
  br i1 %5, label %110, label %98

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %99, align 4
  %102 = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 1
  store ptr %2, ptr %102, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %103 = load volatile i32, ptr %0, align 4
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106, !prof !12

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %107) #8
  tail call fastcc void @__ww_mutex_check_waiters(ptr noundef %0, ptr noundef nonnull %2) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %108 = load i16, ptr %107, align 4
  %109 = add i16 %108, 1
  store i16 %109, ptr %107, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %110

110:                                              ; preds = %106, %98, %97
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  br label %481

111:                                              ; preds = %94, %90
  %112 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %112) #8
  %113 = load volatile i32, ptr %0, align 4
  br label %114

114:                                              ; preds = %133, %111
  %115 = phi i32 [ %113, %111 ], [ %134, %133 ]
  %116 = and i32 %115, 7
  %117 = and i32 %115, -8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %114
  %120 = and i32 %115, 4
  %121 = icmp ne i32 %120, 0
  %122 = icmp eq i32 %117, %18
  %123 = select i1 %121, i1 %122, i1 false
  br i1 %123, label %124, label %138

124:                                              ; preds = %119
  %125 = and i32 %115, 3
  br label %126

126:                                              ; preds = %124, %114
  %127 = phi i32 [ %125, %124 ], [ %116, %114 ]
  %128 = or i32 %127, %18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %129

129:                                              ; preds = %129, %126
  %130 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %115, i32 %128, ptr elementtype(i32) %0) #8, !srcloc !9
  %131 = extractvalue { i32, i32 } %130, 0
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %129

133:                                              ; preds = %129
  %134 = extractvalue { i32, i32 } %130, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %135 = icmp eq i32 %134, %115
  br i1 %135, label %136, label %114, !prof !12

136:                                              ; preds = %133
  br i1 %5, label %462, label %137

137:                                              ; preds = %136
  tail call fastcc void @__ww_mutex_check_waiters(ptr noundef %0, ptr noundef nonnull %2) #8
  br label %449

138:                                              ; preds = %119
  %139 = getelementptr inbounds %struct.mutex_waiter, ptr %4, i32 0, i32 1
  store ptr %17, ptr %139, align 4
  %140 = getelementptr inbounds %struct.mutex_waiter, ptr %4, i32 0, i32 2
  store ptr %2, ptr %140, align 4
  br i1 %5, label %141, label %150

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 3
  %143 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 3, i32 1
  %144 = load ptr, ptr %143, align 4
  store ptr %4, ptr %143, align 4
  store ptr %142, ptr %4, align 4
  %145 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %144, ptr %145, align 4
  store volatile ptr %4, ptr %144, align 4
  %146 = load ptr, ptr %142, align 4
  %147 = icmp eq ptr %146, %4
  br i1 %147, label %148, label %257

148:                                              ; preds = %141
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %149 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #8, !srcloc !29
  br label %257

150:                                              ; preds = %138
  %151 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 4
  %152 = load i16, ptr %151, align 2
  %153 = icmp eq i16 %152, 0
  %154 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 3
  %155 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 3, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, %154
  %158 = icmp eq ptr %156, null
  %159 = or i1 %157, %158
  br i1 %159, label %200, label %160

160:                                              ; preds = %150
  %161 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 1
  br label %162

162:                                              ; preds = %193, %160
  %163 = phi ptr [ %156, %160 ], [ %196, %193 ]
  %164 = phi ptr [ null, %160 ], [ %194, %193 ]
  %165 = getelementptr inbounds %struct.mutex_waiter, ptr %163, i32 0, i32 2
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %193, label %168

168:                                              ; preds = %162
  %169 = load i32, ptr %161, align 4
  %170 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %166, i32 0, i32 1
  %171 = load i32, ptr %170, align 4
  %172 = sub i32 %169, %171
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  br i1 %153, label %212, label %175

175:                                              ; preds = %174
  %176 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 2
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %247, label %477

179:                                              ; preds = %168
  %180 = load i16, ptr %151, align 2
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %166, i32 0, i32 2
  %184 = load i32, ptr %183, align 4
  %185 = icmp ne i32 %184, 0
  %186 = sub i32 %171, %169
  %187 = icmp sgt i32 %186, 0
  %188 = select i1 %185, i1 %187, i1 false
  br i1 %188, label %189, label %193

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.mutex_waiter, ptr %163, i32 0, i32 1
  %191 = load ptr, ptr %190, align 4
  %192 = tail call i32 @wake_up_process(ptr noundef %191) #8
  br label %193

193:                                              ; preds = %189, %182, %179, %162
  %194 = phi ptr [ %164, %162 ], [ %163, %179 ], [ %163, %182 ], [ %163, %189 ]
  %195 = getelementptr inbounds %struct.list_head, ptr %163, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, %154
  %198 = icmp eq ptr %196, null
  %199 = or i1 %197, %198
  br i1 %199, label %200, label %162

200:                                              ; preds = %193, %150
  %201 = phi ptr [ null, %150 ], [ %194, %193 ]
  %202 = icmp eq ptr %201, null
  %203 = select i1 %202, ptr %154, ptr %201
  %204 = getelementptr inbounds %struct.list_head, ptr %203, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  store ptr %4, ptr %204, align 4
  store ptr %203, ptr %4, align 4
  %206 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %205, ptr %206, align 4
  store volatile ptr %4, ptr %205, align 4
  %207 = load ptr, ptr %154, align 4
  %208 = icmp eq ptr %207, %4
  br i1 %208, label %209, label %211

209:                                              ; preds = %200
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %210 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #8, !srcloc !29
  br label %211

211:                                              ; preds = %209, %200
  br i1 %153, label %222, label %257

212:                                              ; preds = %174
  %213 = icmp eq ptr %164, null
  %214 = select i1 %213, ptr %154, ptr %164
  %215 = getelementptr inbounds %struct.list_head, ptr %214, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  store ptr %4, ptr %215, align 4
  store ptr %214, ptr %4, align 4
  %217 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %216, ptr %217, align 4
  store volatile ptr %4, ptr %216, align 4
  %218 = load ptr, ptr %154, align 4
  %219 = icmp eq ptr %218, %4
  br i1 %219, label %220, label %222

220:                                              ; preds = %212
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %221 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #8, !srcloc !29
  br label %222

222:                                              ; preds = %220, %212, %211
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !39
  %223 = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 1
  %224 = load ptr, ptr %223, align 4
  %225 = load volatile i32, ptr %0, align 4
  %226 = and i32 %225, -8
  %227 = inttoptr i32 %226 to ptr
  %228 = icmp eq ptr %224, null
  %229 = icmp eq i32 %226, 0
  %230 = select i1 %228, i1 true, i1 %229
  br i1 %230, label %257, label %231

231:                                              ; preds = %222
  %232 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 2
  %233 = load i32, ptr %232, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %257, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %224, i32 0, i32 1
  %237 = load i32, ptr %236, align 4
  %238 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 1
  %239 = load i32, ptr %238, align 4
  %240 = sub i32 %237, %239
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %257

242:                                              ; preds = %235
  %243 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %224, i32 0, i32 3
  store i16 1, ptr %243, align 4
  %244 = icmp eq ptr %17, %227
  br i1 %244, label %257, label %245

245:                                              ; preds = %242
  %246 = call i32 @wake_up_process(ptr noundef nonnull %227) #8
  br label %257

247:                                              ; preds = %175
  %248 = icmp eq ptr %164, null
  %249 = select i1 %248, ptr %154, ptr %164
  %250 = getelementptr inbounds %struct.list_head, ptr %249, i32 0, i32 1
  %251 = load ptr, ptr %250, align 4
  store ptr %4, ptr %250, align 4
  store ptr %249, ptr %4, align 4
  %252 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %251, ptr %252, align 4
  store volatile ptr %4, ptr %251, align 4
  %253 = load ptr, ptr %154, align 4
  %254 = icmp eq ptr %253, %4
  br i1 %254, label %255, label %257

255:                                              ; preds = %247
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %256 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #8, !srcloc !29
  br label %257

257:                                              ; preds = %255, %247, %245, %242, %235, %231, %222, %211, %148, %141
  %258 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 1
  store volatile i32 %1, ptr %258, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !30
  %259 = and i32 %1, 257
  %260 = icmp eq i32 %259, 0
  %261 = and i32 %1, 1
  %262 = icmp eq i32 %261, 0
  %263 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 98, i32 1
  %264 = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 1
  %265 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 2
  %266 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 4
  %267 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 1
  %268 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %269 = getelementptr inbounds %struct.mutex, ptr %0, i32 0, i32 3
  %270 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 3
  br label %271

271:                                              ; preds = %416, %257
  %272 = load volatile i32, ptr %0, align 4
  br label %273

273:                                              ; preds = %292, %271
  %274 = phi i32 [ %272, %271 ], [ %293, %292 ]
  %275 = and i32 %274, 7
  %276 = and i32 %274, -8
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %285, label %278

278:                                              ; preds = %273
  %279 = and i32 %274, 4
  %280 = icmp ne i32 %279, 0
  %281 = icmp eq i32 %276, %18
  %282 = select i1 %280, i1 %281, i1 false
  br i1 %282, label %283, label %295

283:                                              ; preds = %278
  %284 = and i32 %274, 3
  br label %285

285:                                              ; preds = %283, %273
  %286 = phi i32 [ %284, %283 ], [ %275, %273 ]
  %287 = or i32 %286, %18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %288

288:                                              ; preds = %288, %285
  %289 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %274, i32 %287, ptr elementtype(i32) %0) #8, !srcloc !9
  %290 = extractvalue { i32, i32 } %289, 0
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %288

292:                                              ; preds = %288
  %293 = extractvalue { i32, i32 } %289, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %294 = icmp eq i32 %293, %274
  br i1 %294, label %418, label %273, !prof !12

295:                                              ; preds = %278
  br i1 %260, label %309, label %296

296:                                              ; preds = %295
  %297 = load volatile i32, ptr %17, align 4
  %298 = and i32 %297, 256
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %304, !prof !12

300:                                              ; preds = %296
  %301 = load volatile i32, ptr %17, align 4
  %302 = and i32 %301, 1
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %309, label %304

304:                                              ; preds = %300, %296
  br i1 %262, label %305, label %465

305:                                              ; preds = %304
  %306 = load i32, ptr %263, align 4
  %307 = and i32 %306, 256
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %465

309:                                              ; preds = %305, %300, %295
  br i1 %5, label %344, label %310

310:                                              ; preds = %309
  %311 = load volatile ptr, ptr %264, align 4
  %312 = load i32, ptr %265, align 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %344, label %314

314:                                              ; preds = %310
  %315 = load i16, ptr %266, align 2
  %316 = icmp eq i16 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = load i16, ptr %270, align 4
  %319 = icmp eq i16 %318, 0
  br i1 %319, label %344, label %465

320:                                              ; preds = %314
  %321 = icmp eq ptr %311, null
  br i1 %321, label %328, label %322

322:                                              ; preds = %320
  %323 = load i32, ptr %267, align 4
  %324 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %311, i32 0, i32 1
  %325 = load i32, ptr %324, align 4
  %326 = sub i32 %323, %325
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %465, label %328

328:                                              ; preds = %322, %320
  %329 = load ptr, ptr %268, align 4
  %330 = icmp eq ptr %329, %269
  %331 = icmp eq ptr %329, null
  %332 = or i1 %330, %331
  br i1 %332, label %344, label %333

333:                                              ; preds = %338, %328
  %334 = phi ptr [ %340, %338 ], [ %329, %328 ]
  %335 = getelementptr inbounds %struct.mutex_waiter, ptr %334, i32 0, i32 2
  %336 = load ptr, ptr %335, align 4
  %337 = icmp eq ptr %336, null
  br i1 %337, label %338, label %468

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.list_head, ptr %334, i32 0, i32 1
  %340 = load ptr, ptr %339, align 4
  %341 = icmp eq ptr %340, %269
  %342 = icmp eq ptr %340, null
  %343 = or i1 %341, %342
  br i1 %343, label %344, label %333

344:                                              ; preds = %338, %328, %317, %310, %309
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %345 = load i16, ptr %112, align 4
  %346 = add i16 %345, 1
  store i16 %346, ptr %112, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  call void @schedule_preempt_disabled() #8
  %347 = load ptr, ptr %269, align 4
  %348 = icmp eq ptr %347, %4
  store volatile i32 %1, ptr %258, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !31
  %349 = load volatile i32, ptr %0, align 4
  br label %350

350:                                              ; preds = %376, %344
  %351 = phi i32 [ %349, %344 ], [ %377, %376 ]
  %352 = and i32 %351, 7
  %353 = and i32 %351, -8
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %368, label %355

355:                                              ; preds = %350
  %356 = and i32 %351, 4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %362, label %358

358:                                              ; preds = %355
  %359 = icmp eq i32 %353, %18
  br i1 %359, label %360, label %382

360:                                              ; preds = %358
  %361 = and i32 %351, 3
  br label %368

362:                                              ; preds = %355
  %363 = and i32 %351, 2
  %364 = icmp eq i32 %363, 0
  %365 = select i1 %348, i1 %364, i1 false
  br i1 %365, label %366, label %382

366:                                              ; preds = %362
  %367 = or i32 %352, 2
  br label %368

368:                                              ; preds = %366, %360, %350
  %369 = phi i32 [ %361, %360 ], [ %367, %366 ], [ %352, %350 ]
  %370 = phi i32 [ %18, %360 ], [ %353, %366 ], [ %18, %350 ]
  %371 = or i32 %370, %369
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %372

372:                                              ; preds = %372, %368
  %373 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %351, i32 %371, ptr elementtype(i32) %0) #8, !srcloc !9
  %374 = extractvalue { i32, i32 } %373, 0
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %372

376:                                              ; preds = %372
  %377 = extractvalue { i32, i32 } %373, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %378 = icmp eq i32 %377, %351
  br i1 %378, label %379, label %350, !prof !12

379:                                              ; preds = %376
  %380 = icmp eq i32 %370, %18
  %381 = select i1 %380, i1 true, i1 %354
  br i1 %381, label %417, label %382

382:                                              ; preds = %379, %362, %358
  br i1 %348, label %383, label %416

383:                                              ; preds = %410, %382
  %384 = load volatile i32, ptr %0, align 4
  br label %385

385:                                              ; preds = %404, %383
  %386 = phi i32 [ %384, %383 ], [ %405, %404 ]
  %387 = and i32 %386, 7
  %388 = and i32 %386, -8
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %397, label %390

390:                                              ; preds = %385
  %391 = and i32 %386, 4
  %392 = icmp ne i32 %391, 0
  %393 = icmp eq i32 %388, %18
  %394 = select i1 %392, i1 %393, i1 false
  br i1 %394, label %395, label %407

395:                                              ; preds = %390
  %396 = and i32 %386, 3
  br label %397

397:                                              ; preds = %395, %385
  %398 = phi i32 [ %396, %395 ], [ %387, %385 ]
  %399 = or i32 %398, %18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  br label %400

400:                                              ; preds = %400, %397
  %401 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 %386, i32 %399, ptr elementtype(i32) %0) #8, !srcloc !9
  %402 = extractvalue { i32, i32 } %401, 0
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %400

404:                                              ; preds = %400
  %405 = extractvalue { i32, i32 } %401, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %406 = icmp eq i32 %405, %386
  br i1 %406, label %417, label %385, !prof !12

407:                                              ; preds = %390
  %408 = inttoptr i32 %388 to ptr
  %409 = call fastcc zeroext i1 @mutex_spin_on_owner(ptr noundef %0, ptr noundef nonnull %408, ptr noundef %2, ptr noundef nonnull %4) #8
  br i1 %409, label %410, label %411

410:                                              ; preds = %407
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !27
  br label %383

411:                                              ; preds = %407
  %412 = load volatile i32, ptr %17, align 4
  %413 = and i32 %412, 2
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %411
  store volatile i32 0, ptr %258, align 8
  call void @schedule_preempt_disabled() #8
  br label %416

416:                                              ; preds = %415, %411, %382
  call void @_raw_spin_lock(ptr noundef %112) #8
  br label %271

417:                                              ; preds = %404, %379
  call void @_raw_spin_lock(ptr noundef %112) #8
  br label %418

418:                                              ; preds = %417, %292
  store volatile i32 0, ptr %258, align 8
  br i1 %5, label %454, label %419

419:                                              ; preds = %418
  %420 = load i16, ptr %266, align 2
  %421 = icmp eq i16 %420, 0
  br i1 %421, label %422, label %433

422:                                              ; preds = %419
  %423 = load ptr, ptr %269, align 4
  %424 = icmp eq ptr %423, %4
  br i1 %424, label %441, label %425

425:                                              ; preds = %422
  call fastcc void @__ww_mutex_check_waiters(ptr noundef %0, ptr noundef nonnull %2) #8
  %426 = load ptr, ptr %268, align 4
  %427 = load ptr, ptr %4, align 4
  %428 = getelementptr inbounds %struct.list_head, ptr %427, i32 0, i32 1
  store ptr %426, ptr %428, align 4
  store volatile ptr %427, ptr %426, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %268, align 4
  %429 = load volatile ptr, ptr %269, align 4
  %430 = icmp eq ptr %429, %269
  br i1 %430, label %431, label %449, !prof !12

431:                                              ; preds = %425
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %432 = call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 7, ptr elementtype(i32) %0) #8, !srcloc !32
  br label %449

433:                                              ; preds = %419
  %434 = load ptr, ptr %268, align 4
  %435 = load ptr, ptr %4, align 4
  %436 = getelementptr inbounds %struct.list_head, ptr %435, i32 0, i32 1
  store ptr %434, ptr %436, align 4
  store volatile ptr %435, ptr %434, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %268, align 4
  %437 = load volatile ptr, ptr %269, align 4
  %438 = icmp eq ptr %437, %269
  br i1 %438, label %439, label %449, !prof !12

439:                                              ; preds = %433
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %440 = call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 7, ptr elementtype(i32) %0) #8, !srcloc !32
  br label %449

441:                                              ; preds = %422
  %442 = load ptr, ptr %268, align 4
  %443 = load ptr, ptr %4, align 4
  %444 = getelementptr inbounds %struct.list_head, ptr %443, i32 0, i32 1
  store ptr %442, ptr %444, align 4
  store volatile ptr %443, ptr %442, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %268, align 4
  %445 = load volatile ptr, ptr %269, align 4
  %446 = icmp eq ptr %445, %269
  br i1 %446, label %447, label %449, !prof !12

447:                                              ; preds = %441
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %448 = call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 7, ptr elementtype(i32) %0) #8, !srcloc !32
  br label %449

449:                                              ; preds = %447, %441, %439, %433, %431, %425, %137
  %450 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 2
  %451 = load i32, ptr %450, align 4
  %452 = add i32 %451, 1
  store i32 %452, ptr %450, align 4
  %453 = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 1
  store ptr %2, ptr %453, align 4
  br label %462

454:                                              ; preds = %418
  %455 = load ptr, ptr %268, align 4
  %456 = load ptr, ptr %4, align 4
  %457 = getelementptr inbounds %struct.list_head, ptr %456, i32 0, i32 1
  store ptr %455, ptr %457, align 4
  store volatile ptr %456, ptr %455, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %268, align 4
  %458 = load volatile ptr, ptr %269, align 4
  %459 = icmp eq ptr %458, %269
  br i1 %459, label %460, label %462, !prof !12

460:                                              ; preds = %454
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %461 = call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 7, ptr elementtype(i32) %0) #8, !srcloc !32
  br label %462

462:                                              ; preds = %460, %454, %449, %136
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %463 = load i16, ptr %112, align 4
  %464 = add i16 %463, 1
  store i16 %464, ptr %112, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !33
  br label %481

465:                                              ; preds = %322, %317, %305, %304
  %466 = phi i32 [ -35, %317 ], [ -35, %322 ], [ -4, %305 ], [ -4, %304 ]
  %467 = load ptr, ptr %268, align 4
  br label %468

468:                                              ; preds = %465, %333
  %469 = phi ptr [ %467, %465 ], [ %329, %333 ]
  %470 = phi i32 [ %466, %465 ], [ -35, %333 ]
  store volatile i32 0, ptr %258, align 8
  %471 = load ptr, ptr %4, align 4
  %472 = getelementptr inbounds %struct.list_head, ptr %471, i32 0, i32 1
  store ptr %469, ptr %472, align 4
  store volatile ptr %471, ptr %469, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %268, align 4
  %473 = load volatile ptr, ptr %269, align 4
  %474 = icmp eq ptr %473, %269
  br i1 %474, label %475, label %477, !prof !12

475:                                              ; preds = %468
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %476 = call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 7, ptr elementtype(i32) %0) #8, !srcloc !32
  br label %477

477:                                              ; preds = %475, %468, %175
  %478 = phi i32 [ -35, %175 ], [ %470, %468 ], [ %470, %475 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %479 = load i16, ptr %112, align 4
  %480 = add i16 %479, 1
  store i16 %480, ptr %112, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !34
  br label %481

481:                                              ; preds = %477, %462, %110, %6
  %482 = phi i32 [ 0, %110 ], [ 0, %462 ], [ %478, %477 ], [ -114, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i32 %482
}

attributes #0 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 612878, i64 2148102849, i64 2148102875, i64 2148102922, i64 2148102944, i64 2148102972, i64 2148102992}
!9 = !{i64 598941, i64 598965, i64 598986, i64 599003, i64 599020}
!10 = !{i64 2148227689}
!11 = !{i64 2148228074}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149294503}
!14 = !{i64 2149290327}
!15 = !{i64 2149290402, i64 2149290429, i64 2149290476, i64 2149290498, i64 2149290526, i64 2149290546}
!16 = !{i64 2149317506}
!17 = !{i64 2151450094}
!18 = !{i64 2148114568}
!19 = !{i64 599447, i64 599472, i64 599494, i64 599510, i64 599522, i64 599542, i64 599566, i64 599582, i64 599594}
!20 = !{i64 2148114694}
!21 = !{i64 2148215740}
!22 = !{i64 2148118102, i64 2148118134, i64 2148118163, i64 2148118197, i64 2148118228, i64 2148118251}
!23 = !{i64 2148215943}
!24 = !{!"auto-init"}
!25 = !{i64 2151475718}
!26 = !{i64 2151461225}
!27 = !{i64 2151461067}
!28 = !{i64 2151475961}
!29 = !{i64 2148122839, i64 2148122865, i64 2148122894, i64 2148122928, i64 2148122959, i64 2148122982}
!30 = !{i64 2151478837}
!31 = !{i64 2151481745}
!32 = !{i64 2148121267, i64 2148121293, i64 2148121322, i64 2148121356, i64 2148121387, i64 2148121410}
!33 = !{i64 2151484560}
!34 = !{i64 2151487317}
!35 = !{i64 2151460350}
!36 = !{i64 2151460579}
!37 = !{i64 2151460421}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2151455895}
