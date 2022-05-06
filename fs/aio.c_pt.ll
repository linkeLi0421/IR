; ModuleID = '/llk/IR/fs/aio.c_pt.bc'
source_filename = "../fs/aio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kiocb_set_cancel_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22kiocb_set_cancel_fn\22\09\09\09\09\09"
module asm "__kstrtabns_kiocb_set_cancel_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.aio_kiocb = type { %union.anon.105, ptr, ptr, %struct.io_event, %struct.list_head, %struct.refcount_struct, ptr }
%union.anon.105 = type { %struct.kiocb, [16 x i8] }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.io_event = type { i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kioctx = type { %struct.percpu_ref, %struct.atomic_t, %struct.percpu_ref, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, %struct.rcu_work, ptr, [40 x i8], %struct.anon.30, %struct.anon.31, %struct.anon.32, %struct.anon.33, [8 x ptr], ptr, i32, [24 x i8] }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.anon.30 = type { %struct.atomic_t, [60 x i8] }
%struct.anon.31 = type { %struct.spinlock, %struct.list_head, [52 x i8] }
%struct.anon.32 = type { %struct.mutex, %struct.wait_queue_head, [32 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.33 = type { i32, i32, %struct.spinlock, [52 x i8] }
%struct.ctx_rq_wait = type { %struct.completion, %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.25 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.kioctx_table = type { %struct.callback_head, i32, [0 x ptr] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.67, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.46 }
%struct.llist_node = type { ptr }
%union.anon.46 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.47 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.67 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.93, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.94, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.95, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.94 = type { %struct.callback_head }
%union.anon.95 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.98 = type { ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.aio_ring = type { i32, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.io_event] }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.aio_poll_table = type { %struct.poll_table_struct, ptr, i8, i32 }
%struct.poll_table_struct = type { ptr, i32 }
%struct.iocb = type { i64, i32, i32, i16, i16, i32, i64, i64, i64, i64, i32, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.fsync_iocb = type { ptr, %struct.work_struct, i8, ptr }
%struct.poll_iocb = type { ptr, ptr, i32, i8, i8, i8, %struct.wait_queue_entry, %struct.work_struct }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.__aio_sigset = type { ptr, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.page = type { i32, %union.anon.17, %union.anon.36, %struct.atomic_t }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.36 = type { %struct.atomic_t }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.26, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.iovec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.37, %union.anon.38 }
%union.anon.37 = type { ptr }
%union.anon.38 = type { i64 }
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
%struct.io_context = type { %struct.atomic_t, %struct.atomic_t, i16 }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }

@__initcall__kmod_aio__280_307_aio_setup6 = internal global ptr @aio_setup, section ".initcall6.init", align 4
@kiocb_set_cancel_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [9 x i8] c"fs/aio.c\00", align 1
@__kstrtab_kiocb_set_cancel_fn = external dso_local constant [0 x i8], align 1
@__kstrtabns_kiocb_set_cancel_fn = external dso_local constant [0 x i8], align 1
@__ksymtab_kiocb_set_cancel_fn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kiocb_set_cancel_fn to i32), ptr @__kstrtab_kiocb_set_cancel_fn, ptr @__kstrtabns_kiocb_set_cancel_fn }, section "___ksymtab+kiocb_set_cancel_fn", align 4
@aio_setup.aio_fs = internal global %struct.file_system_type { ptr @.str.1, i32 0, ptr @aio_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"aio\00", align 1
@aio_mnt = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to create aio fs mount.\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"aio_kiocb\00", align 1
@kiocb_cachep = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"kioctx\00", align 1
@kioctx_cachep = internal unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@aio_sysctls = internal global [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.7, ptr @aio_nr, i32 4, i16 292, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.8, ptr @aio_max_nr, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"aio_sysctls\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"aio-nr\00", align 1
@aio_nr = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"aio-max-nr\00", align 1
@aio_max_nr = internal global i32 65536, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@aio_nr_lock = internal global %struct.spinlock zeroinitializer, align 4
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@ioctx_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"&ctx->ring_lock\00", align 1
@ioctx_alloc.__key.11 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"&ctx->wait\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@aio_ctx_aops = internal constant %struct.address_space_operations { ptr null, ptr null, ptr null, ptr @__set_page_dirty_no_writeback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aio_migratepage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"[aio]\00", align 1
@aio_ring_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aio_ring_mmap, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@aio_ring_vm_ops = internal constant %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr @aio_ring_mremap, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @filemap_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [29 x i8] c"include/linux/sched/signal.h\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_aio__280_307_aio_setup6, ptr @__ksymtab_kiocb_set_cancel_fn], section "llvm.metadata"

@sys_io_setup = dso_local alias i32 (i32, ptr), ptr @__se_sys_io_setup
@sys_io_destroy = dso_local alias i32 (i32), ptr @__se_sys_io_destroy
@sys_io_submit = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_io_submit
@sys_io_cancel = dso_local alias i32 (i32, ptr, ptr), ptr @__se_sys_io_cancel
@sys_io_pgetevents = dso_local alias i32 (i32, i32, i32, ptr, ptr, ptr), ptr @__se_sys_io_pgetevents
@sys_io_pgetevents_time32 = dso_local alias i32 (i32, i32, i32, ptr, ptr, ptr), ptr @__se_sys_io_pgetevents_time32
@sys_io_getevents_time32 = dso_local alias i32 (i32, i32, i32, ptr, ptr), ptr @__se_sys_io_getevents_time32

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @aio_setup() #0 section ".init.text" {
  %1 = tail call ptr @kern_mount(ptr noundef nonnull @aio_setup.aio_fs) #13
  store ptr %1, ptr @aio_mnt, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2) #14
  unreachable

4:                                                ; preds = %0
  %5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.3, i32 noundef 112, i32 noundef 8, i32 noundef 270336, ptr noundef null) #13
  store ptr %5, ptr @kiocb_cachep, align 4
  %6 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 448, i32 noundef 64, i32 noundef 270336, ptr noundef null) #13
  store ptr %6, ptr @kioctx_cachep, align 4
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.5, ptr noundef nonnull @aio_sysctls, ptr noundef nonnull @.str.6) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kiocb_set_cancel_fn(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.aio_kiocb, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.aio_kiocb, ptr %0, i32 0, i32 4
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp ne ptr %6, %5
  %8 = load i1, ptr @kiocb_set_cancel_fn.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %2
  store i1 true, ptr @kiocb_set_cancel_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 594, i32 noundef 9, ptr noundef null) #13
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %21, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.kioctx, ptr %4, i32 0, i32 16
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #13
  %16 = getelementptr inbounds %struct.kioctx, ptr %4, i32 0, i32 16, i32 1
  %17 = getelementptr inbounds %struct.kioctx, ptr %4, i32 0, i32 16, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  store ptr %5, ptr %17, align 4
  store ptr %16, ptr %5, align 4
  %19 = getelementptr inbounds %struct.aio_kiocb, ptr %0, i32 0, i32 4, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %5, ptr %18, align 4
  %20 = getelementptr inbounds %struct.aio_kiocb, ptr %0, i32 0, i32 2
  store ptr %1, ptr %20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #13
  br label %21

21:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_aio(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.ctx_rq_wait, align 4
  %3 = getelementptr inbounds %struct.anon.25, ptr %0, i32 0, i32 45
  %4 = load volatile ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #13
  %5 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 12, i1 false), !annotation !10
  %6 = icmp eq ptr %4, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ctx_rq_wait, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.kioctx_table, ptr %4, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  store volatile i32 %10, ptr %8, align 4
  store i32 0, ptr %2, align 4
  %11 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #13
  %12 = load i32, ptr %9, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %27, %7
  %15 = phi i32 [ %28, %27 ], [ %12, %7 ]
  %16 = phi i32 [ %29, %27 ], [ 0, %7 ]
  %17 = phi i32 [ %30, %27 ], [ 0, %7 ]
  %18 = getelementptr %struct.kioctx_table, ptr %4, i32 0, i32 2, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = add i32 %16, 1
  br label %27

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.kioctx, ptr %19, i32 0, i32 9
  store i32 0, ptr %24, align 4
  %25 = call fastcc i32 @kill_ioctx(ptr noundef %0, ptr noundef nonnull %19, ptr noundef nonnull %2)
  %26 = load i32, ptr %9, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi i32 [ %26, %23 ], [ %15, %21 ]
  %29 = phi i32 [ %16, %23 ], [ %22, %21 ]
  %30 = add nuw i32 %17, 1
  %31 = icmp ult i32 %30, %28
  br i1 %31, label %14, label %32

32:                                               ; preds = %27, %7
  %33 = phi i32 [ 0, %7 ], [ %29, %27 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #13, !srcloc !12
  %34 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 %33, ptr elementtype(i32) %8) #13, !srcloc !13
  %35 = extractvalue { i32, i32 } %34, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  call void @wait_for_completion(ptr noundef nonnull %2) #13
  br label %38

38:                                               ; preds = %37, %32
  store volatile ptr null, ptr %3, align 8
  call void @kfree(ptr noundef nonnull %4) #13
  br label %39

39:                                               ; preds = %38, %1
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @kill_ioctx(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.anon.25, ptr %0, i32 0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #13, !srcloc !12
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %5) #13, !srcloc !16
  %7 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %10 = load i16, ptr %4, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %48

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.anon.25, ptr %0, i32 0, i32 45
  %14 = load volatile ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 21
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.kioctx_table, ptr %14, i32 0, i32 2, i32 %16
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %22, label %20, !prof !22

20:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 854, i32 noundef 9, ptr noundef null) #13
  %21 = load i32, ptr %15, align 4
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %21, %20 ], [ %16, %12 ]
  %24 = getelementptr %struct.kioctx_table, ptr %14, i32 0, i32 2, i32 %23
  store volatile ptr null, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %25 = load i16, ptr %4, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %27 = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 17, i32 1
  tail call void @__wake_up(ptr noundef %27, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  %28 = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 6
  %29 = load i32, ptr %28, align 32
  tail call void @_raw_spin_lock(ptr noundef nonnull @aio_nr_lock) #13
  %30 = load i32, ptr @aio_nr, align 4
  %31 = icmp ult i32 %30, %29
  br i1 %31, label %32, label %33, !prof !9

32:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 717, i32 noundef 9, ptr noundef null) #13
  br label %35

33:                                               ; preds = %22
  %34 = sub i32 %30, %29
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ %34, %33 ], [ 0, %32 ]
  store i32 %36, ptr @aio_nr, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %37 = load i16, ptr @aio_nr_lock, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr @aio_nr_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %39 = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 8
  %44 = load i32, ptr %43, align 8
  %45 = tail call i32 @vm_munmap(i32 noundef %44, i32 noundef %40) #13
  br label %46

46:                                               ; preds = %42, %35
  %47 = getelementptr inbounds %struct.kioctx, ptr %1, i32 0, i32 13
  store ptr %2, ptr %47, align 4
  tail call void @percpu_ref_kill_and_confirm(ptr noundef %1, ptr noundef null) #13
  br label %48

48:                                               ; preds = %46, %9
  %49 = phi i32 [ -22, %9 ], [ 0, %46 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_io_setup(i32 noundef %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call ptr @llvm.thread.pointer() #13
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %6) #10, !srcloc !23
  %8 = and i32 %7, -13
  %9 = or i32 %8, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #13, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %10 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #13, !srcloc !26
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #13, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %364, !prof !22

13:                                               ; preds = %2
  %14 = extractvalue { i32, i32 } %10, 1
  %15 = icmp ne i32 %14, 0
  %16 = icmp eq i32 %0, 0
  %17 = or i1 %16, %15
  br i1 %17, label %364, label %18, !prof !9

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 37
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr @__cpu_possible_mask, align 4
  %22 = and i32 %21, 65535
  %23 = tail call i32 @__sw_hweight32(i32 noundef %22) #13
  %24 = shl i32 %23, 2
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 %0) #13
  %26 = shl i32 %25, 1
  %27 = icmp ugt i32 %26, 8388608
  br i1 %27, label %322, label %28

28:                                               ; preds = %18
  %29 = icmp eq i32 %26, 0
  %30 = load i32, ptr @aio_max_nr, align 4
  %31 = icmp ult i32 %30, %0
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %322, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr @kioctx_cachep, align 4
  %35 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %34, i32 noundef 3520) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %322, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 6
  store i32 %0, ptr %38, align 32
  %39 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 16
  store i32 0, ptr %39, align 64
  %40 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 18, i32 2
  store i32 0, ptr %40, align 8
  %41 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %41, ptr noundef nonnull @.str.10, ptr noundef nonnull @ioctx_alloc.__key) #13
  tail call void @mutex_lock(ptr noundef %41) #13
  %42 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 17, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %42, ptr noundef nonnull @.str.12, ptr noundef nonnull @ioctx_alloc.__key.11) #13
  %43 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 16, i32 1
  store volatile ptr %43, ptr %43, align 4
  %44 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 16, i32 1, i32 1
  store ptr %43, ptr %44, align 8
  %45 = tail call i32 @percpu_ref_init(ptr noundef nonnull %35, ptr noundef nonnull @free_ioctx_users, i32 noundef 0, i32 noundef 3264) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %315

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 2
  %49 = tail call i32 @percpu_ref_init(ptr noundef %48, ptr noundef nonnull @free_ioctx_reqs, i32 noundef 0, i32 noundef 3264) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %315

51:                                               ; preds = %47
  %52 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #15
  %53 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 4
  store ptr %52, ptr %53, align 8
  %54 = icmp eq ptr %52, null
  br i1 %54, label %315, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !10
  %57 = shl i32 %25, 6
  %58 = add nuw nsw i32 %57, 4191
  %59 = lshr i32 %58, 12
  %60 = load ptr, ptr @aio_mnt, align 4
  %61 = getelementptr inbounds %struct.vfsmount, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = tail call ptr @alloc_anon_inode(ptr noundef %62) #13
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %78, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.inode, ptr %63, i32 0, i32 9
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.address_space, ptr %67, i32 0, i32 9
  store ptr @aio_ctx_aops, ptr %68, align 4
  %69 = load ptr, ptr %66, align 8
  %70 = getelementptr inbounds %struct.address_space, ptr %69, i32 0, i32 14
  store ptr %35, ptr %70, align 4
  %71 = and i32 %58, -4096
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.inode, ptr %63, i32 0, i32 13
  store i64 %72, ptr %73, align 8
  %74 = load ptr, ptr @aio_mnt, align 4
  %75 = tail call ptr @alloc_file_pseudo(ptr noundef %63, ptr noundef %74, ptr noundef nonnull @.str.13, i32 noundef 2, ptr noundef nonnull @aio_ring_fops) #13
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  tail call void @iput(ptr noundef %63) #13
  br label %78

78:                                               ; preds = %77, %65, %55
  %79 = phi ptr [ %75, %77 ], [ %75, %65 ], [ %63, %55 ]
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  %81 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 20
  br i1 %80, label %82, label %83

82:                                               ; preds = %78
  store ptr null, ptr %81, align 32
  br label %152

83:                                               ; preds = %78
  store ptr %79, ptr %81, align 32
  %84 = and i32 %58, -4096
  %85 = add nsw i32 %84, -32
  %86 = lshr exact i32 %85, 5
  %87 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 19
  %88 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 10
  store ptr %87, ptr %88, align 16
  %89 = icmp ugt i32 %57, 32672
  br i1 %89, label %90, label %106

90:                                               ; preds = %83
  %91 = shl nuw nsw i32 %59, 2
  %92 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %91, i32 noundef 3520) #15
  store ptr %92, ptr %88, align 16
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load ptr, ptr %81, align 32
  %96 = icmp eq ptr %95, null
  br i1 %96, label %152, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.file, ptr %95, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8
  tail call void @truncate_setsize(ptr noundef %99, i64 noundef 0) #13
  %100 = getelementptr inbounds %struct.file, ptr %95, i32 0, i32 17
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.address_space, ptr %101, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %102) #13
  %103 = getelementptr inbounds %struct.address_space, ptr %101, i32 0, i32 14
  store ptr null, ptr %103, align 4
  store ptr null, ptr %81, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %104 = load i16, ptr %102, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %102, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  tail call void @fput(ptr noundef nonnull %95) #13
  br label %152

106:                                              ; preds = %90, %83
  %107 = getelementptr inbounds %struct.file, ptr %79, i32 0, i32 17
  br label %108

108:                                              ; preds = %113, %106
  %109 = phi i32 [ %116, %113 ], [ 0, %106 ]
  %110 = load ptr, ptr %107, align 8
  %111 = tail call ptr @pagecache_get_page(ptr noundef %110, i32 noundef %109, i32 noundef 7, i32 noundef 1052098) #13
  %112 = icmp eq ptr %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %108
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !27
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %111) #13
  tail call void @unlock_page(ptr noundef nonnull %111) #13
  %114 = load ptr, ptr %88, align 16
  %115 = getelementptr ptr, ptr %114, i32 %109
  store ptr %111, ptr %115, align 4
  %116 = add nuw nsw i32 %109, 1
  %117 = icmp eq i32 %116, %59
  br i1 %117, label %118, label %108

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 11
  store i32 %59, ptr %119, align 4
  br label %124

120:                                              ; preds = %108
  %121 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 11
  store i32 %109, ptr %121, align 4
  %122 = icmp eq i32 %109, %59
  br i1 %122, label %124, label %123, !prof !22

123:                                              ; preds = %120
  tail call fastcc void @aio_free_ring(ptr noundef %35) #13
  br label %152

124:                                              ; preds = %120, %118
  %125 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 9
  store i32 %84, ptr %125, align 4
  %126 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %56, i1 noundef zeroext true) #13
  br label %129

129:                                              ; preds = %128, %124
  %130 = getelementptr inbounds %struct.anon.25, ptr %56, i32 0, i32 15
  %131 = tail call i32 @down_write_killable(ptr noundef %130) #13
  %132 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = icmp eq i32 %131, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %56, i1 noundef zeroext true, i1 noundef zeroext %135) #13
  br label %136

136:                                              ; preds = %134, %129
  %137 = icmp eq i32 %131, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %136
  store i32 0, ptr %125, align 4
  tail call fastcc void @aio_free_ring(ptr noundef %35) #13
  br label %152

139:                                              ; preds = %136
  %140 = load ptr, ptr %81, align 32
  %141 = load i32, ptr %125, align 4
  %142 = call i32 @do_mmap(ptr noundef %140, i32 noundef 0, i32 noundef %141, i32 noundef 3, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #13
  %143 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 8
  store i32 %142, ptr %143, align 8
  %144 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  call void @__mmap_lock_do_trace_released(ptr noundef %56, i1 noundef zeroext true) #13
  br label %147

147:                                              ; preds = %146, %139
  call void @up_write(ptr noundef %130) #13
  %148 = load i32, ptr %143, align 8
  %149 = inttoptr i32 %148 to ptr
  %150 = icmp ugt ptr %149, inttoptr (i32 -4096 to ptr)
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  store i32 0, ptr %125, align 4
  call fastcc void @aio_free_ring(ptr noundef %35) #13
  br label %152

152:                                              ; preds = %151, %138, %123, %97, %94, %82
  %153 = phi i32 [ -12, %97 ], [ -12, %94 ], [ -12, %151 ], [ -4, %138 ], [ -12, %123 ], [ -12, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %315

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 3
  store i32 %148, ptr %155, align 4
  %156 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 7
  store i32 %86, ptr %156, align 4
  %157 = load ptr, ptr %88, align 16
  %158 = load ptr, ptr %157, align 4
  %159 = load i32, ptr @pgprot_kernel, align 4
  %160 = or i32 %159, 512
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  %161 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 149
  %162 = load i32, ptr %161, align 8
  %163 = add i32 %162, 1
  store i32 %163, ptr %161, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %164 = call ptr @__kmap_local_page_prot(ptr noundef %158, i32 noundef %160) #13
  %165 = getelementptr inbounds %struct.aio_ring, ptr %164, i32 0, i32 1
  store i32 %86, ptr %165, align 4
  store i32 -1, ptr %164, align 8
  %166 = getelementptr inbounds %struct.aio_ring, ptr %164, i32 0, i32 3
  store i32 0, ptr %166, align 4
  %167 = getelementptr inbounds %struct.aio_ring, ptr %164, i32 0, i32 2
  store i32 0, ptr %167, align 8
  %168 = getelementptr inbounds %struct.aio_ring, ptr %164, i32 0, i32 4
  store i32 -1593175903, ptr %168, align 8
  %169 = getelementptr inbounds %struct.aio_ring, ptr %164, i32 0, i32 5
  store i32 1, ptr %169, align 4
  %170 = getelementptr inbounds %struct.aio_ring, ptr %164, i32 0, i32 6
  store i32 0, ptr %170, align 8
  %171 = getelementptr inbounds %struct.aio_ring, ptr %164, i32 0, i32 7
  store i32 32, ptr %171, align 4
  call void @kunmap_local_indexed(ptr noundef %164) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %172 = load i32, ptr %161, align 8
  %173 = add i32 %172, -1
  store i32 %173, ptr %161, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %174 = load ptr, ptr %88, align 16
  %175 = load ptr, ptr %174, align 4
  call void @flush_dcache_page(ptr noundef %175) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %176 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 15
  %177 = load i32, ptr %156, align 4
  %178 = add i32 %177, -1
  store volatile i32 %178, ptr %176, align 8
  %179 = load i32, ptr @__cpu_possible_mask, align 4
  %180 = and i32 %179, 65535
  %181 = call i32 @__sw_hweight32(i32 noundef %180) #13
  %182 = shl i32 %181, 2
  %183 = udiv i32 %178, %182
  %184 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 5
  %185 = icmp ugt i32 %182, %178
  %186 = select i1 %185, i32 1, i32 %183
  store i32 %186, ptr %184, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @aio_nr_lock) #13
  %187 = load i32, ptr @aio_nr, align 4
  %188 = load i32, ptr %38, align 32
  %189 = add i32 %188, %187
  %190 = load i32, ptr @aio_max_nr, align 4
  %191 = icmp ugt i32 %189, %190
  %192 = icmp ult i32 %189, %187
  %193 = or i1 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %154
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %195 = load i16, ptr @aio_nr_lock, align 4
  %196 = add i16 %195, 1
  store i16 %196, ptr @aio_nr_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %306

197:                                              ; preds = %154
  store i32 %189, ptr @aio_nr, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %198 = load i16, ptr @aio_nr_lock, align 4
  %199 = add i16 %198, 1
  store i16 %199, ptr @aio_nr_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %200 = load volatile i32, ptr %35, align 8
  %201 = and i32 %200, 3
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %212, !prof !22

203:                                              ; preds = %197
  %204 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %205 = call i32 @llvm.read_register.i32(metadata !0) #13
  %206 = inttoptr i32 %205 to ptr
  %207 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %206) #10, !srcloc !34
  %208 = add i32 %207, %200
  %209 = inttoptr i32 %208 to ptr
  %210 = load i32, ptr %209, align 4
  %211 = add i32 %210, 1
  store i32 %211, ptr %209, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %204) #13, !srcloc !35
  br label %216

212:                                              ; preds = %197
  %213 = getelementptr inbounds %struct.percpu_ref, ptr %35, i32 0, i32 1
  %214 = load ptr, ptr %213, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %214) #13, !srcloc !12
  %215 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %214, ptr %214, i32 1, ptr elementtype(i32) %214) #13, !srcloc !36
  br label %216

216:                                              ; preds = %212, %203
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %217 = load volatile i32, ptr %48, align 4
  %218 = and i32 %217, 3
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %229, !prof !22

220:                                              ; preds = %216
  %221 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %222 = call i32 @llvm.read_register.i32(metadata !0) #13
  %223 = inttoptr i32 %222 to ptr
  %224 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %223) #10, !srcloc !34
  %225 = add i32 %224, %217
  %226 = inttoptr i32 %225 to ptr
  %227 = load i32, ptr %226, align 4
  %228 = add i32 %227, 1
  store i32 %228, ptr %226, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %221) #13, !srcloc !35
  br label %233

229:                                              ; preds = %216
  %230 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 2, i32 1
  %231 = load ptr, ptr %230, align 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %231) #13, !srcloc !12
  %232 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %231, ptr %231, i32 1, ptr elementtype(i32) %231) #13, !srcloc !36
  br label %233

233:                                              ; preds = %229, %220
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %234 = getelementptr inbounds %struct.anon.25, ptr %20, i32 0, i32 44
  call void @_raw_spin_lock(ptr noundef %234) #13
  %235 = getelementptr inbounds %struct.anon.25, ptr %20, i32 0, i32 45
  %236 = load volatile ptr, ptr %235, align 8
  br label %237

237:                                              ; preds = %279, %233
  %238 = phi ptr [ %236, %233 ], [ %280, %279 ]
  %239 = icmp eq ptr %238, null
  br i1 %239, label %252, label %240

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.kioctx_table, ptr %238, i32 0, i32 1
  %242 = load i32, ptr %241, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %252, label %244

244:                                              ; preds = %249, %240
  %245 = phi i32 [ %250, %249 ], [ 0, %240 ]
  %246 = getelementptr %struct.kioctx_table, ptr %238, i32 0, i32 2, i32 %245
  %247 = load volatile ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %281, label %249

249:                                              ; preds = %244
  %250 = add nuw i32 %245, 1
  %251 = icmp eq i32 %250, %242
  br i1 %251, label %252, label %244

252:                                              ; preds = %249, %240, %237
  %253 = phi i32 [ 1, %237 ], [ 0, %240 ], [ %242, %249 ]
  %254 = shl i32 %253, 2
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %255 = load i16, ptr %234, align 4
  %256 = add i16 %255, 1
  store i16 %256, ptr %234, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %257 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %254, i32 4) #13
  %258 = extractvalue { i32, i1 } %257, 1
  %259 = extractvalue { i32, i1 } %257, 0
  %260 = or i32 %259, 12
  %261 = select i1 %258, i32 -1, i32 %260
  %262 = call noalias align 64 ptr @__kmalloc(i32 noundef %261, i32 noundef 3520) #15
  %263 = icmp eq ptr %262, null
  br i1 %263, label %295, label %264

264:                                              ; preds = %252
  %265 = getelementptr inbounds %struct.kioctx_table, ptr %262, i32 0, i32 1
  store i32 %254, ptr %265, align 8
  call void @_raw_spin_lock(ptr noundef %234) #13
  %266 = load volatile ptr, ptr %235, align 8
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !38
  store volatile ptr %262, ptr %235, align 8
  br label %279

269:                                              ; preds = %264
  %270 = load i32, ptr %265, align 8
  %271 = getelementptr inbounds %struct.kioctx_table, ptr %266, i32 0, i32 1
  %272 = load i32, ptr %271, align 4
  %273 = icmp ugt i32 %270, %272
  br i1 %273, label %274, label %278

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.kioctx_table, ptr %262, i32 0, i32 2
  %276 = getelementptr inbounds %struct.kioctx_table, ptr %266, i32 0, i32 2
  %277 = shl i32 %272, 2
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %275, ptr align 4 %276, i32 %277, i1 false) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !39
  store volatile ptr %262, ptr %235, align 8
  call void @kvfree_call_rcu(ptr noundef nonnull %266, ptr noundef null) #13
  br label %279

278:                                              ; preds = %269
  call void @kfree(ptr noundef nonnull %262) #13
  br label %279

279:                                              ; preds = %278, %274, %268
  %280 = phi ptr [ %262, %274 ], [ %266, %278 ], [ %262, %268 ]
  br label %237

281:                                              ; preds = %244
  %282 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 21
  store i32 %245, ptr %282, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  store volatile ptr %35, ptr %246, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %283 = load i16, ptr %234, align 4
  %284 = add i16 %283, 1
  store i16 %284, ptr %234, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %285 = load ptr, ptr %88, align 16
  %286 = load ptr, ptr %285, align 4
  %287 = load i32, ptr @pgprot_kernel, align 4
  %288 = or i32 %287, 512
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  %289 = load i32, ptr %161, align 8
  %290 = add i32 %289, 1
  store i32 %290, ptr %161, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %291 = call ptr @__kmap_local_page_prot(ptr noundef %286, i32 noundef %288) #13
  %292 = load i32, ptr %282, align 4
  store i32 %292, ptr %291, align 8
  call void @kunmap_local_indexed(ptr noundef %291) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %293 = load i32, ptr %161, align 8
  %294 = add i32 %293, -1
  store i32 %294, ptr %161, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  call void @mutex_unlock(ptr noundef %41) #13
  br label %325

295:                                              ; preds = %252
  %296 = load i32, ptr %38, align 32
  call void @_raw_spin_lock(ptr noundef nonnull @aio_nr_lock) #13
  %297 = load i32, ptr @aio_nr, align 4
  %298 = icmp ult i32 %297, %296
  br i1 %298, label %299, label %300, !prof !9

299:                                              ; preds = %295
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 717, i32 noundef 9, ptr noundef null) #13
  br label %302

300:                                              ; preds = %295
  %301 = sub i32 %297, %296
  br label %302

302:                                              ; preds = %300, %299
  %303 = phi i32 [ %301, %300 ], [ 0, %299 ]
  store i32 %303, ptr @aio_nr, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %304 = load i16, ptr @aio_nr_lock, align 4
  %305 = add i16 %304, 1
  store i16 %305, ptr @aio_nr_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %306

306:                                              ; preds = %302, %194
  %307 = phi i32 [ -11, %194 ], [ -12, %302 ]
  %308 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 1
  store volatile i32 1, ptr %308, align 8
  %309 = load i32, ptr %125, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %306
  %312 = load i32, ptr %143, align 8
  %313 = call i32 @vm_munmap(i32 noundef %312, i32 noundef %309) #13
  br label %314

314:                                              ; preds = %311, %306
  call fastcc void @aio_free_ring(ptr noundef nonnull %35) #13
  br label %315

315:                                              ; preds = %314, %152, %51, %47, %37
  %316 = phi i32 [ -12, %37 ], [ -12, %47 ], [ %307, %314 ], [ -12, %51 ], [ %153, %152 ]
  call void @mutex_unlock(ptr noundef %41) #13
  %317 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 4
  %318 = load ptr, ptr %317, align 8
  call void @free_percpu(ptr noundef %318) #13
  %319 = getelementptr inbounds %struct.kioctx, ptr %35, i32 0, i32 2
  call void @percpu_ref_exit(ptr noundef %319) #13
  call void @percpu_ref_exit(ptr noundef nonnull %35) #13
  %320 = load ptr, ptr @kioctx_cachep, align 4
  call void @kmem_cache_free(ptr noundef %320, ptr noundef nonnull %35) #13
  %321 = inttoptr i32 %316 to ptr
  br label %325

322:                                              ; preds = %33, %28, %18
  %323 = phi ptr [ inttoptr (i32 -12 to ptr), %33 ], [ inttoptr (i32 -11 to ptr), %28 ], [ inttoptr (i32 -22 to ptr), %18 ]
  %324 = ptrtoint ptr %323 to i32
  br label %364

325:                                              ; preds = %315, %281
  %326 = phi ptr [ %321, %315 ], [ %35, %281 ]
  %327 = ptrtoint ptr %326 to i32
  %328 = icmp ugt ptr %326, inttoptr (i32 -4096 to ptr)
  br i1 %328, label %364, label %329

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.kioctx, ptr %326, i32 0, i32 3
  %331 = load i32, ptr %330, align 4
  %332 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %6) #10, !srcloc !23
  %333 = and i32 %332, -13
  %334 = or i32 %333, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %334) #13, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %335 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %331, i32 -1090519041) #13, !srcloc !41
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %332) #13, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %329
  %338 = load ptr, ptr %19, align 4
  %339 = call fastcc i32 @kill_ioctx(ptr noundef %338, ptr noundef %326, ptr noundef null) #13
  br label %340

340:                                              ; preds = %337, %329
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %341 = load volatile i32, ptr %326, align 4
  %342 = and i32 %341, 3
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %353, !prof !22

344:                                              ; preds = %340
  %345 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %346 = call i32 @llvm.read_register.i32(metadata !0) #13
  %347 = inttoptr i32 %346 to ptr
  %348 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %347) #10, !srcloc !34
  %349 = add i32 %348, %341
  %350 = inttoptr i32 %349 to ptr
  %351 = load i32, ptr %350, align 4
  %352 = add i32 %351, -1
  store i32 %352, ptr %350, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %345) #13, !srcloc !35
  br label %363

353:                                              ; preds = %340
  %354 = getelementptr inbounds %struct.percpu_ref, ptr %326, i32 0, i32 1
  %355 = load ptr, ptr %354, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %355) #13, !srcloc !12
  %356 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %355, ptr %355, i32 1, ptr elementtype(i32) %355) #13, !srcloc !13
  %357 = extractvalue { i32, i32 } %356, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %363, !prof !9

359:                                              ; preds = %353
  %360 = load ptr, ptr %354, align 4
  %361 = getelementptr inbounds %struct.percpu_ref_data, ptr %360, i32 0, i32 1
  %362 = load ptr, ptr %361, align 4
  call void %362(ptr noundef %326) #13
  br label %363

363:                                              ; preds = %359, %353, %344
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %364

364:                                              ; preds = %363, %325, %322, %13, %2
  %365 = phi i32 [ %11, %2 ], [ %327, %325 ], [ %335, %363 ], [ -22, %13 ], [ %324, %322 ]
  ret i32 %365
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_io_destroy(i32 noundef %0) #1 {
  %2 = alloca %struct.ctx_rq_wait, align 4
  %3 = tail call fastcc ptr @lookup_ioctx(i32 noundef %0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5, !prof !9

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #13
  %6 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false) #13
  call void @__init_swait_queue_head(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #13
  %7 = getelementptr inbounds %struct.ctx_rq_wait, ptr %2, i32 0, i32 1
  store volatile i32 1, ptr %7, align 4
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 37
  %10 = load ptr, ptr %9, align 4
  %11 = call fastcc i32 @kill_ioctx(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %2) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %12 = load volatile i32, ptr %3, align 4
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24, !prof !22

15:                                               ; preds = %5
  %16 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %17 = call i32 @llvm.read_register.i32(metadata !0) #13
  %18 = inttoptr i32 %17 to ptr
  %19 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #10, !srcloc !34
  %20 = add i32 %19, %12
  %21 = inttoptr i32 %20 to ptr
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -1
  store i32 %23, ptr %21, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #13, !srcloc !35
  br label %34

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.percpu_ref, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #13, !srcloc !12
  %27 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #13, !srcloc !13
  %28 = extractvalue { i32, i32 } %27, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34, !prof !9

30:                                               ; preds = %24
  %31 = load ptr, ptr %25, align 4
  %32 = getelementptr inbounds %struct.percpu_ref_data, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  call void %33(ptr noundef nonnull %3) #13
  br label %34

34:                                               ; preds = %30, %24, %15
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %35 = icmp eq i32 %11, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  call void @wait_for_completion(ptr noundef nonnull %2) #13
  br label %37

37:                                               ; preds = %36, %34
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  br label %38

38:                                               ; preds = %37, %1
  %39 = phi i32 [ %11, %37 ], [ -22, %1 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_io_submit(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = alloca %struct.aio_poll_table, align 4
  %5 = alloca %struct.iocb, align 8
  %6 = alloca %struct.blk_plug, align 4
  %7 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false) #13, !annotation !10
  %8 = icmp slt i32 %1, 0
  br i1 %8, label %530, label %9, !prof !9

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @lookup_ioctx(i32 noundef %0) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %530, label %12, !prof !9

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.kioctx, ptr %10, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %1) #13
  %16 = icmp ugt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  call void @blk_start_plug(ptr noundef nonnull %6) #13
  br label %20

18:                                               ; preds = %12
  %19 = icmp eq i32 %15, 0
  br i1 %19, label %502, label %20

20:                                               ; preds = %18, %17
  %21 = tail call ptr @llvm.thread.pointer() #13
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.iocb, ptr %5, i32 0, i32 9
  %24 = getelementptr inbounds %struct.iocb, ptr %5, i32 0, i32 6
  %25 = getelementptr inbounds %struct.iocb, ptr %5, i32 0, i32 7
  %26 = getelementptr inbounds %struct.kioctx, ptr %10, i32 0, i32 4
  %27 = getelementptr inbounds %struct.kioctx, ptr %10, i32 0, i32 15
  %28 = getelementptr inbounds %struct.kioctx, ptr %10, i32 0, i32 5
  %29 = getelementptr inbounds %struct.kioctx, ptr %10, i32 0, i32 18, i32 2
  %30 = getelementptr inbounds %struct.kioctx, ptr %10, i32 0, i32 18, i32 1
  %31 = getelementptr inbounds %struct.kioctx, ptr %10, i32 0, i32 18
  %32 = getelementptr inbounds %struct.kioctx, ptr %10, i32 0, i32 10
  %33 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 149
  %34 = getelementptr inbounds %struct.kioctx, ptr %10, i32 0, i32 2
  %35 = getelementptr inbounds %struct.kioctx, ptr %10, i32 0, i32 2, i32 1
  %36 = getelementptr inbounds %struct.iocb, ptr %5, i32 0, i32 5
  %37 = getelementptr inbounds %struct.iocb, ptr %5, i32 0, i32 10
  %38 = getelementptr inbounds %struct.iocb, ptr %5, i32 0, i32 11
  %39 = getelementptr inbounds %struct.iocb, ptr %5, i32 0, i32 3
  %40 = getelementptr inbounds i8, ptr %4, i32 12
  %41 = getelementptr inbounds %struct.iocb, ptr %5, i32 0, i32 8
  %42 = getelementptr inbounds %struct.iocb, ptr %5, i32 0, i32 2
  %43 = getelementptr inbounds %struct.poll_table_struct, ptr %4, i32 0, i32 1
  %44 = getelementptr inbounds %struct.aio_poll_table, ptr %4, i32 0, i32 1
  %45 = getelementptr inbounds %struct.aio_poll_table, ptr %4, i32 0, i32 3
  br label %46

46:                                               ; preds = %495, %20
  %47 = phi i32 [ 0, %20 ], [ %496, %495 ]
  %48 = getelementptr ptr, ptr %7, i32 %47
  %49 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #10, !srcloc !23
  %50 = and i32 %49, -13
  %51 = or i32 %50, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #13, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %52 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %48, i32 -1090519041) #13, !srcloc !42
  %53 = extractvalue { i32, i32 } %52, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #13, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %498, !prof !22

55:                                               ; preds = %46
  %56 = extractvalue { i32, i32 } %52, 1
  %57 = inttoptr i32 %56 to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i32 64, i1 false) #13, !annotation !10
  %58 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %57, i32 64, i32 -1090519040) #16, !srcloc !43
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67, !prof !22

61:                                               ; preds = %55
  %62 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #10, !srcloc !23
  %63 = and i32 %62, -13
  %64 = or i32 %63, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #13, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %65 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %57, i32 noundef 64) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #13, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67, !prof !22

67:                                               ; preds = %61, %55
  %68 = phi i32 [ %65, %61 ], [ 64, %55 ]
  %69 = sub i32 64, %68
  %70 = getelementptr i8, ptr %5, i32 %69
  call void @llvm.memset.p0.i32(ptr align 1 %70, i8 0, i32 %68, i1 false) #13
  br label %490

71:                                               ; preds = %61
  %72 = load i64, ptr %23, align 8
  %73 = icmp eq i64 %72, 0
  %74 = load i64, ptr %24, align 8
  %75 = icmp ult i64 %74, 4294967296
  %76 = select i1 %73, i1 %75, i1 false
  %77 = load i64, ptr %25, align 8
  %78 = icmp ult i64 %77, 2147483648
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %490, !prof !44

80:                                               ; preds = %71
  %81 = load ptr, ptr @kiocb_cachep, align 4
  %82 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %81, i32 noundef 3264) #13
  %83 = icmp eq ptr %82, null
  br i1 %83, label %490, label %84, !prof !9

84:                                               ; preds = %80
  %85 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %86 = load ptr, ptr %26, align 8
  %87 = ptrtoint ptr %86 to i32
  %88 = call i32 @llvm.read_register.i32(metadata !0) #13
  %89 = inttoptr i32 %88 to ptr
  %90 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %89) #10, !srcloc !34
  %91 = add i32 %90, %87
  %92 = inttoptr i32 %91 to ptr
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %84
  %96 = load volatile i32, ptr %27, align 4
  br label %97

97:                                               ; preds = %107, %95
  %98 = phi i32 [ %96, %95 ], [ %108, %107 ]
  %99 = load i32, ptr %28, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %117, label %101

101:                                              ; preds = %97
  %102 = sub i32 %98, %99
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !45
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #13, !srcloc !12
  br label %103

103:                                              ; preds = %103, %101
  %104 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 %98, i32 %102, ptr elementtype(i32) %27) #13, !srcloc !46
  %105 = extractvalue { i32, i32 } %104, 0
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %103

107:                                              ; preds = %103
  %108 = extractvalue { i32, i32 } %104, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !47
  %109 = icmp eq i32 %108, %98
  br i1 %109, label %110, label %97

110:                                              ; preds = %107
  %111 = load i32, ptr %28, align 4
  %112 = load i32, ptr %92, align 4
  %113 = add i32 %112, %111
  br label %114

114:                                              ; preds = %110, %84
  %115 = phi i32 [ %113, %110 ], [ %93, %84 ]
  %116 = add i32 %115, -1
  store i32 %116, ptr %92, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %85) #13, !srcloc !35
  br label %205

117:                                              ; preds = %97
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %85) #13, !srcloc !35
  call void @_raw_spin_lock_irq(ptr noundef %29) #13
  %118 = load i32, ptr %30, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %168, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr %32, align 16
  %122 = load ptr, ptr %121, align 4
  %123 = load i32, ptr @pgprot_kernel, align 4
  %124 = or i32 %123, 512
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  %125 = load i32, ptr %33, align 8
  %126 = add i32 %125, 1
  store i32 %126, ptr %33, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %127 = call ptr @__kmap_local_page_prot(ptr noundef %122, i32 noundef %124) #13
  %128 = getelementptr inbounds %struct.aio_ring, ptr %127, i32 0, i32 2
  %129 = load i32, ptr %128, align 8
  call void @kunmap_local_indexed(ptr noundef %127) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %130 = load i32, ptr %33, align 8
  %131 = add i32 %130, -1
  store i32 %131, ptr %33, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %132 = load i32, ptr %31, align 64
  %133 = load i32, ptr %13, align 4
  %134 = urem i32 %129, %133
  %135 = icmp ult i32 %132, %134
  %136 = sub i32 %132, %134
  %137 = select i1 %135, i32 %133, i32 0
  %138 = add i32 %137, %136
  %139 = load i32, ptr %30, align 4
  %140 = icmp ugt i32 %139, %138
  br i1 %140, label %141, label %168

141:                                              ; preds = %120
  %142 = call i32 @llvm.usub.sat.i32(i32 %139, i32 %138) #13
  %143 = sub i32 %139, %142
  store i32 %143, ptr %30, align 4
  %144 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %145 = load ptr, ptr %26, align 8
  %146 = ptrtoint ptr %145 to i32
  %147 = call i32 @llvm.read_register.i32(metadata !0) #13
  %148 = inttoptr i32 %147 to ptr
  %149 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %148) #10, !srcloc !34
  %150 = add i32 %149, %146
  %151 = inttoptr i32 %150 to ptr
  %152 = load i32, ptr %151, align 4
  %153 = add i32 %152, %142
  store i32 %153, ptr %151, align 4
  %154 = load i32, ptr %28, align 4
  %155 = shl i32 %154, 1
  %156 = icmp ult i32 %153, %155
  br i1 %156, label %167, label %157

157:                                              ; preds = %157, %141
  %158 = phi i32 [ %164, %157 ], [ %154, %141 ]
  %159 = phi i32 [ %163, %157 ], [ %153, %141 ]
  %160 = sub i32 %159, %158
  store i32 %160, ptr %151, align 4
  %161 = load i32, ptr %28, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #13, !srcloc !12
  %162 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 %161, ptr elementtype(i32) %27) #13, !srcloc !36
  %163 = load i32, ptr %151, align 4
  %164 = load i32, ptr %28, align 4
  %165 = shl i32 %164, 1
  %166 = icmp ult i32 %163, %165
  br i1 %166, label %167, label %157

167:                                              ; preds = %157, %141
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %144) #13, !srcloc !35
  br label %168

168:                                              ; preds = %167, %120, %117
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %169 = load i16, ptr %29, align 4
  %170 = add i16 %169, 1
  store i16 %170, ptr %29, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !48
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !49
  %171 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %172 = load ptr, ptr %26, align 8
  %173 = ptrtoint ptr %172 to i32
  %174 = call i32 @llvm.read_register.i32(metadata !0) #13
  %175 = inttoptr i32 %174 to ptr
  %176 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %175) #10, !srcloc !34
  %177 = add i32 %176, %173
  %178 = inttoptr i32 %177 to ptr
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %200

181:                                              ; preds = %168
  %182 = load volatile i32, ptr %27, align 4
  br label %183

183:                                              ; preds = %193, %181
  %184 = phi i32 [ %182, %181 ], [ %194, %193 ]
  %185 = load i32, ptr %28, align 4
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %203, label %187

187:                                              ; preds = %183
  %188 = sub i32 %184, %185
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !45
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #13, !srcloc !12
  br label %189

189:                                              ; preds = %189, %187
  %190 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 %184, i32 %188, ptr elementtype(i32) %27) #13, !srcloc !46
  %191 = extractvalue { i32, i32 } %190, 0
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %189

193:                                              ; preds = %189
  %194 = extractvalue { i32, i32 } %190, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !47
  %195 = icmp eq i32 %194, %184
  br i1 %195, label %196, label %183

196:                                              ; preds = %193
  %197 = load i32, ptr %28, align 4
  %198 = load i32, ptr %178, align 4
  %199 = add i32 %198, %197
  br label %200

200:                                              ; preds = %196, %168
  %201 = phi i32 [ %199, %196 ], [ %179, %168 ]
  %202 = add i32 %201, -1
  store i32 %202, ptr %178, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %171) #13, !srcloc !35
  br label %205

203:                                              ; preds = %183
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %171) #13, !srcloc !35
  %204 = load ptr, ptr @kiocb_cachep, align 4
  call void @kmem_cache_free(ptr noundef %204, ptr noundef nonnull %82) #13
  br label %490

205:                                              ; preds = %200, %114
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %206 = load volatile i32, ptr %34, align 4
  %207 = and i32 %206, 3
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %218, !prof !22

209:                                              ; preds = %205
  %210 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %211 = call i32 @llvm.read_register.i32(metadata !0) #13
  %212 = inttoptr i32 %211 to ptr
  %213 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %212) #10, !srcloc !34
  %214 = add i32 %213, %206
  %215 = inttoptr i32 %214 to ptr
  %216 = load i32, ptr %215, align 4
  %217 = add i32 %216, 1
  store i32 %217, ptr %215, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %210) #13, !srcloc !35
  br label %221

218:                                              ; preds = %205
  %219 = load ptr, ptr %35, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %219) #13, !srcloc !12
  %220 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %219, ptr %219, i32 1, ptr elementtype(i32) %219) #13, !srcloc !36
  br label %221

221:                                              ; preds = %218, %209
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %222 = getelementptr inbounds %struct.aio_kiocb, ptr %82, i32 0, i32 1
  store ptr %10, ptr %222, align 8
  %223 = getelementptr inbounds %struct.aio_kiocb, ptr %82, i32 0, i32 4
  store volatile ptr %223, ptr %223, align 8
  %224 = getelementptr inbounds %struct.aio_kiocb, ptr %82, i32 0, i32 4, i32 1
  store ptr %223, ptr %224, align 4
  %225 = getelementptr inbounds %struct.aio_kiocb, ptr %82, i32 0, i32 5
  store volatile i32 2, ptr %225, align 8
  %226 = getelementptr inbounds %struct.aio_kiocb, ptr %82, i32 0, i32 6
  store ptr null, ptr %226, align 4
  %227 = load i32, ptr %36, align 4
  %228 = call ptr @fget(i32 noundef %227) #13
  store ptr %228, ptr %82, align 8
  %229 = icmp eq ptr %228, null
  br i1 %229, label %418, label %230, !prof !9

230:                                              ; preds = %221
  %231 = load i32, ptr %37, align 8
  %232 = and i32 %231, 1
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %241, label %234

234:                                              ; preds = %230
  %235 = load i32, ptr %38, align 4
  %236 = call ptr @eventfd_ctx_fdget(i32 noundef %235) #13
  %237 = icmp ugt ptr %236, inttoptr (i32 -4096 to ptr)
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  store ptr %236, ptr %226, align 4
  br label %241

239:                                              ; preds = %234
  %240 = ptrtoint ptr %236 to i32
  br label %427

241:                                              ; preds = %238, %230
  %242 = getelementptr inbounds %struct.iocb, ptr %57, i32 0, i32 1
  %243 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #10, !srcloc !23
  %244 = and i32 %243, -13
  %245 = or i32 %244, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %245) #13, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %246 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %242, i32 0, i32 -1090519041) #13, !srcloc !50
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %243) #13, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %418, !prof !22

248:                                              ; preds = %241
  %249 = zext i32 %56 to i64
  %250 = getelementptr inbounds %struct.aio_kiocb, ptr %82, i32 0, i32 3
  %251 = getelementptr inbounds %struct.aio_kiocb, ptr %82, i32 0, i32 3, i32 1
  store i64 %249, ptr %251, align 8
  %252 = load i64, ptr %5, align 8
  store i64 %252, ptr %250, align 8
  %253 = getelementptr inbounds %struct.aio_kiocb, ptr %82, i32 0, i32 3, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %253, i8 0, i64 16, i1 false) #13
  %254 = load i16, ptr %39, align 8
  switch i16 %254, label %418 [
    i16 0, label %255
    i16 1, label %257
    i16 7, label %259
    i16 8, label %261
    i16 2, label %263
    i16 3, label %290
    i16 5, label %317
  ]

255:                                              ; preds = %248
  %256 = call fastcc i32 @aio_read(ptr noundef nonnull %82, ptr noundef nonnull %5, i1 noundef zeroext false) #13
  br label %427

257:                                              ; preds = %248
  %258 = call fastcc i32 @aio_write(ptr noundef nonnull %82, ptr noundef nonnull %5, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %427

259:                                              ; preds = %248
  %260 = call fastcc i32 @aio_read(ptr noundef nonnull %82, ptr noundef nonnull %5, i1 noundef zeroext true) #13
  br label %427

261:                                              ; preds = %248
  %262 = call fastcc i32 @aio_write(ptr noundef nonnull %82, ptr noundef nonnull %5, i1 noundef zeroext true, i1 noundef zeroext false) #13
  br label %427

263:                                              ; preds = %248
  %264 = load i64, ptr %24, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %418, !prof !22

266:                                              ; preds = %263
  %267 = load i64, ptr %41, align 8
  %268 = icmp eq i64 %267, 0
  %269 = load i64, ptr %25, align 8
  %270 = icmp eq i64 %269, 0
  %271 = select i1 %268, i1 %270, i1 false
  %272 = load i32, ptr %42, align 4
  %273 = icmp eq i32 %272, 0
  %274 = select i1 %271, i1 %273, i1 false
  br i1 %274, label %275, label %418, !prof !51

275:                                              ; preds = %266
  %276 = load ptr, ptr %82, align 8
  %277 = getelementptr inbounds %struct.file, ptr %276, i32 0, i32 3
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr inbounds %struct.file_operations, ptr %278, i32 0, i32 17
  %280 = load ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, null
  br i1 %281, label %418, label %282, !prof !9

282:                                              ; preds = %275
  %283 = call ptr @prepare_creds() #13
  %284 = getelementptr inbounds %struct.fsync_iocb, ptr %82, i32 0, i32 3
  store ptr %283, ptr %284, align 8
  %285 = icmp eq ptr %283, null
  br i1 %285, label %418, label %286

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.fsync_iocb, ptr %82, i32 0, i32 2
  store i8 0, ptr %287, align 4
  %288 = getelementptr inbounds %struct.fsync_iocb, ptr %82, i32 0, i32 1
  store i32 -32, ptr %288, align 4
  %289 = getelementptr inbounds %struct.fsync_iocb, ptr %82, i32 0, i32 1, i32 1
  store volatile ptr %289, ptr %289, align 8
  br label %420

290:                                              ; preds = %248
  %291 = load i64, ptr %24, align 8
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %418, !prof !22

293:                                              ; preds = %290
  %294 = load i64, ptr %41, align 8
  %295 = icmp eq i64 %294, 0
  %296 = load i64, ptr %25, align 8
  %297 = icmp eq i64 %296, 0
  %298 = select i1 %295, i1 %297, i1 false
  %299 = load i32, ptr %42, align 4
  %300 = icmp eq i32 %299, 0
  %301 = select i1 %298, i1 %300, i1 false
  br i1 %301, label %302, label %418, !prof !51

302:                                              ; preds = %293
  %303 = load ptr, ptr %82, align 8
  %304 = getelementptr inbounds %struct.file, ptr %303, i32 0, i32 3
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr inbounds %struct.file_operations, ptr %305, i32 0, i32 17
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %418, label %309, !prof !9

309:                                              ; preds = %302
  %310 = call ptr @prepare_creds() #13
  %311 = getelementptr inbounds %struct.fsync_iocb, ptr %82, i32 0, i32 3
  store ptr %310, ptr %311, align 8
  %312 = icmp eq ptr %310, null
  br i1 %312, label %418, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.fsync_iocb, ptr %82, i32 0, i32 2
  store i8 1, ptr %314, align 4
  %315 = getelementptr inbounds %struct.fsync_iocb, ptr %82, i32 0, i32 1
  store i32 -32, ptr %315, align 4
  %316 = getelementptr inbounds %struct.fsync_iocb, ptr %82, i32 0, i32 1, i32 1
  store volatile ptr %316, ptr %316, align 8
  br label %420

317:                                              ; preds = %248
  %318 = load ptr, ptr %222, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #13
  store i32 0, ptr %40, align 4, !annotation !10
  %319 = load i64, ptr %24, align 8
  %320 = icmp ult i64 %319, 65536
  br i1 %320, label %321, label %416

321:                                              ; preds = %317
  %322 = load i64, ptr %41, align 8
  %323 = icmp eq i64 %322, 0
  %324 = load i64, ptr %25, align 8
  %325 = icmp eq i64 %324, 0
  %326 = select i1 %323, i1 %325, i1 false
  %327 = load i32, ptr %42, align 4
  %328 = icmp eq i32 %327, 0
  %329 = select i1 %326, i1 %328, i1 false
  br i1 %329, label %330, label %416

330:                                              ; preds = %321
  %331 = getelementptr inbounds %struct.poll_iocb, ptr %82, i32 0, i32 7
  store i32 -32, ptr %331, align 4
  %332 = getelementptr inbounds %struct.poll_iocb, ptr %82, i32 0, i32 7, i32 1
  store volatile ptr %332, ptr %332, align 8
  %333 = getelementptr inbounds %struct.poll_iocb, ptr %82, i32 0, i32 7, i32 1, i32 1
  store ptr %332, ptr %333, align 4
  %334 = getelementptr inbounds %struct.poll_iocb, ptr %82, i32 0, i32 7, i32 2
  store ptr @aio_poll_complete_work, ptr %334, align 8
  %335 = trunc i64 %319 to i32
  %336 = and i32 %335, 10215
  %337 = or i32 %336, 24
  %338 = getelementptr inbounds %struct.poll_iocb, ptr %82, i32 0, i32 2
  store i32 %337, ptr %338, align 8
  %339 = getelementptr inbounds %struct.poll_iocb, ptr %82, i32 0, i32 1
  store ptr null, ptr %339, align 4
  %340 = getelementptr inbounds %struct.poll_iocb, ptr %82, i32 0, i32 3
  store i8 0, ptr %340, align 4
  %341 = getelementptr inbounds %struct.poll_iocb, ptr %82, i32 0, i32 4
  store i8 0, ptr %341, align 1
  %342 = getelementptr inbounds %struct.poll_iocb, ptr %82, i32 0, i32 5
  store i8 0, ptr %342, align 2
  store ptr @aio_poll_queue_proc, ptr %4, align 4
  store i32 %337, ptr %43, align 4
  store ptr %82, ptr %44, align 4
  store i32 -22, ptr %45, align 4
  %343 = getelementptr inbounds %struct.poll_iocb, ptr %82, i32 0, i32 6
  %344 = getelementptr inbounds %struct.poll_iocb, ptr %82, i32 0, i32 6, i32 3
  store volatile ptr %344, ptr %344, align 4
  %345 = getelementptr inbounds %struct.poll_iocb, ptr %82, i32 0, i32 6, i32 3, i32 1
  store ptr %344, ptr %345, align 8
  store i32 0, ptr %343, align 8
  %346 = getelementptr inbounds %struct.poll_iocb, ptr %82, i32 0, i32 6, i32 1
  store ptr null, ptr %346, align 4
  %347 = getelementptr inbounds %struct.poll_iocb, ptr %82, i32 0, i32 6, i32 2
  store ptr @aio_poll_wake, ptr %347, align 8
  %348 = load ptr, ptr %82, align 8
  %349 = getelementptr inbounds %struct.file, ptr %348, i32 0, i32 3
  %350 = load ptr, ptr %349, align 4
  %351 = getelementptr inbounds %struct.file_operations, ptr %350, i32 0, i32 9
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %357, label %354, !prof !9

354:                                              ; preds = %330
  %355 = call i32 %352(ptr noundef %348, ptr noundef nonnull %4) #13
  %356 = load i32, ptr %338, align 8
  br label %357

357:                                              ; preds = %354, %330
  %358 = phi i32 [ %356, %354 ], [ %337, %330 ]
  %359 = phi i32 [ %355, %354 ], [ 325, %330 ]
  %360 = and i32 %359, %358
  %361 = getelementptr inbounds %struct.kioctx, ptr %318, i32 0, i32 16
  call void @_raw_spin_lock_irq(ptr noundef %361) #13
  %362 = load i8, ptr %40, align 4, !range !52
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %402, label %364, !prof !9

364:                                              ; preds = %357
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %365 = load volatile ptr, ptr %339, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !53
  %366 = icmp eq ptr %365, null
  br i1 %366, label %387, label %367

367:                                              ; preds = %364
  call void @_raw_spin_lock(ptr noundef nonnull %365) #13
  %368 = load volatile ptr, ptr %344, align 4
  %369 = icmp eq ptr %368, %344
  br i1 %369, label %370, label %373

370:                                              ; preds = %367
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %371 = load i16, ptr %365, align 4
  %372 = add i16 %371, 1
  store i16 %372, ptr %365, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %387

373:                                              ; preds = %367
  %374 = load i8, ptr %341, align 1, !range !52
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %376, label %384

376:                                              ; preds = %373
  %377 = icmp ne i32 %360, 0
  %378 = load i32, ptr %45, align 4
  %379 = icmp ne i32 %378, 0
  %380 = select i1 %377, i1 true, i1 %379
  br i1 %380, label %381, label %392

381:                                              ; preds = %376
  %382 = load ptr, ptr %345, align 8
  %383 = getelementptr inbounds %struct.list_head, ptr %368, i32 0, i32 1
  store ptr %382, ptr %383, align 4
  store volatile ptr %368, ptr %382, align 4
  store volatile ptr %344, ptr %344, align 4
  store ptr %344, ptr %345, align 8
  br label %397

384:                                              ; preds = %373
  %385 = load i32, ptr %45, align 4
  %386 = icmp eq i32 %385, 0
  store i32 0, ptr %45, align 4
  br i1 %386, label %392, label %391

387:                                              ; preds = %370, %364
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %388 = load i32, ptr %45, align 4
  %389 = icmp eq i32 %388, 0
  store i32 0, ptr %45, align 4
  br i1 %389, label %411, label %390

390:                                              ; preds = %387
  store volatile i8 1, ptr %340, align 4
  br label %411

391:                                              ; preds = %384
  store volatile i8 1, ptr %340, align 4
  br label %397

392:                                              ; preds = %384, %376
  %393 = getelementptr inbounds %struct.kioctx, ptr %318, i32 0, i32 16, i32 1
  %394 = getelementptr inbounds %struct.kioctx, ptr %318, i32 0, i32 16, i32 1, i32 1
  %395 = load ptr, ptr %394, align 4
  store ptr %223, ptr %394, align 4
  store ptr %393, ptr %223, align 8
  store ptr %395, ptr %224, align 4
  store volatile ptr %223, ptr %395, align 4
  %396 = getelementptr inbounds %struct.aio_kiocb, ptr %82, i32 0, i32 2
  store ptr @aio_poll_cancel, ptr %396, align 4
  br label %397

397:                                              ; preds = %392, %391, %381
  %398 = phi i32 [ 0, %392 ], [ 0, %391 ], [ %360, %381 ]
  %399 = load ptr, ptr %339, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %400 = load i16, ptr %399, align 4
  %401 = add i16 %400, 1
  store i16 %401, ptr %399, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %402

402:                                              ; preds = %397, %357
  %403 = phi i32 [ %360, %357 ], [ %398, %397 ]
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %411, label %405

405:                                              ; preds = %402
  %406 = trunc i32 %403 to i16
  %407 = and i16 %406, 10239
  %408 = zext i16 %407 to i64
  store i64 %408, ptr %253, align 8
  store i32 0, ptr %45, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %409 = load i16, ptr %361, align 4
  %410 = add i16 %409, 1
  store i16 %410, ptr %361, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !48
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !49
  call fastcc void @iocb_put(ptr noundef nonnull %82) #13
  br label %414

411:                                              ; preds = %402, %390, %387
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %412 = load i16, ptr %361, align 4
  %413 = add i16 %412, 1
  store i16 %413, ptr %361, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !48
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !49
  br label %414

414:                                              ; preds = %411, %405
  %415 = load i32, ptr %45, align 4
  br label %416

416:                                              ; preds = %414, %321, %317
  %417 = phi i32 [ %415, %414 ], [ -22, %317 ], [ -22, %321 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #13
  br label %427

418:                                              ; preds = %309, %302, %293, %290, %282, %275, %266, %263, %248, %241, %221
  %419 = phi i32 [ -22, %290 ], [ -22, %293 ], [ -12, %309 ], [ -22, %302 ], [ -22, %263 ], [ -22, %266 ], [ -12, %282 ], [ -22, %275 ], [ -22, %248 ], [ -14, %241 ], [ -9, %221 ]
  call fastcc void @iocb_put(ptr noundef nonnull %82) #13
  br label %430

420:                                              ; preds = %313, %286
  %421 = phi ptr [ %289, %286 ], [ %316, %313 ]
  %422 = phi ptr [ %288, %286 ], [ %315, %313 ]
  %423 = getelementptr inbounds %struct.fsync_iocb, ptr %82, i32 0, i32 1, i32 1, i32 1
  store ptr %421, ptr %423, align 4
  %424 = getelementptr inbounds %struct.fsync_iocb, ptr %82, i32 0, i32 1, i32 2
  store ptr @aio_fsync_work, ptr %424, align 8
  %425 = load ptr, ptr @system_wq, align 4
  %426 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %425, ptr noundef %422) #13
  call fastcc void @iocb_put(ptr noundef nonnull %82) #13
  br label %492

427:                                              ; preds = %416, %261, %259, %257, %255, %239
  %428 = phi i32 [ %240, %239 ], [ %417, %416 ], [ %262, %261 ], [ %260, %259 ], [ %258, %257 ], [ %256, %255 ]
  call fastcc void @iocb_put(ptr noundef nonnull %82) #13
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %492, label %430, !prof !22

430:                                              ; preds = %427, %418
  %431 = phi i32 [ %419, %418 ], [ %428, %427 ]
  %432 = load ptr, ptr %226, align 4
  %433 = icmp eq ptr %432, null
  br i1 %433, label %435, label %434

434:                                              ; preds = %430
  call void @eventfd_ctx_put(ptr noundef nonnull %432) #13
  br label %435

435:                                              ; preds = %434, %430
  %436 = load ptr, ptr %82, align 8
  %437 = icmp eq ptr %436, null
  br i1 %437, label %439, label %438

438:                                              ; preds = %435
  call void @fput(ptr noundef nonnull %436) #13
  br label %439

439:                                              ; preds = %438, %435
  %440 = load ptr, ptr %222, align 8
  %441 = getelementptr inbounds %struct.kioctx, ptr %440, i32 0, i32 2
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %442 = load volatile i32, ptr %441, align 4
  %443 = and i32 %442, 3
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %454, !prof !22

445:                                              ; preds = %439
  %446 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %447 = call i32 @llvm.read_register.i32(metadata !0) #13
  %448 = inttoptr i32 %447 to ptr
  %449 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %448) #10, !srcloc !34
  %450 = add i32 %449, %442
  %451 = inttoptr i32 %450 to ptr
  %452 = load i32, ptr %451, align 4
  %453 = add i32 %452, -1
  store i32 %453, ptr %451, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %446) #13, !srcloc !35
  br label %464

454:                                              ; preds = %439
  %455 = getelementptr inbounds %struct.kioctx, ptr %440, i32 0, i32 2, i32 1
  %456 = load ptr, ptr %455, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %456) #13, !srcloc !12
  %457 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %456, ptr %456, i32 1, ptr elementtype(i32) %456) #13, !srcloc !13
  %458 = extractvalue { i32, i32 } %457, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %464, !prof !9

460:                                              ; preds = %454
  %461 = load ptr, ptr %455, align 4
  %462 = getelementptr inbounds %struct.percpu_ref_data, ptr %461, i32 0, i32 1
  %463 = load ptr, ptr %462, align 4
  call void %463(ptr noundef %441) #13
  br label %464

464:                                              ; preds = %460, %454, %445
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %465 = load ptr, ptr @kiocb_cachep, align 4
  call void @kmem_cache_free(ptr noundef %465, ptr noundef %82) #13
  %466 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %467 = load ptr, ptr %26, align 8
  %468 = ptrtoint ptr %467 to i32
  %469 = call i32 @llvm.read_register.i32(metadata !0) #13
  %470 = inttoptr i32 %469 to ptr
  %471 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %470) #10, !srcloc !34
  %472 = add i32 %471, %468
  %473 = inttoptr i32 %472 to ptr
  %474 = load i32, ptr %473, align 4
  %475 = add i32 %474, 1
  store i32 %475, ptr %473, align 4
  %476 = load i32, ptr %28, align 4
  %477 = shl i32 %476, 1
  %478 = icmp ult i32 %475, %477
  br i1 %478, label %479, label %480

479:                                              ; preds = %464
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %466) #13, !srcloc !35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  br label %498

480:                                              ; preds = %480, %464
  %481 = phi i32 [ %487, %480 ], [ %476, %464 ]
  %482 = phi i32 [ %486, %480 ], [ %475, %464 ]
  %483 = sub i32 %482, %481
  store i32 %483, ptr %473, align 4
  %484 = load i32, ptr %28, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #13, !srcloc !12
  %485 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 %484, ptr elementtype(i32) %27) #13, !srcloc !36
  %486 = load i32, ptr %473, align 4
  %487 = load i32, ptr %28, align 4
  %488 = shl i32 %487, 1
  %489 = icmp ult i32 %486, %488
  br i1 %489, label %493, label %480

490:                                              ; preds = %203, %80, %71, %67
  %491 = phi i32 [ -11, %203 ], [ -14, %67 ], [ -22, %71 ], [ -11, %80 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  br label %498

492:                                              ; preds = %427, %420
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  br label %495

493:                                              ; preds = %480
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %466) #13, !srcloc !35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  %494 = icmp eq i32 %431, 0
  br i1 %494, label %495, label %498

495:                                              ; preds = %493, %492
  %496 = add nuw nsw i32 %47, 1
  %497 = icmp eq i32 %496, %15
  br i1 %497, label %498, label %46

498:                                              ; preds = %495, %493, %490, %479, %46
  %499 = phi i32 [ %47, %479 ], [ %47, %490 ], [ %47, %493 ], [ %47, %46 ], [ %15, %495 ]
  %500 = phi i32 [ %431, %479 ], [ %491, %490 ], [ %431, %493 ], [ -14, %46 ], [ 0, %495 ]
  br i1 %16, label %501, label %502

501:                                              ; preds = %498
  call void @blk_finish_plug(ptr noundef nonnull %6) #13
  br label %502

502:                                              ; preds = %501, %498, %18
  %503 = phi i32 [ %500, %501 ], [ %500, %498 ], [ 0, %18 ]
  %504 = phi i32 [ %499, %501 ], [ %499, %498 ], [ 0, %18 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %505 = load volatile i32, ptr %10, align 4
  %506 = and i32 %505, 3
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %517, !prof !22

508:                                              ; preds = %502
  %509 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %510 = call i32 @llvm.read_register.i32(metadata !0) #13
  %511 = inttoptr i32 %510 to ptr
  %512 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %511) #10, !srcloc !34
  %513 = add i32 %512, %505
  %514 = inttoptr i32 %513 to ptr
  %515 = load i32, ptr %514, align 4
  %516 = add i32 %515, -1
  store i32 %516, ptr %514, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %509) #13, !srcloc !35
  br label %527

517:                                              ; preds = %502
  %518 = getelementptr inbounds %struct.percpu_ref, ptr %10, i32 0, i32 1
  %519 = load ptr, ptr %518, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %519) #13, !srcloc !12
  %520 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %519, ptr %519, i32 1, ptr elementtype(i32) %519) #13, !srcloc !13
  %521 = extractvalue { i32, i32 } %520, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %527, !prof !9

523:                                              ; preds = %517
  %524 = load ptr, ptr %518, align 4
  %525 = getelementptr inbounds %struct.percpu_ref_data, ptr %524, i32 0, i32 1
  %526 = load ptr, ptr %525, align 4
  call void %526(ptr noundef nonnull %10) #13
  br label %527

527:                                              ; preds = %523, %517, %508
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %528 = icmp eq i32 %504, 0
  %529 = select i1 %528, i32 %503, i32 %504
  br label %530

530:                                              ; preds = %527, %9, %3
  %531 = phi i32 [ %529, %527 ], [ -22, %3 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  ret i32 %531
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_io_cancel(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = inttoptr i32 %1 to ptr
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.iocb, ptr %4, i32 0, i32 1
  %7 = tail call ptr @llvm.thread.pointer() #13
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #10, !srcloc !23
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #13, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1090519041) #13, !srcloc !54
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #13, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %70, !prof !22

15:                                               ; preds = %3
  %16 = extractvalue { i32, i32 } %12, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %70, !prof !22

18:                                               ; preds = %15
  %19 = tail call fastcc ptr @lookup_ioctx(i32 noundef %0) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %70, label %21, !prof !9

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.kioctx, ptr %19, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %22) #13
  %23 = getelementptr inbounds %struct.kioctx, ptr %19, i32 0, i32 16, i32 1
  br label %24

24:                                               ; preds = %28, %21
  %25 = phi ptr [ %23, %21 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %23
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %26, i32 -24
  %30 = load i64, ptr %29, align 8
  %31 = icmp eq i64 %30, %5
  br i1 %31, label %32, label %24

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %26, i32 -96
  %34 = getelementptr i8, ptr %26, i32 -36
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %33) #13
  %37 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %26, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  store volatile ptr %26, ptr %26, align 4
  store ptr %26, ptr %37, align 4
  br label %41

41:                                               ; preds = %32, %24
  %42 = phi i32 [ %36, %32 ], [ -22, %24 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %43 = load i16, ptr %22, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !48
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !49
  %45 = icmp eq i32 %42, 0
  %46 = select i1 %45, i32 -115, i32 %42
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %47 = load volatile i32, ptr %19, align 4
  %48 = and i32 %47, 3
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59, !prof !22

50:                                               ; preds = %41
  %51 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %52 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %53 = inttoptr i32 %52 to ptr
  %54 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %53) #10, !srcloc !34
  %55 = add i32 %54, %47
  %56 = inttoptr i32 %55 to ptr
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, -1
  store i32 %58, ptr %56, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %51) #13, !srcloc !35
  br label %69

59:                                               ; preds = %41
  %60 = getelementptr inbounds %struct.percpu_ref, ptr %19, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #13, !srcloc !12
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #13, !srcloc !13
  %63 = extractvalue { i32, i32 } %62, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69, !prof !9

65:                                               ; preds = %59
  %66 = load ptr, ptr %60, align 4
  %67 = getelementptr inbounds %struct.percpu_ref_data, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  tail call void %68(ptr noundef nonnull %19) #13
  br label %69

69:                                               ; preds = %65, %59, %50
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %70

70:                                               ; preds = %69, %18, %15, %3
  %71 = phi i32 [ %46, %69 ], [ -14, %3 ], [ -22, %15 ], [ -22, %18 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_io_pgetevents(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = alloca %struct.__aio_sigset, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = inttoptr i32 %3 to ptr
  %10 = inttoptr i32 %5 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store i64 0, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #13, !annotation !10
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = inttoptr i32 %4 to ptr
  %14 = call i32 @get_timespec64(ptr noundef nonnull %8, ptr noundef nonnull %13) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %73, !prof !22

16:                                               ; preds = %12, %6
  %17 = icmp eq i32 %5, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %16
  %19 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %10, i32 8, i32 -1090519040) #16, !srcloc !43
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34, !prof !22

22:                                               ; preds = %18
  %23 = tail call ptr @llvm.thread.pointer() #13
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #10, !srcloc !23
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #13, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %28 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #13, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34, !prof !22

30:                                               ; preds = %22
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds %struct.__aio_sigset, ptr %7, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  br label %38

34:                                               ; preds = %22, %18
  %35 = phi i32 [ %28, %22 ], [ 8, %18 ]
  %36 = sub i32 8, %35
  %37 = getelementptr i8, ptr %7, i32 %36
  call void @llvm.memset.p0.i32(ptr align 1 %37, i8 0, i32 %35, i1 false) #13
  br label %73

38:                                               ; preds = %30, %16
  %39 = phi i32 [ %33, %30 ], [ 0, %16 ]
  %40 = phi ptr [ %31, %30 ], [ null, %16 ]
  %41 = call i32 @set_user_sigmask(ptr noundef %40, i32 noundef %39) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %38
  %44 = select i1 %11, ptr null, ptr %8
  %45 = call fastcc i32 @do_io_getevents(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %9, ptr noundef %44) #13
  %46 = tail call ptr @llvm.thread.pointer() #13
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54, !prof !22

50:                                               ; preds = %43
  %51 = load volatile i32, ptr %46, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %50, %43
  %55 = load volatile i32, ptr %46, align 4
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68, !prof !22

58:                                               ; preds = %54
  %59 = load volatile i32, ptr %46, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68, !prof !9

62:                                               ; preds = %58
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 519, i32 noundef 9, ptr noundef null) #13
  br label %68

63:                                               ; preds = %50
  %64 = call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %46) #13
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 97
  call void @__set_current_blocked(ptr noundef %67) #13
  br label %68

68:                                               ; preds = %66, %63, %62, %58, %54
  %69 = phi i1 [ false, %54 ], [ false, %58 ], [ false, %62 ], [ true, %63 ], [ true, %66 ]
  %70 = icmp ne i32 %45, 0
  %71 = select i1 %69, i1 true, i1 %70
  %72 = select i1 %71, i32 %45, i32 -514
  br label %73

73:                                               ; preds = %68, %38, %34, %12
  %74 = phi i32 [ %72, %68 ], [ -14, %12 ], [ %41, %38 ], [ -14, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_io_pgetevents_time32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = alloca %struct.__aio_sigset, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = inttoptr i32 %3 to ptr
  %10 = inttoptr i32 %5 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store i64 0, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #13, !annotation !10
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = inttoptr i32 %4 to ptr
  %14 = call i32 @get_old_timespec32(ptr noundef nonnull %8, ptr noundef nonnull %13) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %73, !prof !22

16:                                               ; preds = %12, %6
  %17 = icmp eq i32 %5, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %16
  %19 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %10, i32 8, i32 -1090519040) #16, !srcloc !43
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34, !prof !22

22:                                               ; preds = %18
  %23 = tail call ptr @llvm.thread.pointer() #13
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %24) #10, !srcloc !23
  %26 = and i32 %25, -13
  %27 = or i32 %26, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #13, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %28 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #13, !srcloc !24
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34, !prof !22

30:                                               ; preds = %22
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds %struct.__aio_sigset, ptr %7, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  br label %38

34:                                               ; preds = %22, %18
  %35 = phi i32 [ %28, %22 ], [ 8, %18 ]
  %36 = sub i32 8, %35
  %37 = getelementptr i8, ptr %7, i32 %36
  call void @llvm.memset.p0.i32(ptr align 1 %37, i8 0, i32 %35, i1 false) #13
  br label %73

38:                                               ; preds = %30, %16
  %39 = phi i32 [ %33, %30 ], [ 0, %16 ]
  %40 = phi ptr [ %31, %30 ], [ null, %16 ]
  %41 = call i32 @set_user_sigmask(ptr noundef %40, i32 noundef %39) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %38
  %44 = select i1 %11, ptr null, ptr %8
  %45 = call fastcc i32 @do_io_getevents(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %9, ptr noundef %44) #13
  %46 = tail call ptr @llvm.thread.pointer() #13
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54, !prof !22

50:                                               ; preds = %43
  %51 = load volatile i32, ptr %46, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %50, %43
  %55 = load volatile i32, ptr %46, align 4
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68, !prof !22

58:                                               ; preds = %54
  %59 = load volatile i32, ptr %46, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68, !prof !9

62:                                               ; preds = %58
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 519, i32 noundef 9, ptr noundef null) #13
  br label %68

63:                                               ; preds = %50
  %64 = call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %46) #13
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 97
  call void @__set_current_blocked(ptr noundef %67) #13
  br label %68

68:                                               ; preds = %66, %63, %62, %58, %54
  %69 = phi i1 [ false, %54 ], [ false, %58 ], [ false, %62 ], [ true, %63 ], [ true, %66 ]
  %70 = icmp ne i32 %45, 0
  %71 = select i1 %69, i1 true, i1 %70
  %72 = select i1 %71, i32 %45, i32 -514
  br label %73

73:                                               ; preds = %68, %38, %34, %12
  %74 = phi i32 [ %72, %68 ], [ -14, %12 ], [ %41, %38 ], [ -14, %34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_io_getevents_time32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = alloca %struct.timespec64, align 8
  %7 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #13, !annotation !10
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = inttoptr i32 %4 to ptr
  %11 = call i32 @get_old_timespec32(ptr noundef nonnull %6, ptr noundef nonnull %10) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %6, %9 ], [ null, %5 ]
  %15 = call fastcc i32 @do_io_getevents(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %7, ptr noundef %14) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #13
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27, !prof !22

22:                                               ; preds = %17
  %23 = load volatile i32, ptr %18, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 0, i32 -4
  br label %27

27:                                               ; preds = %22, %17, %13, %9
  %28 = phi i32 [ -14, %9 ], [ %15, %13 ], [ -4, %17 ], [ %26, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aio_init_fs_context(ptr noundef %0) #1 {
  %2 = tail call ptr @init_pseudo(ptr noundef %0, i32 noundef -1593175903) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 2
  store i32 %7, ptr %5, align 4
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %4 ], [ -12, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_munmap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_kill_and_confirm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @percpu_ref_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @free_ioctx_users(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.kioctx, ptr %0, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #13
  %3 = getelementptr inbounds %struct.kioctx, ptr %0, i32 0, i32 16, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %18, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %16, %6 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -96
  %9 = getelementptr i8, ptr %7, i32 -36
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %8) #13
  %12 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %12, align 4
  %16 = load volatile ptr, ptr %3, align 4
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %18, label %6

18:                                               ; preds = %6, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %19 = load i16, ptr %2, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !48
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !49
  %21 = getelementptr inbounds %struct.kioctx, ptr %0, i32 0, i32 2
  tail call void @percpu_ref_kill_and_confirm(ptr noundef %21, ptr noundef null) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34, !prof !22

25:                                               ; preds = %18
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #10, !srcloc !34
  %30 = add i32 %29, %22
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -1
  store i32 %33, ptr %31, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #13, !srcloc !35
  br label %44

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.kioctx, ptr %0, i32 0, i32 2, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #13, !srcloc !12
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #13, !srcloc !13
  %38 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44, !prof !9

40:                                               ; preds = %34
  %41 = load ptr, ptr %35, align 4
  %42 = getelementptr inbounds %struct.percpu_ref_data, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %21) #13
  br label %44

44:                                               ; preds = %40, %34, %25
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @free_ioctx_reqs(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 72
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ctx_rq_wait, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #13, !srcloc !12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #13, !srcloc !13
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 4
  tail call void @complete(ptr noundef %11) #13
  br label %12

12:                                               ; preds = %10, %5, %1
  %13 = getelementptr i8, ptr %0, i32 44
  store i32 -32, ptr %13, align 8
  %14 = getelementptr i8, ptr %0, i32 48
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr i8, ptr %0, i32 52
  store ptr %14, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 56
  store ptr @free_ioctx, ptr %16, align 4
  %17 = load ptr, ptr @system_wq, align 4
  %18 = tail call zeroext i1 @queue_rcu_work(ptr noundef %17, ptr noundef %13) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aio_free_ring(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.kioctx, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 32
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  tail call void @truncate_setsize(ptr noundef %7, i64 noundef 0) #13
  %8 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 17
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 14
  store ptr null, ptr %11, align 4
  store ptr null, ptr %2, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %12 = load i16, ptr %10, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  tail call void @fput(ptr noundef nonnull %3) #13
  br label %14

14:                                               ; preds = %5, %1
  %15 = getelementptr inbounds %struct.kioctx, ptr %0, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.kioctx, ptr %0, i32 0, i32 10
  br label %20

20:                                               ; preds = %43, %18
  %21 = phi i32 [ 0, %18 ], [ %44, %43 ]
  %22 = load ptr, ptr %19, align 16
  %23 = getelementptr ptr, ptr %22, i32 %21
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %20
  store ptr null, ptr %23, align 4
  %27 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !22

31:                                               ; preds = %26
  %32 = add i32 %28, -1
  br label %35

33:                                               ; preds = %26
  %34 = ptrtoint ptr %24 to i32
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = inttoptr i32 %36 to ptr
  %38 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #13, !srcloc !12
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #13, !srcloc !13
  %40 = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  tail call void @__put_page(ptr noundef %37) #13
  br label %43

43:                                               ; preds = %42, %35, %20
  %44 = add nuw nsw i32 %21, 1
  %45 = load i32, ptr %15, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %20, label %47

47:                                               ; preds = %43, %14
  %48 = getelementptr inbounds %struct.kioctx, ptr %0, i32 0, i32 10
  %49 = load ptr, ptr %48, align 16
  %50 = icmp eq ptr %49, null
  %51 = getelementptr inbounds %struct.kioctx, ptr %0, i32 0, i32 19
  %52 = icmp eq ptr %49, %51
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  tail call void @kfree(ptr noundef nonnull %49) #13
  store ptr null, ptr %48, align 16
  br label %55

55:                                               ; preds = %54, %47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @free_ioctx(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -56
  tail call fastcc void @aio_free_ring(ptr noundef %2)
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = load ptr, ptr %3, align 8
  tail call void @free_percpu(ptr noundef %4) #13
  %5 = getelementptr i8, ptr %0, i32 -44
  tail call void @percpu_ref_exit(ptr noundef %5) #13
  tail call void @percpu_ref_exit(ptr noundef %2) #13
  %6 = load ptr, ptr @kioctx_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_rcu_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_anon_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_pseudo(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_no_writeback(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aio_migratepage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = icmp eq i32 %3, 3
  br i1 %5, label %106, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %102, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.kioctx, ptr %9, i32 0, i32 17
  %13 = tail call i32 @mutex_trylock(ptr noundef %12) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %102, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.kioctx, ptr %9, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %100

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.kioctx, ptr %9, i32 0, i32 10
  %23 = load ptr, ptr %22, align 16
  %24 = getelementptr ptr, ptr %23, i32 %17
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %2
  br i1 %26, label %27, label %100

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !22

32:                                               ; preds = %27
  %33 = add i32 %29, -1
  br label %36

34:                                               ; preds = %27
  %35 = ptrtoint ptr %2 to i32
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = inttoptr i32 %37 to ptr
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 32768
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42, !prof !22

42:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/aio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 450, 0\0A.popsection", ""() #13, !srcloc !55
  unreachable

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48, !prof !22

48:                                               ; preds = %43
  %49 = add i32 %45, -1
  br label %52

50:                                               ; preds = %43
  %51 = ptrtoint ptr %1 to i32
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = inttoptr i32 %53 to ptr
  %55 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #13, !srcloc !12
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #13, !srcloc !36
  %57 = tail call i32 @migrate_page_move_mapping(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %52
  %60 = load volatile i32, ptr %44, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63, !prof !22

63:                                               ; preds = %59
  %64 = add i32 %60, -1
  br label %67

65:                                               ; preds = %59
  %66 = ptrtoint ptr %1 to i32
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = inttoptr i32 %68 to ptr
  %70 = getelementptr inbounds %struct.page, ptr %69, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #13, !srcloc !12
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 1, ptr elementtype(i32) %70) #13, !srcloc !13
  %72 = extractvalue { i32, i32 } %71, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %97, label %100

74:                                               ; preds = %52
  %75 = getelementptr inbounds %struct.kioctx, ptr %9, i32 0, i32 18, i32 2
  %76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %75) #13
  tail call void @migrate_page_copy(ptr noundef %1, ptr noundef %2) #13
  %77 = load ptr, ptr %22, align 16
  %78 = getelementptr ptr, ptr %77, i32 %17
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %2
  br i1 %80, label %82, label %81, !prof !22

81:                                               ; preds = %74
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/aio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 465, 0\0A.popsection", ""() #13, !srcloc !56
  unreachable

82:                                               ; preds = %74
  store ptr %1, ptr %78, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %75, i32 noundef %76) #13
  %83 = load volatile i32, ptr %28, align 4
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86, !prof !22

86:                                               ; preds = %82
  %87 = add i32 %83, -1
  br label %90

88:                                               ; preds = %82
  %89 = ptrtoint ptr %2 to i32
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = inttoptr i32 %91 to ptr
  %93 = getelementptr inbounds %struct.page, ptr %92, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %93) #13, !srcloc !12
  %94 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 1, ptr elementtype(i32) %93) #13, !srcloc !13
  %95 = extractvalue { i32, i32 } %94, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90, %67
  %98 = phi ptr [ %69, %67 ], [ %92, %90 ]
  %99 = phi i32 [ %57, %67 ], [ 0, %90 ]
  tail call void @__put_page(ptr noundef %98) #13
  br label %100

100:                                              ; preds = %97, %90, %67, %21, %15
  %101 = phi i32 [ -11, %21 ], [ %57, %67 ], [ 0, %90 ], [ -22, %15 ], [ %99, %97 ]
  tail call void @mutex_unlock(ptr noundef %12) #13
  br label %102

102:                                              ; preds = %100, %11, %6
  %103 = phi i32 [ %101, %100 ], [ -22, %6 ], [ -11, %11 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %104 = load i16, ptr %7, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %106

106:                                              ; preds = %102, %4
  %107 = phi i32 [ %103, %102 ], [ -22, %4 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_page_move_mapping(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_page_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @aio_ring_mmap(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #8 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 262144
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @aio_ring_vm_ops, ptr %6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aio_ring_mremap(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.anon.25, ptr %5, i32 0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %6) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %7 = getelementptr inbounds %struct.anon.25, ptr %5, i32 0, i32 45
  %8 = load volatile ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.kioctx_table, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %29, %1
  %13 = phi i32 [ %30, %29 ], [ 0, %1 ]
  %14 = getelementptr %struct.kioctx_table, ptr %8, i32 0, i32 2, i32 %13
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.kioctx, ptr %15, i32 0, i32 20
  %19 = load ptr, ptr %18, align 32
  %20 = icmp eq ptr %19, %3
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.kioctx, ptr %15, i32 0, i32 1
  %23 = load volatile i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, ptr %0, align 4
  %27 = getelementptr inbounds %struct.kioctx, ptr %15, i32 0, i32 8
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.kioctx, ptr %15, i32 0, i32 3
  store i32 %26, ptr %28, align 4
  br label %32

29:                                               ; preds = %17, %12
  %30 = add nuw i32 %13, 1
  %31 = icmp eq i32 %30, %10
  br i1 %31, label %32, label %12

32:                                               ; preds = %29, %25, %21, %1
  %33 = phi i32 [ -22, %21 ], [ 0, %25 ], [ -22, %1 ], [ -22, %29 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %34 = load i16, ptr %6, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_page_mkwrite(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @lookup_ioctx(i32 noundef %0) unnamed_addr #1 {
  %2 = inttoptr i32 %0 to ptr
  %3 = tail call ptr @llvm.thread.pointer() #13
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 37
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %6) #10, !srcloc !23
  %8 = and i32 %7, -13
  %9 = or i32 %8, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #13, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %10 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1090519041) #13, !srcloc !57
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #13, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %15 = getelementptr inbounds %struct.anon.25, ptr %5, i32 0, i32 45
  %16 = load volatile ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %57, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.kioctx_table, ptr %16, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %12, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %18
  %23 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %12, i32 %20) #13, !srcloc !58
  %24 = and i32 %23, %12
  %25 = getelementptr %struct.kioctx_table, ptr %16, i32 0, i32 2, i32 %24
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %57, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.kioctx, ptr %26, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %0
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %33 = load volatile i32, ptr %26, align 4
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45, !prof !22

36:                                               ; preds = %32
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #10, !srcloc !34
  %41 = add i32 %40, %33
  %42 = inttoptr i32 %41 to ptr
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #13, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %57

45:                                               ; preds = %32
  %46 = and i32 %33, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %57

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.percpu_ref, ptr %26, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !59
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #13, !srcloc !12
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 0, i32 1, ptr elementtype(i32) %51) #13, !srcloc !60
  %53 = extractvalue { i32, i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !61
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %57

56:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %57

57:                                               ; preds = %56, %55, %48, %36, %28, %22, %18, %14
  %58 = phi ptr [ null, %18 ], [ null, %28 ], [ null, %22 ], [ null, %14 ], [ null, %56 ], [ null, %48 ], [ %26, %55 ], [ %26, %36 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %59

59:                                               ; preds = %57, %1
  %60 = phi ptr [ %58, %57 ], [ null, %1 ]
  ret ptr %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iocb_put(ptr noundef %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.aio_kiocb, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #13, !srcloc !12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #13, !srcloc !63
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %145, label %8, !prof !22

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #13
  br label %145

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !64
  %10 = getelementptr inbounds %struct.aio_kiocb, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.kioctx, ptr %11, i32 0, i32 18
  %13 = getelementptr inbounds %struct.kioctx, ptr %11, i32 0, i32 18, i32 2
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #13
  %15 = load i32, ptr %12, align 64
  %16 = add i32 %15, 1
  %17 = getelementptr inbounds %struct.kioctx, ptr %11, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %16, %18
  %20 = select i1 %19, i32 %16, i32 0
  %21 = getelementptr inbounds %struct.kioctx, ptr %11, i32 0, i32 10
  %22 = load ptr, ptr %21, align 16
  %23 = lshr i32 %16, 7
  %24 = getelementptr ptr, ptr %22, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = load i32, ptr @pgprot_kernel, align 4
  %27 = or i32 %26, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  %28 = tail call ptr @llvm.thread.pointer() #13
  %29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 149
  %30 = load i32, ptr %29, align 8
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %32 = tail call ptr @__kmap_local_page_prot(ptr noundef %25, i32 noundef %27) #13
  %33 = and i32 %16, 127
  %34 = getelementptr %struct.io_event, ptr %32, i32 %33
  %35 = getelementptr inbounds %struct.aio_kiocb, ptr %0, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(32) %34, ptr noundef align 8 dereferenceable(32) %35, i32 32, i1 false) #13
  tail call void @kunmap_local_indexed(ptr noundef %32) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %36 = load i32, ptr %29, align 8
  %37 = add i32 %36, -1
  store i32 %37, ptr %29, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %38 = load ptr, ptr %21, align 16
  %39 = getelementptr ptr, ptr %38, i32 %23
  %40 = load ptr, ptr %39, align 4
  tail call void @flush_dcache_page(ptr noundef %40) #13
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !65
  store i32 %20, ptr %12, align 64
  %41 = load ptr, ptr %21, align 16
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr @pgprot_kernel, align 4
  %44 = or i32 %43, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  %45 = load i32, ptr %29, align 8
  %46 = add i32 %45, 1
  store i32 %46, ptr %29, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %47 = tail call ptr @__kmap_local_page_prot(ptr noundef %42, i32 noundef %44) #13
  %48 = getelementptr inbounds %struct.aio_ring, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr inbounds %struct.aio_ring, ptr %47, i32 0, i32 3
  store i32 %20, ptr %50, align 4
  tail call void @kunmap_local_indexed(ptr noundef %47) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %51 = load i32, ptr %29, align 8
  %52 = add i32 %51, -1
  store i32 %52, ptr %29, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %53 = load ptr, ptr %21, align 16
  %54 = load ptr, ptr %53, align 4
  tail call void @flush_dcache_page(ptr noundef %54) #13
  %55 = getelementptr inbounds %struct.kioctx, ptr %11, i32 0, i32 18, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 4
  %58 = icmp ugt i32 %57, 1
  br i1 %58, label %59, label %98

59:                                               ; preds = %9
  %60 = load i32, ptr %17, align 4
  %61 = urem i32 %49, %60
  %62 = icmp ult i32 %20, %61
  %63 = sub i32 %20, %61
  %64 = select i1 %62, i32 %60, i32 0
  %65 = add i32 %64, %63
  %66 = icmp ugt i32 %57, %65
  br i1 %66, label %67, label %98

67:                                               ; preds = %59
  %68 = tail call i32 @llvm.usub.sat.i32(i32 %57, i32 %65) #13
  %69 = sub i32 %57, %68
  store i32 %69, ptr %55, align 4
  %70 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %71 = getelementptr inbounds %struct.kioctx, ptr %11, i32 0, i32 4
  %72 = load ptr, ptr %71, align 8
  %73 = ptrtoint ptr %72 to i32
  %74 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %75 = inttoptr i32 %74 to ptr
  %76 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %75) #10, !srcloc !34
  %77 = add i32 %76, %73
  %78 = inttoptr i32 %77 to ptr
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, %68
  store i32 %80, ptr %78, align 4
  %81 = getelementptr inbounds %struct.kioctx, ptr %11, i32 0, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = shl i32 %82, 1
  %84 = icmp ult i32 %80, %83
  br i1 %84, label %97, label %85

85:                                               ; preds = %67
  %86 = getelementptr inbounds %struct.kioctx, ptr %11, i32 0, i32 15
  br label %87

87:                                               ; preds = %87, %85
  %88 = phi i32 [ %82, %85 ], [ %94, %87 ]
  %89 = phi i32 [ %80, %85 ], [ %93, %87 ]
  %90 = sub i32 %89, %88
  store i32 %90, ptr %78, align 4
  %91 = load i32, ptr %81, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #13, !srcloc !12
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 %91, ptr elementtype(i32) %86) #13, !srcloc !36
  %93 = load i32, ptr %78, align 4
  %94 = load i32, ptr %81, align 4
  %95 = shl i32 %94, 1
  %96 = icmp ult i32 %93, %95
  br i1 %96, label %97, label %87

97:                                               ; preds = %87, %67
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %70) #13, !srcloc !35
  br label %98

98:                                               ; preds = %97, %59, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #13
  %99 = getelementptr inbounds %struct.aio_kiocb, ptr %0, i32 0, i32 6
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = tail call i64 @eventfd_signal(ptr noundef nonnull %100, i64 noundef 1) #13
  br label %104

104:                                              ; preds = %102, %98
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !66
  %105 = getelementptr inbounds %struct.kioctx, ptr %11, i32 0, i32 17, i32 1, i32 1
  %106 = load volatile ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, %105
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.kioctx, ptr %11, i32 0, i32 17, i32 1
  tail call void @__wake_up(ptr noundef %109, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %110

110:                                              ; preds = %108, %104
  %111 = load ptr, ptr %99, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  tail call void @eventfd_ctx_put(ptr noundef nonnull %111) #13
  br label %114

114:                                              ; preds = %113, %110
  %115 = load ptr, ptr %0, align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  tail call void @fput(ptr noundef nonnull %115) #13
  br label %118

118:                                              ; preds = %117, %114
  %119 = load ptr, ptr %10, align 8
  %120 = getelementptr inbounds %struct.kioctx, ptr %119, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %121 = load volatile i32, ptr %120, align 4
  %122 = and i32 %121, 3
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %133, !prof !22

124:                                              ; preds = %118
  %125 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %126 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %127 = inttoptr i32 %126 to ptr
  %128 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %127) #10, !srcloc !34
  %129 = add i32 %128, %121
  %130 = inttoptr i32 %129 to ptr
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %131, -1
  store i32 %132, ptr %130, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %125) #13, !srcloc !35
  br label %143

133:                                              ; preds = %118
  %134 = getelementptr inbounds %struct.kioctx, ptr %119, i32 0, i32 2, i32 1
  %135 = load ptr, ptr %134, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %135) #13, !srcloc !12
  %136 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %135, ptr %135, i32 1, ptr elementtype(i32) %135) #13, !srcloc !13
  %137 = extractvalue { i32, i32 } %136, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143, !prof !9

139:                                              ; preds = %133
  %140 = load ptr, ptr %134, align 4
  %141 = getelementptr inbounds %struct.percpu_ref_data, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  tail call void %142(ptr noundef %120) #13
  br label %143

143:                                              ; preds = %139, %133, %124
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %144 = load ptr, ptr @kiocb_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %144, ptr noundef %0) #13
  br label %145

145:                                              ; preds = %143, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @eventfd_ctx_fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aio_read(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #1 {
  %4 = alloca [8 x %struct.iovec], align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.iov_iter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr %4, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !10
  %7 = call fastcc i32 @aio_prep_rw(ptr noundef %0, ptr noundef %1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %54

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 8
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %54, label %15, !prof !9

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.file_operations, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %54, label %21, !prof !9

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.iocb, ptr %1, i32 0, i32 6
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.iocb, ptr %1, i32 0, i32 7
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i32
  br i1 %2, label %31, label %29

29:                                               ; preds = %21
  %30 = call i32 @import_single_range(i32 noundef 0, ptr noundef %25, i32 noundef %28, ptr noundef nonnull %4, ptr noundef nonnull %6) #13
  store ptr null, ptr %5, align 4
  br label %33

31:                                               ; preds = %21
  %32 = call i32 @__import_iovec(i32 noundef 0, ptr noundef %25, i32 noundef %28, i32 noundef 8, ptr noundef nonnull %5, ptr noundef nonnull %6, i1 noundef zeroext false) #13
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %32, %31 ], [ %30, %29 ]
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %38 = getelementptr inbounds %struct.iov_iter, ptr %6, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = call i32 @rw_verify_area(i32 noundef 0, ptr noundef %10, ptr noundef %37, i32 noundef %39) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load ptr, ptr %16, align 4
  %44 = getelementptr inbounds %struct.file_operations, ptr %43, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 %45(ptr noundef %0, ptr noundef nonnull %6) #13
  switch i32 %46, label %48 [
    i32 -529, label %52
    i32 -512, label %47
    i32 -513, label %47
    i32 -514, label %47
    i32 -516, label %47
  ]

47:                                               ; preds = %42, %42, %42, %42
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi i32 [ %46, %42 ], [ -4, %47 ]
  %50 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  call void %51(ptr noundef %0, i32 noundef %49) #13
  br label %52

52:                                               ; preds = %48, %42, %36
  %53 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %53) #13
  br label %54

54:                                               ; preds = %52, %33, %15, %9, %3
  %55 = phi i32 [ %40, %52 ], [ %7, %3 ], [ -9, %9 ], [ -22, %15 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aio_write(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #1 {
  %5 = alloca [8 x %struct.iovec], align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.iov_iter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr %5, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !10
  %8 = call fastcc i32 @aio_prep_rw(ptr noundef %0, ptr noundef %1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %85

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %85, label %16, !prof !9

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.file_operations, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %85, label %22, !prof !9

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.iocb, ptr %1, i32 0, i32 6
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.iocb, ptr %1, i32 0, i32 7
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i32
  br i1 %2, label %32, label %30

30:                                               ; preds = %22
  %31 = call i32 @import_single_range(i32 noundef 1, ptr noundef %26, i32 noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %7) #13
  store ptr null, ptr %6, align 4
  br label %34

32:                                               ; preds = %22
  %33 = call i32 @__import_iovec(i32 noundef 1, ptr noundef %26, i32 noundef %29, i32 noundef 8, ptr noundef nonnull %6, ptr noundef nonnull %7, i1 noundef zeroext false) #13
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %33, %32 ], [ %31, %30 ]
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %85, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %39 = getelementptr inbounds %struct.iov_iter, ptr %7, i32 0, i32 4
  %40 = load i32, ptr %39, align 8
  %41 = call i32 @rw_verify_area(i32 noundef 1, ptr noundef %11, ptr noundef %38, i32 noundef %40) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = load i16, ptr %45, align 8
  %47 = and i16 %46, -4096
  %48 = icmp eq i16 %47, -32768
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 8
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr %struct.super_block, ptr %51, i32 0, i32 26, i32 2
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !67
  %53 = load volatile i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %67, !prof !22

55:                                               ; preds = %49
  %56 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %57 = getelementptr %struct.super_block, ptr %51, i32 0, i32 26, i32 2, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = call i32 @llvm.read_register.i32(metadata !0) #13
  %61 = inttoptr i32 %60 to ptr
  %62 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %61) #10, !srcloc !34
  %63 = add i32 %62, %59
  %64 = inttoptr i32 %63 to ptr
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #13, !srcloc !35
  br label %69

67:                                               ; preds = %49
  %68 = call zeroext i1 @__percpu_down_read(ptr noundef %52, i1 noundef zeroext false) #13
  br label %69

69:                                               ; preds = %67, %55
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !68
  br label %70

70:                                               ; preds = %69, %43
  %71 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %72 = load i32, ptr %71, align 8
  %73 = or i32 %72, 262144
  store i32 %73, ptr %71, align 8
  %74 = load ptr, ptr %17, align 4
  %75 = getelementptr inbounds %struct.file_operations, ptr %74, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 %76(ptr noundef %0, ptr noundef nonnull %7) #13
  switch i32 %77, label %79 [
    i32 -529, label %83
    i32 -512, label %78
    i32 -513, label %78
    i32 -514, label %78
    i32 -516, label %78
  ]

78:                                               ; preds = %70, %70, %70, %70
  br label %79

79:                                               ; preds = %78, %70
  %80 = phi i32 [ %77, %70 ], [ -4, %78 ]
  %81 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 2
  %82 = load ptr, ptr %81, align 8
  call void %82(ptr noundef %0, i32 noundef %80) #13
  br label %83

83:                                               ; preds = %79, %70, %37
  %84 = load ptr, ptr %6, align 4
  call void @kfree(ptr noundef %84) #13
  br label %85

85:                                               ; preds = %83, %34, %16, %10, %4
  %86 = phi i32 [ %41, %83 ], [ %8, %4 ], [ -9, %10 ], [ -22, %16 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @aio_prep_rw(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 2
  store ptr @aio_complete_rw, ptr %3, align 8
  %4 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 3
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.iocb, ptr %1, i32 0, i32 8
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  store i64 %6, ptr %7, align 8
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 6
  %12 = and i32 %11, 16
  %13 = shl i32 %10, 1
  %14 = and i32 %13, 131072
  %15 = or i32 %14, %12
  %16 = and i32 %10, 4096
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 17
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28, %18, %2
  %34 = or i32 %15, 2
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi i32 [ %34, %33 ], [ %15, %28 ]
  %37 = lshr i32 %10, 18
  %38 = and i32 %37, 4
  %39 = or i32 %36, %38
  %40 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.iocb, ptr %1, i32 0, i32 10
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %35
  %46 = or i32 %39, 65536
  store i32 %46, ptr %40, align 8
  br label %47

47:                                               ; preds = %45, %35
  %48 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 2
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 20
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  br label %57

57:                                               ; preds = %51, %47
  %58 = phi i32 [ %56, %51 ], [ %49, %47 ]
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 65536) #13
  %60 = trunc i32 %59 to i16
  %61 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 5
  store i16 %60, ptr %61, align 4
  %62 = load i32, ptr %41, align 8
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.iocb, ptr %1, i32 0, i32 4
  %67 = load i16, ptr %66, align 2
  %68 = sext i16 %67 to i32
  %69 = tail call i32 @ioprio_check_cap(i32 noundef %68) #13
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %111

71:                                               ; preds = %65
  %72 = load i16, ptr %66, align 2
  br label %81

73:                                               ; preds = %57
  %74 = tail call ptr @llvm.thread.pointer() #13
  %75 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 118
  %76 = load ptr, ptr %75, align 32
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.io_context, ptr %76, i32 0, i32 2
  %80 = load i16, ptr %79, align 4
  br label %81

81:                                               ; preds = %78, %73, %71
  %82 = phi i16 [ %72, %71 ], [ %80, %78 ], [ 16388, %73 ]
  %83 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 6
  store i16 %82, ptr %83, align 2
  %84 = getelementptr inbounds %struct.iocb, ptr %1, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, ptr %40, align 8
  br label %108

89:                                               ; preds = %81
  %90 = icmp ult i32 %85, 32
  br i1 %90, label %91, label %111, !prof !22

91:                                               ; preds = %89
  %92 = and i32 %85, 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %0, align 8
  %96 = getelementptr inbounds %struct.file, ptr %95, i32 0, i32 8
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 134217728
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %94, %91
  %101 = phi i32 [ 0, %91 ], [ 1048576, %94 ]
  %102 = lshr i32 %85, 1
  %103 = and i32 %102, 2
  %104 = load i32, ptr %40, align 8
  %105 = or i32 %103, %85
  %106 = or i32 %105, %101
  %107 = or i32 %106, %104
  br label %108

108:                                              ; preds = %100, %87
  %109 = phi i32 [ %88, %87 ], [ %107, %100 ]
  %110 = and i32 %109, -2
  store i32 %110, ptr %40, align 8
  br label %111

111:                                              ; preds = %108, %94, %89, %65
  %112 = phi i32 [ 0, %108 ], [ %69, %65 ], [ -95, %89 ], [ -95, %94 ]
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rw_verify_area(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aio_complete_rw(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.aio_kiocb, ptr %0, i32 0, i32 4
  %4 = load volatile ptr, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !69
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.aio_kiocb, ptr %0, i32 0, i32 4, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %3
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.aio_kiocb, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.kioctx, ptr %12, i32 0, i32 16
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #13
  %15 = getelementptr inbounds %struct.aio_kiocb, ptr %0, i32 0, i32 4, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #13
  br label %19

19:                                               ; preds = %10, %6
  %20 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 262144
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %64, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %0, align 8
  %26 = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = load i16, ptr %27, align 8
  %29 = and i16 %28, -4096
  %30 = icmp eq i16 %29, -32768
  br i1 %30, label %31, label %64

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr %struct.super_block, ptr %33, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !70
  %35 = load volatile i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %49, !prof !22

37:                                               ; preds = %31
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %39 = getelementptr %struct.super_block, ptr %33, i32 0, i32 26, i32 2, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %43 = inttoptr i32 %42 to ptr
  %44 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %43) #10, !srcloc !34
  %45 = add i32 %44, %41
  %46 = inttoptr i32 %45 to ptr
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, -1
  store i32 %48, ptr %46, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #13, !srcloc !35
  br label %63

49:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !71
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %51 = getelementptr %struct.super_block, ptr %33, i32 0, i32 26, i32 2, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %55 = inttoptr i32 %54 to ptr
  %56 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %55) #10, !srcloc !34
  %57 = add i32 %56, %53
  %58 = inttoptr i32 %57 to ptr
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, -1
  store i32 %60, ptr %58, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %50) #13, !srcloc !35
  %61 = getelementptr %struct.super_block, ptr %33, i32 0, i32 26, i32 2, i32 0, i32 2
  %62 = tail call i32 @rcuwait_wake_up(ptr noundef %61) #13
  br label %63

63:                                               ; preds = %49, %37
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !72
  br label %64

64:                                               ; preds = %63, %24, %19
  %65 = sext i32 %1 to i64
  %66 = getelementptr inbounds %struct.aio_kiocb, ptr %0, i32 0, i32 3, i32 2
  store i64 %65, ptr %66, align 8
  %67 = getelementptr inbounds %struct.aio_kiocb, ptr %0, i32 0, i32 3, i32 3
  store i64 0, ptr %67, align 8
  tail call fastcc void @iocb_put(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ioprio_check_cap(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_single_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aio_fsync_work(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 20
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @override_creds(ptr noundef %4) #13
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr i8, ptr %0, i32 16
  %8 = load i8, ptr %7, align 4, !range !52
  %9 = zext i8 %8 to i32
  %10 = tail call i32 @vfs_fsync(ptr noundef %6, i32 noundef %9) #13
  %11 = sext i32 %10 to i64
  %12 = getelementptr i8, ptr %0, i32 76
  store i64 %11, ptr %12, align 8
  tail call void @revert_creds(ptr noundef %5) #13
  %13 = load ptr, ptr %3, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #13, !srcloc !12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #13, !srcloc !13
  %17 = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @__put_cred(ptr noundef nonnull %13) #13
  br label %20

20:                                               ; preds = %19, %15, %1
  tail call fastcc void @iocb_put(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aio_poll_complete_work(ptr noundef %0) #1 {
  %2 = alloca %struct.poll_table_struct, align 8
  %3 = getelementptr i8, ptr %0, i32 -36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr null, ptr %2, align 8
  %4 = getelementptr inbounds %struct.poll_table_struct, ptr %2, i32 0, i32 1
  %5 = getelementptr i8, ptr %0, i32 -28
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %4, align 4
  %7 = getelementptr i8, ptr %0, i32 20
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %0, i32 -24
  %10 = load volatile i8, ptr %9, align 4, !range !52
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.file_operations, ptr %15, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !9

19:                                               ; preds = %12
  %20 = call i32 %17(ptr noundef %13, ptr noundef nonnull %2) #13
  %21 = load i32, ptr %5, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi i32 [ %21, %19 ], [ %6, %12 ]
  %24 = phi i32 [ %20, %19 ], [ 325, %12 ]
  %25 = and i32 %23, %24
  br label %26

26:                                               ; preds = %22, %1
  %27 = phi i32 [ 0, %1 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.kioctx, ptr %8, i32 0, i32 16
  call void @_raw_spin_lock_irq(ptr noundef %28) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %29 = getelementptr i8, ptr %0, i32 -32
  %30 = load volatile ptr, ptr %29, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !53
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  call void @_raw_spin_lock(ptr noundef nonnull %30) #13
  %33 = getelementptr i8, ptr %0, i32 -8
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %37 = load i16, ptr %30, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %30, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %39

39:                                               ; preds = %36, %26
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %67

40:                                               ; preds = %32
  %41 = icmp eq i32 %27, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %40
  %43 = load volatile i8, ptr %9, align 4, !range !52
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = getelementptr i8, ptr %0, i32 -22
  %47 = load i8, ptr %46, align 2, !range !52
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr @system_wq, align 4
  %51 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %50, ptr noundef %0) #13
  store i8 0, ptr %46, align 2
  br label %54

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %0, i32 -23
  store i8 0, ptr %53, align 1
  br label %54

54:                                               ; preds = %52, %49
  %55 = load ptr, ptr %29, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %56 = load i16, ptr %55, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %55, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %58 = load i16, ptr %28, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %28, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !48
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !49
  br label %79

60:                                               ; preds = %42, %40
  %61 = getelementptr i8, ptr %0, i32 -4
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %62, ptr %63, align 4
  store volatile ptr %34, ptr %62, align 4
  store volatile ptr %33, ptr %33, align 4
  store ptr %33, ptr %61, align 4
  %64 = load ptr, ptr %29, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %65 = load i16, ptr %64, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %64, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %67

67:                                               ; preds = %60, %39
  %68 = getelementptr i8, ptr %0, i32 60
  %69 = getelementptr i8, ptr %0, i32 64
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %68, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %70, ptr %72, align 4
  store volatile ptr %71, ptr %70, align 4
  store volatile ptr %68, ptr %68, align 4
  store ptr %68, ptr %69, align 4
  %73 = trunc i32 %27 to i16
  %74 = and i16 %73, 10239
  %75 = zext i16 %74 to i64
  %76 = getelementptr i8, ptr %0, i32 44
  store i64 %75, ptr %76, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %77 = load i16, ptr %28, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %28, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !48
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !49
  call fastcc void @iocb_put(ptr noundef %3)
  br label %79

79:                                               ; preds = %67, %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aio_poll_queue_proc(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #1 {
  %4 = getelementptr inbounds %struct.aio_poll_table, ptr %2, i32 0, i32 2
  %5 = load i8, ptr %4, align 4, !range !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7, !prof !22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.aio_poll_table, ptr %2, i32 0, i32 3
  store i32 -22, ptr %8, align 4
  br label %16

9:                                                ; preds = %3
  store i8 1, ptr %4, align 4
  %10 = getelementptr inbounds %struct.aio_poll_table, ptr %2, i32 0, i32 3
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.aio_poll_table, ptr %2, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.poll_iocb, ptr %12, i32 0, i32 1
  store ptr %1, ptr %13, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.poll_iocb, ptr %14, i32 0, i32 6
  tail call void @add_wait_queue(ptr noundef %1, ptr noundef %15) #13
  br label %16

16:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aio_poll_wake(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = ptrtoint ptr %3 to i32
  %7 = icmp eq ptr %3, null
  br i1 %7, label %62, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, %6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %83, label %13

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %0, i32 -3
  %15 = load i8, ptr %14, align 1, !range !52
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %13
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %19 = getelementptr i8, ptr %0, i32 40
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.kioctx, ptr %20, i32 0, i32 16
  %22 = tail call i32 @_raw_spin_trylock(ptr noundef %21) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #13, !srcloc !35
  br label %62

25:                                               ; preds = %17
  %26 = load ptr, ptr %19, align 8
  %27 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3
  %28 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store volatile ptr %30, ptr %29, align 4
  store volatile ptr %27, ptr %27, align 4
  store ptr %27, ptr %28, align 4
  %32 = getelementptr i8, ptr %0, i32 80
  %33 = getelementptr i8, ptr %0, i32 84
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  %37 = trunc i32 %6 to i16
  %38 = and i16 %37, 10239
  %39 = zext i16 %38 to i64
  %40 = getelementptr i8, ptr %0, i32 64
  store i64 %39, ptr %40, align 8
  %41 = getelementptr i8, ptr %0, i32 92
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %25
  %45 = tail call ptr @llvm.thread.pointer() #13
  %46 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 49
  %47 = load i8, ptr %46, align 8
  %48 = and i8 %47, 64
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %44
  %51 = getelementptr i8, ptr %0, i32 20
  store i32 -32, ptr %51, align 4
  %52 = getelementptr i8, ptr %0, i32 24
  store volatile ptr %52, ptr %52, align 4
  %53 = getelementptr i8, ptr %0, i32 28
  store ptr %52, ptr %53, align 4
  %54 = getelementptr i8, ptr %0, i32 32
  store ptr @aio_poll_put_work, ptr %54, align 4
  %55 = load ptr, ptr @system_wq, align 4
  %56 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %55, ptr noundef %51) #13
  %57 = getelementptr inbounds %struct.kioctx, ptr %26, i32 0, i32 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %57, i32 noundef %18) #13
  br label %83

58:                                               ; preds = %44, %25
  %59 = getelementptr inbounds %struct.kioctx, ptr %26, i32 0, i32 16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %59, i32 noundef %18) #13
  %60 = icmp eq ptr %5, null
  br i1 %60, label %83, label %61

61:                                               ; preds = %58
  tail call fastcc void @iocb_put(ptr noundef nonnull %5)
  br label %83

62:                                               ; preds = %24, %13, %4
  %63 = getelementptr i8, ptr %0, i32 -3
  %64 = load i8, ptr %63, align 1, !range !52
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = getelementptr i8, ptr %0, i32 -2
  store i8 1, ptr %67, align 2
  br label %72

68:                                               ; preds = %62
  %69 = getelementptr i8, ptr %0, i32 20
  %70 = load ptr, ptr @system_wq, align 4
  %71 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %70, ptr noundef %69) #13
  store i8 1, ptr %63, align 1
  br label %72

72:                                               ; preds = %68, %66
  %73 = and i32 %6, 16384
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = getelementptr i8, ptr %0, i32 -4
  store volatile i8 1, ptr %76, align 4
  %77 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3
  %78 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %77, align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  store ptr %79, ptr %81, align 4
  store volatile ptr %80, ptr %79, align 4
  store volatile ptr %77, ptr %77, align 4
  store ptr %77, ptr %78, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !73
  %82 = getelementptr i8, ptr %0, i32 -12
  store volatile ptr null, ptr %82, align 4
  br label %83

83:                                               ; preds = %75, %72, %61, %58, %50, %8
  %84 = phi i32 [ 0, %8 ], [ 1, %58 ], [ 1, %61 ], [ 1, %72 ], [ 1, %75 ], [ 1, %50 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aio_poll_cancel(ptr noundef %0) #1 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %2 = getelementptr inbounds %struct.poll_iocb, ptr %0, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull %3) #13
  %6 = getelementptr inbounds %struct.poll_iocb, ptr %0, i32 0, i32 6, i32 3
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %10 = load i16, ptr %3, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %12

12:                                               ; preds = %9, %1
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %26

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.poll_iocb, ptr %0, i32 0, i32 3
  store volatile i8 1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.poll_iocb, ptr %0, i32 0, i32 4
  %16 = load i8, ptr %15, align 1, !range !52
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.poll_iocb, ptr %0, i32 0, i32 7
  %20 = load ptr, ptr @system_wq, align 4
  %21 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %20, ptr noundef %19) #13
  store i8 1, ptr %15, align 1
  br label %22

22:                                               ; preds = %18, %13
  %23 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %24 = load i16, ptr %23, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !20
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %26

26:                                               ; preds = %22, %12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aio_poll_put_work(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -36
  tail call fastcc void @iocb_put(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventfd_ctx_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_user_sigmask(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_io_getevents(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef readonly %4) unnamed_addr #1 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hrtimer_sleeper, align 8
  %8 = alloca %struct.wait_queue_entry, align 4
  %9 = icmp eq ptr %4, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = load i64, ptr %4, align 8
  %12 = icmp sgt i64 %11, 9223372035
  br i1 %12, label %19, label %13, !prof !9

13:                                               ; preds = %10
  %14 = getelementptr inbounds [2 x i64], ptr %4, i32 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = mul i64 %11, 1000000000
  %17 = and i64 %15, 4294967295
  %18 = add i64 %17, %16
  br label %19

19:                                               ; preds = %13, %10, %5
  %20 = phi i64 [ 9223372036854775807, %5 ], [ %18, %13 ], [ 9223372036854775807, %10 ]
  %21 = tail call fastcc ptr @lookup_ioctx(i32 noundef %0)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %82, label %23, !prof !9

23:                                               ; preds = %19
  %24 = icmp sle i32 %1, %2
  %25 = icmp sgt i32 %1, -1
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %57, !prof !22

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4
  %28 = icmp eq i64 %20, 0
  %29 = call fastcc zeroext i1 @aio_read_events(ptr noundef nonnull %21, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %6) #13
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %55, label %31

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i32 56, i1 false) #13, !annotation !10
  call void @hrtimer_init_sleeper(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 1) #13
  %32 = icmp eq i64 %20, 9223372036854775807
  br i1 %32, label %37, label %33

33:                                               ; preds = %31
  %34 = tail call ptr @llvm.thread.pointer() #13
  %35 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 143
  %36 = load i64, ptr %35, align 8
  call void @hrtimer_start_range_ns(ptr noundef nonnull %7, i64 noundef %20, i64 noundef %36, i32 noundef 1) #13
  br label %37

37:                                               ; preds = %33, %31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false) #13, !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %8, i32 noundef 0) #13
  %38 = getelementptr inbounds %struct.kioctx, ptr %21, i32 0, i32 17, i32 1
  %39 = call i32 @prepare_to_wait_event(ptr noundef %38, ptr noundef nonnull %8, i32 noundef 1) #13
  %40 = call fastcc zeroext i1 @aio_read_events(ptr noundef nonnull %21, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %6) #13
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %7, i32 0, i32 1
  br label %43

43:                                               ; preds = %49, %41
  %44 = phi i32 [ %39, %41 ], [ %50, %49 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load ptr, ptr %42, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  call void @schedule() #13
  %50 = call i32 @prepare_to_wait_event(ptr noundef %38, ptr noundef nonnull %8, i32 noundef 1) #13
  %51 = call fastcc zeroext i1 @aio_read_events(ptr noundef nonnull %21, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %6) #13
  br i1 %51, label %52, label %43

52:                                               ; preds = %49, %46, %37
  call void @finish_wait(ptr noundef %38, ptr noundef nonnull %8) #13
  br label %53

53:                                               ; preds = %52, %43
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #13
  %54 = call i32 @hrtimer_cancel(ptr noundef nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #13
  br label %55

55:                                               ; preds = %53, %27
  %56 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  br label %57

57:                                               ; preds = %55, %23
  %58 = phi i32 [ %56, %55 ], [ -22, %23 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %59 = load volatile i32, ptr %21, align 4
  %60 = and i32 %59, 3
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %71, !prof !22

62:                                               ; preds = %57
  %63 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !33
  %64 = call i32 @llvm.read_register.i32(metadata !0) #13
  %65 = inttoptr i32 %64 to ptr
  %66 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %65) #10, !srcloc !34
  %67 = add i32 %66, %59
  %68 = inttoptr i32 %67 to ptr
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, -1
  store i32 %70, ptr %68, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %63) #13, !srcloc !35
  br label %81

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.percpu_ref, ptr %21, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #13, !srcloc !12
  %74 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %73, ptr %73, i32 1, ptr elementtype(i32) %73) #13, !srcloc !13
  %75 = extractvalue { i32, i32 } %74, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81, !prof !9

77:                                               ; preds = %71
  %78 = load ptr, ptr %72, align 4
  %79 = getelementptr inbounds %struct.percpu_ref_data, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  call void %80(ptr noundef nonnull %21) #13
  br label %81

81:                                               ; preds = %77, %71, %62
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  br label %82

82:                                               ; preds = %81, %19
  %83 = phi i32 [ %58, %81 ], [ -22, %19 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @aio_read_events(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #1 {
  %6 = load i32, ptr %4, align 4
  %7 = getelementptr %struct.io_event, ptr %3, i32 %6
  %8 = sub i32 %2, %6
  %9 = getelementptr inbounds %struct.kioctx, ptr %0, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.kioctx, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 16
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr @pgprot_kernel, align 4
  %14 = or i32 %13, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  %15 = tail call ptr @llvm.thread.pointer() #13
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 149
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %19 = tail call ptr @__kmap_local_page_prot(ptr noundef %12, i32 noundef %14) #13
  %20 = getelementptr inbounds %struct.aio_ring, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.aio_ring, ptr %19, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  tail call void @kunmap_local_indexed(ptr noundef %19) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %24 = load i32, ptr %16, align 8
  %25 = add i32 %24, -1
  store i32 %25, ptr %16, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !74
  %26 = icmp eq i32 %21, %23
  br i1 %26, label %105, label %27

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.kioctx, ptr %0, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = urem i32 %21, %29
  %31 = urem i32 %23, %29
  %32 = icmp sgt i32 %8, 0
  br i1 %32, label %33, label %107

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  br label %35

35:                                               ; preds = %99, %33
  %36 = phi i32 [ %29, %33 ], [ %102, %99 ]
  %37 = phi i32 [ %30, %33 ], [ %103, %99 ]
  %38 = phi i32 [ 0, %33 ], [ %100, %99 ]
  %39 = icmp eq i32 %37, %31
  br i1 %39, label %107, label %40

40:                                               ; preds = %35
  %41 = icmp ugt i32 %37, %31
  %42 = select i1 %41, i32 %36, i32 %31
  %43 = sub i32 %42, %37
  %44 = add nuw i32 %37, 1
  %45 = load ptr, ptr %10, align 16
  %46 = lshr i32 %44, 7
  %47 = getelementptr ptr, ptr %45, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = and i32 %44, 127
  %50 = sub i32 %8, %38
  %51 = tail call i32 @llvm.smin.i32(i32 %43, i32 %50) #13
  %52 = sub nuw nsw i32 128, %49
  %53 = tail call i32 @llvm.smin.i32(i32 %51, i32 %52) #13
  %54 = load i32, ptr %48, align 4
  %55 = lshr i32 %54, 30
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %64, label %57

57:                                               ; preds = %40
  %58 = icmp ne i32 %55, 3
  %59 = load i32, ptr @movable_zone, align 4
  %60 = icmp ne i32 %59, 2
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = tail call ptr @page_address(ptr noundef %48) #13
  br label %66

64:                                               ; preds = %57, %40
  %65 = tail call ptr @kmap_high(ptr noundef %48) #13
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi ptr [ %65, %64 ], [ %63, %62 ]
  %68 = getelementptr %struct.io_event, ptr %7, i32 %38
  %69 = getelementptr %struct.io_event, ptr %67, i32 %49
  %70 = shl i32 %53, 5
  %71 = icmp slt i32 %70, 0
  %72 = load i1, ptr @check_copy_size.__already_done, align 1
  %73 = xor i1 %72, true
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %75, label %76, !prof !9

75:                                               ; preds = %66
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %76

76:                                               ; preds = %75, %66
  br i1 %71, label %86, label %77, !prof !9

77:                                               ; preds = %76
  %78 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %68, i32 %70, i32 -1090519040) #16, !srcloc !75
  %79 = extractvalue { i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %34) #10, !srcloc !23
  %83 = and i32 %82, -13
  %84 = or i32 %83, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #13, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  %85 = tail call i32 @arm_copy_to_user(ptr noundef %68, ptr noundef %69, i32 noundef %70) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #13, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !25
  br label %86

86:                                               ; preds = %81, %77, %76
  %87 = phi i32 [ %70, %76 ], [ %85, %81 ], [ %70, %77 ]
  %88 = load i32, ptr %48, align 4
  %89 = lshr i32 %88, 30
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = icmp ne i32 %89, 3
  %93 = load i32, ptr @movable_zone, align 4
  %94 = icmp ne i32 %93, 2
  %95 = select i1 %92, i1 true, i1 %94
  br i1 %95, label %97, label %96

96:                                               ; preds = %91, %86
  tail call void @kunmap_high(ptr noundef %48) #13
  br label %97

97:                                               ; preds = %96, %91
  %98 = icmp eq i32 %87, 0
  br i1 %98, label %99, label %105, !prof !22

99:                                               ; preds = %97
  %100 = add i32 %53, %38
  %101 = add i32 %53, %37
  %102 = load i32, ptr %28, align 4
  %103 = urem i32 %101, %102
  %104 = icmp slt i32 %100, %8
  br i1 %104, label %35, label %107

105:                                              ; preds = %97, %5
  %106 = phi i32 [ 0, %5 ], [ -14, %97 ]
  tail call void @mutex_unlock(ptr noundef %9) #13
  br label %126

107:                                              ; preds = %99, %35, %27
  %108 = phi i32 [ 0, %27 ], [ %100, %99 ], [ %38, %35 ]
  %109 = phi i32 [ %30, %27 ], [ %103, %99 ], [ %31, %35 ]
  %110 = load ptr, ptr %10, align 16
  %111 = load ptr, ptr %110, align 4
  %112 = load i32, ptr @pgprot_kernel, align 4
  %113 = or i32 %112, 512
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  %114 = load i32, ptr %16, align 8
  %115 = add i32 %114, 1
  store i32 %115, ptr %16, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  %116 = tail call ptr @__kmap_local_page_prot(ptr noundef %111, i32 noundef %113) #13
  %117 = getelementptr inbounds %struct.aio_ring, ptr %116, i32 0, i32 2
  store i32 %109, ptr %117, align 8
  tail call void @kunmap_local_indexed(ptr noundef %116) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %118 = load i32, ptr %16, align 8
  %119 = add i32 %118, -1
  store i32 %119, ptr %16, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %120 = load ptr, ptr %10, align 16
  %121 = load ptr, ptr %120, align 4
  tail call void @flush_dcache_page(ptr noundef %121) #13
  tail call void @mutex_unlock(ptr noundef %9) #13
  %122 = icmp sgt i32 %108, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %107
  %124 = load i32, ptr %4, align 4
  %125 = add i32 %124, %108
  store i32 %125, ptr %4, align 4
  br label %126

126:                                              ; preds = %123, %107, %105
  %127 = phi i32 [ %106, %105 ], [ %108, %123 ], [ %108, %107 ]
  %128 = getelementptr inbounds %struct.kioctx, ptr %0, i32 0, i32 1
  %129 = load volatile i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %131, !prof !22

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131, %126
  %133 = phi i32 [ -22, %131 ], [ %127, %126 ]
  %134 = load i32, ptr %4, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 %133, ptr %4, align 4
  br label %137

137:                                              ; preds = %136, %132
  %138 = phi i32 [ %133, %136 ], [ %134, %132 ]
  %139 = icmp slt i32 %133, 0
  %140 = icmp sge i32 %138, %1
  %141 = select i1 %139, i1 true, i1 %140
  ret i1 %141
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init_sleeper(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_current_blocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

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
!10 = !{!"auto-init"}
!11 = !{i64 2148073749}
!12 = !{i64 470911, i64 2147960882, i64 2147960908, i64 2147960955, i64 2147960977, i64 2147961005, i64 2147961025}
!13 = !{i64 2147976135, i64 2147976167, i64 2147976196, i64 2147976230, i64 2147976261, i64 2147976284}
!14 = !{i64 2148073952}
!15 = !{i64 2148257108}
!16 = !{i64 480358, i64 480375, i64 480399, i64 480425, i64 480443}
!17 = !{i64 2148257452}
!18 = !{i64 2149083655}
!19 = !{i64 2149079479}
!20 = !{i64 2149079554, i64 2149079581, i64 2149079628, i64 2149079650, i64 2149079678, i64 2149079698}
!21 = !{i64 2149106658}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 3521171}
!24 = !{i64 3521368}
!25 = !{i64 2151006647}
!26 = !{i64 2154459903, i64 2154460183, i64 2154460517, i64 2154460851}
!27 = !{i64 2150227832}
!28 = !{i64 2153755821}
!29 = !{i64 2151027565}
!30 = !{i64 2151027772}
!31 = !{i64 2153758446}
!32 = !{i64 2149236359}
!33 = !{i64 366150, i64 366211}
!34 = !{i64 384850}
!35 = !{i64 369167}
!36 = !{i64 2147973094, i64 2147973120, i64 2147973149, i64 2147973183, i64 2147973214, i64 2147973237}
!37 = !{i64 2149236576}
!38 = !{i64 2154357436}
!39 = !{i64 2154365153}
!40 = !{i64 2154343987}
!41 = !{i64 2154469599, i64 2154469879, i64 2154470213, i64 2154470547}
!42 = !{i64 2154562786, i64 2154563096, i64 2154563410, i64 2154563724}
!43 = !{i64 2151025059, i64 2151025084}
!44 = !{!"branch_weights", i32 -388717296, i32 7818361}
!45 = !{i64 2148086496}
!46 = !{i64 456974, i64 456998, i64 457019, i64 457036, i64 457053}
!47 = !{i64 2148086696}
!48 = !{i64 366395}
!49 = !{i64 2149107799}
!50 = !{i64 2154527848, i64 2154528158, i64 2154528472, i64 2154528786}
!51 = !{!"branch_weights", i32 -294967296, i32 6003000}
!52 = !{i8 0, i8 2}
!53 = !{i64 2154490497}
!54 = !{i64 2154595759, i64 2154596069, i64 2154596383, i64 2154596697}
!55 = !{i64 2154314387, i64 2154314860, i64 2154314424, i64 2154314480, i64 2154314514, i64 2154314538, i64 2154314579, i64 2154314600, i64 2154314628, i64 2154314662}
!56 = !{i64 2154315776, i64 2154316249, i64 2154315813, i64 2154315869, i64 2154315903, i64 2154315927, i64 2154315968, i64 2154315989, i64 2154316017, i64 2154316051}
!57 = !{i64 2154407920, i64 2154408200, i64 2154408534, i64 2154408868}
!58 = !{i64 422000, i64 422017, i64 2147906087}
!59 = !{i64 2147972601}
!60 = !{i64 457480, i64 457505, i64 457527, i64 457543, i64 457555, i64 457575, i64 457599, i64 457615, i64 457627}
!61 = !{i64 2147972727}
!62 = !{i64 2148074750}
!63 = !{i64 2147976909, i64 2147976941, i64 2147976970, i64 2147977004, i64 2147977035, i64 2147977058}
!64 = !{i64 2149819980}
!65 = !{i64 2154426086}
!66 = !{i64 2154428571}
!67 = !{i64 2151189695}
!68 = !{i64 2151197312}
!69 = !{i64 2148761548}
!70 = !{i64 2151205777}
!71 = !{i64 2151214088}
!72 = !{i64 2151222306}
!73 = !{i64 2154509918}
!74 = !{i64 2154430712}
!75 = !{i64 2151025637, i64 2151025662}
