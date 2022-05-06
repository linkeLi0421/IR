; ModuleID = '/llk/IR/fs/file.c_pt.bc'
source_filename = "../fs/file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_unused_fd_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22get_unused_fd_flags\22\09\09\09\09\09"
module asm "__kstrtabns_get_unused_fd_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_unused_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22put_unused_fd\22\09\09\09\09\09"
module asm "__kstrtabns_put_unused_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fd_install:\09\09\09\09\09"
module asm "\09.asciz \09\22fd_install\22\09\09\09\09\09"
module asm "__kstrtabns_fd_install:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_close_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22close_fd\22\09\09\09\09\09"
module asm "__kstrtabns_close_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fget:\09\09\09\09\09"
module asm "\09.asciz \09\22fget\22\09\09\09\09\09"
module asm "__kstrtabns_fget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fget_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22fget_raw\22\09\09\09\09\09"
module asm "__kstrtabns_fget_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fdget:\09\09\09\09\09"
module asm "\09.asciz \09\22__fdget\22\09\09\09\09\09"
module asm "__kstrtabns___fdget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_receive_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22receive_fd\22\09\09\09\09\09"
module asm "__kstrtabns_receive_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iterate_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22iterate_fd\22\09\09\09\09\09"
module asm "__kstrtabns_iterate_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, ptr, %struct.fdtable, [12 x i8], %struct.spinlock, i32, [1 x i32], [1 x i32], [1 x i32], [32 x ptr], [44 x i8] }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.fdtable = type { i32, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.127, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.74 }
%struct.llist_node = type { ptr }
%union.anon.74 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.127 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@sysctl_nr_open = dso_local local_unnamed_addr global i32 1048576, section ".data..read_mostly", align 4
@sysctl_nr_open_min = dso_local local_unnamed_addr global i32 32, align 4
@sysctl_nr_open_max = dso_local local_unnamed_addr global i32 1073741792, align 4
@files_cachep = external dso_local local_unnamed_addr global ptr, align 4
@dup_fd.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [19 x i8] c"&newf->resize_wait\00", align 1
@init_files = dso_local global %struct.files_struct { %struct.atomic_t { i32 1 }, i8 0, %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @init_files, i64 12), ptr getelementptr (i8, ptr @init_files, i64 12) } }, ptr getelementptr (i8, ptr @init_files, i64 24), %struct.fdtable { i32 32, ptr getelementptr (i8, ptr @init_files, i64 84), ptr getelementptr (i8, ptr @init_files, i64 72), ptr getelementptr (i8, ptr @init_files, i64 76), ptr getelementptr (i8, ptr @init_files, i64 80), %struct.callback_head zeroinitializer }, [12 x i8] undef, %struct.spinlock zeroinitializer, i32 0, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [32 x ptr] zeroinitializer, [44 x i8] undef }, align 64
@__kstrtab_get_unused_fd_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_unused_fd_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_get_unused_fd_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_unused_fd_flags to i32), ptr @__kstrtab_get_unused_fd_flags, ptr @__kstrtabns_get_unused_fd_flags }, section "___ksymtab+get_unused_fd_flags", align 4
@__kstrtab_put_unused_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_unused_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_put_unused_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_unused_fd to i32), ptr @__kstrtab_put_unused_fd, ptr @__kstrtabns_put_unused_fd }, section "___ksymtab+put_unused_fd", align 4
@__kstrtab_fd_install = external dso_local constant [0 x i8], align 1
@__kstrtabns_fd_install = external dso_local constant [0 x i8], align 1
@__ksymtab_fd_install = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fd_install to i32), ptr @__kstrtab_fd_install, ptr @__kstrtabns_fd_install }, section "___ksymtab+fd_install", align 4
@__kstrtab_close_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_close_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_close_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @close_fd to i32), ptr @__kstrtab_close_fd, ptr @__kstrtabns_close_fd }, section "___ksymtab+close_fd", align 4
@__kstrtab_fget = external dso_local constant [0 x i8], align 1
@__kstrtabns_fget = external dso_local constant [0 x i8], align 1
@__ksymtab_fget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fget to i32), ptr @__kstrtab_fget, ptr @__kstrtabns_fget }, section "___ksymtab+fget", align 4
@__kstrtab_fget_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_fget_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_fget_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fget_raw to i32), ptr @__kstrtab_fget_raw, ptr @__kstrtabns_fget_raw }, section "___ksymtab+fget_raw", align 4
@__kstrtab___fdget = external dso_local constant [0 x i8], align 1
@__kstrtabns___fdget = external dso_local constant [0 x i8], align 1
@__ksymtab___fdget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fdget to i32), ptr @__kstrtab___fdget, ptr @__kstrtabns___fdget }, section "___ksymtab+__fdget", align 4
@__kstrtab_receive_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_receive_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_receive_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @receive_fd to i32), ptr @__kstrtab_receive_fd, ptr @__kstrtabns_receive_fd }, section "___ksymtab_gpl+receive_fd", align 4
@__kstrtab_iterate_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_iterate_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_iterate_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iterate_fd to i32), ptr @__kstrtab_iterate_fd, ptr @__kstrtabns_iterate_fd }, section "___ksymtab+iterate_fd", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"\014alloc_fd: slot %d not NULL!\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab___fdget, ptr @__ksymtab_close_fd, ptr @__ksymtab_fd_install, ptr @__ksymtab_fget, ptr @__ksymtab_fget_raw, ptr @__ksymtab_get_unused_fd_flags, ptr @__ksymtab_iterate_fd, ptr @__ksymtab_put_unused_fd, ptr @__ksymtab_receive_fd], section "llvm.metadata"

@sys_dup3 = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_dup3
@sys_dup2 = dso_local alias i32 (i32, i32), ptr @__se_sys_dup2
@sys_dup = dso_local alias i32 (i32), ptr @__se_sys_dup

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dup_fd(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  store i32 -12, ptr %2, align 4
  %4 = load ptr, ptr @files_cachep, align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3264) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %173, label %7

7:                                                ; preds = %3
  store volatile i32 1, ptr %5, align 8
  %8 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6
  store i32 0, ptr %8, align 64
  %9 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 1
  store i8 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @dup_fd.__key) #10
  %11 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 7
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 4
  store i32 32, ptr %12, align 8
  %13 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 8
  %14 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 4, i32 2
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 9
  %16 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 4, i32 3
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 10
  %18 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 4, i32 4
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 11
  %20 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 4, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %21) #10
  %22 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 3
  %23 = load volatile ptr, ptr %22, align 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, 32
  br i1 %25, label %41, label %26

26:                                               ; preds = %7
  %27 = lshr i32 %24, 5
  %28 = getelementptr inbounds %struct.fdtable, ptr %23, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %30, %26
  %31 = phi i32 [ %32, %30 ], [ %27, %26 ]
  %32 = add nsw i32 %31, -1
  %33 = getelementptr i32, ptr %29, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  %36 = icmp ne i32 %32, 0
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %30, label %38

38:                                               ; preds = %30
  %39 = shl i32 %32, 5
  %40 = add i32 %39, 32
  br label %41

41:                                               ; preds = %38, %7
  %42 = phi i32 [ 32, %7 ], [ %40, %38 ]
  %43 = tail call i32 @llvm.umax.i32(i32 %1, i32 32) #10
  %44 = tail call i32 @llvm.umin.i32(i32 %42, i32 %43) #10
  %45 = load i32, ptr %12, align 8
  %46 = icmp ult i32 %45, %44
  br i1 %46, label %47, label %86, !prof !8

47:                                               ; preds = %81, %41
  %48 = phi i32 [ %83, %81 ], [ %44, %41 ]
  %49 = phi ptr [ %56, %81 ], [ %12, %41 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %50 = load i16, ptr %21, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %52 = icmp eq ptr %49, %12
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  tail call fastcc void @__free_fdtable(ptr noundef %49)
  br label %54

54:                                               ; preds = %53, %47
  %55 = add i32 %48, -1
  %56 = tail call fastcc ptr @alloc_fdtable(i32 noundef %55)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %170, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %56, align 4
  %60 = icmp ult i32 %59, %48
  br i1 %60, label %61, label %62, !prof !8

61:                                               ; preds = %58
  tail call fastcc void @__free_fdtable(ptr noundef nonnull %56)
  br label %170

62:                                               ; preds = %58
  tail call void @_raw_spin_lock(ptr noundef %21) #10
  %63 = load volatile ptr, ptr %22, align 4
  %64 = load i32, ptr %63, align 4
  %65 = icmp ult i32 %64, 32
  br i1 %65, label %81, label %66

66:                                               ; preds = %62
  %67 = lshr i32 %64, 5
  %68 = getelementptr inbounds %struct.fdtable, ptr %63, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  br label %70

70:                                               ; preds = %70, %66
  %71 = phi i32 [ %72, %70 ], [ %67, %66 ]
  %72 = add nsw i32 %71, -1
  %73 = getelementptr i32, ptr %69, i32 %72
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  %76 = icmp ne i32 %72, 0
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %70, label %78

78:                                               ; preds = %70
  %79 = shl i32 %72, 5
  %80 = add i32 %79, 32
  br label %81

81:                                               ; preds = %78, %62
  %82 = phi i32 [ 32, %62 ], [ %80, %78 ]
  %83 = tail call i32 @llvm.umin.i32(i32 %82, i32 %43) #10
  %84 = load i32, ptr %56, align 4
  %85 = icmp ult i32 %84, %83
  br i1 %85, label %47, label %86, !prof !8

86:                                               ; preds = %81, %41
  %87 = phi ptr [ %12, %41 ], [ %56, %81 ]
  %88 = phi ptr [ %23, %41 ], [ %63, %81 ]
  %89 = phi i32 [ %44, %41 ], [ %83, %81 ]
  %90 = phi i32 [ %45, %41 ], [ %84, %81 ]
  %91 = lshr i32 %89, 3
  %92 = sub i32 %90, %89
  %93 = lshr i32 %92, 3
  %94 = getelementptr inbounds %struct.fdtable, ptr %87, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.fdtable, ptr %88, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %95, ptr align 4 %97, i32 %91, i1 false) #10
  %98 = load ptr, ptr %94, align 4
  %99 = getelementptr i8, ptr %98, i32 %91
  tail call void @llvm.memset.p0.i32(ptr align 1 %99, i8 0, i32 %93, i1 false) #10
  %100 = getelementptr inbounds %struct.fdtable, ptr %87, i32 0, i32 2
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.fdtable, ptr %88, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %101, ptr align 4 %103, i32 %91, i1 false) #10
  %104 = load ptr, ptr %100, align 4
  %105 = getelementptr i8, ptr %104, i32 %91
  tail call void @llvm.memset.p0.i32(ptr align 1 %105, i8 0, i32 %93, i1 false) #10
  %106 = add i32 %89, 31
  %107 = lshr i32 %106, 5
  %108 = add nuw nsw i32 %107, 31
  %109 = lshr i32 %108, 3
  %110 = and i32 %109, 33554428
  %111 = load i32, ptr %87, align 4
  %112 = add i32 %111, 31
  %113 = lshr i32 %112, 5
  %114 = add nuw nsw i32 %113, 31
  %115 = lshr i32 %114, 3
  %116 = and i32 %115, 33554428
  %117 = sub nsw i32 %116, %110
  %118 = getelementptr inbounds %struct.fdtable, ptr %87, i32 0, i32 4
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.fdtable, ptr %88, i32 0, i32 4
  %121 = load ptr, ptr %120, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %119, ptr align 4 %121, i32 %110, i1 false) #10
  %122 = load ptr, ptr %118, align 4
  %123 = getelementptr i8, ptr %122, i32 %110
  tail call void @llvm.memset.p0.i32(ptr align 1 %123, i8 0, i32 %117, i1 false) #10
  %124 = getelementptr inbounds %struct.fdtable, ptr %87, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq i32 %89, 0
  br i1 %126, label %162, label %127

127:                                              ; preds = %86
  %128 = getelementptr inbounds %struct.fdtable, ptr %88, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  br label %130

130:                                              ; preds = %158, %127
  %131 = phi ptr [ %134, %158 ], [ %129, %127 ]
  %132 = phi ptr [ %159, %158 ], [ %125, %127 ]
  %133 = phi i32 [ %160, %158 ], [ %89, %127 ]
  %134 = getelementptr ptr, ptr %131, i32 1
  %135 = load ptr, ptr %131, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.file, ptr %135, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %138) #10, !srcloc !13
  %139 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %138, ptr %138, i32 1, ptr elementtype(i32) %138) #10, !srcloc !14
  br label %158

140:                                              ; preds = %130
  %141 = sub nuw i32 %89, %133
  %142 = load ptr, ptr %94, align 4
  %143 = and i32 %141, 31
  %144 = shl nuw i32 1, %143
  %145 = lshr i32 %141, 5
  %146 = getelementptr i32, ptr %142, i32 %145
  %147 = xor i32 %144, -1
  %148 = load i32, ptr %146, align 4
  %149 = and i32 %148, %147
  store i32 %149, ptr %146, align 4
  %150 = load ptr, ptr %118, align 4
  %151 = and i32 %145, 31
  %152 = shl nuw i32 1, %151
  %153 = lshr i32 %141, 10
  %154 = getelementptr i32, ptr %150, i32 %153
  %155 = xor i32 %152, -1
  %156 = load i32, ptr %154, align 4
  %157 = and i32 %156, %155
  store i32 %157, ptr %154, align 4
  br label %158

158:                                              ; preds = %140, %137
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %159 = getelementptr ptr, ptr %132, i32 1
  store volatile ptr %135, ptr %132, align 4
  %160 = add i32 %133, -1
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %130

162:                                              ; preds = %158, %86
  %163 = phi ptr [ %125, %86 ], [ %159, %158 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %164 = load i16, ptr %21, align 4
  %165 = add i16 %164, 1
  store i16 %165, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %166 = load i32, ptr %87, align 4
  %167 = sub i32 %166, %89
  %168 = shl i32 %167, 2
  tail call void @llvm.memset.p0.i32(ptr align 4 %163, i8 0, i32 %168, i1 false)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  %169 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  store volatile ptr %87, ptr %169, align 4
  br label %173

170:                                              ; preds = %61, %54
  %171 = phi i32 [ -24, %61 ], [ -12, %54 ]
  store i32 %171, ptr %2, align 4
  %172 = load ptr, ptr @files_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %172, ptr noundef nonnull %5) #10
  br label %173

173:                                              ; preds = %170, %162, %3
  %174 = phi ptr [ %5, %162 ], [ null, %3 ], [ null, %170 ]
  ret ptr %174
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__free_fdtable(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fdtable, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @kvfree(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.fdtable, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @kvfree(ptr noundef %5) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_fdtable(i32 noundef %0) unnamed_addr #0 {
  %2 = icmp ult i32 %0, 256
  %3 = lshr i32 %0, 8
  %4 = tail call i32 @llvm.ctlz.i32(i32 %3, i1 false) #10, !range !17
  %5 = sub nuw nsw i32 32, %4
  %6 = shl i32 256, %5
  %7 = select i1 %2, i32 256, i32 %6
  %8 = load i32, ptr @sysctl_nr_open, align 4
  %9 = icmp ugt i32 %7, %8
  br i1 %9, label %10, label %14, !prof !8

10:                                               ; preds = %1
  %11 = add i32 %8, -1
  %12 = or i32 %11, 31
  %13 = add i32 %12, 1
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i32 [ %13, %10 ], [ %7, %1 ]
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 4197568, i32 noundef 28) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %14
  store i32 %15, ptr %17, align 8
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 4) #10
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %46, label %22, !prof !8

22:                                               ; preds = %19
  %23 = extractvalue { i32, i1 } %20, 0
  %24 = tail call noalias ptr @kvmalloc_node(i32 noundef %23, i32 noundef 4197568, i32 noundef -1) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.fdtable, ptr %17, i32 0, i32 1
  store ptr %24, ptr %27, align 4
  %28 = lshr i32 %15, 2
  %29 = add nuw nsw i32 %15, 31
  %30 = lshr i32 %29, 5
  %31 = add nuw nsw i32 %30, 31
  %32 = lshr i32 %31, 3
  %33 = and i32 %32, 33554428
  %34 = add nuw nsw i32 %33, %28
  %35 = tail call i32 @llvm.umax.i32(i32 %34, i32 64)
  %36 = tail call noalias ptr @kvmalloc_node(i32 noundef %35, i32 noundef 4197568, i32 noundef -1) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.fdtable, ptr %17, i32 0, i32 3
  store ptr %36, ptr %39, align 4
  %40 = lshr i32 %15, 3
  %41 = getelementptr i8, ptr %36, i32 %40
  %42 = getelementptr inbounds %struct.fdtable, ptr %17, i32 0, i32 2
  store ptr %41, ptr %42, align 8
  %43 = getelementptr i8, ptr %41, i32 %40
  %44 = getelementptr inbounds %struct.fdtable, ptr %17, i32 0, i32 4
  store ptr %43, ptr %44, align 8
  br label %47

45:                                               ; preds = %26
  tail call void @kvfree(ptr noundef nonnull %24) #10
  br label %46

46:                                               ; preds = %45, %22, %19
  tail call void @kfree(ptr noundef nonnull %17) #10
  br label %47

47:                                               ; preds = %46, %38, %14
  %48 = phi ptr [ %17, %38 ], [ null, %14 ], [ null, %46 ]
  ret ptr %48
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_files_struct(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #10, !srcloc !13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #10, !srcloc !19
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %57

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 3
  %7 = load volatile ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 3
  %12 = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 1
  br label %19

13:                                               ; preds = %43
  %14 = load i32, ptr %7, align 4
  br label %15

15:                                               ; preds = %19, %13
  %16 = phi i32 [ %14, %13 ], [ %20, %19 ]
  %17 = shl i32 %24, 5
  %18 = icmp ult i32 %17, %16
  br i1 %18, label %19, label %47

19:                                               ; preds = %15, %10
  %20 = phi i32 [ %8, %10 ], [ %16, %15 ]
  %21 = phi i32 [ 0, %10 ], [ %17, %15 ]
  %22 = phi i32 [ 0, %10 ], [ %24, %15 ]
  %23 = load ptr, ptr %11, align 4
  %24 = add i32 %22, 1
  %25 = getelementptr i32, ptr %23, i32 %22
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %15, label %28

28:                                               ; preds = %43, %19
  %29 = phi i32 [ %44, %43 ], [ %21, %19 ]
  %30 = phi i32 [ %45, %43 ], [ %26, %19 ]
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %12, align 4
  %35 = getelementptr ptr, ptr %34, i32 %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #10, !srcloc !13
  %36 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %35) #10, !srcloc !22
  %37 = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !23
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = inttoptr i32 %37 to ptr
  %41 = tail call i32 @filp_close(ptr noundef nonnull %40, ptr noundef %0) #10
  %42 = tail call i32 @__cond_resched() #10
  br label %43

43:                                               ; preds = %39, %33, %28
  %44 = add i32 %29, 1
  %45 = lshr i32 %30, 1
  %46 = icmp ult i32 %30, 2
  br i1 %46, label %13, label %28

47:                                               ; preds = %15, %5
  %48 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 4
  %49 = icmp eq ptr %7, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  tail call void @kvfree(ptr noundef %52) #10
  %53 = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  tail call void @kvfree(ptr noundef %54) #10
  tail call void @kfree(ptr noundef %7) #10
  br label %55

55:                                               ; preds = %50, %47
  %56 = load ptr, ptr @files_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %56, ptr noundef %0) #10
  br label %57

57:                                               ; preds = %55, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_files(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 90
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %6) #10
  store ptr null, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %7 = load i16, ptr %6, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  tail call void @put_files_struct(ptr noundef nonnull %3)
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__get_unused_fd_flags(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @alloc_fd(i32 noundef 0, i32 noundef %1, i32 noundef %0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alloc_fd(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 90
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.files_struct, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.files_struct, ptr %6, i32 0, i32 3
  %9 = getelementptr inbounds %struct.files_struct, ptr %6, i32 0, i32 7
  br label %10

10:                                               ; preds = %35, %3
  %11 = load volatile ptr, ptr %8, align 4
  %12 = load i32, ptr %9, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 %0)
  %14 = load i32, ptr %11, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = lshr i32 %14, 5
  %18 = lshr i32 %13, 5
  %19 = getelementptr inbounds %struct.fdtable, ptr %11, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @_find_next_zero_bit_le(ptr noundef %20, i32 noundef %17, i32 noundef %18) #10
  %22 = shl i32 %21, 5
  %23 = icmp ugt i32 %22, %14
  br i1 %23, label %29, label %24

24:                                               ; preds = %16
  %25 = tail call i32 @llvm.umax.i32(i32 %22, i32 %13) #10
  %26 = getelementptr inbounds %struct.fdtable, ptr %11, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @_find_next_zero_bit_le(ptr noundef %27, i32 noundef %14, i32 noundef %25) #10
  br label %29

29:                                               ; preds = %24, %16, %10
  %30 = phi i32 [ %13, %10 ], [ %28, %24 ], [ %14, %16 ]
  %31 = icmp ult i32 %30, %1
  br i1 %31, label %32, label %92

32:                                               ; preds = %29
  %33 = tail call fastcc i32 @expand_files(ptr noundef %6, i32 noundef %30)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %92, label %35

35:                                               ; preds = %32
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %37, label %10

37:                                               ; preds = %35
  %38 = load i32, ptr %9, align 4
  %39 = icmp ult i32 %38, %0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = add nuw i32 %30, 1
  store i32 %41, ptr %9, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = getelementptr inbounds %struct.fdtable, ptr %11, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = and i32 %30, 31
  %46 = shl nuw i32 1, %45
  %47 = lshr i32 %30, 5
  %48 = getelementptr i32, ptr %44, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, ptr %48, align 4
  %51 = load ptr, ptr %43, align 4
  %52 = getelementptr i32, ptr %51, i32 %47
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %64

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.fdtable, ptr %11, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = and i32 %47, 31
  %59 = shl nuw i32 1, %58
  %60 = lshr i32 %30, 10
  %61 = getelementptr i32, ptr %57, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %55, %42
  %65 = and i32 %2, 524288
  %66 = icmp eq i32 %65, 0
  %67 = getelementptr inbounds %struct.fdtable, ptr %11, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i32, ptr %68, i32 %47
  br i1 %66, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, ptr %69, align 4
  %72 = or i32 %71, %46
  br label %80

73:                                               ; preds = %64
  %74 = load volatile i32, ptr %69, align 4
  %75 = and i32 %74, %46
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = xor i32 %46, -1
  %79 = and i32 %74, %78
  br label %80

80:                                               ; preds = %77, %70
  %81 = phi i32 [ %79, %77 ], [ %72, %70 ]
  store i32 %81, ptr %69, align 4
  br label %82

82:                                               ; preds = %80, %73
  %83 = getelementptr inbounds %struct.fdtable, ptr %11, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr ptr, ptr %84, i32 %30
  %86 = load volatile ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %30) #13
  %90 = load ptr, ptr %83, align 4
  %91 = getelementptr ptr, ptr %90, i32 %30
  store volatile ptr null, ptr %91, align 4
  br label %92

92:                                               ; preds = %88, %82, %32, %29
  %93 = phi i32 [ %30, %88 ], [ %30, %82 ], [ %33, %32 ], [ -24, %29 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %94 = load i16, ptr %7, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_unused_fd_flags(i32 noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr %struct.signal_struct, ptr %4, i32 0, i32 50, i32 7
  %6 = load volatile i32, ptr %5, align 8
  %7 = tail call fastcc i32 @alloc_fd(i32 noundef 0, i32 noundef %6, i32 noundef %0) #10
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_unused_fd(i32 noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 90
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.files_struct, ptr %4, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.files_struct, ptr %4, i32 0, i32 3
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = and i32 %0, 31
  %11 = shl nuw i32 1, %10
  %12 = lshr i32 %0, 5
  %13 = getelementptr i32, ptr %9, i32 %12
  %14 = xor i32 %11, -1
  %15 = load i32, ptr %13, align 4
  %16 = and i32 %15, %14
  store i32 %16, ptr %13, align 4
  %17 = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = and i32 %12, 31
  %20 = shl nuw i32 1, %19
  %21 = lshr i32 %0, 10
  %22 = getelementptr i32, ptr %18, i32 %21
  %23 = xor i32 %20, -1
  %24 = load i32, ptr %22, align 4
  %25 = and i32 %24, %23
  store i32 %25, ptr %22, align 4
  %26 = getelementptr inbounds %struct.files_struct, ptr %4, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, %0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 %0, ptr %26, align 4
  br label %30

30:                                               ; preds = %29, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %31 = load i16, ptr %5, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fd_install(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #10
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 90
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %6 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 1
  %7 = load i8, ptr %6, align 4, !range !25
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %24, label %9, !prof !26

9:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  %10 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %10) #10
  %11 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fdtable, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr ptr, ptr %14, i32 %0
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !26

18:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 584, 0\0A.popsection", ""() #10, !srcloc !28
  unreachable

19:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !29
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr ptr, ptr %20, i32 %0
  store volatile ptr %1, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %22 = load i16, ptr %10, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %36

24:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !30
  %25 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %26 = load volatile ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.fdtable, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr ptr, ptr %28, i32 %0
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32, !prof !26

32:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 592, 0\0A.popsection", ""() #10, !srcloc !31
  unreachable

33:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !32
  %34 = load ptr, ptr %27, align 4
  %35 = getelementptr ptr, ptr %34, i32 %0
  store volatile ptr %1, ptr %35, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  br label %36

36:                                               ; preds = %33, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @close_fd(i32 noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 90
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.files_struct, ptr %4, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.files_struct, ptr %4, i32 0, i32 3
  %7 = load volatile ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %0
  br i1 %9, label %10, label %40

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr ptr, ptr %12, i32 %0
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %10
  store volatile ptr null, ptr %13, align 4
  %17 = load volatile ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.fdtable, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = and i32 %0, 31
  %21 = shl nuw i32 1, %20
  %22 = lshr i32 %0, 5
  %23 = getelementptr i32, ptr %19, i32 %22
  %24 = xor i32 %21, -1
  %25 = load i32, ptr %23, align 4
  %26 = and i32 %25, %24
  store i32 %26, ptr %23, align 4
  %27 = getelementptr inbounds %struct.fdtable, ptr %17, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = and i32 %22, 31
  %30 = shl nuw i32 1, %29
  %31 = lshr i32 %0, 10
  %32 = getelementptr i32, ptr %28, i32 %31
  %33 = xor i32 %30, -1
  %34 = load i32, ptr %32, align 4
  %35 = and i32 %34, %33
  store i32 %35, ptr %32, align 4
  %36 = getelementptr inbounds %struct.files_struct, ptr %4, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, %0
  br i1 %38, label %39, label %40

39:                                               ; preds = %16
  store i32 %0, ptr %36, align 4
  br label %40

40:                                               ; preds = %39, %16, %10, %1
  %41 = phi ptr [ inttoptr (i32 -22 to ptr), %1 ], [ inttoptr (i32 -9 to ptr), %10 ], [ %14, %16 ], [ %14, %39 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %42 = load i16, ptr %5, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %44 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = tail call i32 @filp_close(ptr noundef nonnull %41, ptr noundef %4) #10
  br label %47

47:                                               ; preds = %45, %40
  %48 = phi i32 [ %46, %45 ], [ -9, %40 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__close_range(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 90
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4
  %8 = and i32 %2, -7
  %9 = icmp ne i32 %8, 0
  %10 = icmp ugt i32 %0, %1
  %11 = or i1 %10, %9
  br i1 %11, label %114, label %12

12:                                               ; preds = %3
  %13 = and i32 %2, 2
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %2, 4
  br i1 %14, label %33, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %19 = getelementptr inbounds %struct.files_struct, ptr %7, i32 0, i32 3
  %20 = load volatile ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -1
  %23 = icmp ugt i32 %22, %1
  %24 = select i1 %23, i32 -1, i32 %0
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %25

25:                                               ; preds = %18, %16
  %26 = phi i32 [ -1, %16 ], [ %24, %18 ]
  %27 = call i32 @unshare_fd(i32 noundef 1024, i32 noundef %26, ptr noundef nonnull %4) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %114

29:                                               ; preds = %25
  %30 = load ptr, ptr %4, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store ptr %7, ptr %4, align 4
  br label %33

33:                                               ; preds = %32, %29, %12
  %34 = phi ptr [ %30, %32 ], [ %7, %29 ], [ %7, %12 ]
  %35 = icmp eq i32 %15, 0
  %36 = getelementptr inbounds %struct.files_struct, ptr %34, i32 0, i32 6
  br i1 %35, label %52, label %37

37:                                               ; preds = %33
  call void @_raw_spin_lock(ptr noundef %36) #10
  %38 = getelementptr inbounds %struct.files_struct, ptr %34, i32 0, i32 3
  %39 = load volatile ptr, ptr %38, align 4
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, -1
  %42 = call i32 @llvm.umin.i32(i32 %41, i32 %1) #10
  %43 = icmp ult i32 %42, %0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.fdtable, ptr %39, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = sub i32 %42, %0
  %48 = add i32 %47, 1
  call void @__bitmap_set(ptr noundef %46, i32 noundef %0, i32 noundef %48) #10
  br label %49

49:                                               ; preds = %44, %37
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %50 = load i16, ptr %36, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %36, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %106

52:                                               ; preds = %33
  %53 = getelementptr inbounds %struct.files_struct, ptr %34, i32 0, i32 3
  %54 = getelementptr inbounds %struct.files_struct, ptr %34, i32 0, i32 7
  br label %55

55:                                               ; preds = %103, %52
  %56 = phi i32 [ %0, %52 ], [ %59, %103 ]
  %57 = icmp ugt i32 %56, %1
  br i1 %57, label %106, label %58

58:                                               ; preds = %55
  %59 = add i32 %56, 1
  call void @_raw_spin_lock(ptr noundef %36) #10
  %60 = load volatile ptr, ptr %53, align 4
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %61, %56
  br i1 %62, label %63, label %92

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.fdtable, ptr %60, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr ptr, ptr %65, i32 %56
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %92, label %69

69:                                               ; preds = %63
  store volatile ptr null, ptr %66, align 4
  %70 = load volatile ptr, ptr %53, align 4
  %71 = getelementptr inbounds %struct.fdtable, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = and i32 %56, 31
  %74 = shl nuw i32 1, %73
  %75 = lshr i32 %56, 5
  %76 = getelementptr i32, ptr %72, i32 %75
  %77 = xor i32 %74, -1
  %78 = load i32, ptr %76, align 4
  %79 = and i32 %78, %77
  store i32 %79, ptr %76, align 4
  %80 = getelementptr inbounds %struct.fdtable, ptr %70, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = and i32 %75, 31
  %83 = shl nuw i32 1, %82
  %84 = lshr i32 %56, 10
  %85 = getelementptr i32, ptr %81, i32 %84
  %86 = xor i32 %83, -1
  %87 = load i32, ptr %85, align 4
  %88 = and i32 %87, %86
  store i32 %88, ptr %85, align 4
  %89 = load i32, ptr %54, align 4
  %90 = icmp ugt i32 %89, %56
  br i1 %90, label %91, label %92

91:                                               ; preds = %69
  store i32 %56, ptr %54, align 4
  br label %92

92:                                               ; preds = %91, %69, %63, %58
  %93 = phi ptr [ inttoptr (i32 -22 to ptr), %58 ], [ inttoptr (i32 -9 to ptr), %63 ], [ %67, %69 ], [ %67, %91 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %94 = load i16, ptr %36, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %36, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %96 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = call i32 @filp_close(ptr noundef nonnull %93, ptr noundef %34) #10
  %99 = call i32 @__cond_resched() #10
  br label %103

100:                                              ; preds = %92
  %101 = icmp eq ptr %93, inttoptr (i32 -22 to ptr)
  %102 = zext i1 %101 to i32
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi i32 [ 2, %97 ], [ %102, %100 ]
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %55

106:                                              ; preds = %103, %55, %49
  %107 = load ptr, ptr %4, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 107
  call void @_raw_spin_lock(ptr noundef %110) #10
  store ptr %34, ptr %6, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %111 = load i16, ptr %110, align 4
  %112 = add i16 %111, 1
  store i16 %112, ptr %110, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %113 = load ptr, ptr %4, align 4
  call void @put_files_struct(ptr noundef %113)
  br label %114

114:                                              ; preds = %109, %106, %25, %3
  %115 = phi i32 [ -22, %3 ], [ 0, %109 ], [ 0, %106 ], [ %27, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unshare_fd(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__close_fd_get_file(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #10
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 90
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %7 = load volatile ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %0
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr ptr, ptr %12, i32 %0
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %10
  store volatile ptr null, ptr %13, align 4
  %17 = load volatile ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.fdtable, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = and i32 %0, 31
  %21 = shl nuw i32 1, %20
  %22 = lshr i32 %0, 5
  %23 = getelementptr i32, ptr %19, i32 %22
  %24 = xor i32 %21, -1
  %25 = load i32, ptr %23, align 4
  %26 = and i32 %25, %24
  store i32 %26, ptr %23, align 4
  %27 = getelementptr inbounds %struct.fdtable, ptr %17, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = and i32 %22, 31
  %30 = shl nuw i32 1, %29
  %31 = lshr i32 %0, 10
  %32 = getelementptr i32, ptr %28, i32 %31
  %33 = xor i32 %30, -1
  %34 = load i32, ptr %32, align 4
  %35 = and i32 %34, %33
  store i32 %35, ptr %32, align 4
  %36 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, %0
  br i1 %38, label %39, label %40

39:                                               ; preds = %16
  store i32 %0, ptr %36, align 4
  br label %40

40:                                               ; preds = %39, %16
  %41 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #10, !srcloc !13
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #10, !srcloc !14
  br label %43

43:                                               ; preds = %40, %10, %2
  %44 = phi ptr [ %14, %40 ], [ null, %10 ], [ null, %2 ]
  %45 = phi i32 [ 0, %40 ], [ -2, %10 ], [ -2, %2 ]
  store ptr %44, ptr %1, align 4
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @close_fd_get_file(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #10
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 90
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %6) #10
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.files_struct, ptr %7, i32 0, i32 3
  %9 = load volatile ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %0
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.fdtable, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr ptr, ptr %14, i32 %0
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %45, label %18

18:                                               ; preds = %12
  store volatile ptr null, ptr %15, align 4
  %19 = load volatile ptr, ptr %8, align 4
  %20 = getelementptr inbounds %struct.fdtable, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = and i32 %0, 31
  %23 = shl nuw i32 1, %22
  %24 = lshr i32 %0, 5
  %25 = getelementptr i32, ptr %21, i32 %24
  %26 = xor i32 %23, -1
  %27 = load i32, ptr %25, align 4
  %28 = and i32 %27, %26
  store i32 %28, ptr %25, align 4
  %29 = getelementptr inbounds %struct.fdtable, ptr %19, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = and i32 %24, 31
  %32 = shl nuw i32 1, %31
  %33 = lshr i32 %0, 10
  %34 = getelementptr i32, ptr %30, i32 %33
  %35 = xor i32 %32, -1
  %36 = load i32, ptr %34, align 4
  %37 = and i32 %36, %35
  store i32 %37, ptr %34, align 4
  %38 = getelementptr inbounds %struct.files_struct, ptr %7, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, %0
  br i1 %40, label %41, label %42

41:                                               ; preds = %18
  store i32 %0, ptr %38, align 4
  br label %42

42:                                               ; preds = %41, %18
  %43 = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #10, !srcloc !13
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #10, !srcloc !14
  br label %45

45:                                               ; preds = %42, %12, %2
  %46 = phi ptr [ %16, %42 ], [ null, %12 ], [ null, %2 ]
  %47 = phi i32 [ 0, %42 ], [ -2, %12 ], [ -2, %2 ]
  store ptr %46, ptr %1, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %48 = load i16, ptr %6, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_close_on_exec(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 3
  %4 = load volatile ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %68, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 7
  br label %9

9:                                                ; preds = %62, %7
  %10 = phi ptr [ %4, %7 ], [ %65, %62 ]
  %11 = phi i32 [ 0, %7 ], [ %64, %62 ]
  %12 = phi i32 [ 0, %7 ], [ %63, %62 ]
  %13 = getelementptr inbounds %struct.fdtable, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i32, ptr %14, i32 %12
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %62, label %18

18:                                               ; preds = %9
  store i32 0, ptr %15, align 4
  %19 = getelementptr inbounds %struct.fdtable, ptr %10, i32 0, i32 1
  br label %20

20:                                               ; preds = %58, %18
  %21 = phi i32 [ %16, %18 ], [ %60, %58 ]
  %22 = phi i32 [ %11, %18 ], [ %59, %58 ]
  %23 = and i32 %21, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr ptr, ptr %26, i32 %22
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %58, label %30

30:                                               ; preds = %25
  store volatile ptr null, ptr %27, align 4
  %31 = load volatile ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.fdtable, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = and i32 %22, 31
  %35 = shl nuw i32 1, %34
  %36 = lshr i32 %22, 5
  %37 = getelementptr i32, ptr %33, i32 %36
  %38 = xor i32 %35, -1
  %39 = load i32, ptr %37, align 4
  %40 = and i32 %39, %38
  store i32 %40, ptr %37, align 4
  %41 = getelementptr inbounds %struct.fdtable, ptr %31, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = and i32 %36, 31
  %44 = shl nuw i32 1, %43
  %45 = lshr i32 %22, 10
  %46 = getelementptr i32, ptr %42, i32 %45
  %47 = xor i32 %44, -1
  %48 = load i32, ptr %46, align 4
  %49 = and i32 %48, %47
  store i32 %49, ptr %46, align 4
  %50 = load i32, ptr %8, align 4
  %51 = icmp ugt i32 %50, %22
  br i1 %51, label %52, label %53

52:                                               ; preds = %30
  store i32 %22, ptr %8, align 4
  br label %53

53:                                               ; preds = %52, %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %54 = load i16, ptr %2, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %56 = tail call i32 @filp_close(ptr noundef nonnull %28, ptr noundef %0) #10
  %57 = tail call i32 @__cond_resched() #10
  tail call void @_raw_spin_lock(ptr noundef %2) #10
  br label %58

58:                                               ; preds = %53, %25, %20
  %59 = add i32 %22, 1
  %60 = lshr i32 %21, 1
  %61 = icmp ult i32 %21, 2
  br i1 %61, label %62, label %20

62:                                               ; preds = %58, %9
  %63 = add i32 %12, 1
  %64 = shl i32 %63, 5
  %65 = load volatile ptr, ptr %3, align 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %9, label %68

68:                                               ; preds = %62, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %69 = load i16, ptr %2, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fget_many(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #10
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 90
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %6 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %7 = load volatile ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %0
  br i1 %9, label %10, label %41, !prof !26

10:                                               ; preds = %37, %2
  %11 = phi i32 [ %39, %37 ], [ %8, %2 ]
  %12 = phi ptr [ %38, %37 ], [ %7, %2 ]
  %13 = getelementptr inbounds %struct.fdtable, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 %11) #10, !srcloc !35
  %16 = and i32 %15, %0
  %17 = getelementptr ptr, ptr %14, i32 %16
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20, !prof !8

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 16384
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %41, !prof !26

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #10, !srcloc !13
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 0, i32 %1, ptr elementtype(i32) %26) #10, !srcloc !37
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !38
  %31 = load volatile ptr, ptr %6, align 4
  %32 = icmp eq ptr %31, %12
  br i1 %32, label %33, label %36, !prof !26

33:                                               ; preds = %30
  %34 = load volatile ptr, ptr %17, align 4
  %35 = icmp eq ptr %34, %18
  br i1 %35, label %41, label %36, !prof !26

36:                                               ; preds = %33, %30
  tail call void @fput_many(ptr noundef nonnull %18, i32 noundef %1) #10
  br label %37

37:                                               ; preds = %36, %25
  %38 = load volatile ptr, ptr %6, align 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp ugt i32 %39, %0
  br i1 %40, label %10, label %41, !prof !26

41:                                               ; preds = %37, %33, %20, %10, %2
  %42 = phi ptr [ null, %2 ], [ %18, %33 ], [ null, %20 ], [ null, %10 ], [ null, %37 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fget(i32 noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 90
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %5 = getelementptr inbounds %struct.files_struct, ptr %4, i32 0, i32 3
  %6 = load volatile ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %0
  br i1 %8, label %9, label %40, !prof !26

9:                                                ; preds = %36, %1
  %10 = phi i32 [ %38, %36 ], [ %7, %1 ]
  %11 = phi ptr [ %37, %36 ], [ %6, %1 ]
  %12 = getelementptr inbounds %struct.fdtable, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 %10) #10, !srcloc !35
  %15 = and i32 %14, %0
  %16 = getelementptr ptr, ptr %13, i32 %15
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19, !prof !8

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 8
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 16384
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %40, !prof !26

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #10, !srcloc !13
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 0, i32 1, ptr elementtype(i32) %25) #10, !srcloc !37
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !38
  %30 = load volatile ptr, ptr %5, align 4
  %31 = icmp eq ptr %30, %11
  br i1 %31, label %32, label %35, !prof !26

32:                                               ; preds = %29
  %33 = load volatile ptr, ptr %16, align 4
  %34 = icmp eq ptr %33, %17
  br i1 %34, label %40, label %35, !prof !26

35:                                               ; preds = %32, %29
  tail call void @fput_many(ptr noundef nonnull %17, i32 noundef 1) #10
  br label %36

36:                                               ; preds = %35, %24
  %37 = load volatile ptr, ptr %5, align 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, %0
  br i1 %39, label %9, label %40, !prof !26

40:                                               ; preds = %36, %32, %19, %9, %1
  %41 = phi ptr [ null, %1 ], [ %17, %32 ], [ null, %19 ], [ null, %9 ], [ null, %36 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fget_raw(i32 noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 90
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %5 = getelementptr inbounds %struct.files_struct, ptr %4, i32 0, i32 3
  %6 = load volatile ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %0
  br i1 %8, label %9, label %35, !prof !26

9:                                                ; preds = %31, %1
  %10 = phi i32 [ %33, %31 ], [ %7, %1 ]
  %11 = phi ptr [ %32, %31 ], [ %6, %1 ]
  %12 = getelementptr inbounds %struct.fdtable, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 %10) #10, !srcloc !35
  %15 = and i32 %14, %0
  %16 = getelementptr ptr, ptr %13, i32 %15
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19, !prof !8

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #10, !srcloc !13
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 0, i32 1, ptr elementtype(i32) %20) #10, !srcloc !37
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !38
  %25 = load volatile ptr, ptr %5, align 4
  %26 = icmp eq ptr %25, %11
  br i1 %26, label %27, label %30, !prof !26

27:                                               ; preds = %24
  %28 = load volatile ptr, ptr %16, align 4
  %29 = icmp eq ptr %28, %17
  br i1 %29, label %35, label %30, !prof !26

30:                                               ; preds = %27, %24
  tail call void @fput_many(ptr noundef nonnull %17, i32 noundef 1) #10
  br label %31

31:                                               ; preds = %30, %19
  %32 = load volatile ptr, ptr %5, align 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %33, %0
  br i1 %34, label %9, label %35, !prof !26

35:                                               ; preds = %31, %27, %9, %1
  %36 = phi ptr [ null, %1 ], [ %17, %27 ], [ null, %9 ], [ null, %31 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fget_task(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 90
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %8 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %9 = load volatile ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %38, !prof !26

12:                                               ; preds = %34, %7
  %13 = phi i32 [ %36, %34 ], [ %10, %7 ]
  %14 = phi ptr [ %35, %34 ], [ %9, %7 ]
  %15 = getelementptr inbounds %struct.fdtable, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %1, i32 %13) #10, !srcloc !35
  %18 = and i32 %17, %1
  %19 = getelementptr ptr, ptr %16, i32 %18
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22, !prof !8

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #10, !srcloc !13
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 0, i32 1, ptr elementtype(i32) %23) #10, !srcloc !37
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !38
  %28 = load volatile ptr, ptr %8, align 4
  %29 = icmp eq ptr %28, %14
  br i1 %29, label %30, label %33, !prof !26

30:                                               ; preds = %27
  %31 = load volatile ptr, ptr %19, align 4
  %32 = icmp eq ptr %31, %20
  br i1 %32, label %38, label %33, !prof !26

33:                                               ; preds = %30, %27
  tail call void @fput_many(ptr noundef nonnull %20, i32 noundef 1) #10
  br label %34

34:                                               ; preds = %33, %22
  %35 = load volatile ptr, ptr %8, align 4
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, %1
  br i1 %37, label %12, label %38, !prof !26

38:                                               ; preds = %34, %30, %12, %7
  %39 = phi ptr [ null, %7 ], [ null, %34 ], [ null, %12 ], [ %20, %30 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %40

40:                                               ; preds = %38, %2
  %41 = phi ptr [ %39, %38 ], [ null, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %42 = load i16, ptr %3, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @task_lookup_fd_rcu(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 90
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %9 = load volatile ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %1, i32 %10) #10, !srcloc !35
  %14 = and i32 %13, %1
  %15 = getelementptr inbounds %struct.fdtable, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr ptr, ptr %16, i32 %14
  %18 = load volatile ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %12, %7, %2
  %20 = phi ptr [ null, %2 ], [ %18, %12 ], [ null, %7 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %21 = load i16, ptr %3, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @task_lookup_next_fd_rcu(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 90
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.files_struct, ptr %6, i32 0, i32 3
  %10 = load volatile ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %3, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %26, %8
  %14 = phi i32 [ %27, %26 ], [ %3, %8 ]
  %15 = load volatile ptr, ptr %9, align 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %14
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %14, i32 %16) #10, !srcloc !35
  %20 = and i32 %19, %14
  %21 = getelementptr inbounds %struct.fdtable, ptr %15, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr ptr, ptr %22, i32 %20
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %18, %13
  %27 = add nuw i32 %14, 1
  %28 = load volatile ptr, ptr %9, align 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %13, label %31

31:                                               ; preds = %26, %18, %8, %2
  %32 = phi ptr [ null, %2 ], [ null, %8 ], [ %24, %18 ], [ null, %26 ]
  %33 = phi i32 [ %3, %2 ], [ %3, %8 ], [ %14, %18 ], [ %27, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %34 = load i16, ptr %4, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  store i32 %33, ptr %1, align 4
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__fdget(i32 noundef %0) #0 {
  %2 = tail call fastcc i32 @__fget_light(i32 noundef %0, i32 noundef 16384)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__fget_light(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #10
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 90
  %5 = load ptr, ptr %4, align 4
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %10 = load volatile ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, %0
  br i1 %12, label %13, label %68

13:                                               ; preds = %8
  %14 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 %11) #10, !srcloc !35
  %15 = and i32 %14, %0
  %16 = getelementptr inbounds %struct.fdtable, ptr %10, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr ptr, ptr %17, i32 %15
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %68, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 8
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, %1
  %25 = icmp eq i32 %24, 0
  %26 = ptrtoint ptr %19 to i32
  %27 = select i1 %25, i32 %26, i32 0, !prof !26
  br label %68

28:                                               ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %29 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %30 = load volatile ptr, ptr %29, align 4
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, %0
  br i1 %32, label %33, label %64, !prof !26

33:                                               ; preds = %60, %28
  %34 = phi i32 [ %62, %60 ], [ %31, %28 ]
  %35 = phi ptr [ %61, %60 ], [ %30, %28 ]
  %36 = getelementptr inbounds %struct.fdtable, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 %34) #10, !srcloc !35
  %39 = and i32 %38, %0
  %40 = getelementptr ptr, ptr %37, i32 %39
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %64, label %43, !prof !8

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.file, ptr %41, i32 0, i32 8
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, %1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %64, !prof !26

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.file, ptr %41, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #10, !srcloc !13
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %49, ptr %49, i32 0, i32 1, ptr elementtype(i32) %49) #10, !srcloc !37
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !38
  %54 = load volatile ptr, ptr %29, align 4
  %55 = icmp eq ptr %54, %35
  br i1 %55, label %56, label %59, !prof !26

56:                                               ; preds = %53
  %57 = load volatile ptr, ptr %40, align 4
  %58 = icmp eq ptr %57, %41
  br i1 %58, label %65, label %59, !prof !26

59:                                               ; preds = %56, %53
  tail call void @fput_many(ptr noundef nonnull %41, i32 noundef 1) #10
  br label %60

60:                                               ; preds = %59, %48
  %61 = load volatile ptr, ptr %29, align 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp ugt i32 %62, %0
  br i1 %63, label %33, label %64, !prof !26

64:                                               ; preds = %60, %43, %33, %28
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %68

65:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  %66 = ptrtoint ptr %41 to i32
  %67 = or i32 %66, 1
  br label %68

68:                                               ; preds = %65, %64, %21, %13, %8
  %69 = phi i32 [ %67, %65 ], [ 0, %13 ], [ %27, %21 ], [ 0, %64 ], [ 0, %8 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__fdget_raw(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @__fget_light(i32 noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__fdget_pos(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @__fget_light(i32 noundef %0, i32 noundef 16384) #10
  %3 = and i32 %2, -4
  %4 = inttoptr i32 %3 to ptr
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 32768
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 6
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = or i32 %2, 2
  %17 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %17) #10
  br label %18

18:                                               ; preds = %15, %11, %6, %1
  %19 = phi i32 [ %16, %15 ], [ %2, %11 ], [ %2, %6 ], [ %2, %1 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__f_unlock_pos(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_close_on_exec(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #10
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 90
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  %10 = getelementptr inbounds %struct.fdtable, ptr %8, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  br i1 %9, label %19, label %12

12:                                               ; preds = %2
  %13 = and i32 %0, 31
  %14 = shl nuw i32 1, %13
  %15 = lshr i32 %0, 5
  %16 = getelementptr i32, ptr %11, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, ptr %16, align 4
  br label %30

19:                                               ; preds = %2
  %20 = lshr i32 %0, 5
  %21 = getelementptr i32, ptr %11, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %0, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = xor i32 %24, -1
  %29 = and i32 %22, %28
  store i32 %29, ptr %21, align 4
  br label %30

30:                                               ; preds = %27, %19, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %31 = load i16, ptr %6, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @get_close_on_exec(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 90
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %5 = getelementptr inbounds %struct.files_struct, ptr %4, i32 0, i32 3
  %6 = load volatile ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fdtable, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = lshr i32 %0, 5
  %10 = getelementptr i32, ptr %8, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %0, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @replace_fd(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 90
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @close_fd(i32 noundef %0)
  br label %25

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr %struct.signal_struct, ptr %12, i32 0, i32 50, i32 7
  %14 = load volatile i32, ptr %13, align 8
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.files_struct, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %17) #10
  %18 = tail call fastcc i32 @expand_files(ptr noundef %6, i32 noundef %0)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %22, label %20, !prof !8

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @do_dup2(ptr noundef %6, ptr noundef nonnull %1, i32 noundef %0, i32 noundef %2)
  br label %25

22:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %23 = load i16, ptr %17, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %25

25:                                               ; preds = %22, %20, %10, %8
  %26 = phi i32 [ %18, %22 ], [ %21, %20 ], [ %9, %8 ], [ -9, %10 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @expand_files(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 3
  %5 = load volatile ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %109, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 2
  br label %12

12:                                               ; preds = %32, %8
  %13 = load i32, ptr @sysctl_nr_open, align 4
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %15, label %109

15:                                               ; preds = %12
  %16 = load i8, ptr %9, align 4, !range !25
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %36, label %18, !prof !26

18:                                               ; preds = %15
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %19 = load i16, ptr %10, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %21 = load i8, ptr %9, align 4, !range !25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !39
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #10
  %24 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %3, i32 noundef 2) #10
  %25 = load i8, ptr %9, align 4, !range !25
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %27, %23
  call void @schedule() #10
  %28 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %3, i32 noundef 2) #10
  %29 = load i8, ptr %9, align 4, !range !25
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %27

31:                                               ; preds = %27, %23
  call void @finish_wait(ptr noundef %11, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #10
  br label %32

32:                                               ; preds = %31, %18
  call void @_raw_spin_lock(ptr noundef %10) #10
  %33 = load volatile ptr, ptr %4, align 4
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %34, %1
  br i1 %35, label %109, label %12

36:                                               ; preds = %15
  store i8 1, ptr %9, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %37 = load i16, ptr %10, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %10, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %39 = call fastcc ptr @alloc_fdtable(i32 noundef %1) #10
  %40 = load volatile i32, ptr %0, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  call void @synchronize_rcu() #10
  br label %43

43:                                               ; preds = %42, %36
  call void @_raw_spin_lock(ptr noundef %10) #10
  %44 = icmp eq ptr %39, null
  br i1 %44, label %107, label %45

45:                                               ; preds = %43
  %46 = load i32, ptr %39, align 4
  %47 = icmp ugt i32 %46, %1
  br i1 %47, label %49, label %48, !prof !26

48:                                               ; preds = %45
  call fastcc void @__free_fdtable(ptr noundef nonnull %39) #10
  br label %107

49:                                               ; preds = %45
  %50 = load volatile ptr, ptr %4, align 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, %1
  br i1 %52, label %53, label %54, !prof !8

53:                                               ; preds = %49
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #10, !srcloc !40
  unreachable

54:                                               ; preds = %49
  %55 = icmp ult i32 %46, %51
  br i1 %55, label %56, label %57, !prof !8

56:                                               ; preds = %54
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 80, 0\0A.popsection", ""() #10, !srcloc !41
  unreachable

57:                                               ; preds = %54
  %58 = shl i32 %51, 2
  %59 = sub i32 %46, %51
  %60 = shl i32 %59, 2
  %61 = getelementptr inbounds %struct.fdtable, ptr %39, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.fdtable, ptr %50, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %62, ptr align 4 %64, i32 %58, i1 false) #10
  %65 = load ptr, ptr %61, align 4
  %66 = getelementptr i8, ptr %65, i32 %58
  call void @llvm.memset.p0.i32(ptr align 1 %66, i8 0, i32 %60, i1 false) #10
  %67 = load i32, ptr %50, align 4
  %68 = lshr i32 %67, 3
  %69 = load i32, ptr %39, align 4
  %70 = sub i32 %69, %67
  %71 = lshr i32 %70, 3
  %72 = getelementptr inbounds %struct.fdtable, ptr %39, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.fdtable, ptr %50, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %73, ptr align 4 %75, i32 %68, i1 false) #10
  %76 = load ptr, ptr %72, align 4
  %77 = getelementptr i8, ptr %76, i32 %68
  call void @llvm.memset.p0.i32(ptr align 1 %77, i8 0, i32 %71, i1 false) #10
  %78 = getelementptr inbounds %struct.fdtable, ptr %39, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.fdtable, ptr %50, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %79, ptr align 4 %81, i32 %68, i1 false) #10
  %82 = load ptr, ptr %78, align 4
  %83 = getelementptr i8, ptr %82, i32 %68
  call void @llvm.memset.p0.i32(ptr align 1 %83, i8 0, i32 %71, i1 false) #10
  %84 = add i32 %67, 31
  %85 = lshr i32 %84, 5
  %86 = add nuw nsw i32 %85, 31
  %87 = lshr i32 %86, 3
  %88 = and i32 %87, 33554428
  %89 = load i32, ptr %39, align 4
  %90 = add i32 %89, 31
  %91 = lshr i32 %90, 5
  %92 = add nuw nsw i32 %91, 31
  %93 = lshr i32 %92, 3
  %94 = and i32 %93, 33554428
  %95 = sub nsw i32 %94, %88
  %96 = getelementptr inbounds %struct.fdtable, ptr %39, i32 0, i32 4
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.fdtable, ptr %50, i32 0, i32 4
  %99 = load ptr, ptr %98, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %97, ptr align 4 %99, i32 %88, i1 false) #10
  %100 = load ptr, ptr %96, align 4
  %101 = getelementptr i8, ptr %100, i32 %88
  call void @llvm.memset.p0.i32(ptr align 1 %101, i8 0, i32 %95, i1 false) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !42
  store volatile ptr %39, ptr %4, align 4
  %102 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 4
  %103 = icmp eq ptr %50, %102
  br i1 %103, label %106, label %104

104:                                              ; preds = %57
  %105 = getelementptr inbounds %struct.fdtable, ptr %50, i32 0, i32 5
  call void @call_rcu(ptr noundef %105, ptr noundef nonnull @free_fdtable_rcu) #10
  br label %106

106:                                              ; preds = %104, %57
  call void asm sideeffect "dmb ishst", "~{memory}"() #10, !srcloc !43
  br label %107

107:                                              ; preds = %106, %48, %43
  %108 = phi i32 [ -24, %48 ], [ 1, %106 ], [ -12, %43 ]
  store i8 0, ptr %9, align 4
  call void @__wake_up(ptr noundef %11, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %109

109:                                              ; preds = %107, %32, %12, %2
  %110 = phi i32 [ %108, %107 ], [ 0, %2 ], [ 1, %32 ], [ -24, %12 ]
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_dup2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 3
  %6 = load volatile ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fdtable, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr ptr, ptr %8, i32 %2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = and i32 %2, 31
  %14 = shl nuw i32 1, %13
  %15 = lshr i32 %2, 5
  br label %26

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.fdtable, ptr %6, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = lshr i32 %2, 5
  %20 = getelementptr i32, ptr %18, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %2, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %16, %12
  %27 = phi i32 [ %15, %12 ], [ %19, %16 ]
  %28 = phi i32 [ %14, %12 ], [ %23, %16 ]
  %29 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #10, !srcloc !13
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #10, !srcloc !14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !44
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr ptr, ptr %31, i32 %2
  store volatile ptr %1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.fdtable, ptr %6, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i32, ptr %34, i32 %27
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, %28
  store i32 %37, ptr %35, align 4
  %38 = load ptr, ptr %33, align 4
  %39 = getelementptr i32, ptr %38, i32 %27
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %51

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.fdtable, ptr %6, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = and i32 %27, 31
  %46 = shl nuw i32 1, %45
  %47 = lshr i32 %2, 10
  %48 = getelementptr i32, ptr %44, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %42, %26
  %52 = and i32 %3, 524288
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %struct.fdtable, ptr %6, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i32, ptr %55, i32 %27
  br i1 %53, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, ptr %56, align 4
  %59 = or i32 %58, %28
  br label %67

60:                                               ; preds = %51
  %61 = load volatile i32, ptr %56, align 4
  %62 = and i32 %61, %28
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = xor i32 %28, -1
  %66 = and i32 %61, %65
  br label %67

67:                                               ; preds = %64, %57
  %68 = phi i32 [ %66, %64 ], [ %59, %57 ]
  store i32 %68, ptr %56, align 4
  br label %69

69:                                               ; preds = %67, %60
  %70 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %71 = load i16, ptr %70, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %70, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br i1 %11, label %79, label %73

73:                                               ; preds = %69
  %74 = tail call i32 @filp_close(ptr noundef nonnull %10, ptr noundef %0) #10
  br label %79

75:                                               ; preds = %16
  %76 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %77 = load i16, ptr %76, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %76, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %79

79:                                               ; preds = %75, %73, %69
  %80 = phi i32 [ -16, %75 ], [ %2, %73 ], [ %2, %69 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__receive_fd(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr %struct.signal_struct, ptr %6, i32 0, i32 50, i32 7
  %8 = load volatile i32, ptr %7, align 8
  %9 = tail call fastcc i32 @alloc_fd(i32 noundef 0, i32 noundef %8, i32 noundef %2) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %87, label %11

11:                                               ; preds = %3
  %12 = icmp eq ptr %1, null
  br i1 %12, label %51, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #14, !srcloc !45
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #10, !srcloc !46
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !47
  %18 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %1, i32 %9, i32 -1090519041) #10, !srcloc !48
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #10, !srcloc !46
  tail call void asm sideeffect "isb ", "~{memory}"() #10, !srcloc !47
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 90
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.files_struct, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %23) #10
  %24 = getelementptr inbounds %struct.files_struct, ptr %22, i32 0, i32 3
  %25 = load volatile ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.fdtable, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = and i32 %9, 31
  %29 = shl nuw i32 1, %28
  %30 = lshr i32 %9, 5
  %31 = getelementptr i32, ptr %27, i32 %30
  %32 = xor i32 %29, -1
  %33 = load i32, ptr %31, align 4
  %34 = and i32 %33, %32
  store i32 %34, ptr %31, align 4
  %35 = getelementptr inbounds %struct.fdtable, ptr %25, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = and i32 %30, 31
  %38 = shl nuw i32 1, %37
  %39 = lshr i32 %9, 10
  %40 = getelementptr i32, ptr %36, i32 %39
  %41 = xor i32 %38, -1
  %42 = load i32, ptr %40, align 4
  %43 = and i32 %42, %41
  store i32 %43, ptr %40, align 4
  %44 = getelementptr inbounds %struct.files_struct, ptr %22, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %45, %9
  br i1 %46, label %47, label %48

47:                                               ; preds = %20
  store i32 %9, ptr %44, align 4
  br label %48

48:                                               ; preds = %47, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %49 = load i16, ptr %23, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %87

51:                                               ; preds = %13, %11
  %52 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #10, !srcloc !13
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #10, !srcloc !14
  %54 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 90
  %55 = load ptr, ptr %54, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %56 = getelementptr inbounds %struct.files_struct, ptr %55, i32 0, i32 1
  %57 = load i8, ptr %56, align 4, !range !25
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %74, label %59, !prof !26

59:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  %60 = getelementptr inbounds %struct.files_struct, ptr %55, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %60) #10
  %61 = getelementptr inbounds %struct.files_struct, ptr %55, i32 0, i32 3
  %62 = load volatile ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.fdtable, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr ptr, ptr %64, i32 %9
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68, !prof !26

68:                                               ; preds = %59
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 584, 0\0A.popsection", ""() #10, !srcloc !28
  unreachable

69:                                               ; preds = %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !29
  %70 = load ptr, ptr %63, align 4
  %71 = getelementptr ptr, ptr %70, i32 %9
  store volatile ptr %0, ptr %71, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %72 = load i16, ptr %60, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %60, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %86

74:                                               ; preds = %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !30
  %75 = getelementptr inbounds %struct.files_struct, ptr %55, i32 0, i32 3
  %76 = load volatile ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.fdtable, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr ptr, ptr %78, i32 %9
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82, !prof !26

82:                                               ; preds = %74
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 592, 0\0A.popsection", ""() #10, !srcloc !31
  unreachable

83:                                               ; preds = %74
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !32
  %84 = load ptr, ptr %77, align 4
  %85 = getelementptr ptr, ptr %84, i32 %9
  store volatile ptr %0, ptr %85, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  br label %86

86:                                               ; preds = %83, %69
  tail call void @__receive_sock(ptr noundef %0) #10
  br label %87

87:                                               ; preds = %86, %48, %3
  %88 = phi i32 [ %18, %48 ], [ %9, %86 ], [ %9, %3 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__receive_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @receive_fd_replace(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 90
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @close_fd(i32 noundef %0) #10
  br label %25

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr %struct.signal_struct, ptr %12, i32 0, i32 50, i32 7
  %14 = load volatile i32, ptr %13, align 8
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.files_struct, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %17) #10
  %18 = tail call fastcc i32 @expand_files(ptr noundef %6, i32 noundef %0) #10
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %22, label %20, !prof !8

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @do_dup2(ptr noundef %6, ptr noundef nonnull %1, i32 noundef %0, i32 noundef %2) #10
  br label %25

22:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %23 = load i16, ptr %17, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %29

25:                                               ; preds = %20, %8
  %26 = phi i32 [ %21, %20 ], [ %9, %8 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void @__receive_sock(ptr noundef %1) #10
  br label %29

29:                                               ; preds = %28, %25, %22, %10
  %30 = phi i32 [ %0, %28 ], [ %26, %25 ], [ -9, %10 ], [ %18, %22 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @receive_fd(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @__receive_fd(ptr noundef %0, ptr noundef null, i32 noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_dup3(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call fastcc i32 @ksys_dup3(i32 noundef %0, i32 noundef %1, i32 noundef %2) #10
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_dup2(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, %0
  br i1 %3, label %4, label %23, !prof !8

4:                                                ; preds = %2
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 90
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %8 = getelementptr inbounds %struct.files_struct, ptr %7, i32 0, i32 3
  %9 = load volatile ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %1, i32 %10) #10, !srcloc !35
  %14 = and i32 %13, %1
  %15 = getelementptr inbounds %struct.fdtable, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr ptr, ptr %16, i32 %14
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, i32 -9, i32 %1
  br label %21

21:                                               ; preds = %12, %4
  %22 = phi i32 [ %20, %12 ], [ -9, %4 ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %25

23:                                               ; preds = %2
  %24 = tail call fastcc i32 @ksys_dup3(i32 noundef %0, i32 noundef %1, i32 noundef 0) #10
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_dup(i32 noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #10
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 90
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %5 = getelementptr inbounds %struct.files_struct, ptr %4, i32 0, i32 3
  %6 = load volatile ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %0
  br i1 %8, label %9, label %35, !prof !26

9:                                                ; preds = %31, %1
  %10 = phi i32 [ %33, %31 ], [ %7, %1 ]
  %11 = phi ptr [ %32, %31 ], [ %6, %1 ]
  %12 = getelementptr inbounds %struct.fdtable, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 %10) #10, !srcloc !35
  %15 = and i32 %14, %0
  %16 = getelementptr ptr, ptr %13, i32 %15
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19, !prof !8

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #10, !srcloc !13
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 0, i32 1, ptr elementtype(i32) %20) #10, !srcloc !37
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !38
  %25 = load volatile ptr, ptr %5, align 4
  %26 = icmp eq ptr %25, %11
  br i1 %26, label %27, label %30, !prof !26

27:                                               ; preds = %24
  %28 = load volatile ptr, ptr %16, align 4
  %29 = icmp eq ptr %28, %17
  br i1 %29, label %36, label %30, !prof !26

30:                                               ; preds = %27, %24
  tail call void @fput_many(ptr noundef nonnull %17, i32 noundef 1) #10
  br label %31

31:                                               ; preds = %30, %19
  %32 = load volatile ptr, ptr %5, align 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %33, %0
  br i1 %34, label %9, label %35, !prof !26

35:                                               ; preds = %31, %9, %1
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  br label %76

36:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  %37 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %38 = load ptr, ptr %37, align 16
  %39 = getelementptr %struct.signal_struct, ptr %38, i32 0, i32 50, i32 7
  %40 = load volatile i32, ptr %39, align 8
  %41 = tail call fastcc i32 @alloc_fd(i32 noundef 0, i32 noundef %40, i32 noundef 0) #10
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %75

43:                                               ; preds = %36
  %44 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %45 = getelementptr inbounds %struct.files_struct, ptr %44, i32 0, i32 1
  %46 = load i8, ptr %45, align 4, !range !25
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %63, label %48, !prof !26

48:                                               ; preds = %43
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  %49 = getelementptr inbounds %struct.files_struct, ptr %44, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %49) #10
  %50 = getelementptr inbounds %struct.files_struct, ptr %44, i32 0, i32 3
  %51 = load volatile ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.fdtable, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr ptr, ptr %53, i32 %41
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57, !prof !26

57:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 584, 0\0A.popsection", ""() #10, !srcloc !28
  unreachable

58:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !29
  %59 = load ptr, ptr %52, align 4
  %60 = getelementptr ptr, ptr %59, i32 %41
  store volatile ptr %17, ptr %60, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %61 = load i16, ptr %49, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %49, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %76

63:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !30
  %64 = getelementptr inbounds %struct.files_struct, ptr %44, i32 0, i32 3
  %65 = load volatile ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.fdtable, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr ptr, ptr %67, i32 %41
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71, !prof !26

71:                                               ; preds = %63
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 592, 0\0A.popsection", ""() #10, !srcloc !31
  unreachable

72:                                               ; preds = %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !32
  %73 = load ptr, ptr %66, align 4
  %74 = getelementptr ptr, ptr %73, i32 %41
  store volatile ptr %17, ptr %74, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  br label %76

75:                                               ; preds = %36
  tail call void @fput(ptr noundef nonnull %17) #10
  br label %76

76:                                               ; preds = %75, %72, %58, %35
  %77 = phi i32 [ %41, %75 ], [ -9, %35 ], [ %41, %58 ], [ %41, %72 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @f_dupfd(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr %struct.signal_struct, ptr %6, i32 0, i32 50, i32 7
  %8 = load volatile i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, %0
  br i1 %9, label %10, label %48

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @alloc_fd(i32 noundef %0, i32 noundef %8, i32 noundef %2)
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %48

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #10, !srcloc !13
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #10, !srcloc !14
  %16 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 90
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %18 = getelementptr inbounds %struct.files_struct, ptr %17, i32 0, i32 1
  %19 = load i8, ptr %18, align 4, !range !25
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %36, label %21, !prof !26

21:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  %22 = getelementptr inbounds %struct.files_struct, ptr %17, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %22) #10
  %23 = getelementptr inbounds %struct.files_struct, ptr %17, i32 0, i32 3
  %24 = load volatile ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.fdtable, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr ptr, ptr %26, i32 %11
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !26

30:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 584, 0\0A.popsection", ""() #10, !srcloc !28
  unreachable

31:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !29
  %32 = load ptr, ptr %25, align 4
  %33 = getelementptr ptr, ptr %32, i32 %11
  store volatile ptr %1, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %34 = load i16, ptr %22, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %48

36:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !30
  %37 = getelementptr inbounds %struct.files_struct, ptr %17, i32 0, i32 3
  %38 = load volatile ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.fdtable, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr ptr, ptr %40, i32 %11
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44, !prof !26

44:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 592, 0\0A.popsection", ""() #10, !srcloc !31
  unreachable

45:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !32
  %46 = load ptr, ptr %39, align 4
  %47 = getelementptr ptr, ptr %46, i32 %11
  store volatile ptr %1, ptr %47, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  br label %48

48:                                               ; preds = %45, %31, %10, %3
  %49 = phi i32 [ -22, %3 ], [ %11, %10 ], [ %11, %31 ], [ %11, %45 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iterate_fd(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.files_struct, ptr %0, i32 0, i32 3
  %9 = load volatile ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.fdtable, ptr %9, i32 0, i32 1
  br label %14

14:                                               ; preds = %26, %12
  %15 = phi i32 [ %10, %12 ], [ %27, %26 ]
  %16 = phi i32 [ %1, %12 ], [ %28, %26 ]
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr ptr, ptr %17, i32 %16
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = tail call i32 %2(ptr noundef %3, ptr noundef nonnull %19, i32 noundef %16) #10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, ptr %9, align 4
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi i32 [ %25, %24 ], [ %15, %14 ]
  %28 = add nuw i32 %16, 1
  %29 = icmp ult i32 %28, %27
  br i1 %29, label %14, label %30

30:                                               ; preds = %26, %21, %6
  %31 = phi i32 [ 0, %6 ], [ %22, %21 ], [ 0, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %32 = load i16, ptr %7, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %34

34:                                               ; preds = %30, %4
  %35 = phi i32 [ %31, %30 ], [ 0, %4 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput_many(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @free_fdtable_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load ptr, ptr %3, align 4
  tail call void @kvfree(ptr noundef %4) #10
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  tail call void @kvfree(ptr noundef %6) #10
  tail call void @kfree(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ksys_dup3(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 90
  %6 = load ptr, ptr %5, align 4
  %7 = and i32 %2, -524289
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq i32 %0, %1
  %10 = or i1 %9, %8
  br i1 %10, label %43, label %11, !prof !49

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr %struct.signal_struct, ptr %13, i32 0, i32 50, i32 7
  %15 = load volatile i32, ptr %14, align 8
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.files_struct, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %18) #10
  %19 = tail call fastcc i32 @expand_files(ptr noundef %6, i32 noundef %1)
  %20 = getelementptr inbounds %struct.files_struct, ptr %6, i32 0, i32 3
  %21 = load volatile ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, %0
  br i1 %23, label %24, label %38

24:                                               ; preds = %17
  %25 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %0, i32 %22) #10, !srcloc !35
  %26 = and i32 %25, %0
  %27 = getelementptr inbounds %struct.fdtable, ptr %21, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr ptr, ptr %28, i32 %26
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32, !prof !8

32:                                               ; preds = %24
  %33 = icmp slt i32 %19, 0
  br i1 %33, label %34, label %36, !prof !8

34:                                               ; preds = %32
  %35 = icmp eq i32 %19, -24
  br i1 %35, label %38, label %39

36:                                               ; preds = %32
  %37 = tail call fastcc i32 @do_dup2(ptr noundef %6, ptr noundef nonnull %30, i32 noundef %1, i32 noundef %2)
  br label %43

38:                                               ; preds = %34, %24, %17
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ -9, %38 ], [ %19, %34 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %41 = load i16, ptr %18, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %43

43:                                               ; preds = %39, %36, %11, %3
  %44 = phi i32 [ %40, %39 ], [ %37, %36 ], [ -22, %3 ], [ -9, %11 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2149086153}
!10 = !{i64 2149081977}
!11 = !{i64 2149082052, i64 2149082079, i64 2149082126, i64 2149082148, i64 2149082176, i64 2149082196}
!12 = !{i64 2149109156}
!13 = !{i64 917549, i64 2148407520, i64 2148407546, i64 2148407593, i64 2148407615, i64 2148407643, i64 2148407663}
!14 = !{i64 2148418935, i64 2148418961, i64 2148418990, i64 2148419024, i64 2148419055, i64 2148419078}
!15 = !{i64 2155889460}
!16 = !{i64 2155896688}
!17 = !{i32 0, i32 33}
!18 = !{i64 2148519614}
!19 = !{i64 2148421976, i64 2148422008, i64 2148422037, i64 2148422071, i64 2148422102, i64 2148422125}
!20 = !{i64 2148519817}
!21 = !{i64 2155903086}
!22 = !{i64 926199, i64 926216, i64 926240, i64 926266, i64 926284}
!23 = !{i64 2155903413}
!24 = !{i64 2149247433}
!25 = !{i8 0, i8 2}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2149248055}
!28 = !{i64 2155935206, i64 2155935680, i64 2155935243, i64 2155935299, i64 2155935333, i64 2155935357, i64 2155935398, i64 2155935419, i64 2155935447, i64 2155935481}
!29 = !{i64 2155940910}
!30 = !{i64 2155943408}
!31 = !{i64 2155947448, i64 2155947922, i64 2155947485, i64 2155947541, i64 2155947575, i64 2155947599, i64 2155947640, i64 2155947661, i64 2155947689, i64 2155947723}
!32 = !{i64 2155953152}
!33 = !{i64 2149238857}
!34 = !{i64 2149239074}
!35 = !{i64 559929, i64 559946, i64 2148044016}
!36 = !{i64 2148418442}
!37 = !{i64 904118, i64 904143, i64 904165, i64 904181, i64 904193, i64 904213, i64 904237, i64 904253, i64 904265}
!38 = !{i64 2148418568}
!39 = !{!"auto-init"}
!40 = !{i64 2155859365, i64 2155859839, i64 2155859402, i64 2155859458, i64 2155859492, i64 2155859516, i64 2155859557, i64 2155859578, i64 2155859606, i64 2155859640}
!41 = !{i64 2155848449, i64 2155848922, i64 2155848486, i64 2155848542, i64 2155848576, i64 2155848600, i64 2155848641, i64 2155848662, i64 2155848690, i64 2155848724}
!42 = !{i64 2155865017}
!43 = !{i64 2155867477}
!44 = !{i64 2156050945}
!45 = !{i64 3547320}
!46 = !{i64 3547517}
!47 = !{i64 2151032796}
!48 = !{i64 2156058711, i64 2156058991, i64 2156059325, i64 2156059659}
!49 = !{!"branch_weights", i32 2002, i32 2000}
