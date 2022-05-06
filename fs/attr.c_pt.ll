; ModuleID = '/llk/IR/fs/attr.c_pt.bc'
source_filename = "../fs/attr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_setattr_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22setattr_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_setattr_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_newsize_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_newsize_ok\22\09\09\09\09\09"
module asm "__kstrtabns_inode_newsize_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_setattr_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22setattr_copy\22\09\09\09\09\09"
module asm "__kstrtabns_setattr_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_may_setattr:\09\09\09\09\09"
module asm "\09.asciz \09\22may_setattr\22\09\09\09\09\09"
module asm "__kstrtabns_may_setattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_notify_change:\09\09\09\09\09"
module asm "\09.asciz \09\22notify_change\22\09\09\09\09\09"
module asm "__kstrtabns_notify_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.12, ptr }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.69 }
%union.anon.69 = type { i64 }
%union.anon.71 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.72 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%union.anon.65 = type { i32 }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.36 }
%struct.llist_node = type { ptr }
%union.anon.36 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.42 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.42 = type { %struct.callback_head }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }

@__kstrtab_setattr_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_setattr_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_setattr_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @setattr_prepare to i32), ptr @__kstrtab_setattr_prepare, ptr @__kstrtabns_setattr_prepare }, section "___ksymtab+setattr_prepare", align 4
@__kstrtab_inode_newsize_ok = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_newsize_ok = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_newsize_ok = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_newsize_ok to i32), ptr @__kstrtab_inode_newsize_ok, ptr @__kstrtabns_inode_newsize_ok }, section "___ksymtab+inode_newsize_ok", align 4
@__kstrtab_setattr_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns_setattr_copy = external dso_local constant [0 x i8], align 1
@__ksymtab_setattr_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @setattr_copy to i32), ptr @__kstrtab_setattr_copy, ptr @__kstrtabns_setattr_copy }, section "___ksymtab+setattr_copy", align 4
@__kstrtab_may_setattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_may_setattr = external dso_local constant [0 x i8], align 1
@__ksymtab_may_setattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @may_setattr to i32), ptr @__kstrtab_may_setattr, ptr @__kstrtabns_may_setattr }, section "___ksymtab+may_setattr", align 4
@notify_change.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [10 x i8] c"fs/attr.c\00", align 1
@__kstrtab_notify_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_notify_change = external dso_local constant [0 x i8], align 1
@__ksymtab_notify_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @notify_change to i32), ptr @__kstrtab_notify_change, ptr @__kstrtabns_notify_change }, section "___ksymtab+notify_change", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_inode_newsize_ok, ptr @__ksymtab_may_setattr, ptr @__ksymtab_notify_change, ptr @__ksymtab_setattr_copy, ptr @__ksymtab_setattr_prepare], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @setattr_prepare(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %2, align 8
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 4
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 13
  %13 = load i64, ptr %12, align 8
  %14 = icmp slt i64 %13, %11
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = tail call ptr @llvm.thread.pointer() #7
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 93
  %18 = load ptr, ptr %17, align 16
  %19 = getelementptr %struct.signal_struct, ptr %18, i32 0, i32 50, i32 1
  %20 = load volatile i32, ptr %19, align 8
  %21 = icmp ne i32 %20, -1
  %22 = zext i32 %20 to i64
  %23 = icmp sgt i64 %11, %22
  %24 = and i1 %21, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 4
  %29 = load i64, ptr %28, align 8
  %30 = icmp slt i64 %29, %11
  br i1 %30, label %131, label %38

31:                                               ; preds = %9
  %32 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 256
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %131

36:                                               ; preds = %15
  %37 = tail call i32 @send_sig(i32 noundef 25, ptr noundef %16, i32 noundef 0) #7
  br label %131

38:                                               ; preds = %31, %25, %3
  %39 = and i32 %6, 512
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %124

41:                                               ; preds = %38
  %42 = and i32 %6, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 2
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = tail call ptr @llvm.thread.pointer() #7
  %50 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 83
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.cred, ptr %51, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, %48
  %55 = icmp eq i32 %46, %48
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %67, label %57

57:                                               ; preds = %44
  %58 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef %5, i32 noundef 0) #7
  br i1 %58, label %67, label %59

59:                                               ; preds = %57
  %60 = icmp eq i32 %48, -1
  br i1 %60, label %61, label %131

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 47
  %65 = load ptr, ptr %64, align 4
  %66 = tail call zeroext i1 @ns_capable(ptr noundef %65, i32 noundef 0) #7
  br i1 %66, label %67, label %131

67:                                               ; preds = %61, %57, %44, %41
  %68 = and i32 %6, 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %100, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 3
  %74 = load i32, ptr %73, align 8
  %75 = tail call ptr @llvm.thread.pointer() #7
  %76 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 83
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.cred, ptr %77, i32 0, i32 7
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %70
  %84 = insertvalue [1 x i32] undef, i32 %72, 0
  %85 = tail call i32 @in_group_p([1 x i32] %84) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i32, ptr %73, align 8
  %89 = icmp eq i32 %72, %88
  br i1 %89, label %100, label %90

90:                                               ; preds = %87, %70
  %91 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef %5, i32 noundef 0) #7
  br i1 %91, label %100, label %92

92:                                               ; preds = %90
  %93 = icmp eq i32 %74, -1
  br i1 %93, label %94, label %131

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.super_block, ptr %96, i32 0, i32 47
  %98 = load ptr, ptr %97, align 4
  %99 = tail call zeroext i1 @ns_capable(ptr noundef %98, i32 noundef 0) #7
  br i1 %99, label %100, label %131

100:                                              ; preds = %94, %90, %87, %83, %67
  %101 = and i32 %6, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %100
  %104 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %0, ptr noundef %5) #7
  br i1 %104, label %105, label %131

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 3
  %107 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 3
  %108 = select i1 %69, ptr %107, ptr %106
  %109 = load i32, ptr %108, align 4
  %110 = insertvalue [1 x i32] poison, i32 %109, 0
  %111 = tail call i32 @in_group_p([1 x i32] %110) #7
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef %5, i32 noundef 4) #7
  br i1 %114, label %119, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 1
  %117 = load i16, ptr %116, align 4
  %118 = and i16 %117, -1025
  store i16 %118, ptr %116, align 4
  br label %119

119:                                              ; preds = %115, %113, %105, %100
  %120 = and i32 %6, 65920
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %0, ptr noundef %5) #7
  br i1 %123, label %124, label %131

124:                                              ; preds = %122, %119, %38
  %125 = and i32 %6, 16384
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = tail call i32 @cap_inode_killpriv(ptr noundef %0, ptr noundef %1) #7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127, %124
  br label %131

131:                                              ; preds = %130, %127, %122, %103, %94, %92, %61, %59, %36, %31, %25
  %132 = phi i32 [ 0, %130 ], [ %128, %127 ], [ -1, %103 ], [ -1, %122 ], [ -1, %59 ], [ -1, %61 ], [ -1, %92 ], [ -1, %94 ], [ -27, %25 ], [ -27, %36 ], [ -26, %31 ]
  ret i32 %132
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inode_newsize_ok(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %4 = load i64, ptr %3, align 8
  %5 = icmp slt i64 %4, %1
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #7
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr %struct.signal_struct, ptr %9, i32 0, i32 50, i32 1
  %11 = load volatile i32, ptr %10, align 8
  %12 = icmp ne i32 %11, -1
  %13 = zext i32 %11 to i64
  %14 = icmp slt i64 %13, %1
  %15 = and i1 %12, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 4
  %20 = load i64, ptr %19, align 8
  %21 = icmp slt i64 %20, %1
  br i1 %21, label %30, label %27

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %16
  br label %30

28:                                               ; preds = %6
  %29 = tail call i32 @send_sig(i32 noundef 25, ptr noundef %7, i32 noundef 0) #7
  br label %30

30:                                               ; preds = %28, %27, %22, %16
  %31 = phi i32 [ 0, %27 ], [ -26, %22 ], [ -27, %28 ], [ -27, %16 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @setattr_copy(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %2, align 8
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  store i32 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %7, %3
  %12 = and i32 %4, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %16 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %15, align 8
  br label %18

18:                                               ; preds = %14, %11
  %19 = and i32 %4, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %23 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %22, ptr noundef align 8 dereferenceable(16) %23, i32 16, i1 false)
  br label %24

24:                                               ; preds = %21, %18
  %25 = and i32 %4, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %29 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %28, ptr noundef align 8 dereferenceable(16) %29, i32 16, i1 false)
  br label %30

30:                                               ; preds = %27, %24
  %31 = and i32 %4, 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %35 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %34, ptr noundef align 8 dereferenceable(16) %35, i32 16, i1 false)
  br label %36

36:                                               ; preds = %33, %30
  %37 = and i32 %4, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 1
  %41 = load i16, ptr %40, align 4
  %42 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %43 = load i32, ptr %42, align 8
  %44 = insertvalue [1 x i32] poison, i32 %43, 0
  %45 = tail call i32 @in_group_p([1 x i32] %44) #7
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef %1, i32 noundef 4) #7
  %49 = and i16 %41, -1025
  %50 = select i1 %48, i16 %41, i16 %49
  br label %51

51:                                               ; preds = %47, %39
  %52 = phi i16 [ %41, %39 ], [ %50, %47 ]
  store i16 %52, ptr %1, align 8
  br label %53

53:                                               ; preds = %51, %36
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @may_setattr(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 65543
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %6, %3
  %12 = and i32 %2, 131072
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %0, ptr noundef %1) #7
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = tail call i32 @inode_permission(ptr noundef %0, ptr noundef %1, i32 noundef 2) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %19, %11
  br label %25

25:                                               ; preds = %24, %21, %14, %6
  %26 = phi i32 [ 0, %24 ], [ -1, %6 ], [ -1, %14 ], [ %22, %21 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @notify_change(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = load i16, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false)
  %11 = load i32, ptr %2, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 24
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = load i1, ptr @notify_change.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !8

18:                                               ; preds = %4
  store i1 true, ptr @notify_change.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 319, i32 noundef 9, ptr noundef null) #7
  br label %19

19:                                               ; preds = %18, %4
  %20 = and i32 %11, 65543
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %195

27:                                               ; preds = %22, %19
  %28 = and i32 %11, 131072
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %195

35:                                               ; preds = %30
  %36 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %0, ptr noundef %9) #7
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  %38 = tail call i32 @inode_permission(ptr noundef %0, ptr noundef %9, i32 noundef 2) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %195

40:                                               ; preds = %37, %35, %27
  %41 = and i32 %11, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 1
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 2048
  %48 = icmp ne i32 %47, 0
  %49 = and i32 %46, 1032
  %50 = icmp eq i32 %49, 1032
  %51 = or i1 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -4097
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %52, %43, %40
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %9) #7
  %57 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %57, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  %58 = and i32 %11, 128
  %59 = icmp eq i32 %58, 0
  %60 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 5
  br i1 %59, label %61, label %62

61:                                               ; preds = %56
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %60, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  br label %68

62:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  %63 = load i64, ptr %60, align 8
  %64 = insertvalue [2 x i64] undef, i64 %63, 0
  %65 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 5, i32 1
  %66 = load i64, ptr %65, align 8
  %67 = insertvalue [2 x i64] %64, i64 %66, 1
  call void @timestamp_truncate(ptr nonnull sret(%struct.timespec64) align 8 %6, [2 x i64] %67, ptr noundef %9) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %60, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  br label %68

68:                                               ; preds = %62, %61
  %69 = and i32 %11, 256
  %70 = icmp eq i32 %69, 0
  %71 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 6
  br i1 %70, label %72, label %73

72:                                               ; preds = %68
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %71, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  br label %79

73:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  %74 = load i64, ptr %71, align 8
  %75 = insertvalue [2 x i64] undef, i64 %74, 0
  %76 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 6, i32 1
  %77 = load i64, ptr %76, align 8
  %78 = insertvalue [2 x i64] %75, i64 %77, 1
  call void @timestamp_truncate(ptr nonnull sret(%struct.timespec64) align 8 %7, [2 x i64] %78, ptr noundef %9) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %71, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  br label %79

79:                                               ; preds = %73, %72
  %80 = and i32 %11, 16384
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = call i32 @cap_inode_need_killpriv(ptr noundef %1) #7
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %195, label %85

85:                                               ; preds = %82
  %86 = icmp eq i32 %83, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %85
  %88 = load i32, ptr %2, align 8
  %89 = and i32 %88, -16385
  store i32 %89, ptr %2, align 8
  %90 = and i32 %88, 1
  br label %91

91:                                               ; preds = %87, %85, %79
  %92 = phi i32 [ %41, %85 ], [ %90, %87 ], [ %41, %79 ]
  %93 = phi i32 [ %11, %85 ], [ %89, %87 ], [ %11, %79 ]
  %94 = and i32 %93, 6144
  %95 = icmp eq i32 %94, 0
  %96 = icmp eq i32 %92, 0
  %97 = or i1 %95, %96
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/attr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 361, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

99:                                               ; preds = %91
  %100 = and i32 %93, 2048
  %101 = icmp eq i32 %100, 0
  %102 = and i16 %10, 2048
  %103 = icmp eq i16 %102, 0
  %104 = select i1 %101, i1 true, i1 %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load i32, ptr %2, align 8
  %107 = or i32 %106, 1
  store i32 %107, ptr %2, align 8
  %108 = load i16, ptr %9, align 8
  %109 = and i16 %108, -2049
  %110 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 1
  store i16 %109, ptr %110, align 4
  br label %111

111:                                              ; preds = %105, %99
  %112 = phi i32 [ %107, %105 ], [ %93, %99 ]
  %113 = and i32 %112, 4096
  %114 = icmp ne i32 %113, 0
  %115 = and i16 %10, 1032
  %116 = icmp eq i16 %115, 1032
  %117 = select i1 %114, i1 %116, i1 false
  br i1 %117, label %118, label %132

118:                                              ; preds = %111
  %119 = and i32 %112, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 1
  br label %126

123:                                              ; preds = %118
  %124 = load i32, ptr %2, align 8
  %125 = or i32 %124, 1
  store i32 %125, ptr %2, align 8
  br label %126

126:                                              ; preds = %123, %121
  %127 = phi ptr [ %122, %121 ], [ %9, %123 ]
  %128 = phi i32 [ %112, %121 ], [ %125, %123 ]
  %129 = load i16, ptr %127, align 4
  %130 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 1
  %131 = and i16 %129, -1025
  store i16 %131, ptr %130, align 4
  br label %132

132:                                              ; preds = %126, %111
  %133 = phi i32 [ %128, %126 ], [ %112, %111 ]
  %134 = load i32, ptr %2, align 8
  %135 = and i32 %134, -6145
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %195, label %137

137:                                              ; preds = %132
  %138 = and i32 %133, 2
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 2
  %142 = load i32, ptr %141, align 8
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %195, label %144

144:                                              ; preds = %140, %137
  %145 = and i32 %133, 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 3
  %149 = load i32, ptr %148, align 4
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %195, label %151

151:                                              ; preds = %147, %144
  br i1 %139, label %152, label %156

152:                                              ; preds = %151
  %153 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %195, label %156

156:                                              ; preds = %152, %151
  br i1 %146, label %157, label %161

157:                                              ; preds = %156
  %158 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 3
  %159 = load i32, ptr %158, align 8
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %195, label %161

161:                                              ; preds = %157, %156
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %162 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 40
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %181, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.file_lock_context, ptr %163, i32 0, i32 3
  %167 = load volatile ptr, ptr %166, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %168 = icmp eq ptr %167, %166
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.file_lock_context, ptr %163, i32 0, i32 3, i32 1
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, %166
  br i1 %172, label %181, label %173

173:                                              ; preds = %169, %165
  %174 = call i32 @__break_lease(ptr noundef %9, i32 noundef 2049, i32 noundef 4) #7
  %175 = icmp eq i32 %174, -11
  %176 = icmp ne ptr %3, null
  %177 = and i1 %176, %175
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  store ptr %9, ptr %3, align 4
  call void @ihold(ptr noundef %9) #7
  br label %195

179:                                              ; preds = %173
  %180 = icmp eq i32 %174, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %179, %169, %161
  %182 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 7
  %183 = load ptr, ptr %182, align 8
  %184 = getelementptr inbounds %struct.inode_operations, ptr %183, i32 0, i32 13
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %181
  %188 = call i32 %185(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  br label %191

189:                                              ; preds = %181
  %190 = call i32 @simple_setattr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi i32 [ %188, %187 ], [ %190, %189 ]
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  call fastcc void @fsnotify_change(ptr noundef %1, i32 noundef %133)
  br label %195

195:                                              ; preds = %194, %191, %179, %178, %157, %152, %147, %140, %132, %82, %37, %30, %22
  %196 = phi i32 [ %83, %82 ], [ 0, %132 ], [ -75, %140 ], [ -75, %147 ], [ -75, %152 ], [ -75, %157 ], [ %174, %179 ], [ 0, %194 ], [ %192, %191 ], [ -11, %178 ], [ %38, %37 ], [ -1, %30 ], [ -1, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  ret i32 %196
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timestamp_truncate(ptr sret(%struct.timespec64) align 8, [2 x i64], ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fsnotify_change(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = shl i32 %1, 1
  %4 = and i32 %3, 4
  %5 = and i32 %1, 4
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 %4, i32 4
  %8 = or i32 %7, 2
  %9 = lshr i32 %1, 2
  %10 = and i32 %9, 2
  %11 = or i32 %7, %10
  %12 = and i32 %1, 48
  %13 = icmp eq i32 %12, 48
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = or i32 %10, 4
  br label %25

16:                                               ; preds = %2
  %17 = and i32 %1, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = or i32 %11, 1
  br label %25

21:                                               ; preds = %16
  %22 = and i32 %1, 32
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 %11, i32 %8
  br label %25

25:                                               ; preds = %21, %19, %14
  %26 = phi i32 [ %15, %14 ], [ %20, %19 ], [ %24, %21 ]
  %27 = shl i32 %1, 2
  %28 = and i32 %27, 4
  %29 = or i32 %26, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %58, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 42
  %37 = load volatile i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %31
  %40 = load i16, ptr %33, align 8
  %41 = and i16 %40, -4096
  %42 = icmp eq i16 %41, 16384
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = or i32 %29, 1073741824
  %45 = load i32, ptr %0, align 8
  %46 = and i32 %45, 16384
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %43, %39
  %49 = phi i32 [ %44, %43 ], [ %29, %39 ]
  %50 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = tail call i32 @__fsnotify_parent(ptr noundef %0, i32 noundef %49, ptr noundef %0, i32 noundef 3) #7
  br label %58

55:                                               ; preds = %48, %43
  %56 = phi i32 [ %49, %48 ], [ %44, %43 ]
  %57 = tail call i32 @fsnotify(i32 noundef %56, ptr noundef %0, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef %33, i32 noundef 0) #7
  br label %58

58:                                               ; preds = %55, %53, %31, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_killpriv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_need_killpriv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }

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
!9 = !{i64 2152834983, i64 2152835457, i64 2152835020, i64 2152835076, i64 2152835110, i64 2152835134, i64 2152835175, i64 2152835196, i64 2152835224, i64 2152835258}
!10 = !{i64 2151851682}
!11 = !{i64 2148731669}
