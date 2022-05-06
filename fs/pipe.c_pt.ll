; ModuleID = '/llk/IR/fs/pipe.c_pt.bc'
source_filename = "../fs/pipe.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pipe_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22pipe_lock\22\09\09\09\09\09"
module asm "__kstrtabns_pipe_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pipe_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22pipe_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_pipe_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_pipe_buf_try_steal:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_pipe_buf_try_steal\22\09\09\09\09\09"
module asm "__kstrtabns_generic_pipe_buf_try_steal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_pipe_buf_get:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_pipe_buf_get\22\09\09\09\09\09"
module asm "__kstrtabns_generic_pipe_buf_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_pipe_buf_release:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_pipe_buf_release\22\09\09\09\09\09"
module asm "__kstrtabns_generic_pipe_buf_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pipe_buf_operations = type { ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.page = type { i32, %union.anon.1, %union.anon.92, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.92 = type { %struct.atomic_t }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.52, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.52 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.20 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.20 = type { %struct.callback_head }
%struct.pipe_buffer = type { ptr, i32, i32, ptr, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.93, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.94, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.95, ptr, %struct.address_space, %struct.list_head, %union.anon.96, i32, i32, ptr, ptr }
%union.anon.93 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.94 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.95 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.96 = type { ptr }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.79, %union.anon.80 }
%union.anon.79 = type { ptr }
%union.anon.80 = type { i64 }
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
%struct.pseudo_fs_context = type { ptr, ptr, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.77, %struct.list_head, %struct.list_head, %union.anon.78 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { i64 }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }

@__kstrtab_pipe_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_pipe_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_pipe_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pipe_lock to i32), ptr @__kstrtab_pipe_lock, ptr @__kstrtabns_pipe_lock }, section "___ksymtab+pipe_lock", align 4
@__kstrtab_pipe_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_pipe_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_pipe_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pipe_unlock to i32), ptr @__kstrtab_pipe_unlock, ptr @__kstrtabns_pipe_unlock }, section "___ksymtab+pipe_unlock", align 4
@__kstrtab_generic_pipe_buf_try_steal = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_pipe_buf_try_steal = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_pipe_buf_try_steal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_pipe_buf_try_steal to i32), ptr @__kstrtab_generic_pipe_buf_try_steal, ptr @__kstrtabns_generic_pipe_buf_try_steal }, section "___ksymtab+generic_pipe_buf_try_steal", align 4
@__kstrtab_generic_pipe_buf_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_pipe_buf_get = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_pipe_buf_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_pipe_buf_get to i32), ptr @__kstrtab_generic_pipe_buf_get, ptr @__kstrtabns_generic_pipe_buf_get }, section "___ksymtab+generic_pipe_buf_get", align 4
@__kstrtab_generic_pipe_buf_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_pipe_buf_release = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_pipe_buf_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_pipe_buf_release to i32), ptr @__kstrtab_generic_pipe_buf_release, ptr @__kstrtabns_generic_pipe_buf_release }, section "___ksymtab+generic_pipe_buf_release", align 4
@pipe_user_pages_soft = internal global i32 16384, align 4
@pipe_user_pages_hard = internal global i32 0, align 4
@pipe_max_size = internal global i32 1048576, align 4
@alloc_pipe_info.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&pipe->rd_wait\00", align 1
@alloc_pipe_info.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"&pipe->wr_wait\00", align 1
@alloc_pipe_info.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"&pipe->mutex\00", align 1
@pipe_mnt = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pipefifo_fops = dso_local constant %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr @pipe_read, ptr @pipe_write, ptr null, ptr null, ptr null, ptr @pipe_poll, ptr @pipe_ioctl, ptr null, ptr null, i32 0, ptr @fifo_open, ptr null, ptr @pipe_release, ptr null, ptr @pipe_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__initcall__kmod_pipe__272_1506_init_pipe_fs5 = internal global ptr @init_pipe_fs, section ".initcall5.init", align 4
@try_get_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"include/linux/mm.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@anon_pipe_buf_ops = internal constant %struct.pipe_buf_operations { ptr null, ptr @anon_pipe_buf_release, ptr @anon_pipe_buf_try_steal, ptr @generic_pipe_buf_get }, align 4
@pipe_fs_type = internal global %struct.file_system_type { ptr @.str.11, i32 0, ptr @pipefs_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@fs_pipe_sysctls = internal global [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.13, ptr @pipe_max_size, i32 4, i16 420, ptr null, ptr @proc_dopipe_max_size, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.14, ptr @pipe_user_pages_hard, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.15, ptr @pipe_user_pages_soft, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"fs_pipe_sysctls\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"pipefs\00", align 1
@pipefs_ops = internal constant %struct.super_operations { ptr null, ptr @free_inode_nonrcu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pipefs_dentry_operations = internal constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pipefs_dname, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@.str.12 = private unnamed_addr constant [11 x i8] c"pipe:[%lu]\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"pipe-max-size\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"pipe-user-pages-hard\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"pipe-user-pages-soft\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__initcall__kmod_pipe__272_1506_init_pipe_fs5, ptr @__ksymtab_generic_pipe_buf_get, ptr @__ksymtab_generic_pipe_buf_release, ptr @__ksymtab_generic_pipe_buf_try_steal, ptr @__ksymtab_pipe_lock, ptr @__ksymtab_pipe_unlock], section "llvm.metadata"

@sys_pipe2 = dso_local alias i32 (ptr, i32), ptr @__se_sys_pipe2
@sys_pipe = dso_local alias i32 (ptr), ptr @__se_sys_pipe

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pipe_lock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef %0) #15
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pipe_unlock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %0) #15
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pipe_double_lock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %4, label %5, !prof !9

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/pipe.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #15, !srcloc !10
  unreachable

5:                                                ; preds = %2
  %6 = icmp ult ptr %0, %1
  br i1 %6, label %7, label %17

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @mutex_lock(ptr noundef %0) #15
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  tail call void @mutex_lock(ptr noundef nonnull %1) #15
  br label %27

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @mutex_lock(ptr noundef %1) #15
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @mutex_lock(ptr noundef %0) #15
  br label %27

27:                                               ; preds = %26, %22, %16, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @generic_pipe_buf_try_steal(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !11

8:                                                ; preds = %2
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %2
  %11 = ptrtoint ptr %3 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = load volatile i32, ptr %4, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !11

22:                                               ; preds = %18
  %23 = add i32 %19, -1
  br label %26

24:                                               ; preds = %18
  %25 = ptrtoint ptr %3 to i32
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = inttoptr i32 %27 to ptr
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #15, !srcloc !12
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #15, !srcloc !13
  %34 = extractvalue { i32, i32, i32 } %33, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %26
  tail call void @__folio_lock(ptr noundef %28) #15
  br label %38

38:                                               ; preds = %37, %32, %12
  ret i1 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @generic_pipe_buf_get(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !11

8:                                                ; preds = %2
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %2
  %11 = ptrtoint ptr %3 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp slt i32 %16, 1
  %18 = load i1, ptr @try_get_page.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %12
  store i1 true, ptr @try_get_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1177, i32 noundef 9, ptr noundef null) #15
  br label %22

22:                                               ; preds = %21, %12
  br i1 %17, label %25, label %23

23:                                               ; preds = %22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #15, !srcloc !12
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #15, !srcloc !15
  br label %25

25:                                               ; preds = %23, %22
  %26 = xor i1 %17, true
  ret i1 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @generic_pipe_buf_release(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !11

8:                                                ; preds = %2
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %2
  %11 = ptrtoint ptr %3 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #15, !srcloc !12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #15, !srcloc !17
  %17 = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  tail call void @__put_page(ptr noundef %14) #15
  br label %20

20:                                               ; preds = %19, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @account_pipe_buffers(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sub i32 %2, %1
  %5 = getelementptr inbounds %struct.user_struct, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #15, !srcloc !12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 %4, ptr elementtype(i32) %5) #15, !srcloc !20
  %7 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @too_many_pipe_buffers_soft(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load volatile i32, ptr @pipe_user_pages_soft, align 4
  %3 = icmp ne i32 %2, 0
  %4 = icmp ult i32 %2, %0
  %5 = and i1 %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @too_many_pipe_buffers_hard(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load volatile i32, ptr @pipe_user_pages_hard, align 4
  %3 = icmp ne i32 %2, 0
  %4 = icmp ult i32 %2, %0
  %5 = and i1 %3, %4
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pipe_is_unprivileged_user() local_unnamed_addr #0 {
  %1 = tail call zeroext i1 @capable(i32 noundef 24) #15
  br i1 %1, label %5, label %2

2:                                                ; preds = %0
  %3 = tail call zeroext i1 @capable(i32 noundef 21) #15
  %4 = xor i1 %3, true
  br label %5

5:                                                ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_pipe_info() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #15
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 83
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #15, !srcloc !12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #15, !srcloc !22
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !9

9:                                                ; preds = %0
  %10 = add i32 %7, 1
  %11 = or i32 %10, %7
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %15, label %13, !prof !11

13:                                               ; preds = %9, %0
  %14 = phi i32 [ 2, %0 ], [ 1, %9 ]
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef %14) #15
  br label %15

15:                                               ; preds = %13, %9
  %16 = load volatile i32, ptr @pipe_max_size, align 4
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 4197824, i32 noundef 108) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %71, label %20

20:                                               ; preds = %15
  %21 = icmp ult i32 %16, 65536
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @capable(i32 noundef 24) #15
  %24 = lshr i32 %16, 12
  %25 = select i1 %23, i32 16, i32 %24
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi i32 [ 16, %20 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.user_struct, ptr %5, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #15, !srcloc !12
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 %27, ptr elementtype(i32) %28) #15, !srcloc !20
  %30 = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %31 = load volatile i32, ptr @pipe_user_pages_soft, align 4
  %32 = icmp ne i32 %31, 0
  %33 = icmp ult i32 %31, %30
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = tail call zeroext i1 @capable(i32 noundef 24) #15
  br i1 %36, label %43, label %37

37:                                               ; preds = %35
  %38 = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %38, label %43, label %39

39:                                               ; preds = %37
  %40 = sub nsw i32 2, %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #15, !srcloc !12
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 %40, ptr elementtype(i32) %28) #15, !srcloc !20
  %42 = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  br label %43

43:                                               ; preds = %39, %37, %35, %26
  %44 = phi i32 [ 2, %39 ], [ %27, %37 ], [ %27, %26 ], [ %27, %35 ]
  %45 = phi i32 [ %42, %39 ], [ %30, %37 ], [ %30, %26 ], [ %30, %35 ]
  %46 = load volatile i32, ptr @pipe_user_pages_hard, align 4
  %47 = icmp ne i32 %46, 0
  %48 = icmp ult i32 %46, %45
  %49 = and i1 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = tail call zeroext i1 @capable(i32 noundef 24) #15
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %53, label %54, label %68

54:                                               ; preds = %52, %50, %43
  %55 = mul nuw nsw i32 %44, 24
  %56 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %55, i32 noundef 4197824) #17
  %57 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 17
  store ptr %56, ptr %57, align 4
  %58 = icmp eq ptr %56, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %60, ptr noundef nonnull @.str, ptr noundef nonnull @alloc_pipe_info.__key) #15
  %61 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %61, ptr noundef nonnull @.str.2, ptr noundef nonnull @alloc_pipe_info.__key.1) #15
  %62 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 12
  store i32 1, ptr %62, align 8
  %63 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 11
  store i32 1, ptr %63, align 4
  %64 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 5
  store i32 %44, ptr %64, align 4
  %65 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 6
  store i32 %44, ptr %65, align 8
  %66 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 7
  store i32 %44, ptr %66, align 4
  %67 = getelementptr inbounds %struct.pipe_inode_info, ptr %18, i32 0, i32 18
  store ptr %5, ptr %67, align 8
  tail call void @__mutex_init(ptr noundef nonnull %18, ptr noundef nonnull @.str.4, ptr noundef nonnull @alloc_pipe_info.__key.3) #15
  br label %72

68:                                               ; preds = %54, %52
  %69 = sub nsw i32 0, %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #15, !srcloc !12
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 %69, ptr elementtype(i32) %28) #15, !srcloc !20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  tail call void @kfree(ptr noundef nonnull %18) #15
  br label %71

71:                                               ; preds = %68, %15
  tail call void @free_uid(ptr noundef %5) #15
  br label %72

72:                                               ; preds = %71, %59
  %73 = phi ptr [ null, %71 ], [ %18, %59 ]
  ret ptr %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_pipe_info(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 0, %5
  %7 = getelementptr inbounds %struct.user_struct, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #15, !srcloc !12
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 %6, ptr elementtype(i32) %7) #15, !srcloc !20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %9 = load ptr, ptr %2, align 4
  tail call void @free_uid(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 17
  br label %15

15:                                               ; preds = %27, %13
  %16 = phi i32 [ %11, %13 ], [ %28, %27 ]
  %17 = phi i32 [ 0, %13 ], [ %29, %27 ]
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr %struct.pipe_buffer, ptr %18, i32 %17, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = getelementptr %struct.pipe_buffer, ptr %18, i32 %17
  store ptr null, ptr %19, align 4
  %24 = getelementptr inbounds %struct.pipe_buf_operations, ptr %20, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %0, ptr noundef %23) #15
  %26 = load i32, ptr %10, align 4
  br label %27

27:                                               ; preds = %22, %15
  %28 = phi i32 [ %26, %22 ], [ %16, %15 ]
  %29 = add nuw i32 %17, 1
  %30 = icmp ult i32 %29, %28
  br i1 %30, label %15, label %31

31:                                               ; preds = %27, %1
  %32 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 14
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @__free_pages(ptr noundef nonnull %33, i32 noundef 0) #15
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 17
  %38 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %38) #15
  tail call void @kfree(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @create_pipe_files(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = load ptr, ptr @pipe_mnt, align 4
  %5 = getelementptr inbounds %struct.vfsmount, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @new_inode_pseudo(ptr noundef %6) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %76, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @get_next_ino() #15
  %11 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 10
  store i32 %10, ptr %11, align 4
  %12 = tail call ptr @alloc_pipe_info() #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @iput(ptr noundef nonnull %7) #15
  br label %76

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 43
  store ptr %12, ptr %16, align 4
  %17 = getelementptr inbounds %struct.pipe_inode_info, ptr %12, i32 0, i32 10
  store i32 2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.pipe_inode_info, ptr %12, i32 0, i32 9
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.pipe_inode_info, ptr %12, i32 0, i32 8
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 39
  store ptr @pipefifo_fops, ptr %20, align 8
  %21 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 23
  store i32 7, ptr %21, align 4
  store i16 4480, ptr %7, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 2
  %23 = tail call ptr @llvm.thread.pointer() #15
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 83
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %22, align 4
  %28 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 3
  %29 = load ptr, ptr %24, align 8
  %30 = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %28, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 14
  %33 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 15
  %34 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef nonnull %7) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %33, ptr noundef align 8 dereferenceable(16) %34, i32 16, i1 false) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %32, ptr noundef align 8 dereferenceable(16) %34, i32 16, i1 false) #15
  %35 = and i32 %1, 128
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %15
  %38 = load ptr, ptr %16, align 4
  call void @free_pipe_info(ptr noundef %38)
  call void @iput(ptr noundef nonnull %7) #15
  br label %76

39:                                               ; preds = %15
  %40 = load ptr, ptr @pipe_mnt, align 4
  %41 = and i32 %1, 67584
  %42 = or i32 %41, 1
  %43 = call ptr @alloc_file_pseudo(ptr noundef nonnull %7, ptr noundef %40, ptr noundef nonnull @.str.5, i32 noundef %42, ptr noundef nonnull @pipefifo_fops) #15
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  %45 = load ptr, ptr %16, align 4
  br i1 %44, label %46, label %48

46:                                               ; preds = %39
  call void @free_pipe_info(ptr noundef %45)
  call void @iput(ptr noundef nonnull %7) #15
  %47 = ptrtoint ptr %43 to i32
  br label %76

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.file, ptr %43, i32 0, i32 15
  store ptr %45, ptr %49, align 8
  %50 = and i32 %1, 2048
  %51 = call ptr @alloc_file_clone(ptr noundef %43, i32 noundef %50, ptr noundef nonnull @pipefifo_fops) #15
  store ptr %51, ptr %0, align 4
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  %53 = load ptr, ptr %16, align 4
  br i1 %52, label %54, label %69

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %55) #15
  %56 = getelementptr inbounds %struct.pipe_inode_info, ptr %53, i32 0, i32 10
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, -1
  store i32 %58, ptr %56, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  store ptr null, ptr %16, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %61 = load i16, ptr %55, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %55, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  call void @free_pipe_info(ptr noundef %53) #15
  br label %66

63:                                               ; preds = %54
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %64 = load i16, ptr %55, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %55, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  br label %66

66:                                               ; preds = %63, %60
  call void @fput(ptr noundef %43) #15
  %67 = load ptr, ptr %0, align 4
  %68 = ptrtoint ptr %67 to i32
  br label %76

69:                                               ; preds = %48
  %70 = getelementptr inbounds %struct.file, ptr %51, i32 0, i32 15
  store ptr %53, ptr %70, align 8
  %71 = getelementptr ptr, ptr %0, i32 1
  store ptr %43, ptr %71, align 4
  %72 = load ptr, ptr %0, align 4
  %73 = call i32 @stream_open(ptr noundef nonnull %7, ptr noundef %72) #15
  %74 = load ptr, ptr %71, align 4
  %75 = call i32 @stream_open(ptr noundef nonnull %7, ptr noundef %74) #15
  br label %76

76:                                               ; preds = %69, %66, %46, %37, %14, %2
  %77 = phi i32 [ -65, %37 ], [ %47, %46 ], [ %68, %66 ], [ 0, %69 ], [ -23, %2 ], [ -23, %14 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_pseudo(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_clone(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_pipe_flags(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store i64 0, ptr %3, align 8, !annotation !27
  %4 = call fastcc i32 @__do_pipe_flags(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 4
  %8 = load ptr, ptr %3, align 8
  tail call void @fd_install(i32 noundef %7, ptr noundef %8) #15
  %9 = getelementptr i32, ptr %0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @fd_install(i32 noundef %10, ptr noundef %12) #15
  br label %13

13:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 %4
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__do_pipe_flags(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, -592001
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = tail call i32 @create_pipe_files(ptr noundef %1, i32 noundef %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = tail call i32 @get_unused_fd_flags(i32 noundef %2) #15
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @get_unused_fd_flags(i32 noundef %2) #15
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  store i32 %10, ptr %0, align 4
  %16 = getelementptr i32, ptr %0, i32 1
  store i32 %13, ptr %16, align 4
  br label %23

17:                                               ; preds = %12
  tail call void @put_unused_fd(i32 noundef %10) #15
  br label %18

18:                                               ; preds = %17, %9
  %19 = phi i32 [ %10, %9 ], [ %13, %17 ]
  %20 = load ptr, ptr %1, align 4
  tail call void @fput(ptr noundef %20) #15
  %21 = getelementptr ptr, ptr %1, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @fput(ptr noundef %22) #15
  br label %23

23:                                               ; preds = %18, %15, %6, %3
  %24 = phi i32 [ %19, %18 ], [ 0, %15 ], [ -22, %3 ], [ %7, %6 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pipe2(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %0 to ptr
  %4 = tail call fastcc i32 @do_pipe2(ptr noundef %3, i32 noundef %1) #15
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pipe(i32 noundef %0) #0 {
  %2 = inttoptr i32 %0 to ptr
  %3 = tail call fastcc i32 @do_pipe2(ptr noundef %2, i32 noundef 0) #15
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pipe_wait_readable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %0) #15
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 4
  %11 = load volatile i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 9
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp ne i32 %9, %11
  %15 = icmp eq i32 %13, 0
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %39, label %17

17:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !27
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #15
  %18 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 1
  %19 = call i32 @prepare_to_wait_event(ptr noundef %18, ptr noundef nonnull %2, i32 noundef 1) #15
  %20 = load volatile i32, ptr %8, align 4
  %21 = load volatile i32, ptr %10, align 4
  %22 = load volatile i32, ptr %12, align 4
  %23 = icmp ne i32 %20, %21
  %24 = icmp eq i32 %22, 0
  %25 = select i1 %23, i1 true, i1 %24
  br i1 %25, label %37, label %26

26:                                               ; preds = %29, %17
  %27 = phi i32 [ %30, %29 ], [ %19, %17 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  call void @schedule() #15
  %30 = call i32 @prepare_to_wait_event(ptr noundef %18, ptr noundef nonnull %2, i32 noundef 1) #15
  %31 = load volatile i32, ptr %8, align 4
  %32 = load volatile i32, ptr %10, align 4
  %33 = load volatile i32, ptr %12, align 4
  %34 = icmp ne i32 %31, %32
  %35 = icmp eq i32 %33, 0
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %37, label %26

37:                                               ; preds = %29, %17
  call void @finish_wait(ptr noundef %18, ptr noundef nonnull %2) #15
  br label %38

38:                                               ; preds = %37, %26
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #15
  br label %39

39:                                               ; preds = %38, %7
  %40 = load i32, ptr %3, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call void @mutex_lock(ptr noundef %0) #15
  br label %43

43:                                               ; preds = %42, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pipe_wait_writable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %0) #15
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 4
  %11 = load volatile i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 5
  %13 = load volatile i32, ptr %12, align 4
  %14 = sub i32 %9, %11
  %15 = icmp ult i32 %14, %13
  br i1 %15, label %43, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 8
  %18 = load volatile i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !27
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #15
  %21 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 2
  %22 = call i32 @prepare_to_wait_event(ptr noundef %21, ptr noundef nonnull %2, i32 noundef 1) #15
  %23 = load volatile i32, ptr %8, align 4
  %24 = load volatile i32, ptr %10, align 4
  %25 = load volatile i32, ptr %12, align 4
  %26 = sub i32 %23, %24
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %41, label %28

28:                                               ; preds = %34, %20
  %29 = phi i32 [ %35, %34 ], [ %22, %20 ]
  %30 = load volatile i32, ptr %17, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = icmp eq i32 %29, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %32
  call void @schedule() #15
  %35 = call i32 @prepare_to_wait_event(ptr noundef %21, ptr noundef nonnull %2, i32 noundef 1) #15
  %36 = load volatile i32, ptr %8, align 4
  %37 = load volatile i32, ptr %10, align 4
  %38 = load volatile i32, ptr %12, align 4
  %39 = sub i32 %36, %37
  %40 = icmp ult i32 %39, %38
  br i1 %40, label %41, label %28

41:                                               ; preds = %34, %28, %20
  call void @finish_wait(ptr noundef %21, ptr noundef nonnull %2) #15
  br label %42

42:                                               ; preds = %41, %32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #15
  br label %43

43:                                               ; preds = %42, %16, %7
  %44 = load i32, ptr %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  call void @mutex_lock(ptr noundef %0) #15
  br label %47

47:                                               ; preds = %46, %43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pipe_read(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %166, label %10, !prof !9

10:                                               ; preds = %2
  tail call void @mutex_lock(ptr noundef %8) #15
  %11 = getelementptr inbounds %struct.pipe_inode_info, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pipe_inode_info, ptr %8, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.pipe_inode_info, ptr %8, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %12, %14
  %18 = icmp uge i32 %17, %16
  %19 = getelementptr inbounds %struct.pipe_inode_info, ptr %8, i32 0, i32 6
  %20 = getelementptr inbounds %struct.pipe_inode_info, ptr %8, i32 0, i32 17
  %21 = getelementptr inbounds %struct.pipe_inode_info, ptr %8, i32 0, i32 1
  %22 = getelementptr inbounds %struct.pipe_inode_info, ptr %8, i32 0, i32 9
  %23 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 7
  %24 = getelementptr inbounds %struct.pipe_inode_info, ptr %8, i32 0, i32 2
  %25 = getelementptr inbounds %struct.pipe_inode_info, ptr %8, i32 0, i32 16
  br label %26

26:                                               ; preds = %143, %10
  %27 = phi i1 [ true, %143 ], [ false, %10 ]
  %28 = phi i1 [ %148, %143 ], [ %18, %10 ]
  %29 = phi i32 [ %103, %143 ], [ %5, %10 ]
  br label %30

30:                                               ; preds = %99, %26
  %31 = phi i32 [ %75, %99 ], [ 0, %26 ]
  %32 = phi i32 [ %95, %99 ], [ %29, %26 ]
  %33 = load volatile i32, ptr %11, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !28
  %34 = load i32, ptr %13, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %101, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr %19, align 4
  %38 = add i32 %37, -1
  %39 = load ptr, ptr %20, align 4
  %40 = and i32 %38, %34
  %41 = getelementptr %struct.pipe_buffer, ptr %39, i32 %40
  %42 = getelementptr %struct.pipe_buffer, ptr %39, i32 %40, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, %32
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = getelementptr %struct.pipe_buffer, ptr %39, i32 %40, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = icmp eq i32 %31, 0
  %52 = select i1 %51, i32 -105, i32 %31
  br label %149

53:                                               ; preds = %45, %36
  %54 = phi i32 [ %43, %36 ], [ %32, %45 ]
  %55 = getelementptr %struct.pipe_buffer, ptr %39, i32 %40, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = call i32 %57(ptr noundef %8, ptr noundef %41) #15
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = icmp eq i32 %31, 0
  %64 = select i1 %63, i32 %60, i32 %31
  br label %149

65:                                               ; preds = %59, %53
  %66 = load ptr, ptr %41, align 4
  %67 = getelementptr %struct.pipe_buffer, ptr %39, i32 %40, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = call i32 @copy_page_to_iter(ptr noundef %66, i32 noundef %68, i32 noundef %54, ptr noundef %1) #15
  %70 = icmp ult i32 %69, %54
  br i1 %70, label %71, label %74, !prof !9

71:                                               ; preds = %65
  %72 = icmp eq i32 %31, 0
  %73 = select i1 %72, i32 -14, i32 %31
  br label %149

74:                                               ; preds = %65
  %75 = add i32 %54, %31
  %76 = load i32, ptr %67, align 4
  %77 = add i32 %76, %54
  store i32 %77, ptr %67, align 4
  %78 = load i32, ptr %42, align 4
  %79 = sub i32 %78, %54
  %80 = getelementptr %struct.pipe_buffer, ptr %39, i32 %40, i32 4
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 %79, i32 0
  store i32 %84, ptr %42, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %74
  %87 = load ptr, ptr %55, align 4
  store ptr null, ptr %55, align 4
  %88 = getelementptr inbounds %struct.pipe_buf_operations, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  call void %89(ptr noundef %8, ptr noundef %41) #15
  call void @_raw_spin_lock_irq(ptr noundef %21) #15
  %90 = add i32 %34, 1
  store i32 %90, ptr %13, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %91 = load i16, ptr %21, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %21, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !29
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  br label %93

93:                                               ; preds = %86, %74
  %94 = phi i32 [ %34, %74 ], [ %90, %86 ]
  %95 = sub i32 %32, %54
  %96 = icmp eq i32 %95, 0
  %97 = xor i1 %83, true
  %98 = select i1 %97, i1 true, i1 %96
  br i1 %98, label %149, label %99

99:                                               ; preds = %93
  %100 = icmp eq i32 %33, %94
  br i1 %100, label %101, label %30

101:                                              ; preds = %99, %30
  %102 = phi i32 [ %31, %30 ], [ %75, %99 ]
  %103 = phi i32 [ %32, %30 ], [ %95, %99 ]
  %104 = load i32, ptr %22, align 4
  %105 = icmp ne i32 %104, 0
  %106 = icmp eq i32 %102, 0
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %108, label %149

108:                                              ; preds = %101
  %109 = load i32, ptr %23, align 4
  %110 = and i32 %109, 2048
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %149

112:                                              ; preds = %108
  call void @mutex_unlock(ptr noundef %8) #15
  br i1 %28, label %113, label %114, !prof !9

113:                                              ; preds = %112
  call void @__wake_up_sync_key(ptr noundef %24, i32 noundef 1, ptr noundef nonnull inttoptr (i32 260 to ptr)) #15
  br label %114

114:                                              ; preds = %113, %112
  call void @kill_fasync(ptr noundef %25, i32 noundef 29, i32 noundef 2) #15
  %115 = load volatile i32, ptr %11, align 4
  %116 = load volatile i32, ptr %13, align 4
  %117 = load volatile i32, ptr %22, align 4
  %118 = icmp ne i32 %115, %116
  %119 = icmp eq i32 %117, 0
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %143, label %121

121:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !27
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 1) #15
  %122 = call i32 @prepare_to_wait_event(ptr noundef %21, ptr noundef nonnull %3, i32 noundef 1) #15
  %123 = load volatile i32, ptr %11, align 4
  %124 = load volatile i32, ptr %13, align 4
  %125 = load volatile i32, ptr %22, align 4
  %126 = icmp ne i32 %123, %124
  %127 = icmp eq i32 %125, 0
  %128 = select i1 %126, i1 true, i1 %127
  br i1 %128, label %140, label %129

129:                                              ; preds = %132, %121
  %130 = phi i32 [ %133, %132 ], [ %122, %121 ]
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  call void @schedule() #15
  %133 = call i32 @prepare_to_wait_event(ptr noundef %21, ptr noundef nonnull %3, i32 noundef 1) #15
  %134 = load volatile i32, ptr %11, align 4
  %135 = load volatile i32, ptr %13, align 4
  %136 = load volatile i32, ptr %22, align 4
  %137 = icmp ne i32 %134, %135
  %138 = icmp eq i32 %136, 0
  %139 = select i1 %137, i1 true, i1 %138
  br i1 %139, label %140, label %129

140:                                              ; preds = %132, %121
  call void @finish_wait(ptr noundef %21, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  br label %143

141:                                              ; preds = %129
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  %142 = icmp slt i32 %130, 0
  br i1 %142, label %166, label %143

143:                                              ; preds = %141, %140, %114
  call void @mutex_lock(ptr noundef %8) #15
  %144 = load i32, ptr %11, align 4
  %145 = load i32, ptr %13, align 4
  %146 = load i32, ptr %15, align 4
  %147 = sub i32 %144, %145
  %148 = icmp uge i32 %147, %146
  br label %26

149:                                              ; preds = %108, %101, %93, %71, %62, %50
  %150 = phi i32 [ %73, %71 ], [ %64, %62 ], [ %52, %50 ], [ %75, %93 ], [ -11, %108 ], [ %102, %101 ]
  %151 = load i32, ptr %11, align 4
  %152 = load i32, ptr %13, align 4
  %153 = icmp ne i32 %151, %152
  %154 = and i1 %153, %27
  call void @mutex_unlock(ptr noundef %8) #15
  br i1 %28, label %155, label %156

155:                                              ; preds = %149
  call void @__wake_up_sync_key(ptr noundef %24, i32 noundef 1, ptr noundef nonnull inttoptr (i32 260 to ptr)) #15
  br label %156

156:                                              ; preds = %155, %149
  br i1 %154, label %157, label %158

157:                                              ; preds = %156
  call void @__wake_up_sync_key(ptr noundef %21, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #15
  br label %158

158:                                              ; preds = %157, %156
  call void @kill_fasync(ptr noundef %25, i32 noundef 29, i32 noundef 2) #15
  %159 = icmp sgt i32 %150, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %158
  %161 = load i32, ptr %23, align 4
  %162 = and i32 %161, 262144
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 1
  call void @touch_atime(ptr noundef %165) #15
  br label %166

166:                                              ; preds = %164, %160, %158, %141, %2
  %167 = phi i32 [ 0, %2 ], [ %150, %158 ], [ %150, %160 ], [ %150, %164 ], [ -512, %141 ]
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pipe_write(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %293, label %10, !prof !9

10:                                               ; preds = %2
  tail call void @mutex_lock(ptr noundef %6) #15
  %11 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #15
  %16 = tail call i32 @send_sig(i32 noundef 13, ptr noundef %15, i32 noundef 0) #15
  br label %209

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %19, %21
  %23 = and i32 %8, 4095
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i1 true, i1 %22
  br i1 %25, label %64, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  %30 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = add i32 %19, -1
  %33 = and i32 %29, %32
  %34 = getelementptr %struct.pipe_buffer, ptr %31, i32 %33
  %35 = getelementptr %struct.pipe_buffer, ptr %31, i32 %33, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr %struct.pipe_buffer, ptr %31, i32 %33, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, %36
  %40 = getelementptr %struct.pipe_buffer, ptr %31, i32 %33, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 16
  %43 = icmp ne i32 %42, 0
  %44 = add i32 %39, %23
  %45 = icmp ult i32 %44, 4097
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %64

47:                                               ; preds = %26
  %48 = getelementptr %struct.pipe_buffer, ptr %31, i32 %33, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = tail call i32 %50(ptr noundef %6, ptr noundef %34) #15
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %209

55:                                               ; preds = %52, %47
  %56 = load ptr, ptr %34, align 4
  %57 = tail call i32 @copy_page_from_iter(ptr noundef %56, i32 noundef %39, i32 noundef %23, ptr noundef %1) #15
  %58 = icmp slt i32 %57, %23
  br i1 %58, label %209, label %59, !prof !9

59:                                               ; preds = %55
  %60 = load i32, ptr %37, align 4
  %61 = add i32 %60, %57
  store i32 %61, ptr %37, align 4
  %62 = load i32, ptr %7, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %209, label %64

64:                                               ; preds = %59, %26, %17
  %65 = phi i32 [ 0, %17 ], [ %57, %59 ], [ 0, %26 ]
  %66 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 5
  %67 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 6
  %68 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 14
  %69 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 1
  %70 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 17
  %71 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 7
  %72 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 15
  %73 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 2
  br label %74

74:                                               ; preds = %205, %64
  %75 = phi i32 [ %65, %64 ], [ %151, %205 ]
  %76 = phi i1 [ %22, %64 ], [ %208, %205 ]
  %77 = phi i1 [ false, %64 ], [ true, %205 ]
  br label %78

78:                                               ; preds = %148, %74
  %79 = phi i32 [ %151, %148 ], [ %75, %74 ]
  %80 = load i32, ptr %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %143, %78
  %83 = tail call ptr @llvm.thread.pointer() #15
  %84 = call i32 @send_sig(i32 noundef 13, ptr noundef %83, i32 noundef 0) #15
  %85 = icmp eq i32 %79, 0
  %86 = select i1 %85, i32 -32, i32 %79
  br label %209

87:                                               ; preds = %143, %78
  %88 = load i32, ptr %18, align 4
  %89 = load i32, ptr %20, align 4
  %90 = load i32, ptr %66, align 4
  %91 = sub i32 %88, %89
  %92 = icmp ult i32 %91, %90
  br i1 %92, label %93, label %148

93:                                               ; preds = %87
  %94 = load i32, ptr %67, align 4
  %95 = load ptr, ptr %68, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = call ptr @__alloc_pages(i32 noundef 5246146, i32 noundef 0, i32 noundef 0, ptr noundef null) #15
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %103, !prof !9

100:                                              ; preds = %97
  %101 = icmp eq i32 %79, 0
  %102 = select i1 %101, i32 -12, i32 %79
  br label %209

103:                                              ; preds = %97
  store ptr %98, ptr %68, align 4
  br label %104

104:                                              ; preds = %103, %93
  %105 = phi ptr [ %95, %93 ], [ %98, %103 ]
  call void @_raw_spin_lock_irq(ptr noundef %69) #15
  %106 = load i32, ptr %18, align 4
  %107 = load i32, ptr %20, align 4
  %108 = load i32, ptr %66, align 4
  %109 = sub i32 %106, %107
  %110 = icmp ult i32 %109, %108
  br i1 %110, label %111, label %143

111:                                              ; preds = %104
  %112 = add i32 %94, -1
  %113 = add i32 %106, 1
  store i32 %113, ptr %18, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %114 = load i16, ptr %69, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr %69, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !29
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  %116 = load ptr, ptr %70, align 4
  %117 = and i32 %106, %112
  %118 = getelementptr %struct.pipe_buffer, ptr %116, i32 %117
  store ptr %105, ptr %118, align 4
  %119 = getelementptr %struct.pipe_buffer, ptr %116, i32 %117, i32 3
  store ptr @anon_pipe_buf_ops, ptr %119, align 4
  %120 = getelementptr %struct.pipe_buffer, ptr %116, i32 %117, i32 1
  store i32 0, ptr %120, align 4
  %121 = getelementptr %struct.pipe_buffer, ptr %116, i32 %117, i32 2
  store i32 0, ptr %121, align 4
  %122 = load i32, ptr %71, align 4
  %123 = and i32 %122, 65536
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %124, i32 16, i32 8
  %126 = getelementptr %struct.pipe_buffer, ptr %116, i32 %117, i32 4
  store i32 %125, ptr %126, align 4
  store ptr null, ptr %68, align 4
  %127 = call i32 @copy_page_from_iter(ptr noundef nonnull %105, i32 noundef 0, i32 noundef 4096, ptr noundef %1) #15
  %128 = icmp ult i32 %127, 4096
  br i1 %128, label %129, label %135

129:                                              ; preds = %111
  %130 = load i32, ptr %7, align 8
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132, !prof !11

132:                                              ; preds = %129
  %133 = icmp eq i32 %79, 0
  %134 = select i1 %133, i32 -14, i32 %79
  br label %209

135:                                              ; preds = %129, %111
  %136 = add i32 %127, %79
  store i32 0, ptr %120, align 4
  store i32 %127, ptr %121, align 4
  %137 = load i32, ptr %7, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %209, label %139

139:                                              ; preds = %135
  %140 = load i32, ptr %20, align 4
  %141 = load i32, ptr %66, align 4
  %142 = sub i32 %106, %140
  br label %148

143:                                              ; preds = %104
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %144 = load i16, ptr %69, align 4
  %145 = add i16 %144, 1
  store i16 %145, ptr %69, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !29
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  %146 = load i32, ptr %11, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %82, label %87

148:                                              ; preds = %139, %87
  %149 = phi i32 [ %142, %139 ], [ %91, %87 ]
  %150 = phi i32 [ %141, %139 ], [ %90, %87 ]
  %151 = phi i32 [ %136, %139 ], [ %79, %87 ]
  %152 = icmp ult i32 %149, %150
  br i1 %152, label %78, label %153

153:                                              ; preds = %148
  %154 = load i32, ptr %71, align 4
  %155 = and i32 %154, 2048
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = icmp eq i32 %151, 0
  %159 = select i1 %158, i32 -11, i32 %151
  br label %209

160:                                              ; preds = %153
  %161 = tail call ptr @llvm.thread.pointer() #15
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %162, 256
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %169, !prof !11

165:                                              ; preds = %160
  %166 = load volatile i32, ptr %161, align 4
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %165, %160
  %170 = icmp eq i32 %151, 0
  %171 = select i1 %170, i32 -512, i32 %151
  br label %209

172:                                              ; preds = %165
  call void @mutex_unlock(ptr noundef %6) #15
  br i1 %76, label %173, label %174

173:                                              ; preds = %172
  call void @__wake_up_sync_key(ptr noundef %69, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #15
  br label %174

174:                                              ; preds = %173, %172
  call void @kill_fasync(ptr noundef %72, i32 noundef 29, i32 noundef 1) #15
  %175 = load volatile i32, ptr %18, align 4
  %176 = load volatile i32, ptr %20, align 4
  %177 = load volatile i32, ptr %66, align 4
  %178 = sub i32 %175, %176
  %179 = icmp ult i32 %178, %177
  br i1 %179, label %205, label %180

180:                                              ; preds = %174
  %181 = load volatile i32, ptr %11, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %205, label %183

183:                                              ; preds = %180
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !27
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 1) #15
  %184 = call i32 @prepare_to_wait_event(ptr noundef %73, ptr noundef nonnull %3, i32 noundef 1) #15
  %185 = load volatile i32, ptr %18, align 4
  %186 = load volatile i32, ptr %20, align 4
  %187 = load volatile i32, ptr %66, align 4
  %188 = sub i32 %185, %186
  %189 = icmp ult i32 %188, %187
  br i1 %189, label %203, label %190

190:                                              ; preds = %196, %183
  %191 = phi i32 [ %197, %196 ], [ %184, %183 ]
  %192 = load volatile i32, ptr %11, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %203, label %194

194:                                              ; preds = %190
  %195 = icmp eq i32 %191, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %194
  call void @schedule() #15
  %197 = call i32 @prepare_to_wait_event(ptr noundef %73, ptr noundef nonnull %3, i32 noundef 1) #15
  %198 = load volatile i32, ptr %18, align 4
  %199 = load volatile i32, ptr %20, align 4
  %200 = load volatile i32, ptr %66, align 4
  %201 = sub i32 %198, %199
  %202 = icmp ult i32 %201, %200
  br i1 %202, label %203, label %190

203:                                              ; preds = %196, %190, %183
  call void @finish_wait(ptr noundef %73, ptr noundef nonnull %3) #15
  br label %204

204:                                              ; preds = %203, %194
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  br label %205

205:                                              ; preds = %204, %180, %174
  call void @mutex_lock(ptr noundef %6) #15
  %206 = load i32, ptr %18, align 4
  %207 = load i32, ptr %20, align 4
  %208 = icmp eq i32 %206, %207
  br label %74

209:                                              ; preds = %169, %157, %135, %132, %100, %82, %59, %55, %52, %14
  %210 = phi i32 [ -32, %14 ], [ %57, %59 ], [ -14, %55 ], [ %53, %52 ], [ %86, %82 ], [ %159, %157 ], [ %171, %169 ], [ %102, %100 ], [ %134, %132 ], [ %136, %135 ]
  %211 = phi i1 [ false, %14 ], [ false, %59 ], [ false, %55 ], [ false, %52 ], [ %76, %82 ], [ %76, %157 ], [ %76, %169 ], [ %76, %100 ], [ %76, %132 ], [ %76, %135 ]
  %212 = phi i1 [ false, %14 ], [ false, %59 ], [ false, %55 ], [ false, %52 ], [ %77, %82 ], [ %77, %157 ], [ %77, %169 ], [ %77, %100 ], [ %77, %132 ], [ %77, %135 ]
  %213 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 3
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 4
  %216 = load i32, ptr %215, align 4
  %217 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 5
  %218 = load i32, ptr %217, align 4
  %219 = sub i32 %214, %216
  %220 = icmp ult i32 %219, %218
  %221 = and i1 %220, %212
  call void @mutex_unlock(ptr noundef %6) #15
  br i1 %211, label %226, label %222

222:                                              ; preds = %209
  %223 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 13
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %222, %209
  %227 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 1
  call void @__wake_up_sync_key(ptr noundef %227, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #15
  br label %228

228:                                              ; preds = %226, %222
  %229 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 15
  call void @kill_fasync(ptr noundef %229, i32 noundef 29, i32 noundef 1) #15
  br i1 %221, label %230, label %232

230:                                              ; preds = %228
  %231 = getelementptr inbounds %struct.pipe_inode_info, ptr %6, i32 0, i32 2
  call void @__wake_up_sync_key(ptr noundef %231, i32 noundef 1, ptr noundef nonnull inttoptr (i32 260 to ptr)) #15
  br label %232

232:                                              ; preds = %230, %228
  %233 = icmp sgt i32 %210, 0
  br i1 %233, label %234, label %293

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %236 = load ptr, ptr %235, align 8
  %237 = getelementptr inbounds %struct.inode, ptr %236, i32 0, i32 8
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr %struct.super_block, ptr %238, i32 0, i32 26, i32 2
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !31
  %240 = load volatile i32, ptr %239, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %254, !prof !11

242:                                              ; preds = %234
  %243 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !32
  %244 = getelementptr %struct.super_block, ptr %238, i32 0, i32 26, i32 2, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  %246 = ptrtoint ptr %245 to i32
  %247 = call i32 @llvm.read_register.i32(metadata !0) #15
  %248 = inttoptr i32 %247 to ptr
  %249 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %248) #13, !srcloc !33
  %250 = add i32 %249, %246
  %251 = inttoptr i32 %250 to ptr
  %252 = load i32, ptr %251, align 4
  %253 = add i32 %252, 1
  store i32 %253, ptr %251, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %243) #15, !srcloc !34
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !35
  br label %256

254:                                              ; preds = %234
  %255 = call zeroext i1 @__percpu_down_read(ptr noundef %239, i1 noundef zeroext true) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !35
  br i1 %255, label %256, label %293

256:                                              ; preds = %254, %242
  %257 = call i32 @file_update_time(ptr noundef %4) #15
  %258 = icmp eq i32 %257, 0
  %259 = select i1 %258, i32 %210, i32 %257
  %260 = load ptr, ptr %235, align 8
  %261 = getelementptr inbounds %struct.inode, ptr %260, i32 0, i32 8
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr %struct.super_block, ptr %262, i32 0, i32 26, i32 2
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !36
  %264 = load volatile i32, ptr %263, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %278, !prof !11

266:                                              ; preds = %256
  %267 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !32
  %268 = getelementptr %struct.super_block, ptr %262, i32 0, i32 26, i32 2, i32 0, i32 1
  %269 = load ptr, ptr %268, align 4
  %270 = ptrtoint ptr %269 to i32
  %271 = call i32 @llvm.read_register.i32(metadata !0) #15
  %272 = inttoptr i32 %271 to ptr
  %273 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %272) #13, !srcloc !33
  %274 = add i32 %273, %270
  %275 = inttoptr i32 %274 to ptr
  %276 = load i32, ptr %275, align 4
  %277 = add i32 %276, -1
  store i32 %277, ptr %275, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %267) #15, !srcloc !34
  br label %292

278:                                              ; preds = %256
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !37
  %279 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !32
  %280 = getelementptr %struct.super_block, ptr %262, i32 0, i32 26, i32 2, i32 0, i32 1
  %281 = load ptr, ptr %280, align 4
  %282 = ptrtoint ptr %281 to i32
  %283 = call i32 @llvm.read_register.i32(metadata !0) #15
  %284 = inttoptr i32 %283 to ptr
  %285 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %284) #13, !srcloc !33
  %286 = add i32 %285, %282
  %287 = inttoptr i32 %286 to ptr
  %288 = load i32, ptr %287, align 4
  %289 = add i32 %288, -1
  store i32 %289, ptr %287, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %279) #15, !srcloc !34
  %290 = getelementptr %struct.super_block, ptr %262, i32 0, i32 26, i32 2, i32 0, i32 2
  %291 = call i32 @rcuwait_wake_up(ptr noundef %290) #15
  br label %292

292:                                              ; preds = %278, %266
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !38
  br label %293

293:                                              ; preds = %292, %254, %232, %2
  %294 = phi i32 [ 0, %2 ], [ %259, %292 ], [ %210, %254 ], [ %210, %232 ]
  ret i32 %294
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pipe_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 13
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 1
  %12 = icmp eq ptr %1, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %1, align 4
  %15 = icmp ne ptr %14, null
  %16 = icmp ne ptr %11, null
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  tail call void %14(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %1) #15
  %19 = load i32, ptr %6, align 8
  br label %20

20:                                               ; preds = %18, %13, %2
  %21 = phi i32 [ %19, %18 ], [ %7, %13 ], [ %7, %2 ]
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 2
  %26 = icmp eq ptr %1, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %1, align 4
  %29 = icmp ne ptr %28, null
  %30 = icmp ne ptr %25, null
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  tail call void %28(ptr noundef %0, ptr noundef nonnull %25, ptr noundef nonnull %1) #15
  %33 = load i32, ptr %6, align 8
  br label %34

34:                                               ; preds = %32, %27, %24, %20, %10
  %35 = phi i32 [ %7, %10 ], [ %33, %32 ], [ %21, %27 ], [ %21, %24 ], [ %21, %20 ]
  %36 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 3
  %37 = load volatile i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 4
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %35, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %34
  %43 = icmp eq i32 %37, %39
  %44 = select i1 %43, i32 0, i32 65
  %45 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 9
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 14
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 12
  %52 = load i32, ptr %51, align 4
  %53 = zext i32 %52 to i64
  %54 = icmp eq i64 %50, %53
  %55 = or i32 %44, 16
  %56 = select i1 %54, i32 %44, i32 %55
  br label %57

57:                                               ; preds = %48, %42, %34
  %58 = phi i32 [ %44, %42 ], [ 0, %34 ], [ %56, %48 ]
  %59 = and i32 %35, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = sub i32 %37, %39
  %65 = icmp ult i32 %64, %63
  %66 = or i32 %58, 260
  %67 = select i1 %65, i32 %66, i32 %58
  %68 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 8
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  %71 = or i32 %67, 8
  %72 = select i1 %70, i32 %71, i32 %67
  br label %73

73:                                               ; preds = %61, %57
  %74 = phi i32 [ %58, %57 ], [ %72, %61 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pipe_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %1, 21531
  br i1 %6, label %7, label %37

7:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef %5) #15
  %8 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = icmp eq i32 %11, %9
  br i1 %15, label %28, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi i32 [ 0, %16 ], [ %25, %19 ]
  %21 = phi i32 [ %11, %16 ], [ %26, %19 ]
  %22 = and i32 %21, %14
  %23 = getelementptr %struct.pipe_buffer, ptr %18, i32 %22, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %20
  %26 = add i32 %21, 1
  %27 = icmp eq i32 %26, %9
  br i1 %27, label %28, label %19

28:                                               ; preds = %19, %7
  %29 = phi i32 [ 0, %7 ], [ %25, %19 ]
  tail call void @mutex_unlock(ptr noundef %5) #15
  %30 = inttoptr i32 %2 to ptr
  %31 = tail call ptr @llvm.thread.pointer() #15
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #13, !srcloc !39
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #15, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !41
  %36 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %30, i32 %29, i32 -1090519041) #15, !srcloc !42
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #15, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !41
  br label %37

37:                                               ; preds = %28, %3
  %38 = phi i32 [ %36, %28 ], [ -515, %3 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fifo_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1346981957
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 14
  store i64 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.pipe_inode_info, ptr %11, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %17 = load i16, ptr %9, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  br label %38

19:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %20 = load i16, ptr %9, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  %22 = tail call ptr @alloc_pipe_info()
  %23 = icmp eq ptr %22, null
  br i1 %23, label %144, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.pipe_inode_info, ptr %22, i32 0, i32 10
  store i32 1, ptr %25, align 4
  tail call void @_raw_spin_lock(ptr noundef %9) #15
  %26 = load ptr, ptr %10, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28, !prof !11

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.pipe_inode_info, ptr %26, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %32 = load i16, ptr %9, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  tail call void @free_pipe_info(ptr noundef nonnull %22)
  %34 = load ptr, ptr %10, align 4
  br label %38

35:                                               ; preds = %24
  store ptr %22, ptr %10, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %36 = load i16, ptr %9, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  br label %38

38:                                               ; preds = %35, %28, %13
  %39 = phi ptr [ %11, %13 ], [ %34, %28 ], [ %22, %35 ]
  %40 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %39, ptr %40, align 8
  tail call void @mutex_lock(ptr noundef %39) #15
  %41 = tail call i32 @stream_open(ptr noundef %0, ptr noundef %1) #15
  %42 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 3
  switch i32 %44, label %132 [
    i32 1, label %45
    i32 2, label %72
    i32 3, label %101
  ]

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  %49 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %54, i32 noundef 1, i32 noundef 0, ptr noundef null) #15
  br label %55

55:                                               ; preds = %53, %45
  br i1 %7, label %119, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 9
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %119

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 2048
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 12
  br i1 %64, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, ptr %65, align 4
  %68 = zext i32 %67 to i64
  store i64 %68, ptr %8, align 8
  br label %119

69:                                               ; preds = %60
  %70 = tail call fastcc i32 @wait_for_partner(ptr noundef %39, ptr noundef %65)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %119, label %120

72:                                               ; preds = %38
  br i1 %7, label %82, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 2048
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 8
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %132, label %82

82:                                               ; preds = %78, %73, %72
  %83 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 12
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 4
  %86 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 9
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 4
  %89 = icmp eq i32 %87, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %91, i32 noundef 1, i32 noundef 0, ptr noundef null) #15
  br label %92

92:                                               ; preds = %90, %82
  br i1 %7, label %119, label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 8
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 11
  %99 = tail call fastcc i32 @wait_for_partner(ptr noundef %39, ptr noundef %98)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %119, label %126

101:                                              ; preds = %38
  %102 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 8
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 4
  %105 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 9
  %106 = load i32, ptr %105, align 4
  %107 = add i32 %106, 1
  store i32 %107, ptr %105, align 4
  %108 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 11
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 4
  %111 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 12
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 4
  %114 = icmp eq i32 %103, 0
  %115 = icmp eq i32 %106, 0
  %116 = select i1 %114, i1 true, i1 %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %101
  %118 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %118, i32 noundef 1, i32 noundef 0, ptr noundef null) #15
  br label %119

119:                                              ; preds = %117, %101, %97, %93, %92, %69, %66, %56, %55
  tail call void @mutex_unlock(ptr noundef %39) #15
  br label %144

120:                                              ; preds = %69
  %121 = load i32, ptr %49, align 4
  %122 = add i32 %121, -1
  store i32 %122, ptr %49, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %125, i32 noundef 1, i32 noundef 1, ptr noundef null) #15
  br label %132

126:                                              ; preds = %97
  %127 = load i32, ptr %86, align 4
  %128 = add i32 %127, -1
  store i32 %128, ptr %86, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %131, i32 noundef 1, i32 noundef 0, ptr noundef null) #15
  br label %132

132:                                              ; preds = %130, %126, %124, %120, %78, %38
  %133 = phi i32 [ -6, %78 ], [ -22, %38 ], [ -512, %124 ], [ -512, %120 ], [ -512, %130 ], [ -512, %126 ]
  tail call void @mutex_unlock(ptr noundef %39) #15
  tail call void @_raw_spin_lock(ptr noundef %9) #15
  %134 = getelementptr inbounds %struct.pipe_inode_info, ptr %39, i32 0, i32 10
  %135 = load i32, ptr %134, align 4
  %136 = add i32 %135, -1
  store i32 %136, ptr %134, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  store ptr null, ptr %10, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %139 = load i16, ptr %9, align 4
  %140 = add i16 %139, 1
  store i16 %140, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  tail call void @free_pipe_info(ptr noundef %39) #15
  br label %144

141:                                              ; preds = %132
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %142 = load i16, ptr %9, align 4
  %143 = add i16 %142, 1
  store i16 %143, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  br label %144

144:                                              ; preds = %141, %138, %119, %19
  %145 = phi i32 [ 0, %119 ], [ -12, %19 ], [ %133, %138 ], [ %133, %141 ]
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pipe_release(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4
  %13 = load i32, ptr %5, align 8
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i32 [ %13, %9 ], [ %6, %2 ]
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  br i1 %17, label %22, label %20

20:                                               ; preds = %14
  %21 = add i32 %19, -1
  store i32 %21, ptr %18, align 4
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %19, %14 ]
  %24 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = icmp eq i32 %23, 0
  %28 = xor i1 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %30, i32 noundef 1, i32 noundef 0, ptr noundef null) #15
  %31 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %31, i32 noundef 1, i32 noundef 0, ptr noundef null) #15
  %32 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 15
  tail call void @kill_fasync(ptr noundef %32, i32 noundef 29, i32 noundef 1) #15
  %33 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 16
  tail call void @kill_fasync(ptr noundef %33, i32 noundef 29, i32 noundef 2) #15
  br label %34

34:                                               ; preds = %29, %22
  tail call void @mutex_unlock(ptr noundef %4) #15
  %35 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %35) #15
  %36 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 10
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, -1
  store i32 %38, ptr %36, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  store ptr null, ptr %41, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %42 = load i16, ptr %35, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  tail call void @free_pipe_info(ptr noundef %4) #15
  br label %47

44:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %45 = load i16, ptr %35, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !26
  br label %47

47:                                               ; preds = %44, %40
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pipe_fasync(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 15
  %12 = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %11) #15
  %13 = load i32, ptr %6, align 8
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i32 [ %13, %10 ], [ %7, %3 ]
  %16 = phi i32 [ %12, %10 ], [ 0, %3 ]
  %17 = and i32 %15, 2
  %18 = icmp ne i32 %17, 0
  %19 = icmp sgt i32 %16, -1
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 16
  %23 = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %22) #15
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, ptr %6, align 8
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 15
  %31 = tail call i32 @fasync_helper(i32 noundef -1, ptr noundef %1, i32 noundef 0, ptr noundef %30) #15
  br label %32

32:                                               ; preds = %29, %25, %21, %14
  %33 = phi i32 [ %23, %29 ], [ %23, %25 ], [ %23, %21 ], [ %16, %14 ]
  tail call void @mutex_unlock(ptr noundef %5) #15
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @round_pipe_size(i32 noundef %0) local_unnamed_addr #5 {
  %2 = icmp ugt i32 %0, -2147483648
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 4096
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = add i32 %0, -1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 false) #15, !range !43
  %8 = sub nuw nsw i32 32, %7
  %9 = shl nuw i32 1, %8
  br label %10

10:                                               ; preds = %5, %3, %1
  %11 = phi i32 [ 0, %1 ], [ 4096, %3 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pipe_resize_ring(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -1
  %6 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %49, label %12

12:                                               ; preds = %2
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 24) #15
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %49, label %15, !prof !9

15:                                               ; preds = %12
  %16 = extractvalue { i32, i1 } %13, 0
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 4206016) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %49, label %19, !prof !9

19:                                               ; preds = %15
  %20 = icmp eq i32 %7, %9
  br i1 %20, label %40, label %21

21:                                               ; preds = %19
  %22 = and i32 %7, %5
  %23 = and i32 %9, %5
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %3, align 4
  %27 = sub i32 %26, %23
  %28 = icmp eq i32 %22, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr %struct.pipe_buffer, ptr %17, i32 %27
  %31 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = mul i32 %22, 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %30, ptr align 4 %32, i32 %33, i1 false)
  br label %34

34:                                               ; preds = %29, %25, %21
  %35 = phi i32 [ %10, %21 ], [ %27, %29 ], [ %27, %25 ]
  %36 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 17
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr %struct.pipe_buffer, ptr %37, i32 %23
  %39 = mul i32 %35, 24
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %17, ptr align 4 %38, i32 %39, i1 false)
  br label %40

40:                                               ; preds = %34, %19
  %41 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 17
  %42 = load ptr, ptr %41, align 4
  tail call void @kfree(ptr noundef %42) #15
  store ptr %17, ptr %41, align 4
  store i32 %1, ptr %3, align 4
  %43 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp ugt i32 %44, %1
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 %1, ptr %43, align 4
  br label %47

47:                                               ; preds = %46, %40
  store i32 0, ptr %8, align 4
  store i32 %10, ptr %6, align 4
  %48 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %48, i32 noundef 1, i32 noundef 1, ptr noundef null) #15
  br label %49

49:                                               ; preds = %47, %15, %12, %2
  %50 = phi i32 [ 0, %47 ], [ -16, %2 ], [ -12, %15 ], [ -12, %12 ]
  ret i32 %50
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @get_pipe_info(ptr nocapture noundef readonly %0, i1 zeroext %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @pipefifo_fops
  %8 = icmp ne ptr %4, null
  %9 = select i1 %7, i1 %8, i1 false
  %10 = select i1 %9, ptr %4, ptr null
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pipe_fcntl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, @pipefifo_fops
  %9 = icmp eq ptr %5, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %76, label %11

11:                                               ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull %5) #15
  switch i32 %1, label %74 [
    i32 1031, label %12
    i32 1032, label %70
  ]

12:                                               ; preds = %11
  %13 = icmp ugt i32 %2, -2147483648
  br i1 %13, label %74, label %14

14:                                               ; preds = %12
  %15 = icmp ult i32 %2, 4096
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = add i32 %2, -1
  %18 = tail call i32 @llvm.ctlz.i32(i32 %17, i1 false) #15, !range !43
  %19 = sub nuw nsw i32 32, %18
  %20 = shl nuw i32 1, %19
  %21 = lshr i32 %20, 12
  br label %22

22:                                               ; preds = %16, %14
  %23 = phi i32 [ %21, %16 ], [ 1, %14 ]
  %24 = phi i32 [ %20, %16 ], [ 4096, %14 ]
  %25 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %23, %26
  %28 = load i32, ptr @pipe_max_size, align 4
  %29 = icmp ugt i32 %24, %28
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = tail call zeroext i1 @capable(i32 noundef 24) #15
  br i1 %32, label %33, label %74

33:                                               ; preds = %31, %22
  %34 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 18
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = sub i32 %23, %37
  %39 = getelementptr inbounds %struct.user_struct, ptr %35, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #15, !srcloc !12
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 %38, ptr elementtype(i32) %39) #15, !srcloc !20
  %41 = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %42 = load i32, ptr %25, align 4
  %43 = icmp ugt i32 %23, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %33
  %45 = load volatile i32, ptr @pipe_user_pages_hard, align 4
  %46 = icmp ne i32 %45, 0
  %47 = icmp ult i32 %45, %41
  %48 = and i1 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load volatile i32, ptr @pipe_user_pages_soft, align 4
  %51 = icmp ne i32 %50, 0
  %52 = icmp ult i32 %50, %41
  %53 = and i1 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %44
  %55 = tail call zeroext i1 @capable(i32 noundef 24) #15
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %57, label %58, label %63

58:                                               ; preds = %56, %54, %49, %33
  %59 = tail call i32 @pipe_resize_ring(ptr noundef nonnull %5, i32 noundef %23) #15
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  store i32 %23, ptr %25, align 4
  store i32 %23, ptr %36, align 4
  %62 = and i32 %24, -4096
  br label %74

63:                                               ; preds = %58, %56
  %64 = phi i32 [ %59, %58 ], [ -1, %56 ]
  %65 = load ptr, ptr %34, align 4
  %66 = load i32, ptr %36, align 4
  %67 = sub i32 %66, %23
  %68 = getelementptr inbounds %struct.user_struct, ptr %65, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #15, !srcloc !12
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 %67, ptr elementtype(i32) %68) #15, !srcloc !20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  br label %74

70:                                               ; preds = %11
  %71 = getelementptr inbounds %struct.pipe_inode_info, ptr %5, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = shl i32 %72, 12
  br label %74

74:                                               ; preds = %70, %63, %61, %31, %12, %11
  %75 = phi i32 [ %73, %70 ], [ -22, %11 ], [ %64, %63 ], [ %62, %61 ], [ -1, %31 ], [ -22, %12 ]
  tail call void @mutex_unlock(ptr noundef nonnull %5) #15
  br label %76

76:                                               ; preds = %74, %3
  %77 = phi i32 [ %75, %74 ], [ -9, %3 ]
  ret i32 %77
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_pipe_fs() #8 section ".init.text" {
  %1 = tail call i32 @register_filesystem(ptr noundef nonnull @pipe_fs_type) #15
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = tail call ptr @kern_mount(ptr noundef nonnull @pipe_fs_type) #15
  store ptr %4, ptr @pipe_mnt, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  %8 = tail call i32 @unregister_filesystem(ptr noundef nonnull @pipe_fs_type) #15
  br label %9

9:                                                ; preds = %6, %3, %0
  %10 = phi i32 [ %1, %0 ], [ %7, %6 ], [ 0, %3 ]
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.9, ptr noundef nonnull @fs_pipe_sysctls, ptr noundef nonnull @.str.10) #15
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode_pseudo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_pipe2(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x ptr], align 8
  %4 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store i64 0, ptr %3, align 8, !annotation !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store i64 0, ptr %4, align 8, !annotation !27
  %5 = call fastcc i32 @__do_pipe_flags(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef %1)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %2
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 8, i32 -1090519040) #18, !srcloc !44
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = tail call ptr @llvm.thread.pointer() #15
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #13, !srcloc !39
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #15, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !41
  %17 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 8) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #15, !srcloc !40
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !41
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19, !prof !11

19:                                               ; preds = %11, %7
  %20 = load ptr, ptr %3, align 8
  call void @fput(ptr noundef %20) #15
  %21 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  call void @fput(ptr noundef %22) #15
  %23 = load i32, ptr %4, align 8
  call void @put_unused_fd(i32 noundef %23) #15
  %24 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  call void @put_unused_fd(i32 noundef %25) #15
  br label %33

26:                                               ; preds = %11
  %27 = load i32, ptr %4, align 8
  %28 = load ptr, ptr %3, align 8
  call void @fd_install(i32 noundef %27, ptr noundef %28) #15
  %29 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  call void @fd_install(i32 noundef %30, ptr noundef %32) #15
  br label %33

33:                                               ; preds = %26, %19, %2
  %34 = phi i32 [ %5, %2 ], [ -14, %19 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @anon_pipe_buf_release(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !11

8:                                                ; preds = %2
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %2
  %11 = ptrtoint ptr %3 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 14
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store ptr %3, ptr %19, align 4
  br label %39

23:                                               ; preds = %18, %12
  %24 = load volatile i32, ptr %4, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !11

27:                                               ; preds = %23
  %28 = add i32 %24, -1
  br label %31

29:                                               ; preds = %23
  %30 = ptrtoint ptr %3 to i32
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = inttoptr i32 %32 to ptr
  %34 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #15, !srcloc !12
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #15, !srcloc !17
  %36 = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  tail call void @__put_page(ptr noundef %33) #15
  br label %39

39:                                               ; preds = %38, %31, %22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @anon_pipe_buf_try_steal(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !11

8:                                                ; preds = %2
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %2
  %11 = ptrtoint ptr %3 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load volatile i32, ptr %4, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !11

22:                                               ; preds = %18
  %23 = add i32 %19, -1
  br label %26

24:                                               ; preds = %18
  %25 = ptrtoint ptr %3 to i32
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = inttoptr i32 %27 to ptr
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 1
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %26, %12
  ret i1 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_partner(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %5 = tail call ptr @llvm.thread.pointer() #15
  store i32 0, ptr %3, align 4
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr %7, ptr %8, align 4
  %9 = load i32, ptr %1, align 4
  %10 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.pipe_inode_info, ptr %0, i32 0, i32 10
  br label %12

12:                                               ; preds = %28, %2
  call void @prepare_to_wait(ptr noundef %10, ptr noundef nonnull %3, i32 noundef 1) #15
  %13 = load i32, ptr %11, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  call void @mutex_unlock(ptr noundef %0) #15
  br label %16

16:                                               ; preds = %15, %12
  call void @schedule() #15
  call void @finish_wait(ptr noundef %10, ptr noundef nonnull %3) #15
  %17 = load i32, ptr %11, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void @mutex_lock(ptr noundef %0) #15
  br label %20

20:                                               ; preds = %19, %16
  %21 = load volatile i32, ptr %5, align 4
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31, !prof !11

24:                                               ; preds = %20
  %25 = load volatile i32, ptr %5, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, ptr %1, align 4
  %30 = icmp eq i32 %9, %29
  br i1 %30, label %12, label %31

31:                                               ; preds = %28, %24, %20
  %32 = load i32, ptr %1, align 4
  %33 = icmp eq i32 %9, %32
  %34 = select i1 %33, i32 -512, i32 0
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pipefs_init_fs_context(ptr noundef %0) #0 {
  %2 = tail call ptr @init_pseudo(ptr noundef %0, i32 noundef 1346981957) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  store ptr @pipefs_ops, ptr %2, align 4
  %5 = getelementptr inbounds %struct.pseudo_fs_context, ptr %2, i32 0, i32 2
  store ptr @pipefs_dentry_operations, ptr %5, align 4
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 0, %4 ], [ -12, %1 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_inode_nonrcu(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pipefs_dname(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr (ptr, ptr, i32, ptr, ...) @dynamic_dname(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.12, i32 noundef %7) #15
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dynamic_dname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_dopipe_max_size(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call i32 @do_proc_douintvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @do_proc_dopipe_max_size_conv, ptr noundef null) #15
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_proc_douintvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @do_proc_dopipe_max_size_conv(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #14 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 4
  %8 = icmp ugt i32 %7, -2147483648
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = icmp ult i32 %7, 4096
  %11 = add i32 %7, -1
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 false) #15, !range !43
  %13 = sub nuw nsw i32 32, %12
  %14 = shl nuw i32 1, %13
  %15 = select i1 %10, i32 4096, i32 %14
  store i32 %15, ptr %1, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, ptr %1, align 4
  store i32 %17, ptr %0, align 4
  br label %18

18:                                               ; preds = %16, %9, %6
  %19 = phi i32 [ -22, %6 ], [ 0, %9 ], [ 0, %16 ]
  ret i32 %19
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2154071133, i64 2154071607, i64 2154071170, i64 2154071226, i64 2154071260, i64 2154071284, i64 2154071325, i64 2154071346, i64 2154071374, i64 2154071408}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 875283, i64 2148365254, i64 2148365280, i64 2148365327, i64 2148365349, i64 2148365377, i64 2148365397}
!13 = !{i64 2148385131, i64 2148385163, i64 2148385192, i64 2148385226, i64 2148385257, i64 2148385280}
!14 = !{i64 2148486471}
!15 = !{i64 2148376669, i64 2148376695, i64 2148376724, i64 2148376758, i64 2148376789, i64 2148376812}
!16 = !{i64 2148477348}
!17 = !{i64 2148379710, i64 2148379742, i64 2148379771, i64 2148379805, i64 2148379836, i64 2148379859}
!18 = !{i64 2148477551}
!19 = !{i64 2148474515}
!20 = !{i64 2148377353, i64 2148377385, i64 2148377414, i64 2148377448, i64 2148377479, i64 2148377502}
!21 = !{i64 2148474718}
!22 = !{i64 2148378127, i64 2148378159, i64 2148378188, i64 2148378222, i64 2148378253, i64 2148378276}
!23 = !{i64 2149042349}
!24 = !{i64 2149038173}
!25 = !{i64 2149038248, i64 2149038275, i64 2149038322, i64 2149038344, i64 2149038372, i64 2149038392}
!26 = !{i64 2149065352}
!27 = !{!"auto-init"}
!28 = !{i64 2154090217}
!29 = !{i64 781206}
!30 = !{i64 2149066493}
!31 = !{i64 2151708922}
!32 = !{i64 780961, i64 781022}
!33 = !{i64 799661}
!34 = !{i64 783978}
!35 = !{i64 2151716539}
!36 = !{i64 2151717170}
!37 = !{i64 2151725481}
!38 = !{i64 2151733699}
!39 = !{i64 4032624}
!40 = !{i64 4032821}
!41 = !{i64 2151518100}
!42 = !{i64 2154116890, i64 2154117170, i64 2154117504, i64 2154117838}
!43 = !{i32 0, i32 33}
!44 = !{i64 2151537090, i64 2151537115}
