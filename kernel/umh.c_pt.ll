; ModuleID = '/llk/IR/kernel/umh.c_pt.bc'
source_filename = "../kernel/umh.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usermodehelper_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22usermodehelper_read_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_usermodehelper_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usermodehelper_read_lock_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22usermodehelper_read_lock_wait\22\09\09\09\09\09"
module asm "__kstrtabns_usermodehelper_read_lock_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usermodehelper_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22usermodehelper_read_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_usermodehelper_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_usermodehelper_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22call_usermodehelper_setup\22\09\09\09\09\09"
module asm "__kstrtabns_call_usermodehelper_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_usermodehelper_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22call_usermodehelper_exec\22\09\09\09\09\09"
module asm "__kstrtabns_call_usermodehelper_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_usermodehelper:\09\09\09\09\09"
module asm "\09.asciz \09\22call_usermodehelper\22\09\09\09\09\09"
module asm "__kstrtabns_call_usermodehelper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.subprocess_info = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.85 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.path = type { ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.56 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.56 = type { %struct.callback_head }

@umhelper_sem = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @umhelper_sem, i64 16), ptr getelementptr (i8, ptr @umhelper_sem, i64 16) } }, align 4
@usermodehelper_disabled_waitq = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @usermodehelper_disabled_waitq, i64 4), ptr getelementptr (i8, ptr @usermodehelper_disabled_waitq, i64 4) } }, align 4
@usermodehelper_disabled = internal unnamed_addr global i32 2, align 4
@__kstrtab_usermodehelper_read_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_usermodehelper_read_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_usermodehelper_read_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usermodehelper_read_trylock to i32), ptr @__kstrtab_usermodehelper_read_trylock, ptr @__kstrtabns_usermodehelper_read_trylock }, section "___ksymtab_gpl+usermodehelper_read_trylock", align 4
@__kstrtab_usermodehelper_read_lock_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_usermodehelper_read_lock_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_usermodehelper_read_lock_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usermodehelper_read_lock_wait to i32), ptr @__kstrtab_usermodehelper_read_lock_wait, ptr @__kstrtabns_usermodehelper_read_lock_wait }, section "___ksymtab_gpl+usermodehelper_read_lock_wait", align 4
@__kstrtab_usermodehelper_read_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_usermodehelper_read_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_usermodehelper_read_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usermodehelper_read_unlock to i32), ptr @__kstrtab_usermodehelper_read_unlock, ptr @__kstrtabns_usermodehelper_read_unlock }, section "___ksymtab_gpl+usermodehelper_read_unlock", align 4
@running_helpers = internal global %struct.atomic_t zeroinitializer, align 4
@running_helpers_waitq = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @running_helpers_waitq, i64 4), ptr getelementptr (i8, ptr @running_helpers_waitq, i64 4) } }, align 4
@__kstrtab_call_usermodehelper_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_usermodehelper_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_call_usermodehelper_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_usermodehelper_setup to i32), ptr @__kstrtab_call_usermodehelper_setup, ptr @__kstrtabns_call_usermodehelper_setup }, section "___ksymtab+call_usermodehelper_setup", align 4
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_call_usermodehelper_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_usermodehelper_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_call_usermodehelper_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_usermodehelper_exec to i32), ptr @__kstrtab_call_usermodehelper_exec, ptr @__kstrtabns_call_usermodehelper_exec }, section "___ksymtab+call_usermodehelper_exec", align 4
@__kstrtab_call_usermodehelper = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_usermodehelper = external dso_local constant [0 x i8], align 1
@__ksymtab_call_usermodehelper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_usermodehelper to i32), ptr @__kstrtab_call_usermodehelper, ptr @__kstrtabns_call_usermodehelper }, section "___ksymtab+call_usermodehelper", align 4
@.str = private unnamed_addr constant [5 x i8] c"bset\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"inheritable\00", align 1
@usermodehelper_table = dso_local local_unnamed_addr global [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str, ptr inttoptr (i32 1 to ptr), i32 8, i16 384, ptr null, ptr @proc_cap_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.1, ptr inttoptr (i32 2 to ptr), i32 8, i16 384, ptr null, ptr @proc_cap_handler, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@umh_sysctl_lock = internal global %struct.spinlock zeroinitializer, align 4
@usermodehelper_bset = internal unnamed_addr global %struct.kernel_cap_struct { [2 x i32] [i32 -1, i32 511] }, align 8
@usermodehelper_inheritable = internal unnamed_addr global %struct.kernel_cap_struct { [2 x i32] [i32 -1, i32 511] }, align 8
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_call_usermodehelper, ptr @__ksymtab_call_usermodehelper_exec, ptr @__ksymtab_call_usermodehelper_setup, ptr @__ksymtab_usermodehelper_read_lock_wait, ptr @__ksymtab_usermodehelper_read_trylock, ptr @__ksymtab_usermodehelper_read_unlock], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usermodehelper_read_trylock() #0 {
  %1 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %1) #8
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 1
  %3 = tail call ptr @llvm.thread.pointer() #8
  store i32 0, ptr %1, align 4
  store ptr %3, ptr %2, align 4
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %4, align 4
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3
  store ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  store ptr %5, ptr %6, align 4
  call void @down_read(ptr noundef nonnull @umhelper_sem) #8
  call void @prepare_to_wait(ptr noundef nonnull @usermodehelper_disabled_waitq, ptr noundef nonnull %1, i32 noundef 1) #8
  %7 = load i32, ptr @usermodehelper_disabled, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %19, %0
  %10 = phi i32 [ %20, %19 ], [ %7, %0 ]
  %11 = icmp eq i32 %10, 2
  call void @up_read(ptr noundef nonnull @umhelper_sem) #8
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  call void @schedule() #8
  %13 = load volatile i32, ptr @system_freezing_cnt, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !8

15:                                               ; preds = %12
  %16 = call zeroext i1 @freezing_slow_path(ptr noundef %3) #8
  br i1 %16, label %17, label %19, !prof !9

17:                                               ; preds = %15
  %18 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #8
  br label %19

19:                                               ; preds = %17, %15, %12
  call void @down_read(ptr noundef nonnull @umhelper_sem) #8
  call void @prepare_to_wait(ptr noundef nonnull @usermodehelper_disabled_waitq, ptr noundef nonnull %1, i32 noundef 1) #8
  %20 = load i32, ptr @usermodehelper_disabled, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %9

22:                                               ; preds = %19, %9, %0
  %23 = phi i32 [ 0, %0 ], [ -11, %9 ], [ 0, %19 ]
  call void @finish_wait(ptr noundef nonnull @usermodehelper_disabled_waitq, ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #8
  ret i32 %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usermodehelper_read_lock_wait(i32 noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #8
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  %4 = tail call ptr @llvm.thread.pointer() #8
  store i32 0, ptr %2, align 4
  store ptr %4, ptr %3, align 4
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %5, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  store ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  call void @down_read(ptr noundef nonnull @umhelper_sem) #8
  call void @prepare_to_wait(ptr noundef nonnull @usermodehelper_disabled_waitq, ptr noundef nonnull %2, i32 noundef 2) #8
  %10 = load i32, ptr @usermodehelper_disabled, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %16, %9
  %13 = phi i32 [ %14, %16 ], [ %0, %9 ]
  call void @up_read(ptr noundef nonnull @umhelper_sem) #8
  %14 = call i32 @schedule_timeout(i32 noundef %13) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  call void @down_read(ptr noundef nonnull @umhelper_sem) #8
  call void @prepare_to_wait(ptr noundef nonnull @usermodehelper_disabled_waitq, ptr noundef nonnull %2, i32 noundef 2) #8
  %17 = load i32, ptr @usermodehelper_disabled, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %12

19:                                               ; preds = %16, %12, %9
  %20 = phi i32 [ %0, %9 ], [ 0, %12 ], [ %14, %16 ]
  call void @finish_wait(ptr noundef nonnull @usermodehelper_disabled_waitq, ptr noundef nonnull %2) #8
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi i32 [ %20, %19 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usermodehelper_read_unlock() #0 {
  tail call void @up_read(ptr noundef nonnull @umhelper_sem) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__usermodehelper_set_disable_depth(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @down_write(ptr noundef nonnull @umhelper_sem) #8
  store i32 %0, ptr @usermodehelper_disabled, align 4
  tail call void @__wake_up(ptr noundef nonnull @usermodehelper_disabled_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @up_write(ptr noundef nonnull @umhelper_sem) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__usermodehelper_disable(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  tail call void @down_write(ptr noundef nonnull @umhelper_sem) #8
  store i32 %0, ptr @usermodehelper_disabled, align 4
  tail call void @up_write(ptr noundef nonnull @umhelper_sem) #8
  %5 = load volatile i32, ptr @running_helpers, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #8
  %8 = call i32 @prepare_to_wait_event(ptr noundef nonnull @running_helpers_waitq, ptr noundef nonnull %2, i32 noundef 2) #8
  %9 = load volatile i32, ptr @running_helpers, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @finish_wait(ptr noundef nonnull @running_helpers_waitq, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  br label %27

12:                                               ; preds = %12, %7
  %13 = phi i32 [ %21, %12 ], [ 500, %7 ]
  %14 = call i32 @schedule_timeout(i32 noundef %13) #8
  %15 = call i32 @prepare_to_wait_event(ptr noundef nonnull @running_helpers_waitq, ptr noundef nonnull %2, i32 noundef 2) #8
  %16 = load volatile i32, ptr @running_helpers, align 4
  %17 = icmp eq i32 %16, 0
  %18 = xor i1 %17, true
  %19 = icmp ne i32 %14, 0
  %20 = select i1 %18, i1 true, i1 %19
  %21 = select i1 %20, i32 %14, i32 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %17, i1 true, i1 %22
  br i1 %23, label %24, label %12

24:                                               ; preds = %12
  %25 = icmp eq i32 %21, 0
  call void @finish_wait(ptr noundef nonnull @running_helpers_waitq, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #8
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  call void @down_write(ptr noundef nonnull @umhelper_sem) #8
  store i32 0, ptr @usermodehelper_disabled, align 4
  call void @__wake_up(ptr noundef nonnull @usermodehelper_disabled_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  call void @up_write(ptr noundef nonnull @umhelper_sem) #8
  br label %27

27:                                               ; preds = %26, %24, %11, %4, %1
  %28 = phi i32 [ -11, %26 ], [ -22, %1 ], [ 0, %24 ], [ 0, %4 ], [ 0, %11 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @call_usermodehelper_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = and i32 %3, 17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !8

10:                                               ; preds = %7
  %11 = and i32 %3, 1
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 1, i32 2
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ 0, %7 ], [ %13, %10 ]
  %16 = or i32 %3, 256
  %17 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %15, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef %16, i32 noundef 52) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %14
  store i32 -32, ptr %19, align 8
  %22 = getelementptr inbounds %struct.work_struct, ptr %19, i32 0, i32 1
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.work_struct, ptr %19, i32 0, i32 1, i32 1
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.work_struct, ptr %19, i32 0, i32 2
  store ptr @call_usermodehelper_exec_work, ptr %24, align 4
  %25 = getelementptr inbounds %struct.subprocess_info, ptr %19, i32 0, i32 2
  store ptr %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.subprocess_info, ptr %19, i32 0, i32 3
  store ptr %1, ptr %26, align 8
  %27 = getelementptr inbounds %struct.subprocess_info, ptr %19, i32 0, i32 4
  store ptr %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.subprocess_info, ptr %19, i32 0, i32 8
  store ptr %5, ptr %28, align 4
  %29 = getelementptr inbounds %struct.subprocess_info, ptr %19, i32 0, i32 7
  store ptr %4, ptr %29, align 8
  %30 = getelementptr inbounds %struct.subprocess_info, ptr %19, i32 0, i32 9
  store ptr %6, ptr %30, align 8
  br label %31

31:                                               ; preds = %21, %14
  ret ptr %19
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @call_usermodehelper_exec_work(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  tail call void @kernel_sigaction(i32 noundef 17, ptr noundef null) #8
  %7 = tail call i32 @kernel_thread(ptr noundef nonnull @call_usermodehelper_exec_async, ptr noundef %0, i32 noundef 17) #8
  %8 = icmp slt i32 %7, 0
  %9 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 6
  br i1 %8, label %10, label %11

10:                                               ; preds = %6
  store i32 %7, ptr %9, align 4
  br label %13

11:                                               ; preds = %6
  %12 = tail call i32 @kernel_wait(i32 noundef %7, ptr noundef %9) #8
  br label %13

13:                                               ; preds = %11, %10
  tail call void @kernel_sigaction(i32 noundef 17, ptr noundef nonnull inttoptr (i32 1 to ptr)) #8
  %14 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #8, !srcloc !12
  %15 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %14) #8, !srcloc !13
  %16 = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = inttoptr i32 %16 to ptr
  tail call void @complete(ptr noundef nonnull %19) #8
  br label %43

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void %22(ptr noundef %0) #8
  br label %25

25:                                               ; preds = %24, %20
  tail call void @kfree(ptr noundef %0) #8
  br label %43

26:                                               ; preds = %1
  %27 = tail call i32 @kernel_thread(ptr noundef nonnull @call_usermodehelper_exec_async, ptr noundef %0, i32 noundef 32785) #8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 6
  store i32 %27, ptr %30, align 4
  %31 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #8, !srcloc !12
  %32 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %31) #8, !srcloc !13
  %33 = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = inttoptr i32 %33 to ptr
  tail call void @complete(ptr noundef nonnull %36) #8
  br label %43

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void %39(ptr noundef %0) #8
  br label %42

42:                                               ; preds = %41, %37
  tail call void @kfree(ptr noundef %0) #8
  br label %43

43:                                               ; preds = %42, %35, %26, %25, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @call_usermodehelper_exec(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.completion, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1, i32 1
  store i64 0, ptr %3, align 8
  store ptr %4, ptr %4, align 8
  %5 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1, i32 1, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  call void %11(ptr noundef %0) #8
  br label %14

14:                                               ; preds = %13, %9
  call void @kfree(ptr noundef %0) #8
  br label %57

15:                                               ; preds = %2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @running_helpers) #8, !srcloc !12
  %16 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @running_helpers, ptr nonnull @running_helpers, i32 1, ptr nonnull elementtype(i32) @running_helpers) #8, !srcloc !15
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %17 = load i32, ptr @usermodehelper_disabled, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load ptr, ptr %6, align 4
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %19
  %24 = icmp eq i32 %1, 0
  %25 = select i1 %24, ptr null, ptr %3
  %26 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 5
  store i32 %1, ptr %27, align 4
  %28 = load ptr, ptr @system_unbound_wq, align 4
  %29 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %28, ptr noundef %0) #8
  br i1 %24, label %51, label %30

30:                                               ; preds = %23
  %31 = and i32 %1, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = call i32 @wait_for_completion_killable(ptr noundef nonnull %3) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #8, !srcloc !12
  %37 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %26) #8, !srcloc !13
  %38 = extractvalue { i32, i32 } %37, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !18
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36, %30
  call void @wait_for_completion(ptr noundef nonnull %3) #8
  br label %41

41:                                               ; preds = %40, %33
  %42 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %19, %15
  %45 = phi i32 [ 0, %19 ], [ %43, %41 ], [ -16, %15 ]
  %46 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  call void %47(ptr noundef %0) #8
  br label %50

50:                                               ; preds = %49, %44
  call void @kfree(ptr noundef %0) #8
  br label %51

51:                                               ; preds = %50, %36, %23
  %52 = phi i32 [ %45, %50 ], [ 0, %23 ], [ %34, %36 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @running_helpers) #8, !srcloc !12
  %53 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @running_helpers, ptr nonnull @running_helpers, i32 1, ptr nonnull elementtype(i32) @running_helpers) #8, !srcloc !20
  %54 = extractvalue { i32, i32 } %53, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  call void @__wake_up(ptr noundef nonnull @running_helpers_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %57

57:                                               ; preds = %56, %51, %14
  %58 = phi i32 [ -22, %14 ], [ %52, %51 ], [ %52, %56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @call_usermodehelper(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  %6 = select i1 %5, i32 2848, i32 3520
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef %6, i32 noundef 52) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %4
  store i32 -32, ptr %8, align 8
  %11 = getelementptr inbounds %struct.work_struct, ptr %8, i32 0, i32 1
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.work_struct, ptr %8, i32 0, i32 1, i32 1
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.work_struct, ptr %8, i32 0, i32 2
  store ptr @call_usermodehelper_exec_work, ptr %13, align 4
  %14 = getelementptr inbounds %struct.subprocess_info, ptr %8, i32 0, i32 2
  store ptr %0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.subprocess_info, ptr %8, i32 0, i32 3
  store ptr %1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.subprocess_info, ptr %8, i32 0, i32 4
  store ptr %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.subprocess_info, ptr %8, i32 0, i32 8
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.subprocess_info, ptr %8, i32 0, i32 7
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds %struct.subprocess_info, ptr %8, i32 0, i32 9
  store ptr null, ptr %19, align 8
  %20 = tail call i32 @call_usermodehelper_exec(ptr noundef nonnull %8, i32 noundef %3)
  br label %21

21:                                               ; preds = %10, %4
  %22 = phi i32 [ %20, %10 ], [ -12, %4 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_cap_handler(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.ctl_table, align 4
  %7 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store i64 0, ptr %7, align 8, !annotation !10
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = tail call zeroext i1 @capable(i32 noundef 8) #8
  br i1 %10, label %11, label %55

11:                                               ; preds = %9
  %12 = tail call zeroext i1 @capable(i32 noundef 16) #8
  br i1 %12, label %13, label %55

13:                                               ; preds = %11, %5
  tail call void @_raw_spin_lock(ptr noundef nonnull @umh_sysctl_lock) #8
  %14 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = add i32 %16, -1
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = icmp eq ptr %15, inttoptr (i32 1 to ptr)
  %21 = load i32, ptr @usermodehelper_bset, align 8
  %22 = load i32, ptr @usermodehelper_inheritable, align 8
  %23 = select i1 %20, i32 %21, i32 %22
  store i32 %23, ptr %7, align 8
  %24 = load i32, ptr getelementptr inbounds (%struct.kernel_cap_struct, ptr @usermodehelper_bset, i32 0, i32 0, i32 1), align 4
  %25 = load i32, ptr getelementptr inbounds (%struct.kernel_cap_struct, ptr @usermodehelper_inheritable, i32 0, i32 0, i32 1), align 4
  %26 = select i1 %20, i32 %24, i32 %25
  %27 = getelementptr inbounds [2 x i32], ptr %7, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %28 = load i16, ptr @umh_sysctl_lock, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr @umh_sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false)
  %30 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %7, ptr %30, align 4
  %31 = call i32 @proc_doulongvec_minmax(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %55, label %34

33:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/umh.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 511, 0\0A.popsection", ""() #8, !srcloc !26
  unreachable

34:                                               ; preds = %19
  %35 = load i32, ptr %7, align 8
  %36 = load i32, ptr %27, align 4
  br i1 %8, label %55, label %37

37:                                               ; preds = %34
  call void @_raw_spin_lock(ptr noundef nonnull @umh_sysctl_lock) #8
  %38 = load ptr, ptr %14, align 4
  %39 = ptrtoint ptr %38 to i32
  switch i32 %39, label %52 [
    i32 1, label %41
    i32 2, label %40
  ]

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi ptr [ @usermodehelper_inheritable, %40 ], [ @usermodehelper_bset, %37 ]
  %43 = phi ptr [ getelementptr inbounds (%struct.kernel_cap_struct, ptr @usermodehelper_inheritable, i32 0, i32 0, i32 1), %40 ], [ getelementptr inbounds (%struct.kernel_cap_struct, ptr @usermodehelper_bset, i32 0, i32 0, i32 1), %37 ]
  %44 = load i32, ptr %42, align 8
  %45 = load i32, ptr %43, align 4
  %46 = and i32 %35, %44
  %47 = and i32 %36, %45
  %48 = zext i32 %47 to i64
  %49 = shl nuw i64 %48, 32
  %50 = zext i32 %46 to i64
  %51 = or i64 %49, %50
  store i64 %51, ptr %42, align 8
  br label %52

52:                                               ; preds = %41, %37
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %53 = load i16, ptr @umh_sysctl_lock, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr @umh_sysctl_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  br label %55

55:                                               ; preds = %52, %34, %19, %11, %9
  %56 = phi i32 [ -1, %11 ], [ -1, %9 ], [ %31, %19 ], [ 0, %52 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #8
  ret i32 %56
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_thread(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @call_usermodehelper_exec_async(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #8
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 94
  %4 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #8
  tail call void @flush_signal_handlers(ptr noundef %2, i32 noundef 1) #8
  %5 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %6 = load i16, ptr %5, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %8 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 89
  %9 = load ptr, ptr %8, align 64
  %10 = getelementptr inbounds %struct.fs_struct, ptr %9, i32 0, i32 3
  store i32 18, ptr %10, align 4
  tail call void @set_user_nice(ptr noundef %2, i32 noundef 0) #8
  %11 = tail call ptr @prepare_kernel_cred(ptr noundef %2) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %56, label %13

13:                                               ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @umh_sysctl_lock) #8
  %14 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 13
  %15 = load i32, ptr @usermodehelper_bset, align 8
  %16 = load i32, ptr getelementptr inbounds (%struct.kernel_cap_struct, ptr @usermodehelper_bset, i32 0, i32 0, i32 1), align 4
  %17 = load i32, ptr %14, align 4
  %18 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 13, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %17, %15
  %21 = and i32 %19, %16
  %22 = zext i32 %21 to i64
  %23 = shl nuw i64 %22, 32
  %24 = zext i32 %20 to i64
  %25 = or i64 %23, %24
  store i64 %25, ptr %14, align 4
  %26 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 10
  %27 = load i32, ptr @usermodehelper_inheritable, align 8
  %28 = load i32, ptr getelementptr inbounds (%struct.kernel_cap_struct, ptr @usermodehelper_inheritable, i32 0, i32 0, i32 1), align 4
  %29 = load i32, ptr %26, align 4
  %30 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 10, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %29, %27
  %33 = and i32 %31, %28
  %34 = zext i32 %33 to i64
  %35 = shl nuw i64 %34, 32
  %36 = zext i32 %32 to i64
  %37 = or i64 %35, %36
  store i64 %37, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !22
  %38 = load i16, ptr @umh_sysctl_lock, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr @umh_sysctl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !25
  %40 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %13
  %44 = tail call i32 %41(ptr noundef %0, ptr noundef nonnull %11) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @abort_creds(ptr noundef nonnull %11) #8
  br label %56

47:                                               ; preds = %43, %13
  %48 = tail call i32 @commit_creds(ptr noundef nonnull %11) #8
  tail call void @wait_for_initramfs() #8
  %49 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @kernel_execve(ptr noundef %50, ptr noundef %52, ptr noundef %54) #8
  br label %56

56:                                               ; preds = %47, %46, %1
  %57 = phi i32 [ %44, %46 ], [ %55, %47 ], [ -12, %1 ]
  %58 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 6
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #8, !srcloc !12
  %65 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %64) #8, !srcloc !13
  %66 = extractvalue { i32, i32 } %65, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = inttoptr i32 %66 to ptr
  tail call void @complete(ptr noundef nonnull %69) #8
  br label %76

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 8
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void %72(ptr noundef %0) #8
  br label %75

75:                                               ; preds = %74, %70
  tail call void @kfree(ptr noundef %0) #8
  br label %76

76:                                               ; preds = %75, %68, %56
  %77 = icmp eq i32 %57, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %76
  ret i32 0

79:                                               ; preds = %76
  tail call void @do_exit(i32 noundef 0) #10
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_wait(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signal_handlers(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_kernel_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_initramfs() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_execve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { noreturn nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
!11 = !{i64 2154092633}
!12 = !{i64 555187, i64 2148045158, i64 2148045184, i64 2148045231, i64 2148045253, i64 2148045281, i64 2148045301}
!13 = !{i64 563837, i64 563854, i64 563878, i64 563904, i64 563922}
!14 = !{i64 2154092960}
!15 = !{i64 2148056573, i64 2148056599, i64 2148056628, i64 2148056662, i64 2148056693, i64 2148056716}
!16 = !{i64 2154103116}
!17 = !{i64 2154106698}
!18 = !{i64 2154107025}
!19 = !{i64 2148157252}
!20 = !{i64 2148059614, i64 2148059646, i64 2148059675, i64 2148059709, i64 2148059740, i64 2148059763}
!21 = !{i64 2148157455}
!22 = !{i64 2148939712}
!23 = !{i64 2148935536}
!24 = !{i64 2148935611, i64 2148935638, i64 2148935685, i64 2148935707, i64 2148935735, i64 2148935755}
!25 = !{i64 2148962715}
!26 = !{i64 2154114449, i64 2154114926, i64 2154114486, i64 2154114542, i64 2154114576, i64 2154114600, i64 2154114641, i64 2154114662, i64 2154114690, i64 2154114724}
!27 = !{i64 461110}
!28 = !{i64 2148963856}
