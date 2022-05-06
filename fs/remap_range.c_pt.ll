; ModuleID = '/llk/IR/fs/remap_range.c_pt.bc'
source_filename = "../fs/remap_range.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_remap_file_range_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_remap_file_range_prep\22\09\09\09\09\09"
module asm "__kstrtabns_generic_remap_file_range_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_clone_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22do_clone_file_range\22\09\09\09\09\09"
module asm "__kstrtabns_do_clone_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_clone_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_clone_file_range\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_clone_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_dedupe_file_range_one:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_dedupe_file_range_one\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_dedupe_file_range_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_dedupe_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_dedupe_file_range\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_dedupe_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.89, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.90, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.91, ptr, %struct.address_space, %struct.list_head, %union.anon.94, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.89 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.90 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.91 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.94 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.page = type { i32, %union.anon.15, %union.anon.30, %struct.atomic_t }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.30 = type { %struct.atomic_t }
%struct.anon.32 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.anon.19 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.97, %struct.list_head, %struct.list_head, %union.anon.98 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.95 }
%union.anon.95 = type { i64 }
%union.anon.97 = type { %struct.list_head }
%union.anon.98 = type { %struct.hlist_node }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.42 }
%struct.llist_node = type { ptr }
%union.anon.42 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.48 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.48 = type { %struct.callback_head }
%struct.file_dedupe_range = type { i64, i64, i16, i16, i32, [0 x %struct.file_dedupe_range_info] }
%struct.file_dedupe_range_info = type { i64, i64, i64, i32, i32 }

@__kstrtab_generic_remap_file_range_prep = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_remap_file_range_prep = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_remap_file_range_prep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_remap_file_range_prep to i32), ptr @__kstrtab_generic_remap_file_range_prep, ptr @__kstrtabns_generic_remap_file_range_prep }, section "___ksymtab+generic_remap_file_range_prep", align 4
@do_clone_file_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [17 x i8] c"fs/remap_range.c\00", align 1
@__kstrtab_do_clone_file_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_clone_file_range = external dso_local constant [0 x i8], align 1
@__ksymtab_do_clone_file_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_clone_file_range to i32), ptr @__kstrtab_do_clone_file_range, ptr @__kstrtabns_do_clone_file_range }, section "___ksymtab+do_clone_file_range", align 4
@__kstrtab_vfs_clone_file_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_clone_file_range = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_clone_file_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_clone_file_range to i32), ptr @__kstrtab_vfs_clone_file_range, ptr @__kstrtabns_vfs_clone_file_range }, section "___ksymtab+vfs_clone_file_range", align 4
@vfs_dedupe_file_range_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_vfs_dedupe_file_range_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_dedupe_file_range_one = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_dedupe_file_range_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_dedupe_file_range_one to i32), ptr @__kstrtab_vfs_dedupe_file_range_one, ptr @__kstrtabns_vfs_dedupe_file_range_one }, section "___ksymtab+vfs_dedupe_file_range_one", align 4
@__kstrtab_vfs_dedupe_file_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_dedupe_file_range = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_dedupe_file_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_dedupe_file_range to i32), ptr @__kstrtab_vfs_dedupe_file_range, ptr @__kstrtabns_vfs_dedupe_file_range }, section "___ksymtab+vfs_dedupe_file_range", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_do_clone_file_range, ptr @__ksymtab_generic_remap_file_range_prep, ptr @__ksymtab_vfs_clone_file_range, ptr @__ksymtab_vfs_dedupe_file_range, ptr @__ksymtab_vfs_dedupe_file_range_one], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_remap_file_range_prep(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef %4, i32 noundef %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %10, %12
  %14 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %191

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 256
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %15, 256
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %191

26:                                               ; preds = %18
  %27 = load i16, ptr %10, align 8
  %28 = and i16 %27, -4096
  %29 = icmp eq i16 %28, 16384
  br i1 %29, label %191, label %30

30:                                               ; preds = %26
  %31 = load i16, ptr %12, align 8
  %32 = and i16 %31, -4096
  %33 = icmp eq i16 %32, 16384
  br i1 %33, label %191, label %34

34:                                               ; preds = %30
  %35 = icmp eq i16 %28, -32768
  %36 = icmp eq i16 %32, -32768
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %191

38:                                               ; preds = %34
  %39 = load i64, ptr %4, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = tail call fastcc i64 @i_size_read(ptr noundef %10)
  %43 = and i32 %5, 1
  %44 = icmp ne i32 %43, 0
  %45 = icmp eq i64 %42, %1
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %191, label %47

47:                                               ; preds = %41
  %48 = icmp slt i64 %42, %1
  br i1 %48, label %191, label %49

49:                                               ; preds = %47
  %50 = sub i64 %42, %1
  store i64 %50, ptr %4, align 8
  br label %51

51:                                               ; preds = %49, %38
  %52 = phi i64 [ %50, %49 ], [ %39, %38 ]
  %53 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 17
  %57 = load ptr, ptr %56, align 8
  %58 = load ptr, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %59 = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 8
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 3
  %62 = load i32, ptr %61, align 16
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %63, -1
  %65 = or i64 %3, %1
  %66 = and i64 %64, %65
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %156

68:                                               ; preds = %51
  %69 = xor i64 %1, -1
  %70 = icmp ugt i64 %52, %69
  %71 = xor i64 %3, -1
  %72 = icmp ugt i64 %52, %71
  %73 = or i1 %70, %72
  br i1 %73, label %156, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 22
  %76 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 13
  br label %77

77:                                               ; preds = %85, %74
  %78 = load volatile i32, ptr %75, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %81, %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !10
  %82 = load volatile i32, ptr %75, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %81

85:                                               ; preds = %81, %77
  %86 = phi i32 [ %78, %77 ], [ %82, %81 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %87 = load i64, ptr %76, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %88 = load volatile i32, ptr %75, align 4
  %89 = icmp eq i32 %88, %86
  br i1 %89, label %90, label %77

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 22
  %92 = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 13
  br label %93

93:                                               ; preds = %101, %90
  %94 = load volatile i32, ptr %91, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %97, %93
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !10
  %98 = load volatile i32, ptr %91, align 4
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %97

101:                                              ; preds = %97, %93
  %102 = phi i32 [ %94, %93 ], [ %98, %97 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %103 = load i64, ptr %92, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %104 = load volatile i32, ptr %91, align 4
  %105 = icmp eq i32 %104, %102
  br i1 %105, label %106, label %93

106:                                              ; preds = %101
  %107 = and i32 %5, 1
  %108 = icmp eq i32 %107, 0
  %109 = icmp sgt i64 %87, %1
  br i1 %108, label %119, label %110

110:                                              ; preds = %106
  br i1 %109, label %111, label %156

111:                                              ; preds = %110
  %112 = add i64 %52, %1
  %113 = icmp ule i64 %112, %87
  %114 = icmp sgt i64 %103, %3
  %115 = select i1 %113, i1 %114, i1 false
  %116 = add i64 %52, %3
  %117 = icmp ule i64 %116, %103
  %118 = select i1 %115, i1 %117, i1 false
  br i1 %118, label %120, label %156

119:                                              ; preds = %106
  br i1 %109, label %120, label %156

120:                                              ; preds = %119, %111
  %121 = sub i64 %87, %1
  %122 = tail call i64 @llvm.umin.i64(i64 %52, i64 %121) #8
  store i64 %122, ptr %7, align 8
  %123 = call i32 @generic_write_check_limits(ptr noundef %2, i64 noundef %3, ptr noundef nonnull %7) #8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %156

125:                                              ; preds = %120
  %126 = load i64, ptr %7, align 8
  %127 = add i64 %126, %1
  %128 = icmp eq i64 %127, %87
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = add i64 %87, %64
  %131 = sub nsw i64 0, %63
  %132 = and i64 %130, %131
  %133 = sub i64 %132, %1
  br label %140

134:                                              ; preds = %125
  %135 = and i64 %126, %64
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = sub nsw i64 0, %63
  %139 = and i64 %126, %138
  br label %140

140:                                              ; preds = %137, %134, %129
  %141 = phi i64 [ %126, %129 ], [ %139, %137 ], [ %126, %134 ]
  %142 = phi i64 [ %133, %129 ], [ %139, %137 ], [ %126, %134 ]
  %143 = icmp eq ptr %55, %58
  %144 = add i64 %142, %3
  %145 = icmp ugt i64 %144, %1
  %146 = select i1 %143, i1 %145, i1 false
  %147 = add i64 %142, %1
  %148 = icmp ugt i64 %147, %3
  %149 = select i1 %146, i1 %148, i1 false
  br i1 %149, label %156, label %150

150:                                              ; preds = %140
  %151 = load i64, ptr %4, align 8
  %152 = icmp ne i64 %151, %141
  %153 = and i32 %5, 2
  %154 = icmp eq i32 %153, 0
  %155 = and i1 %154, %152
  br i1 %155, label %156, label %158

156:                                              ; preds = %150, %140, %120, %119, %111, %110, %68, %51
  %157 = phi i32 [ -22, %150 ], [ -22, %140 ], [ %123, %120 ], [ -22, %119 ], [ -22, %110 ], [ -22, %111 ], [ -22, %68 ], [ -22, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  br label %191

158:                                              ; preds = %150
  store i64 %141, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @inode_dio_wait(ptr noundef %10) #8
  br i1 %13, label %160, label %159

159:                                              ; preds = %158
  call void @inode_dio_wait(ptr noundef %12) #8
  br label %160

160:                                              ; preds = %159, %158
  %161 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 9
  %162 = load ptr, ptr %161, align 8
  %163 = load i64, ptr %4, align 8
  %164 = add i64 %1, -1
  %165 = add i64 %164, %163
  %166 = call i32 @filemap_write_and_wait_range(ptr noundef %162, i64 noundef %1, i64 noundef %165) #8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %191

168:                                              ; preds = %160
  %169 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 9
  %170 = load ptr, ptr %169, align 8
  %171 = load i64, ptr %4, align 8
  %172 = add i64 %3, -1
  %173 = add i64 %172, %171
  %174 = call i32 @filemap_write_and_wait_range(ptr noundef %170, i64 noundef %3, i64 noundef %173) #8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %168
  br i1 %108, label %185, label %177

177:                                              ; preds = %176
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 0, ptr %8, align 1
  %178 = load i64, ptr %4, align 8
  %179 = call fastcc i32 @vfs_dedupe_file_range_compare(ptr noundef %10, i64 noundef %1, ptr noundef %12, i64 noundef %3, i64 noundef %178, ptr noundef nonnull %8)
  %180 = icmp eq i32 %179, 0
  %181 = load i8, ptr %8, align 1
  %182 = icmp ne i8 %181, 0
  %183 = select i1 %180, i32 -52, i32 %179
  %184 = select i1 %180, i1 %182, i1 false
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  br i1 %184, label %185, label %191

185:                                              ; preds = %177, %176
  %186 = call fastcc i32 @generic_remap_check_len(ptr noundef %10, ptr noundef %12, i64 noundef %3, ptr noundef %4, i32 noundef %5)
  %187 = or i32 %186, %107
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = call i32 @file_modified(ptr noundef %2) #8
  br label %191

191:                                              ; preds = %189, %185, %177, %168, %160, %156, %47, %41, %34, %30, %26, %18, %6
  %192 = phi i32 [ %183, %177 ], [ -1, %6 ], [ -26, %18 ], [ -21, %30 ], [ -21, %26 ], [ -22, %34 ], [ %166, %160 ], [ %174, %168 ], [ %186, %185 ], [ %190, %189 ], [ %157, %156 ], [ -22, %47 ], [ 0, %41 ]
  ret i32 %192
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %4

4:                                                ; preds = %12, %1
  %5 = load volatile i32, ptr %2, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %8, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !10
  %9 = load volatile i32, ptr %2, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %5, %4 ], [ %9, %8 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %14 = load i64, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %15 = load volatile i32, ptr %2, align 4
  %16 = icmp eq i32 %15, %13
  br i1 %16, label %17, label %4

17:                                               ; preds = %12
  ret i64 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vfs_dedupe_file_range_compare(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, i64 noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %179, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %10 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 9
  br label %11

11:                                               ; preds = %174, %8
  %12 = phi i64 [ %1, %8 ], [ %175, %174 ]
  %13 = phi i64 [ %3, %8 ], [ %176, %174 ]
  %14 = phi i64 [ %4, %8 ], [ %177, %174 ]
  %15 = trunc i64 %12 to i32
  %16 = and i32 %15, 4095
  %17 = sub nuw nsw i32 4096, %16
  %18 = trunc i64 %13 to i32
  %19 = and i32 %18, 4095
  %20 = sub nuw nsw i32 4096, %19
  %21 = tail call i32 @llvm.umin.i32(i32 %17, i32 %20)
  %22 = zext i32 %21 to i64
  %23 = tail call i64 @llvm.smin.i64(i64 %14, i64 %22)
  %24 = icmp slt i64 %23, 1
  br i1 %24, label %182, label %25

25:                                               ; preds = %11
  %26 = load ptr, ptr %9, align 8
  %27 = lshr i64 %12, 12
  %28 = trunc i64 %27 to i32
  %29 = tail call ptr @read_cache_folio(ptr noundef %26, i32 noundef %28, ptr noundef null, ptr noundef null) #8
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  %32 = load volatile i32, ptr %29, align 4
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #8, !srcloc !14
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #8, !srcloc !15
  %38 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  tail call void @__put_page(ptr noundef %29) #8
  br label %41

41:                                               ; preds = %40, %35, %25
  %42 = phi ptr [ inttoptr (i32 -5 to ptr), %35 ], [ inttoptr (i32 -5 to ptr), %40 ], [ %29, %25 ]
  %43 = ptrtoint ptr %42 to i32
  br label %182

44:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %45 = load ptr, ptr %10, align 8
  %46 = lshr i64 %13, 12
  %47 = trunc i64 %46 to i32
  %48 = tail call ptr @read_cache_folio(ptr noundef %45, i32 noundef %47, ptr noundef null, ptr noundef null) #8
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %60, label %50

50:                                               ; preds = %44
  %51 = load volatile i32, ptr %48, align 4
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #8, !srcloc !14
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #8, !srcloc !15
  %57 = extractvalue { i32, i32 } %56, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  tail call void @__put_page(ptr noundef %48) #8
  br label %60

60:                                               ; preds = %59, %54, %44
  %61 = phi ptr [ inttoptr (i32 -5 to ptr), %54 ], [ inttoptr (i32 -5 to ptr), %59 ], [ %48, %44 ]
  %62 = ptrtoint ptr %61 to i32
  %63 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #8, !srcloc !14
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #8, !srcloc !15
  %65 = extractvalue { i32, i32 } %64, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %182

67:                                               ; preds = %60
  tail call void @__put_page(ptr noundef %29) #8
  br label %182

68:                                               ; preds = %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %69 = getelementptr inbounds %struct.anon.32, ptr %29, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.anon.32, ptr %48, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp ugt i32 %70, %72
  %74 = select i1 %73, ptr %29, ptr %48
  %75 = select i1 %73, ptr %48, ptr %29
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #8, !srcloc !14
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 1, ptr elementtype(i32) %75) #8, !srcloc !18
  %81 = extractvalue { i32, i32, i32 } %80, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79, %68
  tail call void @__folio_lock(ptr noundef %75) #8
  br label %85

85:                                               ; preds = %84, %79
  %86 = icmp eq ptr %75, %74
  br i1 %86, label %97, label %87

87:                                               ; preds = %85
  %88 = load volatile i32, ptr %74, align 4
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #8, !srcloc !14
  %92 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 1, ptr elementtype(i32) %74) #8, !srcloc !18
  %93 = extractvalue { i32, i32, i32 } %92, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !19
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91, %87
  tail call void @__folio_lock(ptr noundef %74) #8
  br label %97

97:                                               ; preds = %96, %91, %85
  %98 = load volatile i32, ptr %29, align 4
  %99 = and i32 %98, 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %157, label %101

101:                                              ; preds = %97
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %102 = load volatile i32, ptr %48, align 4
  %103 = and i32 %102, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %157, label %105

105:                                              ; preds = %101
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %106 = getelementptr inbounds %struct.anon.32, ptr %29, i32 0, i32 2
  %107 = load ptr, ptr %106, align 4
  %108 = load ptr, ptr %9, align 8
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %110, label %157

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.anon.32, ptr %48, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %10, align 8
  %114 = icmp eq ptr %112, %113
  br i1 %114, label %115, label %157

115:                                              ; preds = %110
  %116 = load volatile i32, ptr %29, align 4
  %117 = and i32 %116, 65536
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = getelementptr %struct.page, ptr %29, i32 1, i32 1
  %121 = getelementptr inbounds %struct.anon.19, ptr %120, i32 0, i32 2
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i32
  br label %124

124:                                              ; preds = %119, %115
  %125 = phi i32 [ %123, %119 ], [ 0, %115 ]
  %126 = shl i32 4096, %125
  %127 = add i32 %126, -1
  %128 = and i32 %127, %15
  %129 = lshr i32 %128, 12
  %130 = getelementptr %struct.page, ptr %29, i32 %129
  %131 = load i32, ptr @pgprot_kernel, align 4
  %132 = or i32 %131, 512
  %133 = tail call ptr @__kmap_local_page_prot(ptr noundef %130, i32 noundef %132) #8
  %134 = getelementptr i8, ptr %133, i32 %16
  %135 = load volatile i32, ptr %48, align 4
  %136 = and i32 %135, 65536
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %124
  %139 = getelementptr %struct.page, ptr %48, i32 1, i32 1
  %140 = getelementptr inbounds %struct.anon.19, ptr %139, i32 0, i32 2
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  br label %143

143:                                              ; preds = %138, %124
  %144 = phi i32 [ %142, %138 ], [ 0, %124 ]
  %145 = shl i32 4096, %144
  %146 = add i32 %145, -1
  %147 = and i32 %146, %18
  %148 = lshr i32 %147, 12
  %149 = getelementptr %struct.page, ptr %48, i32 %148
  %150 = load i32, ptr @pgprot_kernel, align 4
  %151 = or i32 %150, 512
  %152 = tail call ptr @__kmap_local_page_prot(ptr noundef %149, i32 noundef %151) #8
  %153 = getelementptr i8, ptr %152, i32 %19
  tail call void @flush_dcache_folio(ptr noundef %29) #8
  tail call void @flush_dcache_folio(ptr noundef %48) #8
  %154 = trunc i64 %23 to i32
  %155 = tail call i32 @bcmp(ptr %134, ptr %153, i32 %154)
  %156 = icmp eq i32 %155, 0
  tail call void @kunmap_local_indexed(ptr noundef %153) #8
  tail call void @kunmap_local_indexed(ptr noundef %134) #8
  br label %157

157:                                              ; preds = %143, %110, %105, %101, %97
  %158 = phi i1 [ %156, %143 ], [ false, %110 ], [ false, %105 ], [ false, %97 ], [ false, %101 ]
  tail call void @folio_unlock(ptr noundef %29) #8
  %159 = icmp eq ptr %29, %48
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  tail call void @folio_unlock(ptr noundef %48) #8
  br label %161

161:                                              ; preds = %160, %157
  %162 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %162) #8, !srcloc !14
  %163 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %162, ptr %162, i32 1, ptr elementtype(i32) %162) #8, !srcloc !15
  %164 = extractvalue { i32, i32 } %163, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  tail call void @__put_page(ptr noundef %48) #8
  br label %167

167:                                              ; preds = %166, %161
  %168 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %168) #8, !srcloc !14
  %169 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %168, ptr %168, i32 1, ptr elementtype(i32) %168) #8, !srcloc !15
  %170 = extractvalue { i32, i32 } %169, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  tail call void @__put_page(ptr noundef %29) #8
  br label %173

173:                                              ; preds = %172, %167
  br i1 %158, label %174, label %179

174:                                              ; preds = %173
  %175 = add i64 %23, %12
  %176 = add i64 %23, %13
  %177 = sub i64 %14, %23
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %11

179:                                              ; preds = %174, %173, %6
  %180 = phi i1 [ true, %6 ], [ %158, %173 ], [ %158, %174 ]
  %181 = zext i1 %180 to i8
  store i8 %181, ptr %5, align 1
  br label %182

182:                                              ; preds = %179, %67, %60, %41, %11
  %183 = phi i32 [ 0, %179 ], [ %62, %67 ], [ %62, %60 ], [ %43, %41 ], [ -22, %11 ]
  ret i32 %183
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @generic_remap_check_len(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = shl nsw i32 -1, %8
  %10 = xor i32 %9, -1
  %11 = zext i32 %10 to i64
  %12 = load i64, ptr %3, align 8
  %13 = and i64 %12, %11
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  br label %18

18:                                               ; preds = %26, %15
  %19 = load volatile i32, ptr %16, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %22, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !10
  %23 = load volatile i32, ptr %16, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %19, %18 ], [ %23, %22 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %28 = load i64, ptr %17, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %29 = load volatile i32, ptr %16, align 4
  %30 = icmp eq i32 %29, %27
  br i1 %30, label %31, label %18

31:                                               ; preds = %26
  %32 = add i64 %12, %2
  %33 = icmp slt i64 %32, %28
  %34 = xor i64 %11, -1
  %35 = select i1 %33, i64 %34, i64 -1
  %36 = and i64 %35, %12
  %37 = load i64, ptr %3, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = and i32 %4, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i64 %36, ptr %3, align 8
  br label %47

43:                                               ; preds = %39
  %44 = and i32 %4, 1
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 -22, i32 -52
  br label %47

47:                                               ; preds = %43, %42, %31, %5
  %48 = phi i32 [ 0, %42 ], [ %46, %43 ], [ 0, %5 ], [ 0, %31 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_modified(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @do_clone_file_range(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = and i32 %5, 1
  %8 = icmp ne i32 %7, 0
  %9 = load i1, ptr @do_clone_file_range.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !20

12:                                               ; preds = %6
  store i1 true, ptr @do_clone_file_range.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 363, i32 noundef 9, ptr noundef null) #8
  br label %13

13:                                               ; preds = %12, %6
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %17, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %13
  %24 = tail call i32 @generic_file_rw_checks(ptr noundef %0, ptr noundef %2) #8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = sext i32 %24 to i64
  br label %48

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.file_operations, ptr %30, i32 0, i32 30
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %28
  %35 = or i64 %4, %1
  %36 = add i64 %4, %1
  %37 = or i64 %35, %36
  %38 = icmp sgt i64 %37, -1
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = or i64 %4, %3
  %41 = add i64 %4, %3
  %42 = or i64 %40, %41
  %43 = icmp sgt i64 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = tail call i64 %32(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) #8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call fastcc void @fsnotify_access(ptr noundef %0)
  tail call fastcc void @fsnotify_modify(ptr noundef %2)
  br label %48

48:                                               ; preds = %47, %44, %39, %34, %28, %26, %13
  %49 = phi i64 [ %27, %26 ], [ %45, %47 ], [ -18, %13 ], [ -95, %28 ], [ %45, %44 ], [ -22, %34 ], [ -22, %39 ]
  ret i64 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_rw_checks(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fsnotify_access(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 67108864
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 42
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %6
  %18 = load i16, ptr %11, align 8
  %19 = and i16 %18, -4096
  %20 = icmp eq i16 %19, 16384
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, ptr %9, align 8
  %23 = and i32 %22, 16384
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ 1073741825, %21 ], [ 1, %17 ]
  %27 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, %9
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @__fsnotify_parent(ptr noundef %9, i32 noundef %26, ptr noundef %7, i32 noundef 1) #8
  br label %35

32:                                               ; preds = %25, %21
  %33 = phi i32 [ %26, %25 ], [ 1073741825, %21 ]
  %34 = tail call i32 @fsnotify(i32 noundef %33, ptr noundef %7, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %11, i32 noundef 0) #8
  br label %35

35:                                               ; preds = %32, %30, %6, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fsnotify_modify(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 67108864
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 42
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %6
  %18 = load i16, ptr %11, align 8
  %19 = and i16 %18, -4096
  %20 = icmp eq i16 %19, 16384
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, ptr %9, align 8
  %23 = and i32 %22, 16384
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ 1073741826, %21 ], [ 2, %17 ]
  %27 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, %9
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @__fsnotify_parent(ptr noundef %9, i32 noundef %26, ptr noundef %7, i32 noundef 1) #8
  br label %35

32:                                               ; preds = %25, %21
  %33 = phi i32 [ %26, %25 ], [ 1073741826, %21 ]
  %34 = tail call i32 @fsnotify(i32 noundef %33, ptr noundef %7, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %11, i32 noundef 0) #8
  br label %35

35:                                               ; preds = %32, %30, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @vfs_clone_file_range(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, -4096
  %11 = icmp eq i16 %10, -32768
  br i1 %11, label %12, label %33

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.super_block, ptr %14, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !21
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30, !prof !22

18:                                               ; preds = %12
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !23
  %20 = getelementptr %struct.super_block, ptr %14, i32 0, i32 26, i32 2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #4, !srcloc !24
  %26 = add i32 %25, %22
  %27 = inttoptr i32 %26 to ptr
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #8, !srcloc !25
  br label %32

30:                                               ; preds = %12
  %31 = tail call zeroext i1 @__percpu_down_read(ptr noundef %15, i1 noundef zeroext false) #8
  br label %32

32:                                               ; preds = %30, %18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !26
  br label %33

33:                                               ; preds = %32, %6
  %34 = tail call i64 @do_clone_file_range(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  %35 = load ptr, ptr %7, align 8
  %36 = load i16, ptr %35, align 8
  %37 = and i16 %36, -4096
  %38 = icmp eq i16 %37, -32768
  br i1 %38, label %39, label %72

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr %struct.super_block, ptr %41, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !27
  %43 = load volatile i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %57, !prof !22

45:                                               ; preds = %39
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !23
  %47 = getelementptr %struct.super_block, ptr %41, i32 0, i32 26, i32 2, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %51) #4, !srcloc !24
  %53 = add i32 %52, %49
  %54 = inttoptr i32 %53 to ptr
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, -1
  store i32 %56, ptr %54, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #8, !srcloc !25
  br label %71

57:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !28
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !23
  %59 = getelementptr %struct.super_block, ptr %41, i32 0, i32 26, i32 2, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = ptrtoint ptr %60 to i32
  %62 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %63 = inttoptr i32 %62 to ptr
  %64 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %63) #4, !srcloc !24
  %65 = add i32 %64, %61
  %66 = inttoptr i32 %65 to ptr
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, -1
  store i32 %68, ptr %66, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #8, !srcloc !25
  %69 = getelementptr %struct.super_block, ptr %41, i32 0, i32 26, i32 2, i32 0, i32 2
  %70 = tail call i32 @rcuwait_wake_up(ptr noundef %69) #8
  br label %71

71:                                               ; preds = %57, %45
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  br label %72

72:                                               ; preds = %71, %33
  ret i64 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @vfs_dedupe_file_range_one(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = icmp ugt i32 %5, 3
  %8 = load i1, ptr @vfs_dedupe_file_range_one.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !20

11:                                               ; preds = %6
  store i1 true, ptr @vfs_dedupe_file_range_one.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 438, i32 noundef 9, ptr noundef null) #8
  br label %12

12:                                               ; preds = %11, %6
  %13 = tail call i32 @mnt_want_write_file(ptr noundef %2) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = sext i32 %13 to i64
  br label %75

17:                                               ; preds = %12
  %18 = or i64 %4, %1
  %19 = add i64 %4, %1
  %20 = or i64 %18, %19
  %21 = icmp sgt i64 %20, -1
  br i1 %21, label %22, label %73

22:                                               ; preds = %17
  %23 = or i64 %4, %3
  %24 = add i64 %4, %3
  %25 = or i64 %23, %24
  %26 = icmp sgt i64 %25, -1
  br i1 %26, label %27, label %73

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.vfsmount, ptr %29, i32 0, i32 3
  %31 = load volatile ptr, ptr %30, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !30
  %32 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %34, label %52, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 8
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = tail call ptr @llvm.thread.pointer() #8
  %42 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 83
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.cred, ptr %43, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = tail call i32 @inode_permission(ptr noundef %31, ptr noundef %33, i32 noundef 2) #8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %49, %40, %35, %27
  %53 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %28, align 8
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load ptr, ptr %32, align 8
  %59 = load i16, ptr %58, align 8
  %60 = and i16 %59, -4096
  %61 = icmp eq i16 %60, 16384
  br i1 %61, label %73, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.file_operations, ptr %64, i32 0, i32 30
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = icmp eq i64 %4, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = or i32 %5, 1
  %72 = tail call i64 %66(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %71) #8
  br label %73

73:                                               ; preds = %70, %68, %62, %57, %52, %49, %22, %17
  %74 = phi i64 [ -22, %17 ], [ -22, %22 ], [ -18, %52 ], [ -21, %57 ], [ %72, %70 ], [ -22, %62 ], [ -1, %49 ], [ 0, %68 ]
  tail call void @mnt_drop_write_file(ptr noundef %2) #8
  br label %75

75:                                               ; preds = %73, %15
  %76 = phi i64 [ %16, %15 ], [ %74, %73 ]
  ret i64 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_dedupe_file_range(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file_dedupe_range, ptr %1, i32 0, i32 2
  %6 = load i16, ptr %5, align 8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %102, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.file_dedupe_range, ptr %1, i32 0, i32 3
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %102

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.file_dedupe_range, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %102

19:                                               ; preds = %15
  %20 = load i64, ptr %1, align 8
  %21 = getelementptr inbounds %struct.file_dedupe_range, ptr %1, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = load i16, ptr %4, align 8
  %24 = and i16 %23, -4096
  switch i16 %24, label %25 [
    i16 16384, label %102
    i16 -32768, label %26
  ]

25:                                               ; preds = %19
  br label %102

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.file_operations, ptr %28, i32 0, i32 30
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %102, label %32

32:                                               ; preds = %26
  %33 = or i64 %22, %20
  %34 = add i64 %22, %20
  %35 = or i64 %33, %34
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %102, label %37

37:                                               ; preds = %32
  %38 = tail call fastcc i64 @i_size_read(ptr noundef %4)
  %39 = icmp ugt i64 %34, %38
  br i1 %39, label %102, label %40

40:                                               ; preds = %37
  %41 = tail call i64 @llvm.umin.i64(i64 %22, i64 1073741824)
  %42 = zext i16 %6 to i32
  %43 = icmp eq i16 %6, 0
  br i1 %43, label %102, label %44

44:                                               ; preds = %44, %40
  %45 = phi i32 [ %48, %44 ], [ 0, %40 ]
  %46 = getelementptr %struct.file_dedupe_range, ptr %1, i32 0, i32 5, i32 %45, i32 2
  store i64 0, ptr %46, align 8
  %47 = getelementptr %struct.file_dedupe_range, ptr %1, i32 0, i32 5, i32 %45, i32 3
  store i32 0, ptr %47, align 8
  %48 = add nuw nsw i32 %45, 1
  %49 = icmp eq i32 %48, %42
  br i1 %49, label %50, label %44

50:                                               ; preds = %44
  br i1 %43, label %102, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.file_dedupe_range, ptr %1, i32 0, i32 5
  br label %53

53:                                               ; preds = %98, %51
  %54 = phi ptr [ %100, %98 ], [ %52, %51 ]
  %55 = phi i32 [ %99, %98 ], [ 0, %51 ]
  %56 = load i64, ptr %54, align 8
  %57 = trunc i64 %56 to i32
  %58 = tail call i32 @__fdget(i32 noundef %57) #8, !noalias !31
  %59 = and i32 %58, -4
  %60 = inttoptr i32 %59 to ptr
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.file_dedupe_range_info, ptr %54, i32 0, i32 3
  store i32 -9, ptr %63, align 8
  br label %88

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.file_dedupe_range_info, ptr %54, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.file_dedupe_range_info, ptr %54, i32 0, i32 3
  store i32 -22, ptr %69, align 8
  br label %84

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.file_dedupe_range_info, ptr %54, i32 0, i32 1
  %72 = load i64, ptr %71, align 8
  %73 = tail call i64 @vfs_dedupe_file_range_one(ptr noundef %0, i64 noundef %20, ptr noundef nonnull %60, i64 noundef %72, i64 noundef %41, i32 noundef 2)
  %74 = icmp eq i64 %73, -52
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.file_dedupe_range_info, ptr %54, i32 0, i32 3
  store i32 1, ptr %76, align 8
  br label %84

77:                                               ; preds = %70
  %78 = icmp slt i64 %73, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = trunc i64 %73 to i32
  %81 = getelementptr inbounds %struct.file_dedupe_range_info, ptr %54, i32 0, i32 3
  store i32 %80, ptr %81, align 8
  br label %84

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.file_dedupe_range_info, ptr %54, i32 0, i32 2
  store i64 %41, ptr %83, align 8
  br label %84

84:                                               ; preds = %82, %79, %75, %68
  %85 = and i32 %58, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call void @fput(ptr noundef nonnull %60) #8
  br label %88

88:                                               ; preds = %87, %84, %62
  %89 = tail call ptr @llvm.thread.pointer() #8
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 98, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 256
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93, %88
  %99 = add nuw nsw i32 %55, 1
  %100 = getelementptr %struct.file_dedupe_range_info, ptr %54, i32 1
  %101 = icmp eq i32 %99, %42
  br i1 %101, label %102, label %53

102:                                              ; preds = %98, %93, %50, %40, %37, %32, %26, %25, %19, %15, %11, %2
  %103 = phi i32 [ -22, %25 ], [ -22, %2 ], [ -22, %15 ], [ -22, %11 ], [ -21, %19 ], [ -95, %26 ], [ -22, %32 ], [ -22, %37 ], [ 0, %50 ], [ 0, %40 ], [ 0, %93 ], [ 0, %98 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_check_limits(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_folio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_folio(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }

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
!9 = !{i64 2151515458}
!10 = !{i64 2151515300}
!11 = !{i64 2151515602}
!12 = !{i64 2149179242}
!13 = !{i64 2148369898}
!14 = !{i64 767833, i64 2148257804, i64 2148257830, i64 2148257877, i64 2148257899, i64 2148257927, i64 2148257947}
!15 = !{i64 2148272260, i64 2148272292, i64 2148272321, i64 2148272355, i64 2148272386, i64 2148272409}
!16 = !{i64 2148370101}
!17 = !{i64 2149767540}
!18 = !{i64 2148277681, i64 2148277713, i64 2148277742, i64 2148277776, i64 2148277807, i64 2148277830}
!19 = !{i64 2148379021}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2151365113}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 673511, i64 673572}
!24 = !{i64 692211}
!25 = !{i64 676528}
!26 = !{i64 2151372730}
!27 = !{i64 2151381195}
!28 = !{i64 2151389506}
!29 = !{i64 2151397724}
!30 = !{i64 2151428173}
!31 = !{!32}
!32 = distinct !{!32, !33, !"fdget: argument 0"}
!33 = distinct !{!33, !"fdget"}
