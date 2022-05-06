; ModuleID = '/llk/IR/fs/file_table.c_pt.bc'
source_filename = "../fs/file_table.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_max_files:\09\09\09\09\09"
module asm "\09.asciz \09\22get_max_files\22\09\09\09\09\09"
module asm "__kstrtabns_get_max_files:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_file_pseudo:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_file_pseudo\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_file_pseudo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flush_delayed_fput:\09\09\09\09\09"
module asm "\09.asciz \09\22flush_delayed_fput\22\09\09\09\09\09"
module asm "__kstrtabns_flush_delayed_fput:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fput:\09\09\09\09\09"
module asm "\09.asciz \09\22fput\22\09\09\09\09\09"
module asm "__kstrtabns_fput:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.files_stat_struct = type { i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.45 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.45 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.anon = type { i32, i32 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
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
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.60, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.60 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.73, %struct.list_head, %struct.list_head, %union.anon.74 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.71 }
%union.anon.71 = type { i64 }
%union.anon.73 = type { %struct.list_head }
%union.anon.74 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.70 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@files_stat = internal global %struct.files_stat_struct { i32 0, i32 0, i32 8192 }, align 4
@__kstrtab_get_max_files = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_max_files = external dso_local constant [0 x i8], align 1
@__ksymtab_get_max_files = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_max_files to i32), ptr @__kstrtab_get_max_files, ptr @__kstrtabns_get_max_files }, section "___ksymtab_gpl+get_max_files", align 4
@__initcall__kmod_file_table__259_130_init_fs_stat_sysctls5 = internal global ptr @init_fs_stat_sysctls, section ".initcall5.init", align 4
@alloc_empty_file.old_max = internal unnamed_addr global i32 0, align 4
@nr_files = internal global %struct.percpu_counter zeroinitializer, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [35 x i8] c"\016VFS: file-max limit %lu reached\0A\00", align 1
@alloc_file_pseudo.anon_ops = internal constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_dname, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@__kstrtab_alloc_file_pseudo = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_file_pseudo = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_file_pseudo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_file_pseudo to i32), ptr @__kstrtab_alloc_file_pseudo, ptr @__kstrtabns_alloc_file_pseudo }, section "___ksymtab+alloc_file_pseudo", align 4
@__kstrtab_flush_delayed_fput = external dso_local constant [0 x i8], align 1
@__kstrtabns_flush_delayed_fput = external dso_local constant [0 x i8], align 1
@__ksymtab_flush_delayed_fput = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flush_delayed_fput to i32), ptr @__kstrtab_flush_delayed_fput, ptr @__kstrtabns_flush_delayed_fput }, section "___ksymtab_gpl+flush_delayed_fput", align 4
@delayed_fput_list = internal global %struct.llist_head zeroinitializer, align 4
@delayed_fput_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @delayed_fput_work, i64 4), ptr getelementptr (i8, ptr @delayed_fput_work, i64 4) }, ptr @delayed_fput }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@__kstrtab_fput = external dso_local constant [0 x i8], align 1
@__kstrtabns_fput = external dso_local constant [0 x i8], align 1
@__ksymtab_fput = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fput to i32), ptr @__kstrtab_fput, ptr @__kstrtabns_fput }, section "___ksymtab+fput", align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"filp\00", align 1
@filp_cachep = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@files_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@fs_stat_sysctls = internal global [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.4, ptr @files_stat, i32 12, i16 292, ptr null, ptr @proc_nr_files, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.5, ptr getelementptr (i8, ptr @files_stat, i64 8), i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @sysctl_long_vals, ptr getelementptr (i8, ptr @sysctl_long_vals, i64 8) }, %struct.ctl_table { ptr @.str.6, ptr @sysctl_nr_open, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @sysctl_nr_open_min, ptr @sysctl_nr_open_max }, %struct.ctl_table zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"fs_stat_sysctls\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"file-nr\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"file-max\00", align 1
@sysctl_long_vals = external dso_local constant [0 x i32], align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"nr_open\00", align 1
@sysctl_nr_open = external dso_local global i32, align 4
@sysctl_nr_open_min = external dso_local global i32, align 4
@sysctl_nr_open_max = external dso_local global i32, align 4
@__alloc_file.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"&f->f_pos_lock\00", align 1
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@vm_zone_stat = external dso_local global [10 x %struct.atomic_t], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__initcall__kmod_file_table__259_130_init_fs_stat_sysctls5, ptr @__ksymtab_alloc_file_pseudo, ptr @__ksymtab_flush_delayed_fput, ptr @__ksymtab_fput, ptr @__ksymtab_get_max_files], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @get_max_files() #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.files_stat_struct, ptr @files_stat, i32 0, i32 2), align 4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_fs_stat_sysctls() #1 section ".init.text" {
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.2, ptr noundef nonnull @fs_stat_sysctls, ptr noundef nonnull @.str.3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_empty_file(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load volatile i64, ptr getelementptr inbounds (%struct.percpu_counter, ptr @nr_files, i32 0, i32 1), align 8
  %4 = tail call i64 @llvm.smax.i64(i64 %3, i64 0) #11
  %5 = trunc i64 %4 to i32
  %6 = load i32, ptr getelementptr inbounds (%struct.files_stat_struct, ptr @files_stat, i32 0, i32 2), align 4
  %7 = icmp ugt i32 %6, %5
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = tail call i64 @__percpu_counter_sum(ptr noundef nonnull @nr_files) #11
  %12 = tail call i64 @llvm.smax.i64(i64 %11, i64 0) #11
  %13 = load i32, ptr getelementptr inbounds (%struct.files_stat_struct, ptr @files_stat, i32 0, i32 2), align 4
  %14 = zext i32 %13 to i64
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %10, %8, %2
  %17 = load ptr, ptr @filp_cachep, align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %17, i32 noundef 3520) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %51, label %20, !prof !8

20:                                               ; preds = %16
  %21 = icmp eq ptr %1, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 24
  store i32 0, ptr %23, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1) #11, !srcloc !9
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #11, !srcloc !10
  br label %25

25:                                               ; preds = %22, %20
  %26 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 12
  store ptr %1, ptr %26, align 8
  %27 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 6
  store volatile i32 1, ptr %27, align 8
  %28 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 11
  store i32 0, ptr %28, align 8
  %29 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 4
  store i32 0, ptr %29, align 8
  %30 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %30, ptr noundef nonnull @.str.7, ptr noundef nonnull @__alloc_file.__key) #11
  %31 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 7
  store i32 %0, ptr %31, align 4
  %32 = add i32 %0, 1
  %33 = and i32 %32, 3
  %34 = and i32 %0, 67108864
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 8
  store i32 %35, ptr %36, align 8
  %37 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %51, label %38

38:                                               ; preds = %25
  %39 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @nr_files, i64 noundef 1, i32 noundef %39) #11
  br label %51

40:                                               ; preds = %10
  %41 = load volatile i64, ptr getelementptr inbounds (%struct.percpu_counter, ptr @nr_files, i32 0, i32 1), align 8
  %42 = tail call i64 @llvm.smax.i64(i64 %41, i64 0) #11
  %43 = trunc i64 %42 to i32
  %44 = load i32, ptr @alloc_empty_file.old_max, align 4
  %45 = icmp slt i32 %44, %43
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %13) #12
  %48 = load volatile i64, ptr getelementptr inbounds (%struct.percpu_counter, ptr @nr_files, i32 0, i32 1), align 8
  %49 = tail call i64 @llvm.smax.i64(i64 %48, i64 0) #11
  %50 = trunc i64 %49 to i32
  store i32 %50, ptr @alloc_empty_file.old_max, align 4
  br label %51

51:                                               ; preds = %46, %40, %38, %25, %16
  %52 = phi ptr [ %18, %38 ], [ %18, %25 ], [ inttoptr (i32 -23 to ptr), %46 ], [ inttoptr (i32 -23 to ptr), %40 ], [ inttoptr (i32 -12 to ptr), %16 ]
  ret ptr %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_empty_file_noaccount(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @filp_cachep, align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3520) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6, !prof !8

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 24
  store i32 0, ptr %9, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1) #11, !srcloc !9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #11, !srcloc !10
  br label %11

11:                                               ; preds = %8, %6
  %12 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 12
  store ptr %1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 6
  store volatile i32 1, ptr %13, align 8
  %14 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 11
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 4
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str.7, ptr noundef nonnull @__alloc_file.__key) #11
  %17 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 7
  store i32 %0, ptr %17, align 4
  %18 = add i32 %0, 1
  %19 = and i32 %18, 3
  %20 = and i32 %0, 67108864
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 8
  store i32 %21, ptr %22, align 8
  %23 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %26, label %24

24:                                               ; preds = %11
  %25 = or i32 %21, 536870912
  store i32 %25, ptr %22, align 8
  br label %26

26:                                               ; preds = %24, %11, %2
  %27 = phi ptr [ %4, %24 ], [ %4, %11 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_file_pseudo(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #2 {
  %6 = alloca %struct.qstr, align 8
  %7 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %8 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %9 = tail call i32 @strlen(ptr noundef %2)
  store i32 %9, ptr %8, align 4
  %10 = getelementptr inbounds %struct.qstr, ptr %6, i32 0, i32 1
  store ptr %2, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %11 = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = call ptr @d_alloc_pseudo(ptr noundef %12, ptr noundef nonnull %6) #11
  %14 = getelementptr inbounds %struct.path, ptr %7, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %5
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 39
  %19 = load ptr, ptr %18, align 16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  call void @d_set_d_op(ptr noundef nonnull %13, ptr noundef nonnull @alloc_file_pseudo.anon_ops) #11
  br label %22

22:                                               ; preds = %21, %16
  %23 = call ptr @mntget(ptr noundef %1) #11
  store ptr %23, ptr %7, align 8
  call void @d_instantiate(ptr noundef nonnull %13, ptr noundef %0) #11
  %24 = call fastcc ptr @alloc_file(ptr noundef nonnull %7, i32 noundef %3, ptr noundef %4)
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call void @ihold(ptr noundef %0) #11
  call void @path_put(ptr noundef nonnull %7) #11
  br label %27

27:                                               ; preds = %26, %22, %5
  %28 = phi ptr [ %24, %26 ], [ %24, %22 ], [ inttoptr (i32 -12 to ptr), %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_dname(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_pseudo(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_file(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = tail call ptr @llvm.thread.pointer() #11
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 83
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @alloc_empty_file(i32 noundef %1, ptr noundef %6)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %73, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 1
  %11 = load i64, ptr %0, align 4
  store i64 %11, ptr %10, align 8
  %12 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2
  store ptr %15, ptr %16, align 8
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 9
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 17
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.address_space, ptr %21, i32 0, i32 11
  %24 = tail call i32 @errseq_sample(ptr noundef %23) #11
  %25 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 18
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 1, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 44
  %31 = tail call i32 @errseq_sample(ptr noundef %30) #11
  %32 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 19
  store i32 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 8
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %9
  %38 = getelementptr inbounds %struct.file_operations, ptr %2, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.file_operations, ptr %2, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !8

45:                                               ; preds = %41, %37
  %46 = or i32 %34, 131072
  store i32 %46, ptr %33, align 8
  br label %47

47:                                               ; preds = %45, %41, %9
  %48 = phi i32 [ %46, %45 ], [ %34, %41 ], [ %34, %9 ]
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.file_operations, ptr %2, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.file_operations, ptr %2, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !8

59:                                               ; preds = %55, %51
  %60 = or i32 %48, 262144
  br label %61

61:                                               ; preds = %59, %55, %47
  %62 = phi i32 [ %60, %59 ], [ %48, %55 ], [ %48, %47 ]
  %63 = or i32 %62, 524288
  store i32 %63, ptr %33, align 8
  %64 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 3
  store ptr %2, ptr %64, align 4
  %65 = and i32 %62, 3
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load ptr, ptr %12, align 4
  %69 = getelementptr inbounds %struct.dentry, ptr %68, i32 0, i32 5
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.inode, ptr %70, i32 0, i32 38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #11, !srcloc !9
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 1, ptr elementtype(i32) %71) #11, !srcloc !10
  br label %73

73:                                               ; preds = %67, %61, %3
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_file_clone(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %5 = tail call fastcc ptr @alloc_file(ptr noundef %4, i32 noundef %1, ptr noundef %2)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 1
  tail call void @path_get(ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 17
  store ptr %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %7, %3
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_delayed_fput() #2 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @delayed_fput_list) #11, !srcloc !9
  %1 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @delayed_fput_list) #11, !srcloc !12
  %2 = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = inttoptr i32 %2 to ptr
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi ptr [ %8, %6 ], [ %5, %4 ]
  %8 = load ptr, ptr %7, align 8
  tail call fastcc void @__fput(ptr noundef nonnull %7) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6

10:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @delayed_fput(ptr nocapture noundef readnone %0) #2 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @delayed_fput_list) #11, !srcloc !9
  %2 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @delayed_fput_list) #11, !srcloc !12
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = inttoptr i32 %3 to ptr
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %9, %7 ], [ %6, %5 ]
  %9 = load ptr, ptr %8, align 8
  tail call fastcc void @__fput(ptr noundef nonnull %8)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fput_many(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #11, !srcloc !9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %1, ptr elementtype(i32) %3) #11, !srcloc !15
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #11
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 15728640
  %12 = load volatile i32, ptr %9, align 4
  %13 = and i32 %12, 983040
  %14 = or i32 %13, %11
  %15 = load volatile i32, ptr %9, align 4
  %16 = and i32 %15, 65280
  %17 = or i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28, !prof !17

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 2097152
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28, !prof !17

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.callback_head, ptr %0, i32 0, i32 1
  store ptr @____fput, ptr %25, align 4
  %26 = tail call i32 @task_work_add(ptr noundef %8, ptr noundef %0, i32 noundef 1) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24, %19, %7
  %29 = tail call zeroext i1 @llist_add_batch(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @delayed_fput_list) #11
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load ptr, ptr @system_wq, align 4
  %32 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %31, ptr noundef nonnull @delayed_fput_work, i32 noundef 1) #11
  br label %33

33:                                               ; preds = %30, %28, %24, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @____fput(ptr noundef %0) #2 {
  tail call fastcc void @__fput(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fput(ptr noundef %0) #2 {
  tail call void @fput_many(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__fput_sync(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #11, !srcloc !9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #11, !srcloc !15
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #11
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file_table.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 409, 0\0A.popsection", ""() #11, !srcloc !18
  unreachable

13:                                               ; preds = %6
  tail call fastcc void @__fput(ptr noundef %0)
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__fput(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 524288
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %112, label %12, !prof !8

12:                                               ; preds = %1
  %13 = and i32 %9, 2
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 16, i32 8
  %16 = and i32 %9, 67108864
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 42
  %24 = load volatile i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %18
  %27 = load i16, ptr %20, align 8
  %28 = and i16 %27, -4096
  %29 = icmp eq i16 %28, 16384
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = or i32 %15, 1073741824
  %32 = load i32, ptr %4, align 8
  %33 = and i32 %32, 16384
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30, %26
  %36 = phi i32 [ %31, %30 ], [ %15, %26 ]
  %37 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 3
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, %4
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @__fsnotify_parent(ptr noundef %4, i32 noundef %36, ptr noundef %2, i32 noundef 1) #11
  br label %45

42:                                               ; preds = %35, %30
  %43 = phi i32 [ %36, %35 ], [ %31, %30 ]
  %44 = tail call i32 @fsnotify(i32 noundef %43, ptr noundef %2, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %20, i32 noundef 0) #11
  br label %45

45:                                               ; preds = %42, %40, %18, %12
  %46 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 16
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49, !prof !17

49:                                               ; preds = %45
  tail call void @eventpoll_release_file(ptr noundef %0) #11
  br label %50

50:                                               ; preds = %49, %45
  tail call void @locks_remove_file(ptr noundef %0) #11
  %51 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 8192
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55, !prof !17

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.file_operations, ptr %57, i32 0, i32 18
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = tail call i32 %59(i32 noundef -1, ptr noundef %0, i32 noundef 0) #11
  br label %63

63:                                               ; preds = %61, %55, %50
  %64 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.file_operations, ptr %65, i32 0, i32 16
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = tail call i32 %67(ptr noundef %7, ptr noundef %0) #11
  br label %71

71:                                               ; preds = %69, %63
  %72 = load i16, ptr %7, align 8
  %73 = and i16 %72, -4096
  %74 = icmp eq i16 %73, 8192
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 43
  %77 = load ptr, ptr %76, align 4
  %78 = icmp ne ptr %77, null
  %79 = and i32 %9, 16384
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %83, !prof !19

82:                                               ; preds = %75
  tail call void @cdev_put(ptr noundef nonnull %77) #11
  br label %83

83:                                               ; preds = %82, %75, %71
  %84 = load ptr, ptr %64, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %84, align 4
  tail call void @module_put(ptr noundef %87) #11
  br label %88

88:                                               ; preds = %86, %83
  %89 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, i32 1
  %90 = load ptr, ptr %89, align 4
  tail call void @put_pid(ptr noundef %90) #11
  %91 = and i32 %9, 3
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 38
  %95 = load volatile i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98, !prof !8

97:                                               ; preds = %93
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3001, 0\0A.popsection", ""() #11, !srcloc !20
  unreachable

98:                                               ; preds = %93
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %94) #11, !srcloc !9
  %99 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %94, ptr %94, i32 1, ptr elementtype(i32) %94) #11, !srcloc !21
  br label %100

100:                                              ; preds = %98, %88
  %101 = and i32 %9, 65536
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %104) #11, !srcloc !9
  %105 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %104, ptr %104, i32 1, ptr elementtype(i32) %104) #11, !srcloc !21
  tail call void @__mnt_drop_write(ptr noundef %5) #11
  br label %106

106:                                              ; preds = %103, %100
  tail call void @dput(ptr noundef %4) #11
  %107 = and i32 %9, 268435456
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109, !prof !17

109:                                              ; preds = %106
  tail call void @dissolve_on_fput(ptr noundef %5) #11
  br label %110

110:                                              ; preds = %109, %106
  tail call void @mntput(ptr noundef %5) #11
  %111 = load i32, ptr %8, align 8
  br label %112

112:                                              ; preds = %110, %1
  %113 = phi i32 [ %9, %1 ], [ %111, %110 ]
  %114 = and i32 %113, 536870912
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @nr_files, i64 noundef -1, i32 noundef %117) #11
  br label %118

118:                                              ; preds = %116, %112
  tail call void @call_rcu(ptr noundef %0, ptr noundef nonnull @file_free_rcu) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @files_init() local_unnamed_addr #1 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 168, i32 noundef 0, i32 noundef 270336, ptr noundef null) #11
  store ptr %1, ptr @filp_cachep, align 4
  %2 = tail call i32 @__percpu_counter_init(ptr noundef nonnull @nr_files, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @files_init.__key) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local void @files_maxfiles_init() local_unnamed_addr #7 section ".init.text" {
  %1 = load volatile i32, ptr @_totalram_pages, align 4
  %2 = load volatile i32, ptr @vm_zone_stat, align 4
  %3 = tail call i32 @llvm.smax.i32(i32 %2, i32 0) #11
  %4 = sub i32 %1, %3
  %5 = mul i32 %4, 3
  %6 = lshr i32 %5, 1
  %7 = add i32 %1, -1
  %8 = tail call i32 @llvm.umin.i32(i32 %6, i32 %7)
  %9 = sub i32 %1, %8
  %10 = shl i32 %9, 2
  %11 = udiv i32 %10, 10
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 8192)
  store i32 %12, ptr getelementptr inbounds (%struct.files_stat_struct, ptr @files_stat, i32 0, i32 2), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_nr_files(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = load volatile i64, ptr getelementptr inbounds (%struct.percpu_counter, ptr @nr_files, i32 0, i32 1), align 8
  %7 = tail call i64 @llvm.smax.i64(i64 %6, i64 0) #11
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr @files_stat, align 4
  %9 = tail call i32 @proc_doulongvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @file_free_rcu(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #11, !srcloc !9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #11, !srcloc !15
  %7 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @__put_cred(ptr noundef nonnull %3) #11
  br label %10

10:                                               ; preds = %9, %5, %1
  %11 = load ptr, ptr @filp_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %11, ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_sample(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_remove_file(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mnt_drop_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dissolve_on_fput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventpoll_release_file(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 780377, i64 2148270348, i64 2148270374, i64 2148270421, i64 2148270443, i64 2148270471, i64 2148270491}
!10 = !{i64 2148281763, i64 2148281789, i64 2148281818, i64 2148281852, i64 2148281883, i64 2148281906}
!11 = !{i64 2148911477}
!12 = !{i64 789027, i64 789044, i64 789068, i64 789094, i64 789112}
!13 = !{i64 2148911804}
!14 = !{i64 2148382442}
!15 = !{i64 2148284804, i64 2148284836, i64 2148284865, i64 2148284899, i64 2148284930, i64 2148284953}
!16 = !{i64 2148382645}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2153866702, i64 2153867182, i64 2153866739, i64 2153866795, i64 2153866829, i64 2153866853, i64 2153866894, i64 2153866915, i64 2153866943, i64 2153866977}
!19 = !{!"branch_weights", i32 1, i32 4001}
!20 = !{i64 2151477168, i64 2151477652, i64 2151477205, i64 2151477261, i64 2151477295, i64 2151477319, i64 2151477360, i64 2151477381, i64 2151477409, i64 2151477443}
!21 = !{i64 2148284120, i64 2148284146, i64 2148284175, i64 2148284209, i64 2148284240, i64 2148284263}
