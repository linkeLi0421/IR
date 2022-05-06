; ModuleID = '/llk/IR/fs/ioctl.c_pt.bc'
source_filename = "../fs/ioctl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fiemap_fill_next_extent:\09\09\09\09\09"
module asm "\09.asciz \09\22fiemap_fill_next_extent\22\09\09\09\09\09"
module asm "__kstrtabns_fiemap_fill_next_extent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fiemap_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22fiemap_prep\22\09\09\09\09\09"
module asm "__kstrtabns_fiemap_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fileattr_fill_xflags:\09\09\09\09\09"
module asm "\09.asciz \09\22fileattr_fill_xflags\22\09\09\09\09\09"
module asm "__kstrtabns_fileattr_fill_xflags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fileattr_fill_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22fileattr_fill_flags\22\09\09\09\09\09"
module asm "__kstrtabns_fileattr_fill_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_fileattr_get:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_fileattr_get\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_fileattr_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_fsxattr_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_fsxattr_to_user\22\09\09\09\09\09"
module asm "__kstrtabns_copy_fsxattr_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_fileattr_set:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_fileattr_set\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_fileattr_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fiemap_extent = type { i64, i64, i64, [2 x i64], i32, [3 x i32] }
%struct.fiemap_extent_info = type { i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.88, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.89, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.90, ptr, %struct.address_space, %struct.list_head, %union.anon.93, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.88 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.89 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.90 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.93 = type { ptr }
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
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.96, %struct.list_head, %struct.list_head, %union.anon.97 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.94 }
%union.anon.94 = type { i64 }
%union.anon.96 = type { %struct.list_head }
%union.anon.97 = type { %struct.hlist_node }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.fsxattr = type { i32, i32, i32, i32, i32, [8 x i8] }
%struct.file_clone_range = type { i64, i64, i64, i64 }
%struct.fiemap = type { i64, i64, i32, i32, i32, i32, [0 x %struct.fiemap_extent] }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_dedupe_range = type { i64, i64, i16, i16, i32, [0 x %struct.file_dedupe_range_info] }
%struct.file_dedupe_range_info = type { i64, i64, i64, i32, i32 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.space_resv = type { i16, i16, i64, i64, i32, i32, [4 x i32] }

@__kstrtab_vfs_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_ioctl to i32), ptr @__kstrtab_vfs_ioctl, ptr @__kstrtabns_vfs_ioctl }, section "___ksymtab+vfs_ioctl", align 4
@__kstrtab_fiemap_fill_next_extent = external dso_local constant [0 x i8], align 1
@__kstrtabns_fiemap_fill_next_extent = external dso_local constant [0 x i8], align 1
@__ksymtab_fiemap_fill_next_extent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fiemap_fill_next_extent to i32), ptr @__kstrtab_fiemap_fill_next_extent, ptr @__kstrtabns_fiemap_fill_next_extent }, section "___ksymtab+fiemap_fill_next_extent", align 4
@__kstrtab_fiemap_prep = external dso_local constant [0 x i8], align 1
@__kstrtabns_fiemap_prep = external dso_local constant [0 x i8], align 1
@__ksymtab_fiemap_prep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fiemap_prep to i32), ptr @__kstrtab_fiemap_prep, ptr @__kstrtabns_fiemap_prep }, section "___ksymtab+fiemap_prep", align 4
@__kstrtab_fileattr_fill_xflags = external dso_local constant [0 x i8], align 1
@__kstrtabns_fileattr_fill_xflags = external dso_local constant [0 x i8], align 1
@__ksymtab_fileattr_fill_xflags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fileattr_fill_xflags to i32), ptr @__kstrtab_fileattr_fill_xflags, ptr @__kstrtabns_fileattr_fill_xflags }, section "___ksymtab+fileattr_fill_xflags", align 4
@__kstrtab_fileattr_fill_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_fileattr_fill_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_fileattr_fill_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fileattr_fill_flags to i32), ptr @__kstrtab_fileattr_fill_flags, ptr @__kstrtabns_fileattr_fill_flags }, section "___ksymtab+fileattr_fill_flags", align 4
@__kstrtab_vfs_fileattr_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_fileattr_get = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_fileattr_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_fileattr_get to i32), ptr @__kstrtab_vfs_fileattr_get, ptr @__kstrtabns_vfs_fileattr_get }, section "___ksymtab+vfs_fileattr_get", align 4
@__kstrtab_copy_fsxattr_to_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_fsxattr_to_user = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_fsxattr_to_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_fsxattr_to_user to i32), ptr @__kstrtab_copy_fsxattr_to_user, ptr @__kstrtabns_copy_fsxattr_to_user }, section "___ksymtab+copy_fsxattr_to_user", align 4
@__kstrtab_vfs_fileattr_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_fileattr_set = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_fileattr_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_fileattr_set to i32), ptr @__kstrtab_vfs_fileattr_set, ptr @__kstrtabns_vfs_fileattr_set }, section "___ksymtab+vfs_fileattr_set", align 4
@__const.ioctl_getflags.fa = private unnamed_addr constant { i32, i32, i32, i32, i32, i32, i8, [3 x i8] } { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 1, [3 x i8] zeroinitializer }, align 4
@__const.ioctl_fsgetxattr.fa = private unnamed_addr constant { i32, i32, i32, i32, i32, i32, i8, [3 x i8] } { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 2, [3 x i8] zeroinitializer }, align 4
@ioctl_fibmap._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.ioctl_fibmap = private unnamed_addr constant [13 x i8] c"ioctl_fibmap\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"\014[%s/%d] FS: %s File: %pD4 would truncate fibmap result\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_copy_fsxattr_to_user, ptr @__ksymtab_fiemap_fill_next_extent, ptr @__ksymtab_fiemap_prep, ptr @__ksymtab_fileattr_fill_flags, ptr @__ksymtab_fileattr_fill_xflags, ptr @__ksymtab_vfs_fileattr_get, ptr @__ksymtab_vfs_fileattr_set, ptr @__ksymtab_vfs_ioctl], section "llvm.metadata"

@sys_ioctl = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_ioctl

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file_operations, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  %11 = icmp eq i32 %10, -515
  %12 = select i1 %11, i32 -25, i32 %10
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ %12, %9 ], [ -25, %3 ]
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fiemap_fill_next_extent(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.fiemap_extent, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #9
  %7 = getelementptr inbounds %struct.fiemap_extent_info, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fiemap_extent_info, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.fiemap_extent_info, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  br i1 %11, label %14, label %17

14:                                               ; preds = %5
  %15 = add i32 %13, 1
  store i32 %15, ptr %12, align 4
  %16 = and i32 %4, 1
  br label %53

17:                                               ; preds = %5
  %18 = icmp ult i32 %13, %10
  br i1 %18, label %19, label %53

19:                                               ; preds = %17
  %20 = lshr i32 %4, 1
  %21 = and i32 %20, 2
  %22 = or i32 %21, %4
  %23 = lshr i32 %4, 4
  %24 = and i32 %23, 8
  %25 = or i32 %22, %24
  %26 = and i32 %4, 1536
  %27 = icmp eq i32 %26, 0
  %28 = or i32 %25, 256
  %29 = select i1 %27, i32 %25, i32 %28
  %30 = getelementptr inbounds i8, ptr %6, i32 24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %30, i8 0, i32 32, i1 false)
  store i64 %1, ptr %6, align 8
  %31 = getelementptr inbounds %struct.fiemap_extent, ptr %6, i32 0, i32 1
  store i64 %2, ptr %31, align 8
  %32 = getelementptr inbounds %struct.fiemap_extent, ptr %6, i32 0, i32 2
  store i64 %3, ptr %32, align 8
  %33 = getelementptr inbounds %struct.fiemap_extent, ptr %6, i32 0, i32 4
  store i32 %29, ptr %33, align 8
  %34 = getelementptr %struct.fiemap_extent, ptr %8, i32 %13
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %34, i32 56, i32 -1090519040) #10, !srcloc !8
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %19
  %39 = tail call ptr @llvm.thread.pointer() #9
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %41 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %40) #11, !srcloc !9
  %42 = and i32 %41, -13
  %43 = or i32 %42, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %44 = call i32 @arm_copy_to_user(ptr noundef %34, ptr noundef nonnull %6, i32 noundef 56) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load i32, ptr %12, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %12, align 4
  %49 = load i32, ptr %9, align 4
  %50 = icmp eq i32 %48, %49
  %51 = and i32 %29, 1
  %52 = select i1 %50, i32 1, i32 %51
  br label %53

53:                                               ; preds = %46, %38, %19, %17, %14
  %54 = phi i32 [ %16, %14 ], [ 1, %17 ], [ -14, %38 ], [ %52, %46 ], [ -14, %19 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #9
  ret i32 %54
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fiemap_prep(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i64 noundef %2, ptr nocapture noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 4
  %9 = load i64, ptr %8, align 8
  %10 = load i64, ptr %3, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %5
  %13 = icmp ult i64 %9, %2
  br i1 %13, label %35, label %14

14:                                               ; preds = %12
  %15 = icmp ult i64 %9, %10
  %16 = sub i64 %9, %10
  %17 = icmp ult i64 %16, %2
  %18 = or i1 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = sub i64 %9, %2
  store i64 %20, ptr %3, align 8
  br label %21

21:                                               ; preds = %19, %14
  %22 = and i32 %4, 2
  %23 = load i32, ptr %1, align 4
  %24 = xor i32 %22, -2
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 %25, ptr %1, align 4
  br label %35

28:                                               ; preds = %21
  %29 = and i32 %23, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 @filemap_write_and_wait_range(ptr noundef %33, i64 noundef 0, i64 noundef 9223372036854775807) #9
  br label %35

35:                                               ; preds = %31, %28, %27, %12, %5
  %36 = phi i32 [ -53, %27 ], [ -22, %5 ], [ -27, %12 ], [ %34, %31 ], [ 0, %28 ]
  ret i32 %36
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @fileattr_fill_xflags(ptr nocapture noundef %0, i32 noundef %1) #3 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %0, i8 0, i32 28, i1 false)
  %3 = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 6
  store i8 2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 1
  store i32 %1, ptr %4, align 4
  %5 = and i32 %1, 33528
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = shl i32 %1, 10
  %9 = and i32 %8, 33554432
  %10 = lshr i32 %1, 1
  %11 = and i32 %10, 64
  %12 = shl i32 %1, 1
  %13 = and i32 %12, 128
  %14 = lshr i32 %1, 2
  %15 = and i32 %14, 8
  %16 = shl i32 %1, 1
  %17 = and i32 %16, 48
  %18 = or i32 %15, %17
  %19 = or i32 %13, %18
  %20 = or i32 %11, %19
  %21 = or i32 %9, %20
  %22 = shl i32 %1, 20
  %23 = and i32 %22, 536870912
  %24 = or i32 %23, %21
  store i32 %24, ptr %0, align 4
  br label %25

25:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @fileattr_fill_flags(ptr nocapture noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds i8, ptr %0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %3, i8 0, i32 24, i1 false)
  %4 = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 6
  store i8 1, ptr %4, align 4
  store i32 %1, ptr %0, align 4
  %5 = and i32 %1, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 1
  store i32 32, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ 32, %7 ], [ 0, %2 ]
  %11 = and i32 %1, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 1
  %15 = or i32 %10, 8
  store i32 %15, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i32 [ %15, %13 ], [ %10, %9 ]
  %18 = and i32 %1, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 1
  %22 = or i32 %17, 16
  store i32 %22, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i32 [ %22, %20 ], [ %17, %16 ]
  %25 = and i32 %1, 64
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 1
  %29 = or i32 %24, 128
  store i32 %29, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i32 [ %29, %27 ], [ %24, %23 ]
  %32 = and i32 %1, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 1
  %36 = or i32 %31, 64
  store i32 %36, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i32 [ %36, %34 ], [ %31, %30 ]
  %39 = and i32 %1, 33554432
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 1
  %43 = or i32 %38, 32768
  store i32 %43, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi i32 [ %43, %41 ], [ %38, %37 ]
  %46 = and i32 %1, 536870912
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 1
  %50 = or i32 %45, 512
  store i32 %50, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_fileattr_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode_operations, ptr %6, i32 0, i32 22
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %0, ptr noundef %1) #9
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ %11, %10 ], [ -515, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_fsxattr_to_user(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.fsxattr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %3, i32 20
  store i64 0, ptr %5, align 4
  %6 = load i32, ptr %4, align 4
  store i32 %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fsxattr, ptr %3, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.fsxattr, ptr %3, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fsxattr, ptr %3, i32 0, i32 3
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.fileattr, ptr %0, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fsxattr, ptr %3, i32 0, i32 4
  store i32 %17, ptr %18, align 4
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 28, i32 -1090519040) #10, !srcloc !8
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = tail call ptr @llvm.thread.pointer() #9
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #11, !srcloc !9
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %28 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 28) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 0, i32 -14
  br label %31

31:                                               ; preds = %22, %2
  %32 = phi i32 [ -14, %2 ], [ %30, %22 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #9
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_fileattr_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.fileattr, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false)
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode_operations, ptr %8, i32 0, i32 21
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %120, label %12

12:                                               ; preds = %3
  %13 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %0, ptr noundef %6) #9
  br i1 %13, label %14, label %120

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  tail call void @down_write(ptr noundef %15) #9
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 7
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.inode_operations, ptr %18, i32 0, i32 22
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %118, label %22

22:                                               ; preds = %14
  %23 = call i32 %20(ptr noundef %1, ptr noundef nonnull %4) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %118

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 6
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.fileattr, ptr %4, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, -33529
  %34 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.fileattr, ptr %4, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.fileattr, ptr %4, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.fileattr, ptr %4, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 4
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.fileattr, ptr %4, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 5
  store i32 %47, ptr %48, align 4
  %49 = load i32, ptr %2, align 4
  %50 = load i32, ptr %4, align 4
  br label %56

51:                                               ; preds = %25
  %52 = load i32, ptr %4, align 4
  %53 = and i32 %52, -570425593
  %54 = load i32, ptr %2, align 4
  %55 = or i32 %54, %53
  store i32 %55, ptr %2, align 4
  br label %56

56:                                               ; preds = %51, %30
  %57 = phi i32 [ %52, %51 ], [ %50, %30 ]
  %58 = phi i32 [ %55, %51 ], [ %49, %30 ]
  %59 = xor i32 %57, %58
  %60 = and i32 %59, 48
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = call zeroext i1 @capable(i32 noundef 9) #9
  br i1 %63, label %64, label %118

64:                                               ; preds = %62, %56
  %65 = getelementptr inbounds %struct.fileattr, ptr %4, i32 0, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = icmp ne i32 %68, -1
  %70 = icmp eq i32 %66, -1
  %71 = or i1 %70, %69
  br i1 %71, label %72, label %118

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 2048
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i16, ptr %6, align 8
  %79 = and i16 %78, -4096
  %80 = icmp eq i16 %79, -32768
  br i1 %80, label %81, label %118

81:                                               ; preds = %77, %72
  %82 = and i32 %74, 4096
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load i16, ptr %6, align 8
  %86 = and i16 %85, -4096
  %87 = icmp eq i16 %86, 16384
  br i1 %87, label %88, label %118

88:                                               ; preds = %84, %81
  %89 = and i32 %74, 65536
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i16, ptr %6, align 8
  %93 = and i16 %92, -4096
  switch i16 %93, label %118 [
    i16 -32768, label %94
    i16 16384, label %94
  ]

94:                                               ; preds = %91, %91, %88
  %95 = and i32 %74, 32768
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i16, ptr %6, align 8
  %99 = and i16 %98, -4096
  switch i16 %99, label %118 [
    i16 -32768, label %100
    i16 16384, label %100
  ]

100:                                              ; preds = %97, %97, %94
  %101 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = and i32 %74, -6145
  store i32 %105, ptr %73, align 4
  br label %106

106:                                              ; preds = %104, %100
  %107 = phi i32 [ %105, %104 ], [ %74, %100 ]
  %108 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 5
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = and i32 %107, -65537
  store i32 %112, ptr %73, align 4
  br label %113

113:                                              ; preds = %111, %106
  %114 = load ptr, ptr %7, align 8
  %115 = getelementptr inbounds %struct.inode_operations, ptr %114, i32 0, i32 21
  %116 = load ptr, ptr %115, align 4
  %117 = call i32 %116(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  br label %118

118:                                              ; preds = %113, %97, %91, %84, %77, %64, %62, %22, %14
  %119 = phi i32 [ %23, %22 ], [ %117, %113 ], [ -515, %14 ], [ -22, %64 ], [ -22, %97 ], [ -22, %91 ], [ -22, %84 ], [ -22, %77 ], [ -1, %62 ]
  call void @up_write(ptr noundef %15) #9
  br label %120

120:                                              ; preds = %118, %12, %3
  %121 = phi i32 [ %119, %118 ], [ -515, %3 ], [ -1, %12 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #9
  ret i32 %121
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ioctl(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.fsxattr, align 4
  %6 = alloca %struct.fileattr, align 4
  %7 = alloca %struct.fsxattr, align 4
  %8 = alloca %struct.fileattr, align 4
  %9 = alloca %struct.fileattr, align 4
  %10 = alloca %struct.fileattr, align 4
  %11 = alloca %struct.file_clone_range, align 8
  %12 = alloca %struct.fiemap, align 8
  %13 = alloca %struct.fiemap_extent_info, align 4
  %14 = alloca i64, align 8
  %15 = tail call i32 @__fdget(i32 noundef %0) #9, !noalias !12
  %16 = and i32 %15, -4
  %17 = inttoptr i32 %16 to ptr
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %596, label %19

19:                                               ; preds = %3
  %20 = inttoptr i32 %2 to ptr
  %21 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  switch i32 %1, label %522 [
    i32 21585, label %23
    i32 21584, label %24
    i32 21537, label %25
    i32 21586, label %45
    i32 21598, label %73
    i32 -1073457033, label %92
    i32 -1073457032, label %113
    i32 -1071618549, label %129
    i32 2, label %180
    i32 1074041865, label %193
    i32 1075876877, label %213
    i32 -1072131018, label %265
    i32 21531, label %305
    i32 -2147195391, label %346
    i32 1074030082, label %369
    i32 -2145626081, label %416
    i32 1075599392, label %461
  ]

23:                                               ; preds = %19
  tail call void @set_close_on_exec(i32 noundef %0, i32 noundef 1) #9
  br label %591

24:                                               ; preds = %19
  tail call void @set_close_on_exec(i32 noundef %0, i32 noundef 0) #9
  br label %591

25:                                               ; preds = %19
  %26 = tail call ptr @llvm.thread.pointer() #9
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %27) #11, !srcloc !9
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %31 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %20, i32 -1090519041) #9, !srcloc !15
  %32 = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %578

34:                                               ; preds = %25
  %35 = extractvalue { i32, i32 } %31, 1
  %36 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %36) #9
  %37 = icmp eq i32 %35, 0
  %38 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, -2049
  %41 = select i1 %37, i32 0, i32 2048
  %42 = or i32 %40, %41
  store i32 %42, ptr %38, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %43 = load i16, ptr %36, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %36, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %591

45:                                               ; preds = %19
  %46 = tail call ptr @llvm.thread.pointer() #9
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 3
  %48 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %47) #11, !srcloc !9
  %49 = and i32 %48, -13
  %50 = or i32 %49, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %51 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %20, i32 -1090519041) #9, !srcloc !20
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = extractvalue { i32, i32 } %51, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %55, label %578

55:                                               ; preds = %45
  %56 = icmp eq i32 %53, 0
  %57 = select i1 %56, i32 0, i32 8192
  %58 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 8192
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.file_operations, ptr %64, i32 0, i32 18
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = tail call i32 %66(i32 noundef %0, ptr noundef nonnull %17, i32 noundef %53) #9
  br label %70

70:                                               ; preds = %68, %62, %55
  %71 = phi i32 [ %69, %68 ], [ 0, %55 ], [ -25, %62 ]
  %72 = tail call i32 @llvm.smin.i32(i32 %71, i32 0) #9
  br label %578

73:                                               ; preds = %19
  %74 = load i16, ptr %22, align 8
  %75 = and i16 %74, -4096
  switch i16 %75, label %591 [
    i16 16384, label %76
    i16 -32768, label %76
    i16 -24576, label %76
  ]

76:                                               ; preds = %73, %73, %73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #9
  %77 = tail call i64 @inode_get_bytes(ptr noundef %22) #9
  store i64 %77, ptr %14, align 8
  %78 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 8, i32 -1090519040) #10, !srcloc !8
  %79 = extractvalue { i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = tail call ptr @llvm.thread.pointer() #9
  %83 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 3
  %84 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %83) #11, !srcloc !9
  %85 = and i32 %84, -13
  %86 = or i32 %85, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %87 = call i32 @arm_copy_to_user(ptr noundef %20, ptr noundef nonnull %14, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 0, i32 -14
  br label %90

90:                                               ; preds = %81, %76
  %91 = phi i32 [ -14, %76 ], [ %89, %81 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #9
  br label %591

92:                                               ; preds = %19
  %93 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 47
  %96 = load ptr, ptr %95, align 4
  %97 = tail call zeroext i1 @ns_capable(ptr noundef %96, i32 noundef 21) #9
  br i1 %97, label %98, label %591

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 6
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.super_operations, ptr %100, i32 0, i32 10
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  %104 = getelementptr inbounds %struct.super_operations, ptr %100, i32 0, i32 9
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %103, label %107, label %108

107:                                              ; preds = %98
  br i1 %106, label %591, label %109

108:                                              ; preds = %98
  br i1 %106, label %111, label %109

109:                                              ; preds = %108, %107
  %110 = tail call i32 %105(ptr noundef %94) #9
  br label %578

111:                                              ; preds = %108
  %112 = tail call i32 @freeze_super(ptr noundef %94) #9
  br label %578

113:                                              ; preds = %19
  %114 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.super_block, ptr %115, i32 0, i32 47
  %117 = load ptr, ptr %116, align 4
  %118 = tail call zeroext i1 @ns_capable(ptr noundef %117, i32 noundef 21) #9
  br i1 %118, label %119, label %591

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.super_block, ptr %115, i32 0, i32 6
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.super_operations, ptr %121, i32 0, i32 11
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %119
  %126 = tail call i32 %123(ptr noundef %115) #9
  br label %578

127:                                              ; preds = %119
  %128 = tail call i32 @thaw_super(ptr noundef %115) #9
  br label %578

129:                                              ; preds = %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i32 32, i1 false) #9, !annotation !21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #9
  %130 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 0, ptr %130, align 4
  %131 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 7
  %132 = load ptr, ptr %131, align 8
  %133 = getelementptr inbounds %struct.inode_operations, ptr %132, i32 0, i32 16
  %134 = load ptr, ptr %133, align 64
  %135 = icmp eq ptr %134, null
  br i1 %135, label %178, label %136

136:                                              ; preds = %129
  %137 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 32, i32 -1090519040) #10
  %138 = extractvalue { i32, i32 } %137, 0
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %148, !prof !22

140:                                              ; preds = %136
  %141 = tail call ptr @llvm.thread.pointer() #9
  %142 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 3
  %143 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %142) #11, !srcloc !9
  %144 = and i32 %143, -13
  %145 = or i32 %144, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %145) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %146 = call i32 @arm_copy_from_user(ptr noundef nonnull %12, ptr noundef %20, i32 noundef 32) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %143) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %152, label %148, !prof !22

148:                                              ; preds = %140, %136
  %149 = phi i32 [ %146, %140 ], [ 32, %136 ]
  %150 = sub i32 32, %149
  %151 = getelementptr i8, ptr %12, i32 %150
  call void @llvm.memset.p0.i32(ptr align 1 %151, i8 0, i32 %149, i1 false) #9
  br label %178

152:                                              ; preds = %140
  %153 = getelementptr inbounds %struct.fiemap, ptr %12, i32 0, i32 4
  %154 = load i32, ptr %153, align 8
  %155 = icmp ugt i32 %154, 76695844
  br i1 %155, label %178, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.fiemap, ptr %12, i32 0, i32 2
  %158 = load i32, ptr %157, align 8
  store i32 %158, ptr %13, align 4
  %159 = getelementptr inbounds %struct.fiemap_extent_info, ptr %13, i32 0, i32 2
  store i32 %154, ptr %159, align 4
  %160 = getelementptr inbounds %struct.fiemap, ptr %20, i32 0, i32 6
  %161 = getelementptr inbounds %struct.fiemap_extent_info, ptr %13, i32 0, i32 3
  store ptr %160, ptr %161, align 4
  %162 = load ptr, ptr %131, align 8
  %163 = getelementptr inbounds %struct.inode_operations, ptr %162, i32 0, i32 16
  %164 = load ptr, ptr %163, align 64
  %165 = load i64, ptr %12, align 8
  %166 = getelementptr inbounds %struct.fiemap, ptr %12, i32 0, i32 1
  %167 = load i64, ptr %166, align 8
  %168 = call i32 %164(ptr noundef %22, ptr noundef nonnull %13, i64 noundef %165, i64 noundef %167) #9
  %169 = load i32, ptr %13, align 4
  store i32 %169, ptr %157, align 8
  %170 = load i32, ptr %130, align 4
  %171 = getelementptr inbounds %struct.fiemap, ptr %12, i32 0, i32 3
  store i32 %170, ptr %171, align 4
  %172 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %142) #11, !srcloc !9
  %173 = and i32 %172, -13
  %174 = or i32 %173, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %174) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %175 = call i32 @arm_copy_to_user(ptr noundef %20, ptr noundef nonnull %12, i32 noundef 32) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %172) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %176 = icmp eq i32 %175, 0
  %177 = select i1 %176, i32 %168, i32 -14
  br label %178

178:                                              ; preds = %156, %152, %148, %129
  %179 = phi i32 [ -95, %129 ], [ -22, %152 ], [ -14, %148 ], [ %177, %156 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #9
  br label %578

180:                                              ; preds = %19
  %181 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.super_block, ptr %182, i32 0, i32 3
  %184 = load i32, ptr %183, align 16
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %591, label %186

186:                                              ; preds = %180
  %187 = tail call ptr @llvm.thread.pointer() #9
  %188 = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 3
  %189 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %188) #11, !srcloc !9
  %190 = and i32 %189, -13
  %191 = or i32 %190, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %191) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %192 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %20, i32 %184, i32 -1090519041) #9, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %189) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  br label %578

193:                                              ; preds = %19
  %194 = tail call i32 @__fdget(i32 noundef %2) #9, !noalias !24
  %195 = and i32 %194, -4
  %196 = inttoptr i32 %195 to ptr
  %197 = icmp eq i32 %195, 0
  br i1 %197, label %591, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.file, ptr %196, i32 0, i32 1
  %200 = load ptr, ptr %199, align 8
  %201 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 1
  %202 = load ptr, ptr %201, align 8
  %203 = icmp eq ptr %200, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = tail call i64 @vfs_clone_file_range(ptr noundef nonnull %196, i64 noundef 0, ptr noundef nonnull %17, i64 noundef 0, i64 noundef 0, i32 noundef 0) #9
  %206 = tail call i64 @llvm.smin.i64(i64 %205, i64 0) #9
  %207 = trunc i64 %206 to i32
  br label %208

208:                                              ; preds = %204, %198
  %209 = phi i32 [ -18, %198 ], [ %207, %204 ]
  %210 = and i32 %194, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %578, label %212

212:                                              ; preds = %208
  tail call void @fput(ptr noundef nonnull %196) #9
  br label %578

213:                                              ; preds = %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i32 32, i1 false) #9, !annotation !21
  %214 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 32, i32 -1090519040) #10, !srcloc !27
  %215 = extractvalue { i32, i32 } %214, 0
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %225, !prof !22

217:                                              ; preds = %213
  %218 = tail call ptr @llvm.thread.pointer() #9
  %219 = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 3
  %220 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %219) #11, !srcloc !9
  %221 = and i32 %220, -13
  %222 = or i32 %221, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %222) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %223 = call i32 @arm_copy_from_user(ptr noundef nonnull %11, ptr noundef %20, i32 noundef 32) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %220) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %229, label %225, !prof !22

225:                                              ; preds = %217, %213
  %226 = phi i32 [ %223, %217 ], [ 32, %213 ]
  %227 = sub i32 32, %226
  %228 = getelementptr i8, ptr %11, i32 %227
  call void @llvm.memset.p0.i32(ptr align 1 %228, i8 0, i32 %226, i1 false) #9
  br label %263

229:                                              ; preds = %217
  %230 = load i64, ptr %11, align 8
  %231 = trunc i64 %230 to i32
  %232 = getelementptr inbounds %struct.file_clone_range, ptr %11, i32 0, i32 1
  %233 = load i64, ptr %232, align 8
  %234 = getelementptr inbounds %struct.file_clone_range, ptr %11, i32 0, i32 2
  %235 = load i64, ptr %234, align 8
  %236 = getelementptr inbounds %struct.file_clone_range, ptr %11, i32 0, i32 3
  %237 = load i64, ptr %236, align 8
  %238 = call i32 @__fdget(i32 noundef %231) #9, !noalias !28
  %239 = and i32 %238, -4
  %240 = inttoptr i32 %239 to ptr
  %241 = icmp eq i32 %239, 0
  br i1 %241, label %263, label %242

242:                                              ; preds = %229
  %243 = getelementptr inbounds %struct.file, ptr %240, i32 0, i32 1
  %244 = load ptr, ptr %243, align 8
  %245 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 1
  %246 = load ptr, ptr %245, align 8
  %247 = icmp eq ptr %244, %246
  br i1 %247, label %248, label %258

248:                                              ; preds = %242
  %249 = call i64 @vfs_clone_file_range(ptr noundef nonnull %240, i64 noundef %233, ptr noundef nonnull %17, i64 noundef %237, i64 noundef %235, i32 noundef 0) #9
  %250 = icmp slt i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = trunc i64 %249 to i32
  br label %258

253:                                              ; preds = %248
  %254 = icmp eq i64 %235, 0
  %255 = icmp eq i64 %249, %235
  %256 = select i1 %254, i1 true, i1 %255
  %257 = select i1 %256, i32 0, i32 -22
  br label %258

258:                                              ; preds = %253, %251, %242
  %259 = phi i32 [ -18, %242 ], [ %252, %251 ], [ %257, %253 ]
  %260 = and i32 %238, 1
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %258
  call void @fput(ptr noundef nonnull %240) #9
  br label %263

263:                                              ; preds = %262, %258, %229, %225
  %264 = phi i32 [ -9, %229 ], [ %259, %258 ], [ %259, %262 ], [ -14, %225 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #9
  br label %578

265:                                              ; preds = %19
  %266 = getelementptr inbounds %struct.file_dedupe_range, ptr %20, i32 0, i32 2
  %267 = tail call ptr @llvm.thread.pointer() #9
  %268 = getelementptr inbounds %struct.thread_info, ptr %267, i32 0, i32 3
  %269 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %268) #11, !srcloc !9
  %270 = and i32 %269, -13
  %271 = or i32 %270, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %271) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %272 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %266, i32 -1090519041) #9, !srcloc !31
  %273 = extractvalue { i32, i32 } %272, 0
  %274 = extractvalue { i32, i32 } %272, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %269) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %275 = trunc i32 %274 to i16
  %276 = icmp eq i32 %273, 0
  br i1 %276, label %277, label %302

277:                                              ; preds = %265
  %278 = shl i32 %274, 5
  %279 = and i32 %278, 2097120
  %280 = or i32 %279, 24
  %281 = icmp ugt i32 %280, 4096
  br i1 %281, label %302, label %282

282:                                              ; preds = %277
  %283 = tail call ptr @memdup_user(ptr noundef %20, i32 noundef %280) #9
  %284 = icmp ugt ptr %283, inttoptr (i32 -4096 to ptr)
  br i1 %284, label %285, label %287

285:                                              ; preds = %282
  %286 = ptrtoint ptr %283 to i32
  br label %302

287:                                              ; preds = %282
  %288 = getelementptr inbounds %struct.file_dedupe_range, ptr %283, i32 0, i32 2
  store i16 %275, ptr %288, align 8
  %289 = tail call i32 @vfs_dedupe_file_range(ptr noundef nonnull %17, ptr noundef %283) #9
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %302

291:                                              ; preds = %287
  %292 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 %280, i32 -1090519040) #10, !srcloc !8
  %293 = extractvalue { i32, i32 } %292, 0
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %291
  %296 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %268) #11, !srcloc !9
  %297 = and i32 %296, -13
  %298 = or i32 %297, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %298) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %299 = tail call i32 @arm_copy_to_user(ptr noundef %20, ptr noundef %283, i32 noundef %280) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %296) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %300 = icmp eq i32 %299, 0
  %301 = select i1 %300, i32 0, i32 -14
  br label %302

302:                                              ; preds = %295, %291, %287, %285, %277, %265
  %303 = phi i32 [ %286, %285 ], [ %289, %287 ], [ -14, %265 ], [ -12, %277 ], [ %301, %295 ], [ -14, %291 ]
  %304 = phi ptr [ null, %285 ], [ %283, %287 ], [ null, %265 ], [ null, %277 ], [ %283, %295 ], [ %283, %291 ]
  tail call void @kfree(ptr noundef %304) #9
  br label %578

305:                                              ; preds = %19
  %306 = load i16, ptr %22, align 8
  %307 = and i16 %306, -4096
  %308 = icmp eq i16 %307, -32768
  br i1 %308, label %319, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 3
  %311 = load ptr, ptr %310, align 4
  %312 = getelementptr inbounds %struct.file_operations, ptr %311, i32 0, i32 10
  %313 = load ptr, ptr %312, align 4
  %314 = icmp eq ptr %313, null
  br i1 %314, label %591, label %315

315:                                              ; preds = %309
  %316 = tail call i32 %313(ptr noundef nonnull %17, i32 noundef 21531, i32 noundef %2) #9
  %317 = icmp eq i32 %316, -515
  %318 = select i1 %317, i32 -25, i32 %316
  br label %591

319:                                              ; preds = %305
  %320 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 22
  %321 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 13
  br label %322

322:                                              ; preds = %330, %319
  %323 = load volatile i32, ptr %320, align 4
  %324 = and i32 %323, 1
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %330, label %326

326:                                              ; preds = %326, %322
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !32
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !33
  %327 = load volatile i32, ptr %320, align 4
  %328 = and i32 %327, 1
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %326

330:                                              ; preds = %326, %322
  %331 = phi i32 [ %323, %322 ], [ %327, %326 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !34
  %332 = load i64, ptr %321, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !35
  %333 = load volatile i32, ptr %320, align 4
  %334 = icmp eq i32 %333, %331
  br i1 %334, label %335, label %322

335:                                              ; preds = %330
  %336 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 10
  %337 = load i64, ptr %336, align 8
  %338 = sub i64 %332, %337
  %339 = trunc i64 %338 to i32
  %340 = tail call ptr @llvm.thread.pointer() #9
  %341 = getelementptr inbounds %struct.thread_info, ptr %340, i32 0, i32 3
  %342 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %341) #11, !srcloc !9
  %343 = and i32 %342, -13
  %344 = or i32 %343, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %344) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %345 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %20, i32 %339, i32 -1090519041) #9, !srcloc !36
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %342) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  br label %578

346:                                              ; preds = %19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %10, ptr noundef nonnull align 4 dereferenceable(28) @__const.ioctl_getflags.fa, i32 28, i1 false) #9
  %347 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 1, i32 1
  %348 = load ptr, ptr %347, align 4
  %349 = getelementptr inbounds %struct.dentry, ptr %348, i32 0, i32 5
  %350 = load ptr, ptr %349, align 8
  %351 = getelementptr inbounds %struct.inode, ptr %350, i32 0, i32 7
  %352 = load ptr, ptr %351, align 8
  %353 = getelementptr inbounds %struct.inode_operations, ptr %352, i32 0, i32 22
  %354 = load ptr, ptr %353, align 8
  %355 = icmp eq ptr %354, null
  br i1 %355, label %367, label %356

356:                                              ; preds = %346
  %357 = call i32 %354(ptr noundef %348, ptr noundef nonnull %10) #9
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %367

359:                                              ; preds = %356
  %360 = load i32, ptr %10, align 4
  %361 = tail call ptr @llvm.thread.pointer() #9
  %362 = getelementptr inbounds %struct.thread_info, ptr %361, i32 0, i32 3
  %363 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %362) #11, !srcloc !9
  %364 = and i32 %363, -13
  %365 = or i32 %364, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %365) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %366 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %20, i32 %360, i32 -1090519041) #9, !srcloc !37
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %363) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  br label %367

367:                                              ; preds = %359, %356, %346
  %368 = phi i32 [ %357, %356 ], [ %366, %359 ], [ -515, %346 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #9
  br label %578

369:                                              ; preds = %19
  %370 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 1
  %371 = load ptr, ptr %370, align 8
  %372 = getelementptr inbounds %struct.vfsmount, ptr %371, i32 0, i32 3
  %373 = load volatile ptr, ptr %372, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !38
  %374 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 1, i32 1
  %375 = load ptr, ptr %374, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #9
  %376 = tail call ptr @llvm.thread.pointer() #9
  %377 = getelementptr inbounds %struct.thread_info, ptr %376, i32 0, i32 3
  %378 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %377) #11, !srcloc !9
  %379 = and i32 %378, -13
  %380 = or i32 %379, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %380) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %381 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %20, i32 -1090519041) #9, !srcloc !39
  %382 = extractvalue { i32, i32 } %381, 0
  %383 = extractvalue { i32, i32 } %381, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %378) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %384 = icmp eq i32 %382, 0
  br i1 %384, label %385, label %414

385:                                              ; preds = %369
  %386 = tail call i32 @mnt_want_write_file(ptr noundef nonnull %17) #9
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %414

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(28) %389, i8 0, i32 24, i1 false) #9
  %390 = getelementptr inbounds %struct.fileattr, ptr %9, i32 0, i32 6
  store i8 1, ptr %390, align 4
  store i32 %383, ptr %9, align 4
  %391 = and i32 %383, 570425592
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %412, label %393

393:                                              ; preds = %388
  %394 = lshr i32 %383, 10
  %395 = and i32 %394, 32768
  %396 = lshr i32 %383, 1
  %397 = and i32 %396, 64
  %398 = shl i32 %383, 1
  %399 = and i32 %398, 128
  %400 = and i32 %396, 16
  %401 = and i32 %396, 8
  %402 = shl i32 %383, 2
  %403 = and i32 %402, 32
  %404 = or i32 %401, %403
  %405 = or i32 %404, %400
  %406 = or i32 %405, %399
  %407 = or i32 %406, %397
  %408 = or i32 %407, %395
  %409 = lshr i32 %383, 20
  %410 = and i32 %409, 512
  %411 = or i32 %408, %410
  store i32 %411, ptr %389, align 4
  br label %412

412:                                              ; preds = %393, %388
  %413 = call i32 @vfs_fileattr_set(ptr noundef %373, ptr noundef %375, ptr noundef nonnull %9) #9
  call void @mnt_drop_write_file(ptr noundef nonnull %17) #9
  br label %414

414:                                              ; preds = %412, %385, %369
  %415 = phi i32 [ %382, %369 ], [ %386, %385 ], [ %413, %412 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #9
  br label %578

416:                                              ; preds = %19
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) @__const.ioctl_fsgetxattr.fa, i32 28, i1 false) #9
  %417 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 1, i32 1
  %418 = load ptr, ptr %417, align 4
  %419 = getelementptr inbounds %struct.dentry, ptr %418, i32 0, i32 5
  %420 = load ptr, ptr %419, align 8
  %421 = getelementptr inbounds %struct.inode, ptr %420, i32 0, i32 7
  %422 = load ptr, ptr %421, align 8
  %423 = getelementptr inbounds %struct.inode_operations, ptr %422, i32 0, i32 22
  %424 = load ptr, ptr %423, align 8
  %425 = icmp eq ptr %424, null
  br i1 %425, label %459, label %426

426:                                              ; preds = %416
  %427 = call i32 %424(ptr noundef %418, ptr noundef nonnull %8) #9
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %459

429:                                              ; preds = %426
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #9
  %430 = getelementptr inbounds %struct.fileattr, ptr %8, i32 0, i32 1
  %431 = getelementptr inbounds i8, ptr %7, i32 20
  store i64 0, ptr %431, align 4
  %432 = load i32, ptr %430, align 4
  store i32 %432, ptr %7, align 4
  %433 = getelementptr inbounds %struct.fileattr, ptr %8, i32 0, i32 2
  %434 = load i32, ptr %433, align 4
  %435 = getelementptr inbounds %struct.fsxattr, ptr %7, i32 0, i32 1
  store i32 %434, ptr %435, align 4
  %436 = getelementptr inbounds %struct.fileattr, ptr %8, i32 0, i32 3
  %437 = load i32, ptr %436, align 4
  %438 = getelementptr inbounds %struct.fsxattr, ptr %7, i32 0, i32 2
  store i32 %437, ptr %438, align 4
  %439 = getelementptr inbounds %struct.fileattr, ptr %8, i32 0, i32 4
  %440 = load i32, ptr %439, align 4
  %441 = getelementptr inbounds %struct.fsxattr, ptr %7, i32 0, i32 3
  store i32 %440, ptr %441, align 4
  %442 = getelementptr inbounds %struct.fileattr, ptr %8, i32 0, i32 5
  %443 = load i32, ptr %442, align 4
  %444 = getelementptr inbounds %struct.fsxattr, ptr %7, i32 0, i32 4
  store i32 %443, ptr %444, align 4
  %445 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 28, i32 -1090519040) #10, !srcloc !8
  %446 = extractvalue { i32, i32 } %445, 0
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %448, label %457

448:                                              ; preds = %429
  %449 = tail call ptr @llvm.thread.pointer() #9
  %450 = getelementptr inbounds %struct.thread_info, ptr %449, i32 0, i32 3
  %451 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %450) #11, !srcloc !9
  %452 = and i32 %451, -13
  %453 = or i32 %452, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %453) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %454 = call i32 @arm_copy_to_user(ptr noundef %20, ptr noundef nonnull %7, i32 noundef 28) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %451) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %455 = icmp eq i32 %454, 0
  %456 = select i1 %455, i32 0, i32 -14
  br label %457

457:                                              ; preds = %448, %429
  %458 = phi i32 [ -14, %429 ], [ %456, %448 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #9
  br label %459

459:                                              ; preds = %457, %426, %416
  %460 = phi i32 [ %427, %426 ], [ %458, %457 ], [ -515, %416 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #9
  br label %578

461:                                              ; preds = %19
  %462 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 1
  %463 = load ptr, ptr %462, align 8
  %464 = getelementptr inbounds %struct.vfsmount, ptr %463, i32 0, i32 3
  %465 = load volatile ptr, ptr %464, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !38
  %466 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 1, i32 1
  %467 = load ptr, ptr %466, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false) #9, !annotation !21
  %468 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 28, i32 -1090519040) #10, !srcloc !27
  %469 = extractvalue { i32, i32 } %468, 0
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %502, !prof !22

471:                                              ; preds = %461
  %472 = tail call ptr @llvm.thread.pointer() #9
  %473 = getelementptr inbounds %struct.thread_info, ptr %472, i32 0, i32 3
  %474 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %473) #11, !srcloc !9
  %475 = and i32 %474, -13
  %476 = or i32 %475, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %476) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %477 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %20, i32 noundef 28) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %474) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %502, !prof !22

479:                                              ; preds = %471
  %480 = load i32, ptr %5, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false) #9
  %481 = getelementptr inbounds %struct.fileattr, ptr %6, i32 0, i32 6
  store i8 2, ptr %481, align 4
  %482 = getelementptr inbounds %struct.fileattr, ptr %6, i32 0, i32 1
  store i32 %480, ptr %482, align 4
  %483 = and i32 %480, 33528
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %503, label %485

485:                                              ; preds = %479
  %486 = shl i32 %480, 10
  %487 = and i32 %486, 33554432
  %488 = lshr i32 %480, 1
  %489 = and i32 %488, 64
  %490 = shl i32 %480, 1
  %491 = and i32 %490, 128
  %492 = lshr i32 %480, 2
  %493 = and i32 %492, 8
  %494 = and i32 %490, 48
  %495 = or i32 %493, %494
  %496 = or i32 %495, %491
  %497 = or i32 %496, %489
  %498 = or i32 %497, %487
  %499 = shl i32 %480, 20
  %500 = and i32 %499, 536870912
  %501 = or i32 %498, %500
  store i32 %501, ptr %6, align 4
  br label %503

502:                                              ; preds = %471, %461
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #9
  br label %520

503:                                              ; preds = %485, %479
  %504 = getelementptr inbounds %struct.fsxattr, ptr %5, i32 0, i32 1
  %505 = load i32, ptr %504, align 4
  %506 = getelementptr inbounds %struct.fileattr, ptr %6, i32 0, i32 2
  store i32 %505, ptr %506, align 4
  %507 = getelementptr inbounds %struct.fsxattr, ptr %5, i32 0, i32 2
  %508 = load i32, ptr %507, align 4
  %509 = getelementptr inbounds %struct.fileattr, ptr %6, i32 0, i32 3
  store i32 %508, ptr %509, align 4
  %510 = getelementptr inbounds %struct.fsxattr, ptr %5, i32 0, i32 3
  %511 = load i32, ptr %510, align 4
  %512 = getelementptr inbounds %struct.fileattr, ptr %6, i32 0, i32 4
  store i32 %511, ptr %512, align 4
  %513 = getelementptr inbounds %struct.fsxattr, ptr %5, i32 0, i32 4
  %514 = load i32, ptr %513, align 4
  %515 = getelementptr inbounds %struct.fileattr, ptr %6, i32 0, i32 5
  store i32 %514, ptr %515, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #9
  %516 = call i32 @mnt_want_write_file(ptr noundef nonnull %17) #9
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %520

518:                                              ; preds = %503
  %519 = call i32 @vfs_fileattr_set(ptr noundef %465, ptr noundef %467, ptr noundef nonnull %6) #9
  call void @mnt_drop_write_file(ptr noundef nonnull %17) #9
  br label %520

520:                                              ; preds = %518, %503, %502
  %521 = phi i32 [ -14, %502 ], [ %516, %503 ], [ %519, %518 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #9
  br label %578

522:                                              ; preds = %19
  %523 = load i16, ptr %22, align 8
  %524 = and i16 %523, -4096
  %525 = icmp eq i16 %524, -32768
  br i1 %525, label %526, label %581

526:                                              ; preds = %522
  switch i32 %1, label %581 [
    i32 1, label %527
    i32 1076910120, label %572
    i32 1076910122, label %572
    i32 1076910121, label %574
    i32 1076910123, label %574
    i32 1076910137, label %576
  ]

527:                                              ; preds = %526
  %528 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %529 = load ptr, ptr %528, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %530 = tail call zeroext i1 @capable(i32 noundef 17) #9
  br i1 %530, label %531, label %570

531:                                              ; preds = %527
  %532 = tail call ptr @llvm.thread.pointer() #9
  %533 = getelementptr inbounds %struct.thread_info, ptr %532, i32 0, i32 3
  %534 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %533) #11, !srcloc !9
  %535 = and i32 %534, -13
  %536 = or i32 %535, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %536) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %537 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %20, i32 -1090519041) #9, !srcloc !40
  %538 = extractvalue { i32, i32 } %537, 0
  %539 = extractvalue { i32, i32 } %537, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %534) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %540 = icmp eq i32 %538, 0
  br i1 %540, label %541, label %570

541:                                              ; preds = %531
  %542 = icmp slt i32 %539, 0
  br i1 %542, label %570, label %543

543:                                              ; preds = %541
  %544 = zext i32 %539 to i64
  store i64 %544, ptr %4, align 8
  %545 = call i32 @bmap(ptr noundef %22, ptr noundef nonnull %4) #9
  %546 = load i64, ptr %4, align 8
  %547 = icmp ugt i64 %546, 2147483647
  br i1 %547, label %548, label %557

548:                                              ; preds = %543
  %549 = call i32 @___ratelimit(ptr noundef nonnull @ioctl_fibmap._rs, ptr noundef nonnull @__func__.ioctl_fibmap) #9
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %561, label %551

551:                                              ; preds = %548
  %552 = getelementptr inbounds %struct.task_struct, ptr %532, i32 0, i32 85
  %553 = getelementptr inbounds %struct.task_struct, ptr %532, i32 0, i32 52
  %554 = load i32, ptr %553, align 8
  %555 = getelementptr inbounds %struct.super_block, ptr %529, i32 0, i32 33
  %556 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %552, i32 noundef %554, ptr noundef %555, ptr noundef nonnull %17) #12
  br label %561

557:                                              ; preds = %543
  %558 = icmp eq i32 %545, 0
  %559 = trunc i64 %546 to i32
  %560 = select i1 %558, i32 %559, i32 0
  br label %561

561:                                              ; preds = %557, %551, %548
  %562 = phi i32 [ -34, %551 ], [ -34, %548 ], [ %545, %557 ]
  %563 = phi i32 [ 0, %551 ], [ 0, %548 ], [ %560, %557 ]
  %564 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %533) #11, !srcloc !9
  %565 = and i32 %564, -13
  %566 = or i32 %565, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %566) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %567 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %20, i32 %563, i32 -1090519041) #9, !srcloc !41
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %564) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %568 = icmp eq i32 %567, 0
  %569 = select i1 %568, i32 %562, i32 -14
  br label %570

570:                                              ; preds = %561, %541, %531, %527
  %571 = phi i32 [ %569, %561 ], [ -1, %527 ], [ %538, %531 ], [ -22, %541 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %578

572:                                              ; preds = %526, %526
  %573 = tail call fastcc i32 @ioctl_preallocate(ptr noundef nonnull %17, i32 noundef 0, ptr noundef %20) #9
  br label %578

574:                                              ; preds = %526, %526
  %575 = tail call fastcc i32 @ioctl_preallocate(ptr noundef nonnull %17, i32 noundef 2, ptr noundef %20) #9
  br label %578

576:                                              ; preds = %526
  %577 = tail call fastcc i32 @ioctl_preallocate(ptr noundef nonnull %17, i32 noundef 16, ptr noundef %20) #9
  br label %578

578:                                              ; preds = %576, %574, %572, %570, %520, %459, %414, %367, %335, %302, %263, %212, %208, %186, %178, %127, %125, %111, %109, %70, %45, %25
  %579 = phi i32 [ %521, %520 ], [ %460, %459 ], [ %415, %414 ], [ %368, %367 ], [ %345, %335 ], [ %303, %302 ], [ %264, %263 ], [ %192, %186 ], [ %179, %178 ], [ %32, %25 ], [ %72, %70 ], [ %52, %45 ], [ %110, %109 ], [ %112, %111 ], [ %126, %125 ], [ %128, %127 ], [ %209, %208 ], [ %209, %212 ], [ %577, %576 ], [ %575, %574 ], [ %573, %572 ], [ %571, %570 ]
  %580 = icmp eq i32 %579, -515
  br i1 %580, label %581, label %591

581:                                              ; preds = %578, %526, %522
  %582 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 3
  %583 = load ptr, ptr %582, align 4
  %584 = getelementptr inbounds %struct.file_operations, ptr %583, i32 0, i32 10
  %585 = load ptr, ptr %584, align 4
  %586 = icmp eq ptr %585, null
  br i1 %586, label %591, label %587

587:                                              ; preds = %581
  %588 = call i32 %585(ptr noundef nonnull %17, i32 noundef %1, i32 noundef %2) #9
  %589 = icmp eq i32 %588, -515
  %590 = select i1 %589, i32 -25, i32 %588
  br label %591

591:                                              ; preds = %587, %581, %578, %315, %309, %193, %180, %113, %107, %92, %90, %73, %34, %24, %23
  %592 = phi i32 [ %579, %578 ], [ %590, %587 ], [ -25, %581 ], [ -25, %309 ], [ -9, %193 ], [ -1, %113 ], [ -95, %107 ], [ -1, %92 ], [ 0, %34 ], [ -22, %180 ], [ -25, %73 ], [ 0, %23 ], [ 0, %24 ], [ %91, %90 ], [ %318, %315 ]
  %593 = and i32 %15, 1
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %596, label %595

595:                                              ; preds = %591
  call void @fput(ptr noundef nonnull %17) #9
  br label %596

596:                                              ; preds = %595, %591, %3
  %597 = phi i32 [ -9, %3 ], [ %592, %591 ], [ %592, %595 ]
  ret i32 %597
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_close_on_exec(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @inode_get_bytes(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_super(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thaw_super(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_clone_file_range(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_dedupe_file_range(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ioctl_preallocate(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.space_resv, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i32 48, i1 false), !annotation !21
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 48, i32 -1090519040) #10, !srcloc !27
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18, !prof !22

10:                                               ; preds = %3
  %11 = tail call ptr @llvm.thread.pointer() #9
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #11, !srcloc !9
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #9, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %2, i32 noundef 48) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #9, !srcloc !10
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !22

18:                                               ; preds = %10, %3
  %19 = phi i32 [ %16, %10 ], [ 48, %3 ]
  %20 = sub i32 48, %19
  %21 = getelementptr i8, ptr %4, i32 %20
  call void @llvm.memset.p0.i32(ptr align 1 %21, i8 0, i32 %19, i1 false) #9
  br label %61

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.space_resv, ptr %4, i32 0, i32 1
  %24 = load i16, ptr %23, align 2
  %25 = sext i16 %24 to i32
  switch i32 %25, label %61 [
    i32 0, label %26
    i32 1, label %29
    i32 2, label %35
  ]

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.space_resv, ptr %4, i32 0, i32 2
  %28 = load i64, ptr %27, align 8
  br label %55

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.space_resv, ptr %4, i32 0, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = add i64 %33, %31
  store i64 %34, ptr %32, align 8
  br label %55

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %37 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  br label %38

38:                                               ; preds = %46, %35
  %39 = load volatile i32, ptr %36, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %42, %38
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !32
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !33
  %43 = load volatile i32, ptr %36, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %42

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %39, %38 ], [ %43, %42 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !34
  %48 = load i64, ptr %37, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !35
  %49 = load volatile i32, ptr %36, align 4
  %50 = icmp eq i32 %49, %47
  br i1 %50, label %51, label %38

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.space_resv, ptr %4, i32 0, i32 2
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %53, %48
  store i64 %54, ptr %52, align 8
  br label %55

55:                                               ; preds = %51, %29, %26
  %56 = phi i64 [ %28, %26 ], [ %54, %51 ], [ %34, %29 ]
  %57 = or i32 %1, 1
  %58 = getelementptr inbounds %struct.space_resv, ptr %4, i32 0, i32 3
  %59 = load i64, ptr %58, align 8
  %60 = call i32 @vfs_fallocate(ptr noundef %0, i32 noundef %57, i64 noundef %56, i64 noundef %59) #9
  br label %61

61:                                               ; preds = %55, %22, %18
  %62 = phi i32 [ %60, %55 ], [ -22, %22 ], [ -14, %18 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #9
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fallocate(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }
attributes #12 = { cold nounwind }

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
!8 = !{i64 2151044652, i64 2151044677}
!9 = !{i64 3540186}
!10 = !{i64 3540383}
!11 = !{i64 2151025662}
!12 = !{!13}
!13 = distinct !{!13, !14, !"fdget: argument 0"}
!14 = distinct !{!14, !"fdget"}
!15 = !{i64 2154080069, i64 2154080349, i64 2154080683, i64 2154081017}
!16 = !{i64 2149079019}
!17 = !{i64 2149074843}
!18 = !{i64 2149074918, i64 2149074945, i64 2149074992, i64 2149075014, i64 2149075042, i64 2149075062}
!19 = !{i64 2149102022}
!20 = !{i64 2154091986, i64 2154092266, i64 2154092600, i64 2154092934}
!21 = !{!"auto-init"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2154143765, i64 2154144045, i64 2154144379, i64 2154144713}
!24 = !{!25}
!25 = distinct !{!25, !26, !"fdget: argument 0"}
!26 = distinct !{!26, !"fdget"}
!27 = !{i64 2151044074, i64 2151044099}
!28 = !{!29}
!29 = distinct !{!29, !30, !"fdget: argument 0"}
!30 = distinct !{!30, !"fdget"}
!31 = !{i64 2154101479, i64 2154101759, i64 2154102093, i64 2154102427}
!32 = !{i64 2151363056}
!33 = !{i64 2151362898}
!34 = !{i64 2151363200}
!35 = !{i64 2149557443}
!36 = !{i64 2154154602, i64 2154154882, i64 2154155216, i64 2154155550}
!37 = !{i64 2154120737, i64 2154121017, i64 2154121351, i64 2154121685}
!38 = !{i64 2151271710}
!39 = !{i64 2154131895, i64 2154132175, i64 2154132509, i64 2154132843}
!40 = !{i64 2154046832, i64 2154047112, i64 2154047446, i64 2154047780}
!41 = !{i64 2154057405, i64 2154057685, i64 2154058019, i64 2154058353}
