; ModuleID = '/llk/IR/mm/swapfile.c_pt.bc'
source_filename = "../mm/swapfile.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nr_swap_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22nr_swap_pages\22\09\09\09\09\09"
module asm "__kstrtabns_nr_swap_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_swap_extent:\09\09\09\09\09"
module asm "\09.asciz \09\22add_swap_extent\22\09\09\09\09\09"
module asm "__kstrtabns_add_swap_extent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_swapcache_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22swapcache_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_swapcache_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___page_file_index:\09\09\09\09\09"
module asm "\09.asciz \09\22__page_file_index\22\09\09\09\09\09"
module asm "__kstrtabns___page_file_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.plist_head = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_struct = type { %struct.anon.21, [0 x i32] }
%struct.anon.21 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type {}
%struct.page = type { i32, %union.anon, %union.anon.94, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.94 = type { %struct.atomic_t }
%struct.swap_info_struct = type { %struct.percpu_ref, i32, i16, %struct.plist_node, i8, i32, ptr, ptr, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.rb_root, ptr, ptr, i32, %struct.completion, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.percpu_ref = type { i32, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.swap_extent = type { %struct.rb_node, i32, i32, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.swp_entry_t = type { i32 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.lockdep_map = type {}
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.vm_fault = type { %struct.anon.24, i32, ptr, ptr, %union.anon.25, ptr, ptr, ptr, ptr, ptr }
%struct.anon.24 = type { ptr, i32, i32, i32 }
%union.anon.25 = type { i32 }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.22, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.95, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.96, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.97, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.95 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.96 = type { %struct.callback_head }
%union.anon.97 = type { ptr }
%union.anon.98 = type { ptr }
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
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { i64 }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
%struct.anon.101 = type { [4086 x i8], [10 x i8] }
%struct.anon.102 = type { [1024 x i8], i32, i32, i32, [16 x i8], [16 x i8], [117 x i32], [1 x i32] }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@nr_swap_pages = dso_local global %struct.atomic_t zeroinitializer, align 4
@__kstrtab_nr_swap_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_nr_swap_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_nr_swap_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nr_swap_pages to i32), ptr @__kstrtab_nr_swap_pages, ptr @__kstrtabns_nr_swap_pages }, section "___ksymtab_gpl+nr_swap_pages", align 4
@nr_rotate_swap = dso_local global %struct.atomic_t zeroinitializer, align 4
@.str = private unnamed_addr constant [14 x i8] c"mm/swapfile.c\00", align 1
@swap_avail_lock = internal global %struct.spinlock zeroinitializer, align 4
@swap_avail_heads = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"swap_info %d in list but !highest_bit\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"swap_info %d in list but !SWP_WRITEOK\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\013%s: %s%08lx\0A\00", align 1
@__func__.get_swap_device = private unnamed_addr constant [16 x i8] c"get_swap_device\00", align 1
@Bad_file = internal constant [21 x i8] c"Bad swap file entry \00", align 1
@nr_swapfiles = internal unnamed_addr global i32 0, align 4
@__kstrtab_add_swap_extent = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_swap_extent = external dso_local constant [0 x i8], align 1
@__ksymtab_add_swap_extent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_swap_extent to i32), ptr @__kstrtab_add_swap_extent, ptr @__kstrtabns_add_swap_extent }, section "___ksymtab_gpl+add_swap_extent", align 4
@swap_lock = internal global %struct.spinlock zeroinitializer, align 4
@swap_active_head = internal global %struct.plist_head { %struct.list_head { ptr @swap_active_head, ptr @swap_active_head } }, align 4
@__initcall__kmod_swapfile__334_2773_procswaps_init6 = internal global ptr @procswaps_init, section ".initcall6.init", align 4
@__initcall__kmod_swapfile__336_2782_max_swapfiles_check7 = internal global ptr @max_swapfiles_check, section ".initcall7.init", align 4
@swap_info = dso_local global [30 x ptr] zeroinitializer, align 4
@total_swap_pages = dso_local local_unnamed_addr global i32 0, align 4
@__kstrtab_swapcache_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_swapcache_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_swapcache_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @swapcache_mapping to i32), ptr @__kstrtab_swapcache_mapping, ptr @__kstrtabns_swapcache_mapping }, section "___ksymtab_gpl+swapcache_mapping", align 4
@__kstrtab___page_file_index = external dso_local constant [0 x i8], align 1
@__kstrtabns___page_file_index = external dso_local constant [0 x i8], align 1
@__ksymtab___page_file_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__page_file_index to i32), ptr @__kstrtab___page_file_index, ptr @__kstrtabns___page_file_index }, section "___ksymtab_gpl+__page_file_index", align 4
@__initcall__kmod_swapfile__358_3778_swapfile_init4 = internal global ptr @swapfile_init, section ".initcall4.init", align 4
@__func__._swap_info_get = private unnamed_addr constant [15 x i8] c"_swap_info_get\00", align 1
@Unused_offset = internal constant [26 x i8] c"Unused swap offset entry \00", align 1
@__func__.__swap_info_get = private unnamed_addr constant [16 x i8] c"__swap_info_get\00", align 1
@Bad_offset = internal constant [23 x i8] c"Bad swap offset entry \00", align 1
@Unused_file = internal constant [24 x i8] c"Unused swap file entry \00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@swapper_spaces = external dso_local local_unnamed_addr global [0 x ptr], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@least_priority = internal unnamed_addr global i32 -1, align 4
@swapon_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @swapon_mutex, i64 12), ptr getelementptr (i8, ptr @swapon_mutex, i64 12) } }, align 4
@proc_poll_event = internal global %struct.atomic_t zeroinitializer, align 4
@proc_poll_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @proc_poll_wait, i64 4), ptr getelementptr (i8, ptr @proc_poll_wait, i64 4) } }, align 4
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@mmlist_lock = external dso_local global %struct.spinlock, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"swaps\00", align 1
@swaps_proc_ops = internal constant %struct.proc_ops { i32 1, ptr @swaps_open, ptr @seq_read, ptr null, ptr null, ptr @seq_lseek, ptr @seq_release, ptr @swaps_poll, ptr null, ptr null, ptr null }, align 4
@swaps_op = internal constant %struct.seq_operations { ptr @swap_start, ptr @swap_stop, ptr @swap_next, ptr @swap_show }, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Filename\09\09\09\09Type\09\09Size\09\09Used\09\09Priority\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" \09\0A\\\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"%*s%s\09%lu\09%s%lu\09%s%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"partition\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"file\09\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"\013swapon: discard_swap(%p): %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"\016Adding %uk swap on %s.  Priority:%d extents:%d across:%lluk %s%s%s%s%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"SS\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"SWAPSPACE2\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"\013Unable to find swap-space signature\0A\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"\014Unable to handle swap header version %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"\014Empty swap-file\0A\00", align 1
@.str.26 = private unnamed_addr constant [63 x i8] c"\014Truncating oversized swap area, only using %luk out of %luk\0A\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"\014Swap area shorter than signature indicates\0A\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"\010Not enough memory for swap heads, swap is disabled\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__initcall__kmod_swapfile__334_2773_procswaps_init6, ptr @__initcall__kmod_swapfile__336_2782_max_swapfiles_check7, ptr @__initcall__kmod_swapfile__358_3778_swapfile_init4, ptr @__ksymtab___page_file_index, ptr @__ksymtab_add_swap_extent, ptr @__ksymtab_nr_swap_pages, ptr @__ksymtab_swapcache_mapping], section "llvm.metadata"

@sys_swapoff = dso_local alias i32 (ptr), ptr @__se_sys_swapoff
@sys_swapon = dso_local alias i32 (ptr, i32), ptr @__se_sys_swapon

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @swap_page_sector(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 2013265919
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = lshr i32 %3, 26
  %7 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %6
  %8 = load volatile ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %8, %5 ], [ null, %1 ]
  %11 = and i32 %3, 67108863
  %12 = getelementptr inbounds %struct.swap_info_struct, ptr %10, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %29, %9
  %16 = phi ptr [ %31, %29 ], [ %13, %9 ]
  %17 = getelementptr inbounds %struct.swap_extent, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %11, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 2
  br label %29

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.swap_extent, ptr %16, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, %18
  %26 = icmp ugt i32 %25, %11
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 1
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi ptr [ %21, %20 ], [ %28, %27 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %15

33:                                               ; preds = %29, %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #18, !srcloc !9
  unreachable

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.swap_extent, ptr %16, i32 0, i32 3
  %36 = load i64, ptr %35, align 8
  %37 = sub i32 %11, %18
  %38 = zext i32 %37 to i64
  %39 = add i64 %36, %38
  %40 = shl i64 %39, 3
  ret i64 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @page_swap_info(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 2013265919
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = lshr i32 %3, 26
  %7 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %6
  %8 = load volatile ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %8, %5 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @__page_file_index(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 67108863
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_swap_pages(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #18
  %6 = load volatile i32, ptr @nr_swap_pages, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %9 = load i16, ptr @swap_avail_lock, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr @swap_avail_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %513

11:                                               ; preds = %3
  %12 = tail call i32 @llvm.smin.i32(i32 %0, i32 %6)
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 64)
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nr_swap_pages) #18, !srcloc !14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_swap_pages, ptr nonnull @nr_swap_pages, i32 %13, ptr nonnull elementtype(i32) @nr_swap_pages) #18, !srcloc !15
  %15 = load ptr, ptr @swap_avail_heads, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %504, label %21

18:                                               ; preds = %498
  %19 = load ptr, ptr %501, align 4
  %20 = icmp eq ptr %19, %501
  br i1 %20, label %504, label %21

21:                                               ; preds = %18, %11
  %22 = phi ptr [ %19, %18 ], [ %16, %11 ]
  %23 = phi ptr [ %501, %18 ], [ %15, %11 ]
  %24 = load ptr, ptr %22, align 4
  br label %25

25:                                               ; preds = %502, %21
  %26 = phi ptr [ %22, %21 ], [ %27, %502 ]
  %27 = phi ptr [ %24, %21 ], [ %499, %502 ]
  %28 = phi ptr [ %23, %21 ], [ %501, %502 ]
  %29 = getelementptr i8, ptr %26, i32 -184
  %30 = getelementptr i8, ptr %26, i32 -12
  tail call void @plist_requeue(ptr noundef %30, ptr noundef %28) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %31 = load i16, ptr @swap_avail_lock, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr @swap_avail_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %33 = getelementptr i8, ptr %26, i32 -52
  tail call void @_raw_spin_lock(ptr noundef %33) #18
  %34 = getelementptr i8, ptr %26, i32 -112
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %25
  %38 = getelementptr i8, ptr %26, i32 -176
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %37, %25
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #18
  %43 = load volatile ptr, ptr %26, align 4
  %44 = icmp eq ptr %43, %26
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %46 = load i16, ptr %33, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %498

48:                                               ; preds = %42
  %49 = load i32, ptr %34, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55, !prof !16

51:                                               ; preds = %48
  %52 = getelementptr i8, ptr %26, i32 -148
  %53 = load i8, ptr %52, align 4
  %54 = sext i8 %53 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1077, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %54) #18
  br label %55

55:                                               ; preds = %51, %48
  %56 = getelementptr i8, ptr %26, i32 -176
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64, !prof !16

60:                                               ; preds = %55
  %61 = getelementptr i8, ptr %26, i32 -148
  %62 = load i8, ptr %61, align 4
  %63 = sext i8 %62 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1080, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %63) #18
  br label %64

64:                                               ; preds = %60, %55
  %65 = load ptr, ptr @swap_avail_heads, align 4
  tail call void @plist_del(ptr noundef %30, ptr noundef %65) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %66 = load i16, ptr %33, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %498

68:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 0, ptr %4, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %69 = load i32, ptr %38, align 4
  %70 = add i32 %69, 16384
  store i32 %70, ptr %38, align 4
  %71 = and i32 %69, 16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !18
  %74 = getelementptr i8, ptr %26, i32 -92
  %75 = load ptr, ptr %74, align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %78 = inttoptr i32 %77 to ptr
  %79 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %78) #11, !srcloc !19
  %80 = add i32 %79, %76
  %81 = inttoptr i32 %80 to ptr
  %82 = load volatile i32, ptr %81, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !20
  br label %86

83:                                               ; preds = %68
  %84 = getelementptr i8, ptr %26, i32 -100
  %85 = load i32, ptr %84, align 4
  br label %86

86:                                               ; preds = %83, %73
  %87 = phi i32 [ %85, %83 ], [ %82, %73 ]
  store i32 %87, ptr %5, align 4
  store i32 %87, ptr %4, align 4
  %88 = getelementptr i8, ptr %26, i32 -136
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = call fastcc zeroext i1 @scan_swap_map_try_ssd_cluster(ptr noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  br i1 %92, label %146, label %410

93:                                               ; preds = %86
  %94 = getelementptr i8, ptr %26, i32 -96
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, -1
  store i32 %96, ptr %94, align 4
  %97 = icmp eq i32 %95, 0
  br i1 %97, label %98, label %146, !prof !16

98:                                               ; preds = %93
  %99 = getelementptr i8, ptr %26, i32 -108
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr i8, ptr %26, i32 -104
  %102 = load i32, ptr %101, align 4
  %103 = sub i32 %100, %102
  %104 = icmp ult i32 %103, 256
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store i32 255, ptr %94, align 4
  br label %146

106:                                              ; preds = %98
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %107 = load i16, ptr %33, align 4
  %108 = add i16 %107, 1
  store i16 %108, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %109 = getelementptr i8, ptr %26, i32 -116
  %110 = load i32, ptr %109, align 4
  store i32 %110, ptr %4, align 4
  store i32 %110, ptr %5, align 4
  %111 = add i32 %110, 255
  %112 = load i32, ptr %34, align 4
  %113 = icmp ugt i32 %111, %112
  br i1 %113, label %144, label %114

114:                                              ; preds = %106
  %115 = getelementptr i8, ptr %26, i32 -140
  br label %116

116:                                              ; preds = %139, %114
  %117 = phi i32 [ %112, %114 ], [ %140, %139 ]
  %118 = phi i32 [ %110, %114 ], [ %142, %139 ]
  %119 = phi i32 [ %111, %114 ], [ %133, %139 ]
  %120 = phi i32 [ 256, %114 ], [ %141, %139 ]
  %121 = load ptr, ptr %115, align 4
  %122 = getelementptr i8, ptr %121, i32 %118
  %123 = load i8, ptr %122, align 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %116
  %126 = add i32 %118, 256
  br label %132

127:                                              ; preds = %116
  %128 = icmp eq i32 %118, %119
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  tail call void @_raw_spin_lock(ptr noundef %33) #18
  %130 = add i32 %118, -255
  store i32 %130, ptr %4, align 4
  %131 = getelementptr i8, ptr %26, i32 -100
  store i32 %130, ptr %131, align 4
  store i32 255, ptr %94, align 4
  br label %146

132:                                              ; preds = %127, %125
  %133 = phi i32 [ %126, %125 ], [ %119, %127 ]
  %134 = add i32 %120, -1
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %139, !prof !16

136:                                              ; preds = %132
  %137 = tail call i32 @__cond_resched() #18
  %138 = load i32, ptr %34, align 4
  br label %139

139:                                              ; preds = %136, %132
  %140 = phi i32 [ %138, %136 ], [ %117, %132 ]
  %141 = phi i32 [ 256, %136 ], [ %134, %132 ]
  %142 = add i32 %118, 1
  store i32 %142, ptr %4, align 4
  %143 = icmp ugt i32 %133, %140
  br i1 %143, label %144, label %116

144:                                              ; preds = %139, %106
  %145 = phi i32 [ 256, %106 ], [ %141, %139 ]
  store i32 %110, ptr %4, align 4
  tail call void @_raw_spin_lock(ptr noundef %33) #18
  store i32 255, ptr %94, align 4
  br label %146

146:                                              ; preds = %478, %469, %440, %431, %144, %129, %105, %93, %91
  %147 = phi ptr [ %26, %129 ], [ %26, %105 ], [ %411, %478 ], [ %411, %469 ], [ %411, %440 ], [ %411, %431 ], [ %26, %144 ], [ %26, %93 ], [ %26, %91 ]
  %148 = phi i1 [ false, %129 ], [ false, %105 ], [ %463, %478 ], [ %463, %469 ], [ %426, %440 ], [ %426, %431 ], [ false, %144 ], [ false, %93 ], [ false, %91 ]
  %149 = phi i32 [ 0, %129 ], [ 0, %105 ], [ %413, %478 ], [ %413, %469 ], [ %413, %440 ], [ %413, %431 ], [ 0, %144 ], [ 0, %93 ], [ 0, %91 ]
  %150 = phi i32 [ %120, %129 ], [ 256, %105 ], [ %462, %478 ], [ %462, %469 ], [ %425, %440 ], [ %425, %431 ], [ %145, %144 ], [ 256, %93 ], [ 256, %91 ]
  %151 = getelementptr i8, ptr %147, i32 -128
  %152 = getelementptr i8, ptr %147, i32 -88
  %153 = getelementptr i8, ptr %147, i32 -116
  %154 = getelementptr i8, ptr %147, i32 -140
  %155 = getelementptr i8, ptr %147, i32 -120
  %156 = getelementptr i8, ptr %147, i32 -104
  %157 = getelementptr i8, ptr %147, i32 -108
  %158 = getelementptr i8, ptr %147, i32 -144
  %159 = getelementptr i8, ptr %147, i32 -148
  %160 = getelementptr i8, ptr %147, i32 -96
  br label %161

161:                                              ; preds = %337, %146
  %162 = phi i32 [ %149, %146 ], [ %300, %337 ]
  %163 = phi i32 [ %150, %146 ], [ %338, %337 ]
  %164 = icmp eq i32 %162, 0
  br label %165

165:                                              ; preds = %230, %161
  %166 = load ptr, ptr %88, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %194, label %168

168:                                              ; preds = %192, %165
  %169 = load i32, ptr %4, align 4
  %170 = lshr i32 %169, 8
  %171 = load i32, ptr %151, align 4
  %172 = and i32 %171, 33554432
  %173 = icmp ne i32 %172, 0
  %174 = and i32 %171, 16777215
  %175 = icmp eq i32 %170, %174
  %176 = or i1 %173, %175
  br i1 %176, label %194, label %177

177:                                              ; preds = %168
  %178 = load ptr, ptr %88, align 4
  %179 = getelementptr %struct.swap_cluster_info, ptr %178, i32 %170, i32 1
  %180 = load i32, ptr %179, align 4
  %181 = and i32 %180, 16777216
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %194, label %183

183:                                              ; preds = %177
  %184 = load ptr, ptr %152, align 4
  %185 = ptrtoint ptr %184 to i32
  %186 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %187 = inttoptr i32 %186 to ptr
  %188 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %187) #11, !srcloc !19
  %189 = add i32 %188, %185
  %190 = inttoptr i32 %189 to ptr
  %191 = getelementptr inbounds %struct.swap_cluster_info, ptr %190, i32 0, i32 1
  store i32 33554432, ptr %191, align 4
  br i1 %164, label %192, label %362

192:                                              ; preds = %183
  %193 = call fastcc zeroext i1 @scan_swap_map_try_ssd_cluster(ptr noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  br i1 %193, label %168, label %410

194:                                              ; preds = %177, %168, %165
  %195 = load i32, ptr %38, align 4
  %196 = and i32 %195, 2
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %490, label %198

198:                                              ; preds = %194
  %199 = load i32, ptr %34, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %490, label %201

201:                                              ; preds = %198
  %202 = load i32, ptr %4, align 4
  %203 = icmp ugt i32 %202, %199
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i32, ptr %153, align 4
  store i32 %205, ptr %4, align 4
  store i32 %205, ptr %5, align 4
  br label %206

206:                                              ; preds = %204, %201
  %207 = phi i32 [ %205, %204 ], [ %202, %201 ]
  %208 = load ptr, ptr %88, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %206
  %211 = lshr i32 %207, 8
  %212 = getelementptr %struct.swap_cluster_info, ptr %208, i32 %211
  tail call void @_raw_spin_lock(ptr noundef %212) #18
  br label %213

213:                                              ; preds = %210, %206
  %214 = phi ptr [ %212, %210 ], [ null, %206 ]
  %215 = load volatile i32, ptr @nr_swap_pages, align 4
  %216 = shl i32 %215, 1
  %217 = load i32, ptr @total_swap_pages, align 4
  %218 = icmp slt i32 %216, %217
  %219 = load ptr, ptr %154, align 4
  %220 = getelementptr i8, ptr %219, i32 %207
  %221 = load i8, ptr %220, align 1
  %222 = icmp eq i8 %221, 64
  %223 = select i1 %218, i1 %222, i1 false
  br i1 %223, label %224, label %236

224:                                              ; preds = %213
  %225 = icmp eq ptr %214, null
  br i1 %225, label %230, label %226

226:                                              ; preds = %224
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %227 = load i16, ptr %214, align 4
  %228 = add i16 %227, 1
  store i16 %228, ptr %214, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %229 = load i32, ptr %4, align 4
  br label %230

230:                                              ; preds = %226, %224
  %231 = phi i32 [ %207, %224 ], [ %229, %226 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %232 = load i16, ptr %33, align 4
  %233 = add i16 %232, 1
  store i16 %233, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %234 = tail call fastcc i32 @__try_to_reclaim_swap(ptr noundef %29, i32 noundef %231, i32 noundef 1) #18
  tail call void @_raw_spin_lock(ptr noundef %33) #18
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %410, label %165

236:                                              ; preds = %213
  %237 = icmp eq i8 %221, 0
  br i1 %237, label %244, label %238

238:                                              ; preds = %236
  %239 = icmp eq ptr %214, null
  br i1 %239, label %243, label %240

240:                                              ; preds = %238
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %241 = load i16, ptr %214, align 4
  %242 = add i16 %241, 1
  store i16 %242, ptr %214, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %243

243:                                              ; preds = %240, %238
  br i1 %164, label %410, label %362

244:                                              ; preds = %236
  %245 = getelementptr i8, ptr %219, i32 %207
  store volatile i8 64, ptr %245, align 1
  %246 = load ptr, ptr %88, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %273, label %248

248:                                              ; preds = %244
  %249 = load i32, ptr %4, align 4
  %250 = lshr i32 %249, 8
  %251 = getelementptr %struct.swap_cluster_info, ptr %246, i32 %250, i32 1
  %252 = load i32, ptr %251, align 4
  %253 = and i32 %252, 16777216
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %267, label %255

255:                                              ; preds = %248
  %256 = load i32, ptr %151, align 4
  %257 = and i32 %256, 16777215
  %258 = load i32, ptr %155, align 4
  %259 = and i32 %258, 16777215
  %260 = icmp eq i32 %259, %257
  br i1 %260, label %261, label %262

261:                                              ; preds = %255
  store i32 33554432, ptr %151, align 4
  store i32 33554432, ptr %155, align 4
  br label %266

262:                                              ; preds = %255
  %263 = getelementptr %struct.swap_cluster_info, ptr %246, i32 %257, i32 1
  %264 = load i32, ptr %263, align 4
  %265 = and i32 %264, 16777215
  store i32 %265, ptr %151, align 4
  br label %266

266:                                              ; preds = %262, %261
  store i32 0, ptr %251, align 4
  br label %267

267:                                              ; preds = %266, %248
  %268 = phi i32 [ 0, %266 ], [ %252, %248 ]
  %269 = add nuw i32 %268, 1
  %270 = and i32 %269, 16777215
  %271 = and i32 %268, -16777216
  %272 = or i32 %270, %271
  store i32 %272, ptr %251, align 4
  br label %273

273:                                              ; preds = %267, %244
  %274 = icmp eq ptr %214, null
  br i1 %274, label %278, label %275

275:                                              ; preds = %273
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %276 = load i16, ptr %214, align 4
  %277 = add i16 %276, 1
  store i16 %277, ptr %214, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %278

278:                                              ; preds = %275, %273
  %279 = load i32, ptr %4, align 4
  %280 = load i32, ptr %153, align 4
  %281 = icmp eq i32 %280, %279
  br i1 %281, label %282, label %284

282:                                              ; preds = %278
  %283 = add i32 %279, 1
  store i32 %283, ptr %153, align 4
  br label %284

284:                                              ; preds = %282, %278
  %285 = load i32, ptr %34, align 4
  %286 = icmp eq i32 %285, %279
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  %288 = add i32 %279, -1
  store volatile i32 %288, ptr %34, align 4
  br label %289

289:                                              ; preds = %287, %284
  %290 = load i32, ptr %156, align 4
  %291 = add i32 %290, 1
  store i32 %291, ptr %156, align 4
  %292 = load i32, ptr %157, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %299

294:                                              ; preds = %289
  %295 = load i32, ptr %158, align 4
  store i32 %295, ptr %153, align 4
  store i32 0, ptr %34, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #18
  %296 = load ptr, ptr @swap_avail_heads, align 4
  tail call void @plist_del(ptr noundef %30, ptr noundef %296) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %297 = load i16, ptr @swap_avail_lock, align 4
  %298 = add i16 %297, 1
  store i16 %298, ptr @swap_avail_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %299

299:                                              ; preds = %294, %289
  %300 = add i32 %162, 1
  %301 = getelementptr %struct.swp_entry_t, ptr %1, i32 %162
  %302 = load i8, ptr %159, align 4
  %303 = zext i8 %302 to i32
  %304 = shl i32 %303, 26
  %305 = and i32 %279, 67108863
  %306 = or i32 %304, %305
  store i32 %306, ptr %301, align 4
  %307 = icmp eq i32 %300, %13
  br i1 %307, label %362, label %308

308:                                              ; preds = %299
  %309 = load i32, ptr %34, align 4
  %310 = icmp ult i32 %279, %309
  br i1 %310, label %311, label %362

311:                                              ; preds = %308
  %312 = add i32 %163, -1
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %320, !prof !16

314:                                              ; preds = %311
  %315 = icmp eq i32 %300, 0
  br i1 %315, label %316, label %362

316:                                              ; preds = %314
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %317 = load i16, ptr %33, align 4
  %318 = add i16 %317, 1
  store i16 %318, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %319 = tail call i32 @__cond_resched() #18
  tail call void @_raw_spin_lock(ptr noundef %33) #18
  br label %320

320:                                              ; preds = %316, %311
  %321 = phi i32 [ 256, %316 ], [ %312, %311 ]
  %322 = load ptr, ptr %88, align 4
  %323 = icmp eq ptr %322, null
  br i1 %323, label %326, label %324

324:                                              ; preds = %320
  %325 = call fastcc zeroext i1 @scan_swap_map_try_ssd_cluster(ptr noundef %29, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  br i1 %325, label %337, label %339

326:                                              ; preds = %320
  %327 = load i32, ptr %160, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %339, label %329

329:                                              ; preds = %326
  %330 = load ptr, ptr %154, align 4
  %331 = add nuw i32 %279, 1
  store i32 %331, ptr %4, align 4
  %332 = getelementptr i8, ptr %330, i32 %331
  %333 = load i8, ptr %332, align 1
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %329
  %336 = add i32 %327, -1
  store i32 %336, ptr %160, align 4
  br label %337

337:                                              ; preds = %354, %335, %324
  %338 = phi i32 [ %321, %335 ], [ %321, %324 ], [ %352, %354 ]
  br label %161

339:                                              ; preds = %329, %326, %324
  br i1 %148, label %362, label %340

340:                                              ; preds = %339
  %341 = load i32, ptr %4, align 4
  %342 = load i32, ptr %5, align 4
  %343 = icmp ult i32 %341, %342
  br i1 %343, label %346, label %344

344:                                              ; preds = %340
  %345 = load i32, ptr %34, align 4
  br label %346

346:                                              ; preds = %344, %340
  %347 = phi i32 [ %345, %344 ], [ %342, %340 ]
  %348 = icmp ugt i32 %341, %347
  br i1 %348, label %362, label %349

349:                                              ; preds = %359, %346
  %350 = phi i32 [ %360, %359 ], [ %341, %346 ]
  %351 = phi i32 [ %352, %359 ], [ %321, %346 ]
  %352 = add i32 %351, -1
  %353 = icmp sgt i32 %352, 0
  br i1 %353, label %354, label %362

354:                                              ; preds = %349
  %355 = load ptr, ptr %154, align 4
  %356 = getelementptr i8, ptr %355, i32 %350
  %357 = load i8, ptr %356, align 1
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %337, label %359

359:                                              ; preds = %354
  %360 = add i32 %350, 1
  store i32 %360, ptr %4, align 4
  %361 = icmp ugt i32 %360, %347
  br i1 %361, label %362, label %349

362:                                              ; preds = %359, %349, %346, %339, %314, %308, %299, %243, %183
  %363 = phi i32 [ %162, %243 ], [ %162, %183 ], [ %300, %349 ], [ %300, %359 ], [ %300, %346 ], [ %300, %308 ], [ %13, %299 ], [ %300, %314 ], [ %300, %339 ]
  %364 = load i32, ptr %4, align 4
  %365 = add i32 %364, 1
  %366 = load i32, ptr %38, align 4
  %367 = and i32 %366, 16
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %362
  %370 = getelementptr i8, ptr %147, i32 -100
  store i32 %365, ptr %370, align 4
  br label %490

371:                                              ; preds = %362
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !21
  %372 = getelementptr i8, ptr %147, i32 -92
  %373 = load ptr, ptr %372, align 4
  %374 = ptrtoint ptr %373 to i32
  %375 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %376 = inttoptr i32 %375 to ptr
  %377 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %376) #11, !srcloc !19
  %378 = add i32 %377, %374
  %379 = inttoptr i32 %378 to ptr
  %380 = load volatile i32, ptr %379, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %381 = xor i32 %380, %365
  %382 = icmp ult i32 %381, 16384
  br i1 %382, label %400, label %383

383:                                              ; preds = %371
  %384 = load i32, ptr %34, align 4
  %385 = load i32, ptr %153, align 4
  %386 = icmp ugt i32 %384, %385
  br i1 %386, label %387, label %490

387:                                              ; preds = %383
  %388 = add i32 %384, 1
  %389 = sub i32 %388, %385
  %390 = tail call i32 @prandom_u32() #18
  %391 = zext i32 %390 to i64
  %392 = zext i32 %389 to i64
  %393 = mul nuw i64 %391, %392
  %394 = lshr i64 %393, 32
  %395 = trunc i64 %394 to i32
  %396 = add i32 %385, %395
  %397 = and i32 %396, -16384
  %398 = load i32, ptr %153, align 4
  %399 = tail call i32 @llvm.umax.i32(i32 %397, i32 %398) #18
  br label %400

400:                                              ; preds = %387, %371
  %401 = phi i32 [ %399, %387 ], [ %365, %371 ]
  %402 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !23
  %403 = load ptr, ptr %372, align 4
  %404 = ptrtoint ptr %403 to i32
  %405 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %406 = inttoptr i32 %405 to ptr
  %407 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %406) #11, !srcloc !19
  %408 = add i32 %407, %404
  %409 = inttoptr i32 %408 to ptr
  store i32 %401, ptr %409, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %402) #18, !srcloc !24
  br label %490

410:                                              ; preds = %243, %230, %192, %91
  %411 = phi ptr [ %147, %243 ], [ %26, %91 ], [ %147, %192 ], [ %147, %230 ]
  %412 = phi i1 [ %148, %243 ], [ false, %91 ], [ %148, %192 ], [ %148, %230 ]
  %413 = phi i32 [ 0, %243 ], [ 0, %91 ], [ 0, %192 ], [ %162, %230 ]
  %414 = phi i32 [ %163, %243 ], [ 256, %91 ], [ %163, %192 ], [ %163, %230 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %415 = load i16, ptr %33, align 4
  %416 = add i16 %415, 1
  store i16 %416, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %417 = load i32, ptr %4, align 4
  %418 = add i32 %417, 1
  store i32 %418, ptr %4, align 4
  %419 = load volatile i32, ptr %34, align 4
  %420 = icmp ugt i32 %418, %419
  br i1 %420, label %452, label %421

421:                                              ; preds = %410
  %422 = getelementptr i8, ptr %411, i32 -140
  br label %423

423:                                              ; preds = %446, %421
  %424 = phi i32 [ %418, %421 ], [ %449, %446 ]
  %425 = phi i32 [ %414, %421 ], [ %448, %446 ]
  %426 = phi i1 [ %412, %421 ], [ %447, %446 ]
  %427 = load ptr, ptr %422, align 4
  %428 = getelementptr i8, ptr %427, i32 %424
  %429 = load i8, ptr %428, align 1
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %423
  tail call void @_raw_spin_lock(ptr noundef %33) #18
  br label %146

432:                                              ; preds = %423
  %433 = load volatile i32, ptr @nr_swap_pages, align 4
  %434 = shl i32 %433, 1
  %435 = load i32, ptr @total_swap_pages, align 4
  %436 = icmp slt i32 %434, %435
  br i1 %436, label %437, label %441

437:                                              ; preds = %432
  %438 = load volatile i8, ptr %428, align 1
  %439 = icmp eq i8 %438, 64
  br i1 %439, label %440, label %441

440:                                              ; preds = %437
  tail call void @_raw_spin_lock(ptr noundef %33) #18
  br label %146

441:                                              ; preds = %437, %432
  %442 = add i32 %425, -1
  %443 = icmp slt i32 %442, 0
  br i1 %443, label %444, label %446, !prof !16

444:                                              ; preds = %441
  %445 = tail call i32 @__cond_resched() #18
  br label %446

446:                                              ; preds = %444, %441
  %447 = phi i1 [ true, %444 ], [ %426, %441 ]
  %448 = phi i32 [ 256, %444 ], [ %442, %441 ]
  %449 = add i32 %424, 1
  store i32 %449, ptr %4, align 4
  %450 = load volatile i32, ptr %34, align 4
  %451 = icmp ugt i32 %449, %450
  br i1 %451, label %452, label %423

452:                                              ; preds = %446, %410
  %453 = phi i1 [ %412, %410 ], [ %447, %446 ]
  %454 = phi i32 [ %414, %410 ], [ %448, %446 ]
  %455 = getelementptr i8, ptr %411, i32 -116
  %456 = load i32, ptr %455, align 4
  %457 = load i32, ptr %5, align 4
  store i32 %456, ptr %4, align 4
  %458 = icmp ult i32 %456, %457
  br i1 %458, label %459, label %489

459:                                              ; preds = %452
  %460 = getelementptr i8, ptr %411, i32 -140
  br label %461

461:                                              ; preds = %484, %459
  %462 = phi i32 [ %454, %459 ], [ %486, %484 ]
  %463 = phi i1 [ %453, %459 ], [ %485, %484 ]
  %464 = phi i32 [ %456, %459 ], [ %487, %484 ]
  %465 = load ptr, ptr %460, align 4
  %466 = getelementptr i8, ptr %465, i32 %464
  %467 = load i8, ptr %466, align 1
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %469, label %470

469:                                              ; preds = %461
  tail call void @_raw_spin_lock(ptr noundef %33) #18
  br label %146

470:                                              ; preds = %461
  %471 = load volatile i32, ptr @nr_swap_pages, align 4
  %472 = shl i32 %471, 1
  %473 = load i32, ptr @total_swap_pages, align 4
  %474 = icmp slt i32 %472, %473
  br i1 %474, label %475, label %479

475:                                              ; preds = %470
  %476 = load volatile i8, ptr %466, align 1
  %477 = icmp eq i8 %476, 64
  br i1 %477, label %478, label %479

478:                                              ; preds = %475
  tail call void @_raw_spin_lock(ptr noundef %33) #18
  br label %146

479:                                              ; preds = %475, %470
  %480 = add i32 %462, -1
  %481 = icmp slt i32 %480, 0
  br i1 %481, label %482, label %484, !prof !16

482:                                              ; preds = %479
  %483 = tail call i32 @__cond_resched() #18
  br label %484

484:                                              ; preds = %482, %479
  %485 = phi i1 [ true, %482 ], [ %463, %479 ]
  %486 = phi i32 [ 256, %482 ], [ %480, %479 ]
  %487 = add i32 %464, 1
  store i32 %487, ptr %4, align 4
  %488 = icmp eq i32 %487, %457
  br i1 %488, label %489, label %461

489:                                              ; preds = %484, %452
  tail call void @_raw_spin_lock(ptr noundef %33) #18
  br label %490

490:                                              ; preds = %489, %400, %383, %369, %198, %194
  %491 = phi i32 [ %363, %369 ], [ %363, %383 ], [ %363, %400 ], [ %413, %489 ], [ %162, %198 ], [ %162, %194 ]
  %492 = load i32, ptr %38, align 4
  %493 = add i32 %492, -16384
  store i32 %493, ptr %38, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %494 = load i16, ptr %33, align 4
  %495 = add i16 %494, 1
  store i16 %495, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %496 = icmp eq i32 %491, 0
  br i1 %496, label %497, label %507

497:                                              ; preds = %490
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #18
  br label %498

498:                                              ; preds = %497, %64, %45
  %499 = load volatile ptr, ptr %27, align 4
  %500 = icmp eq ptr %499, %27
  %501 = load ptr, ptr @swap_avail_heads, align 4
  br i1 %500, label %18, label %502

502:                                              ; preds = %498
  %503 = icmp eq ptr %27, %501
  br i1 %503, label %504, label %25

504:                                              ; preds = %502, %18, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %505 = load i16, ptr @swap_avail_lock, align 4
  %506 = add i16 %505, 1
  store i16 %506, ptr @swap_avail_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %507

507:                                              ; preds = %504, %490
  %508 = phi i32 [ 0, %504 ], [ %491, %490 ]
  %509 = icmp sgt i32 %13, %508
  br i1 %509, label %510, label %513

510:                                              ; preds = %507
  %511 = sub i32 %13, %508
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nr_swap_pages) #18, !srcloc !14
  %512 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_swap_pages, ptr nonnull @nr_swap_pages, i32 %511, ptr nonnull elementtype(i32) @nr_swap_pages) #18, !srcloc !25
  br label %513

513:                                              ; preds = %510, %507, %8
  %514 = phi i32 [ 0, %8 ], [ %508, %510 ], [ %508, %507 ]
  ret i32 %514
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_requeue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_swap_device([1 x i32] %0) local_unnamed_addr #0 {
  %2 = extractvalue [1 x i32] %0, 0
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %67, label %4

4:                                                ; preds = %1
  %5 = icmp ugt i32 %2, 2013265919
  br i1 %5, label %41, label %6

6:                                                ; preds = %4
  %7 = lshr i32 %2, 26
  %8 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %7
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %12 = load volatile i32, ptr %9, align 4
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24, !prof !27

15:                                               ; preds = %11
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !23
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #11, !srcloc !19
  %20 = add i32 %19, %12
  %21 = inttoptr i32 %20 to ptr
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %36

24:                                               ; preds = %11
  %25 = and i32 %12, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %67

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.percpu_ref, ptr %9, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #18, !srcloc !14
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 0, i32 1, ptr elementtype(i32) %30) #18, !srcloc !30
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %36

35:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %67

36:                                               ; preds = %34, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !32
  %37 = and i32 %2, 67108863
  %38 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %67, label %43

41:                                               ; preds = %6, %4
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.get_swap_device, ptr noundef nonnull @Bad_file, i32 noundef %2) #19
  br label %67

43:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %44 = load volatile i32, ptr %9, align 4
  %45 = and i32 %44, 3
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56, !prof !27

47:                                               ; preds = %43
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !23
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #11, !srcloc !19
  %52 = add i32 %51, %44
  %53 = inttoptr i32 %52 to ptr
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, -1
  store i32 %55, ptr %53, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #18, !srcloc !24
  br label %66

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.percpu_ref, ptr %9, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #18, !srcloc !14
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #18, !srcloc !34
  %60 = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !35
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66, !prof !16

62:                                               ; preds = %56
  %63 = load ptr, ptr %57, align 4
  %64 = getelementptr inbounds %struct.percpu_ref_data, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  tail call void %65(ptr noundef nonnull %9) #18
  br label %66

66:                                               ; preds = %62, %56, %47
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %67

67:                                               ; preds = %66, %41, %36, %35, %27, %1
  %68 = phi ptr [ null, %66 ], [ %9, %36 ], [ null, %35 ], [ null, %1 ], [ null, %41 ], [ null, %27 ]
  ret ptr %68
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @swp_swap_info([1 x i32] %0) local_unnamed_addr #2 {
  %2 = extractvalue [1 x i32] %0, 0
  %3 = icmp ugt i32 %2, 2013265919
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = lshr i32 %2, 26
  %6 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %5
  %7 = load volatile ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @swap_free([1 x i32] %0) local_unnamed_addr #0 {
  %2 = extractvalue [1 x i32] %0, 0
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  %5 = icmp ugt i32 %2, 2013265919
  br i1 %5, label %21, label %6

6:                                                ; preds = %4
  %7 = lshr i32 %2, 26
  %8 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %7
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = and i32 %2, 67108863
  %18 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %11, %6, %4
  %22 = phi ptr [ @Bad_offset, %16 ], [ @Unused_file, %11 ], [ @Bad_file, %4 ], [ @Bad_file, %6 ]
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.__swap_info_get, ptr noundef nonnull %22, i32 noundef %2) #19
  br label %34

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %17
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._swap_info_get, ptr noundef nonnull @Unused_offset, i32 noundef %2) #19
  br label %34

32:                                               ; preds = %24
  %33 = tail call fastcc zeroext i8 @__swap_entry_free(ptr noundef nonnull %9, [1 x i32] %0)
  br label %34

34:                                               ; preds = %32, %30, %21, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @__swap_entry_free(ptr noundef %0, [1 x i32] %1) unnamed_addr #0 {
  %3 = extractvalue [1 x i32] %1, 0
  %4 = and i32 %3, 67108863
  %5 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = lshr i32 %4, 8
  %10 = getelementptr %struct.swap_cluster_info, ptr %6, i32 %9
  tail call void @_raw_spin_lock(ptr noundef %10) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %13) #18
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ null, %12 ], [ %10, %8 ]
  %16 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %4
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 64
  %21 = and i8 %19, -65
  %22 = icmp eq i8 %21, -65
  br i1 %22, label %34, label %23

23:                                               ; preds = %14
  %24 = and i8 %19, 63
  %25 = icmp eq i8 %24, 63
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = icmp eq i8 %21, -128
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = tail call fastcc zeroext i1 @swap_count_continued(ptr noundef %0, i32 noundef %4, i8 noundef zeroext -128) #18
  %30 = select i1 %29, i8 -66, i8 62
  %31 = load ptr, ptr %16, align 4
  br label %34

32:                                               ; preds = %26
  %33 = add i8 %21, -1
  br label %34

34:                                               ; preds = %32, %28, %23, %14
  %35 = phi ptr [ %17, %32 ], [ %17, %23 ], [ %17, %14 ], [ %31, %28 ]
  %36 = phi i8 [ %33, %32 ], [ %21, %23 ], [ 0, %14 ], [ %30, %28 ]
  %37 = or i8 %36, %20
  %38 = icmp eq i8 %37, 0
  %39 = getelementptr i8, ptr %35, i32 %4
  %40 = select i1 %38, i8 64, i8 %37
  store volatile i8 %40, ptr %39, align 1
  %41 = icmp eq ptr %15, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %43 = load i16, ptr %15, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %49

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %47 = load i16, ptr %46, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %49

49:                                               ; preds = %45, %42
  br i1 %38, label %50, label %52

50:                                               ; preds = %49
  %51 = tail call i32 @free_swap_slot([1 x i32] %1) #18
  br label %52

52:                                               ; preds = %50, %49
  ret i8 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_swap_page(ptr nocapture noundef readnone %0, [1 x i32] %1) local_unnamed_addr #0 {
  %3 = extractvalue [1 x i32] %1, 0
  %4 = and i32 %3, 67108863
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %70, label %6

6:                                                ; preds = %2
  %7 = icmp ugt i32 %3, 2013265919
  br i1 %7, label %22, label %8

8:                                                ; preds = %6
  %9 = lshr i32 %3, 26
  %10 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %9
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.swap_info_struct, ptr %11, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.swap_info_struct, ptr %11, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %4, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18, %13, %8, %6
  %23 = phi ptr [ @Bad_offset, %18 ], [ @Unused_file, %13 ], [ @Bad_file, %6 ], [ @Bad_file, %8 ]
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.__swap_info_get, ptr noundef nonnull %23, i32 noundef %3) #19
  br label %70

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.swap_info_struct, ptr %11, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %4
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._swap_info_get, ptr noundef nonnull @Unused_offset, i32 noundef %3) #19
  br label %70

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.swap_info_struct, ptr %11, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = lshr i32 %4, 8
  %39 = getelementptr %struct.swap_cluster_info, ptr %35, i32 %38
  tail call void @_raw_spin_lock(ptr noundef %39) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %33
  %42 = getelementptr inbounds %struct.swap_info_struct, ptr %11, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %42) #18
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi ptr [ null, %41 ], [ %39, %37 ]
  %45 = load ptr, ptr %26, align 4
  %46 = getelementptr i8, ptr %45, i32 %4
  %47 = load i8, ptr %46, align 1
  %48 = and i8 %47, -65
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i8 64, i8 %48
  store volatile i8 %50, ptr %46, align 1
  %51 = icmp eq ptr %44, null
  br i1 %49, label %52, label %62

52:                                               ; preds = %43
  br i1 %51, label %56, label %53

53:                                               ; preds = %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %54 = load i16, ptr %44, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.swap_info_struct, ptr %11, i32 0, i32 22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %58 = load i16, ptr %57, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %57, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %60

60:                                               ; preds = %56, %53
  %61 = tail call i32 @free_swap_slot([1 x i32] %1) #18
  br label %70

62:                                               ; preds = %43
  br i1 %51, label %66, label %63

63:                                               ; preds = %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %64 = load i16, ptr %44, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %70

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.swap_info_struct, ptr %11, i32 0, i32 22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %68 = load i16, ptr %67, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %67, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %70

70:                                               ; preds = %66, %63, %60, %31, %22, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @free_swap_slot([1 x i32]) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @swapcache_free_entries(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %200, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr @nr_swapfiles, align 4
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @sort(ptr noundef %0, i32 noundef %1, i32 noundef 4, ptr noundef nonnull @swp_entry_cmp, ptr noundef null) #18
  br label %8

8:                                                ; preds = %7, %4
  br label %9

9:                                                ; preds = %191, %8
  %10 = phi i32 [ %192, %191 ], [ 0, %8 ]
  %11 = phi ptr [ %44, %191 ], [ null, %8 ]
  %12 = getelementptr %struct.swp_entry_t, ptr %0, i32 %10
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %9
  %16 = icmp ugt i32 %13, 2013265919
  br i1 %16, label %32, label %17

17:                                               ; preds = %15
  %18 = lshr i32 %13, 26
  %19 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %18
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.swap_info_struct, ptr %20, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = and i32 %13, 67108863
  %29 = getelementptr inbounds %struct.swap_info_struct, ptr %20, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %22, %17, %15
  %33 = phi ptr [ @Bad_offset, %27 ], [ @Unused_file, %22 ], [ @Bad_file, %15 ], [ @Bad_file, %17 ]
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.__swap_info_get, ptr noundef nonnull %33, i32 noundef %13) #19
  br label %43

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.swap_info_struct, ptr %20, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 %28
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._swap_info_get, ptr noundef nonnull @Unused_offset, i32 noundef %13) #19
  br label %43

43:                                               ; preds = %41, %35, %32, %9
  %44 = phi ptr [ %20, %35 ], [ null, %41 ], [ null, %9 ], [ null, %32 ]
  %45 = icmp eq ptr %44, %11
  %46 = icmp eq ptr %11, null
  br i1 %45, label %56, label %47

47:                                               ; preds = %43
  br i1 %46, label %52, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.swap_info_struct, ptr %11, i32 0, i32 22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %50 = load i16, ptr %49, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %49, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %52

52:                                               ; preds = %48, %47
  %53 = icmp eq ptr %44, null
  br i1 %53, label %191, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %55) #18
  br label %57

56:                                               ; preds = %43
  br i1 %46, label %191, label %57

57:                                               ; preds = %56, %54
  %58 = load i32, ptr %12, align 4
  %59 = and i32 %58, 67108863
  %60 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  %63 = lshr i32 %59, 8
  br i1 %62, label %66, label %64

64:                                               ; preds = %57
  %65 = getelementptr %struct.swap_cluster_info, ptr %61, i32 %63
  tail call void @_raw_spin_lock(ptr noundef %65) #18
  br label %66

66:                                               ; preds = %64, %57
  %67 = phi ptr [ %65, %64 ], [ null, %57 ]
  %68 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 6
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 %59
  store i8 0, ptr %70, align 1
  %71 = load ptr, ptr %60, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %136, label %73

73:                                               ; preds = %66
  %74 = getelementptr %struct.swap_cluster_info, ptr %71, i32 %63, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, 16777215
  %77 = and i32 %76, 16777215
  %78 = and i32 %75, -16777216
  %79 = or i32 %77, %78
  store i32 %79, ptr %74, align 4
  %80 = icmp eq i32 %77, 0
  br i1 %80, label %81, label %136

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 1026
  %85 = icmp eq i32 %84, 1026
  br i1 %85, label %86, label %113

86:                                               ; preds = %81
  %87 = load ptr, ptr %68, align 4
  %88 = and i32 %58, 67108608
  %89 = getelementptr i8, ptr %87, i32 %88
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(256) %89, i8 63, i32 256, i1 false) #18
  %90 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 25, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 33554432
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %86
  store i32 %63, ptr %90, align 4
  %95 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 25, i32 1, i32 1
  br label %108

96:                                               ; preds = %86
  %97 = load ptr, ptr %60, align 4
  %98 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 25, i32 1, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, 16777215
  %101 = getelementptr %struct.swap_cluster_info, ptr %97, i32 %100
  tail call void @_raw_spin_lock(ptr noundef %101) #18
  %102 = getelementptr %struct.swap_cluster_info, ptr %97, i32 %100, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, -16777216
  %105 = or i32 %104, %63
  store i32 %105, ptr %102, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %106 = load i16, ptr %101, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr %101, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %108

108:                                              ; preds = %96, %94
  %109 = phi ptr [ %98, %96 ], [ %95, %94 ]
  store i32 %63, ptr %109, align 4
  %110 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 24
  %111 = load ptr, ptr @system_wq, align 4
  %112 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %111, ptr noundef %110) #18
  br label %136

113:                                              ; preds = %81
  %114 = load ptr, ptr %60, align 4
  %115 = getelementptr %struct.swap_cluster_info, ptr %114, i32 %63, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 16777215
  %118 = or i32 %117, 16777216
  store i32 %118, ptr %115, align 4
  %119 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 8, i32 0, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 33554432
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %113
  store i32 %63, ptr %119, align 4
  %124 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 8, i32 1, i32 1
  store i32 %63, ptr %124, align 4
  br label %136

125:                                              ; preds = %113
  %126 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 8, i32 1, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, 16777215
  %129 = getelementptr %struct.swap_cluster_info, ptr %114, i32 %128
  tail call void @_raw_spin_lock(ptr noundef %129) #18
  %130 = getelementptr %struct.swap_cluster_info, ptr %114, i32 %128, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, -16777216
  %133 = or i32 %132, %63
  store i32 %133, ptr %130, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %134 = load i16, ptr %129, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr %129, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  store i32 %63, ptr %126, align 4
  br label %136

136:                                              ; preds = %125, %123, %108, %73, %66
  %137 = icmp eq ptr %67, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %136
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %139 = load i16, ptr %67, align 4
  %140 = add i16 %139, 1
  store i16 %140, ptr %67, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %141

141:                                              ; preds = %138, %136
  %142 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 9
  %143 = load i32, ptr %142, align 4
  %144 = icmp ugt i32 %143, %59
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i32 %59, ptr %142, align 4
  br label %146

146:                                              ; preds = %145, %141
  %147 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 10
  %148 = load i32, ptr %147, align 4
  %149 = icmp ult i32 %148, %59
  br i1 %149, label %150, label %167

150:                                              ; preds = %146
  %151 = icmp eq i32 %148, 0
  store volatile i32 %59, ptr %147, align 4
  br i1 %151, label %152, label %167

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, 2
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %167, label %157

157:                                              ; preds = %152
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #18
  %158 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 1, i32 2
  %159 = load volatile ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, %158
  br i1 %160, label %162, label %161, !prof !27

161:                                              ; preds = %157
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 710, i32 noundef 9, ptr noundef null) #18
  br label %162

162:                                              ; preds = %161, %157
  %163 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 26
  %164 = load ptr, ptr @swap_avail_heads, align 4
  tail call void @plist_add(ptr noundef %163, ptr noundef %164) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %165 = load i16, ptr @swap_avail_lock, align 4
  %166 = add i16 %165, 1
  store i16 %166, ptr @swap_avail_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %167

167:                                              ; preds = %162, %152, %150, %146
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nr_swap_pages) #18, !srcloc !14
  %168 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_swap_pages, ptr nonnull @nr_swap_pages, i32 1, ptr nonnull elementtype(i32) @nr_swap_pages) #18, !srcloc !25
  %169 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 12
  %170 = load i32, ptr %169, align 4
  %171 = add i32 %170, -1
  store i32 %171, ptr %169, align 4
  %172 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 1
  %173 = load i32, ptr %172, align 4
  %174 = and i32 %173, 64
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %187, label %176

176:                                              ; preds = %167
  %177 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 18
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.block_device, ptr %178, i32 0, i32 17
  %180 = load ptr, ptr %179, align 8
  %181 = getelementptr inbounds %struct.gendisk, ptr %180, i32 0, i32 8
  %182 = load ptr, ptr %181, align 8
  %183 = getelementptr inbounds %struct.block_device_operations, ptr %182, i32 0, i32 10
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %176
  tail call void %184(ptr noundef %178, i32 noundef %59) #18
  br label %187

187:                                              ; preds = %186, %176, %167
  %188 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 4
  %189 = load i8, ptr %188, align 4
  %190 = sext i8 %189 to i32
  tail call void @clear_shadow_from_swap_cache(i32 noundef %190, i32 noundef %59, i32 noundef %59) #18
  br label %191

191:                                              ; preds = %187, %56, %52
  %192 = add nuw nsw i32 %10, 1
  %193 = icmp eq i32 %192, %1
  br i1 %193, label %194, label %9

194:                                              ; preds = %191
  %195 = icmp eq ptr %44, null
  br i1 %195, label %200, label %196

196:                                              ; preds = %194
  %197 = getelementptr inbounds %struct.swap_info_struct, ptr %44, i32 0, i32 22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %198 = load i16, ptr %197, align 4
  %199 = add i16 %198, 1
  store i16 %199, ptr %197, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %200

200:                                              ; preds = %196, %194, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @swp_entry_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i32, ptr %0, align 4
  %4 = lshr i32 %3, 26
  %5 = load i32, ptr %1, align 4
  %6 = lshr i32 %5, 26
  %7 = sub nsw i32 %4, %6
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @page_swapcount(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %56, label %5

5:                                                ; preds = %1
  %6 = icmp ugt i32 %3, 2013265919
  br i1 %6, label %22, label %7

7:                                                ; preds = %5
  %8 = lshr i32 %3, 26
  %9 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %8
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.swap_info_struct, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = and i32 %3, 67108863
  %19 = getelementptr inbounds %struct.swap_info_struct, ptr %10, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %12, %7, %5
  %23 = phi ptr [ @Bad_offset, %17 ], [ @Unused_file, %12 ], [ @Bad_file, %5 ], [ @Bad_file, %7 ]
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.__swap_info_get, ptr noundef nonnull %23, i32 noundef %3) #19
  br label %56

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.swap_info_struct, ptr %10, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %18
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._swap_info_get, ptr noundef nonnull @Unused_offset, i32 noundef %3) #19
  br label %56

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.swap_info_struct, ptr %10, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = lshr i32 %18, 8
  %39 = getelementptr %struct.swap_cluster_info, ptr %35, i32 %38
  tail call void @_raw_spin_lock(ptr noundef %39) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %26, align 4
  %43 = getelementptr i8, ptr %42, i32 %18
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, -65
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %46 = load i16, ptr %39, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %39, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %56

48:                                               ; preds = %37, %33
  %49 = getelementptr inbounds %struct.swap_info_struct, ptr %10, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %49) #18
  %50 = load ptr, ptr %26, align 4
  %51 = getelementptr i8, ptr %50, i32 %18
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, -65
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %54 = load i16, ptr %49, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %49, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %56

56:                                               ; preds = %48, %41, %31, %22, %1
  %57 = phi i8 [ %45, %41 ], [ %53, %48 ], [ 0, %31 ], [ 0, %1 ], [ 0, %22 ]
  %58 = zext i8 %57 to i32
  ret i32 %58
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__swap_count([1 x i32] %0) local_unnamed_addr #0 {
  %2 = tail call ptr @get_swap_device([1 x i32] %0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = extractvalue [1 x i32] %0, 0
  %6 = and i32 %5, 67108863
  %7 = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, -65
  %12 = zext i8 %11 to i32
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %13 = load volatile i32, ptr %2, align 4
  %14 = and i32 %13, 3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25, !prof !27

16:                                               ; preds = %4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !23
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #11, !srcloc !19
  %21 = add i32 %20, %13
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #18, !srcloc !24
  br label %35

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.percpu_ref, ptr %2, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #18, !srcloc !14
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #18, !srcloc !34
  %29 = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !35
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35, !prof !16

31:                                               ; preds = %25
  %32 = load ptr, ptr %26, align 4
  %33 = getelementptr inbounds %struct.percpu_ref_data, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef nonnull %2) #18
  br label %35

35:                                               ; preds = %31, %25, %16
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %36

36:                                               ; preds = %35, %1
  %37 = phi i32 [ %12, %35 ], [ 0, %1 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__swp_swapcount([1 x i32] %0) local_unnamed_addr #0 {
  %2 = tail call ptr @get_swap_device([1 x i32] %0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %56, label %4

4:                                                ; preds = %1
  %5 = extractvalue [1 x i32] %0, 0
  %6 = and i32 %5, 67108863
  %7 = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %4
  %11 = lshr i32 %6, 8
  %12 = getelementptr %struct.swap_cluster_info, ptr %8, i32 %11
  tail call void @_raw_spin_lock(ptr noundef %12) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %6
  %18 = load i8, ptr %17, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %19 = load i16, ptr %12, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %29

21:                                               ; preds = %10, %4
  %22 = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %22) #18
  %23 = getelementptr inbounds %struct.swap_info_struct, ptr %2, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 %6
  %26 = load i8, ptr %25, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %27 = load i16, ptr %22, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %29

29:                                               ; preds = %21, %14
  %30 = phi i8 [ %18, %14 ], [ %26, %21 ]
  %31 = and i8 %30, -65
  %32 = zext i8 %31 to i32
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %33 = load volatile i32, ptr %2, align 4
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45, !prof !27

36:                                               ; preds = %29
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !23
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #11, !srcloc !19
  %41 = add i32 %40, %33
  %42 = inttoptr i32 %41 to ptr
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, -1
  store i32 %44, ptr %42, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #18, !srcloc !24
  br label %55

45:                                               ; preds = %29
  %46 = getelementptr inbounds %struct.percpu_ref, ptr %2, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #18, !srcloc !14
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #18, !srcloc !34
  %49 = extractvalue { i32, i32 } %48, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !35
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55, !prof !16

51:                                               ; preds = %45
  %52 = load ptr, ptr %46, align 4
  %53 = getelementptr inbounds %struct.percpu_ref_data, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef nonnull %2) #18
  br label %55

55:                                               ; preds = %51, %45, %36
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %56

56:                                               ; preds = %55, %1
  %57 = phi i32 [ %32, %55 ], [ 0, %1 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @swp_swapcount([1 x i32] %0) local_unnamed_addr #0 {
  %2 = extractvalue [1 x i32] %0, 0
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %90, label %4

4:                                                ; preds = %1
  %5 = icmp ugt i32 %2, 2013265919
  br i1 %5, label %21, label %6

6:                                                ; preds = %4
  %7 = lshr i32 %2, 26
  %8 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %7
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = and i32 %2, 67108863
  %18 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %11, %6, %4
  %22 = phi ptr [ @Bad_offset, %16 ], [ @Unused_file, %11 ], [ @Bad_file, %4 ], [ @Bad_file, %6 ]
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.__swap_info_get, ptr noundef nonnull %22, i32 noundef %2) #19
  br label %90

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %17
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._swap_info_get, ptr noundef nonnull @Unused_offset, i32 noundef %2) #19
  br label %90

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = lshr i32 %17, 8
  %38 = getelementptr %struct.swap_cluster_info, ptr %34, i32 %37
  tail call void @_raw_spin_lock(ptr noundef %38) #18
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %32
  %41 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %41) #18
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi ptr [ null, %40 ], [ %38, %36 ]
  %44 = load ptr, ptr %25, align 4
  %45 = getelementptr i8, ptr %44, i32 %17
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, -65
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 128
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %80, label %51

51:                                               ; preds = %42
  %52 = and i32 %48, 63
  %53 = tail call ptr @vmalloc_to_page(ptr noundef %45) #18
  %54 = and i32 %2, 4095
  br label %55

55:                                               ; preds = %55, %51
  %56 = phi i32 [ 63, %51 ], [ %77, %55 ]
  %57 = phi ptr [ %53, %51 ], [ %61, %55 ]
  %58 = phi i32 [ %52, %51 ], [ %76, %55 ]
  %59 = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 -4
  %62 = load i32, ptr @pgprot_kernel, align 4
  %63 = or i32 %62, 512
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  %64 = tail call ptr @llvm.thread.pointer() #18
  %65 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 149
  %66 = load i32, ptr %65, align 8
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !37
  %68 = tail call ptr @__kmap_local_page_prot(ptr noundef %61, i32 noundef %63) #18
  %69 = getelementptr i8, ptr %68, i32 %54
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  tail call void @kunmap_local_indexed(ptr noundef %68) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  %72 = load i32, ptr %65, align 8
  %73 = add i32 %72, -1
  store i32 %73, ptr %65, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  %74 = and i32 %71, 127
  %75 = mul i32 %74, %56
  %76 = add i32 %75, %58
  %77 = shl i32 %56, 7
  %78 = and i32 %71, 128
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %55

80:                                               ; preds = %55, %42
  %81 = phi i32 [ %48, %42 ], [ %76, %55 ]
  %82 = icmp eq ptr %43, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %84 = load i16, ptr %43, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %90

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %88 = load i16, ptr %87, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %87, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %90

90:                                               ; preds = %86, %83, %30, %21, %1
  %91 = phi i32 [ %81, %83 ], [ %81, %86 ], [ 0, %30 ], [ 0, %1 ], [ 0, %21 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @reuse_swap_page(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !27

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 524288
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @page_swapcount(ptr noundef %0) #18
  br label %22

22:                                               ; preds = %20, %16, %10
  %23 = phi i32 [ %21, %20 ], [ 0, %16 ], [ 0, %10 ]
  %24 = load volatile i32, ptr %0, align 4
  %25 = and i32 %24, 65536
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load volatile i32, ptr %2, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !27

31:                                               ; preds = %27, %22
  %32 = tail call i32 @__page_mapcount(ptr noundef %0) #18
  br label %37

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  %35 = load volatile i32, ptr %34, align 4
  %36 = add i32 %35, 1
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi i32 [ %32, %31 ], [ %36, %33 ]
  %39 = add i32 %38, %23
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %136

41:                                               ; preds = %37
  %42 = load volatile i32, ptr %2, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45, !prof !27

45:                                               ; preds = %41
  %46 = add i32 %42, -1
  br label %49

47:                                               ; preds = %41
  %48 = ptrtoint ptr %0 to i32
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = inttoptr i32 %50 to ptr
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %52, 524288
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %136, label %55

55:                                               ; preds = %49
  %56 = load volatile i32, ptr %51, align 4
  %57 = and i32 %56, 1024
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %136, label %59

59:                                               ; preds = %55
  %60 = load volatile i32, ptr %2, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63, !prof !27

63:                                               ; preds = %59
  %64 = add i32 %60, -1
  br label %67

65:                                               ; preds = %59
  %66 = ptrtoint ptr %0 to i32
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = inttoptr i32 %68 to ptr
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 32768
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %67
  %74 = load volatile i32, ptr %2, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77, !prof !27

77:                                               ; preds = %73
  %78 = add i32 %74, -1
  br label %81

79:                                               ; preds = %73
  %80 = ptrtoint ptr %0 to i32
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = inttoptr i32 %82 to ptr
  tail call void @delete_from_swap_cache(ptr noundef %83) #18
  %84 = getelementptr inbounds %struct.page, ptr %83, i32 0, i32 1
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88, !prof !27

88:                                               ; preds = %81
  %89 = add i32 %85, -1
  %90 = inttoptr i32 %89 to ptr
  br label %91

91:                                               ; preds = %88, %81
  %92 = phi ptr [ %83, %81 ], [ %90, %88 ]
  tail call void @_set_bit(i32 noundef 3, ptr noundef %92) #18
  br label %136

93:                                               ; preds = %67
  %94 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %127, label %97

97:                                               ; preds = %93
  %98 = icmp ugt i32 %95, 2013265919
  br i1 %98, label %114, label %99

99:                                               ; preds = %97
  %100 = lshr i32 %95, 26
  %101 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %100
  %102 = load volatile ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.swap_info_struct, ptr %102, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = and i32 %95, 67108863
  %111 = getelementptr inbounds %struct.swap_info_struct, ptr %102, i32 0, i32 5
  %112 = load i32, ptr %111, align 4
  %113 = icmp ult i32 %110, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %109, %104, %99, %97
  %115 = phi ptr [ @Bad_offset, %109 ], [ @Unused_file, %104 ], [ @Bad_file, %97 ], [ @Bad_file, %99 ]
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.__swap_info_get, ptr noundef nonnull %115, i32 noundef %95) #19
  br label %127

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.swap_info_struct, ptr %102, i32 0, i32 6
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr i8, ptr %119, i32 %110
  %121 = load i8, ptr %120, align 1
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._swap_info_get, ptr noundef nonnull @Unused_offset, i32 noundef %95) #19
  br label %127

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.swap_info_struct, ptr %102, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %126) #18
  br label %127

127:                                              ; preds = %125, %123, %114, %93
  %128 = phi ptr [ %102, %125 ], [ null, %123 ], [ null, %93 ], [ null, %114 ]
  %129 = getelementptr inbounds %struct.swap_info_struct, ptr %128, i32 0, i32 1
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, 2048
  %132 = icmp eq i32 %131, 0
  %133 = getelementptr inbounds %struct.swap_info_struct, ptr %128, i32 0, i32 22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18
  %134 = load i16, ptr %133, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr %133, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18
  tail call void asm sideeffect "", "~{memory}"() #18
  br i1 %132, label %136, label %138

136:                                              ; preds = %127, %91, %55, %49, %37
  %137 = icmp slt i32 %39, 2
  br label %138

138:                                              ; preds = %136, %127
  %139 = phi i1 [ %137, %136 ], [ false, %127 ]
  ret i1 %139
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delete_from_swap_cache(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @try_to_free_swap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !27

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 524288
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %59, label %16

16:                                               ; preds = %10
  %17 = load volatile i32, ptr %12, align 4
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %59, label %20

20:                                               ; preds = %16
  %21 = load volatile i32, ptr %2, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24, !prof !27

24:                                               ; preds = %20
  %25 = add i32 %21, -1
  br label %28

26:                                               ; preds = %20
  %27 = ptrtoint ptr %0 to i32
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = inttoptr i32 %29 to ptr
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = tail call i32 @page_swapcount(ptr noundef %0) #18
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = tail call zeroext i1 @pm_suspended_storage() #18
  br i1 %38, label %59, label %39

39:                                               ; preds = %37
  %40 = load volatile i32, ptr %2, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43, !prof !27

43:                                               ; preds = %39
  %44 = add i32 %40, -1
  br label %47

45:                                               ; preds = %39
  %46 = ptrtoint ptr %0 to i32
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = inttoptr i32 %48 to ptr
  tail call void @delete_from_swap_cache(ptr noundef %49) #18
  %50 = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 1
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54, !prof !27

54:                                               ; preds = %47
  %55 = add i32 %51, -1
  %56 = inttoptr i32 %55 to ptr
  br label %57

57:                                               ; preds = %54, %47
  %58 = phi ptr [ %49, %47 ], [ %56, %54 ]
  tail call void @_set_bit(i32 noundef 3, ptr noundef %58) #18
  br label %59

59:                                               ; preds = %57, %37, %34, %28, %16, %10
  %60 = phi i32 [ 1, %57 ], [ 0, %16 ], [ 0, %28 ], [ 0, %34 ], [ 0, %37 ], [ 0, %10 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_suspended_storage() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @free_swap_and_cache([1 x i32] %0) local_unnamed_addr #0 {
  %2 = extractvalue [1 x i32] %0, 0
  %3 = icmp ugt i32 %2, 2013265919
  br i1 %3, label %62, label %4

4:                                                ; preds = %1
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %62, label %6

6:                                                ; preds = %4
  %7 = lshr i32 %2, 26
  %8 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %7
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = and i32 %2, 67108863
  %18 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %11, %6
  %22 = phi ptr [ @Bad_offset, %16 ], [ @Unused_file, %11 ], [ @Bad_file, %6 ]
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.__swap_info_get, ptr noundef nonnull %22, i32 noundef %2) #19
  br label %62

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %17
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._swap_info_get, ptr noundef nonnull @Unused_offset, i32 noundef %2) #19
  br label %62

32:                                               ; preds = %24
  %33 = tail call fastcc zeroext i8 @__swap_entry_free(ptr noundef nonnull %9, [1 x i32] %0)
  %34 = icmp eq i8 %33, 64
  br i1 %34, label %35, label %62

35:                                               ; preds = %32
  %36 = load ptr, ptr %25, align 4
  %37 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = lshr i32 %2, 8
  %42 = and i32 %41, 262143
  %43 = getelementptr %struct.swap_cluster_info, ptr %38, i32 %42
  tail call void @_raw_spin_lock(ptr noundef %43) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr i8, ptr %36, i32 %17
  %47 = load i8, ptr %46, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %48 = load i16, ptr %43, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %56

50:                                               ; preds = %40, %35
  %51 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %51) #18
  %52 = getelementptr i8, ptr %36, i32 %17
  %53 = load i8, ptr %52, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %54 = load i16, ptr %51, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %56

56:                                               ; preds = %50, %45
  %57 = phi i8 [ %47, %45 ], [ %53, %50 ]
  %58 = and i8 %57, -65
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = tail call fastcc i32 @__try_to_reclaim_swap(ptr noundef nonnull %9, i32 noundef %17, i32 noundef 6)
  br label %62

62:                                               ; preds = %60, %56, %32, %30, %21, %4, %1
  %63 = phi i32 [ 1, %1 ], [ 1, %32 ], [ 1, %56 ], [ 1, %60 ], [ 0, %30 ], [ 0, %4 ], [ 0, %21 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__try_to_reclaim_swap(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 63
  %7 = zext i8 %6 to i32
  %8 = getelementptr [0 x ptr], ptr @swapper_spaces, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = lshr i32 %1, 14
  %11 = and i32 %10, 4095
  %12 = getelementptr %struct.address_space, ptr %9, i32 %11
  %13 = tail call ptr @pagecache_get_page(ptr noundef %12, i32 noundef %1, i32 noundef 0, i32 noundef 0) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %72, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !27

20:                                               ; preds = %15
  %21 = add i32 %17, -1
  br label %24

22:                                               ; preds = %15
  %23 = ptrtoint ptr %13 to i32
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = inttoptr i32 %25 to ptr
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #18, !srcloc !14
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #18, !srcloc !40
  %32 = extractvalue { i32, i32, i32 } %31, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !41
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = and i32 %2, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = and i32 %2, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call zeroext i1 @page_mapped(ptr noundef nonnull %13) #18
  br i1 %42, label %43, label %51

43:                                               ; preds = %41, %38
  %44 = and i32 %2, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load volatile i32, ptr @nr_swap_pages, align 4
  %48 = shl i32 %47, 1
  %49 = load i32, ptr @total_swap_pages, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46, %41, %35
  %52 = tail call i32 @try_to_free_swap(ptr noundef nonnull %13)
  br label %53

53:                                               ; preds = %51, %46, %43
  %54 = phi i32 [ %52, %51 ], [ 0, %46 ], [ 0, %43 ]
  tail call void @unlock_page(ptr noundef nonnull %13) #18
  br label %55

55:                                               ; preds = %53, %30, %24
  %56 = phi i32 [ %54, %53 ], [ 0, %30 ], [ 0, %24 ]
  %57 = load volatile i32, ptr %16, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60, !prof !27

60:                                               ; preds = %55
  %61 = add i32 %57, -1
  br label %64

62:                                               ; preds = %55
  %63 = ptrtoint ptr %13 to i32
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = inttoptr i32 %65 to ptr
  %67 = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #18, !srcloc !14
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #18, !srcloc !34
  %69 = extractvalue { i32, i32 } %68, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !35
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  tail call void @__put_page(ptr noundef %66) #18
  br label %72

72:                                               ; preds = %71, %64, %3
  %73 = phi i32 [ 0, %3 ], [ %56, %64 ], [ %56, %71 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @add_swap_extent(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 17
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi ptr [ null, %4 ], [ %9, %6 ]
  %8 = phi ptr [ %5, %4 ], [ %11, %6 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  br i1 %10, label %12, label %6

12:                                               ; preds = %6
  %13 = icmp eq ptr %7, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.swap_extent, ptr %7, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.swap_extent, ptr %7, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, %16
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %22, label %21, !prof !27

21:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2282, 0\0A.popsection", ""() #18, !srcloc !42
  unreachable

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.swap_extent, ptr %7, i32 0, i32 3
  %24 = load i64, ptr %23, align 8
  %25 = zext i32 %18 to i64
  %26 = add i64 %24, %25
  %27 = icmp eq i64 %26, %3
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = add i32 %18, %2
  store i32 %29, ptr %17, align 8
  br label %41

30:                                               ; preds = %22, %12
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3264, i32 noundef 32) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.swap_extent, ptr %32, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.swap_extent, ptr %32, i32 0, i32 2
  store i32 %2, ptr %36, align 8
  %37 = getelementptr inbounds %struct.swap_extent, ptr %32, i32 0, i32 3
  store i64 %3, ptr %37, align 8
  %38 = ptrtoint ptr %7 to i32
  store i32 %38, ptr %32, align 8
  %39 = getelementptr inbounds %struct.rb_node, ptr %32, i32 0, i32 1
  store ptr null, ptr %39, align 4
  %40 = getelementptr inbounds %struct.rb_node, ptr %32, i32 0, i32 2
  store ptr null, ptr %40, align 8
  store ptr %32, ptr %8, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %32, ptr noundef %5) #18
  br label %41

41:                                               ; preds = %34, %30, %28
  %42 = phi i32 [ 0, %28 ], [ 1, %34 ], [ -12, %30 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @has_usable_swap() local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #18
  %1 = load volatile ptr, ptr @swap_active_head, align 4
  %2 = icmp ne ptr %1, @swap_active_head
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %3 = load i16, ptr @swap_lock, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr @swap_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_swapoff(i32 noundef %0) #0 {
  %2 = alloca %struct.vm_fault, align 4
  %3 = inttoptr i32 %0 to ptr
  %4 = tail call zeroext i1 @capable(i32 noundef 21) #18
  br i1 %4, label %5, label %713

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #18
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 37
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !16

10:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2484, 0\0A.popsection", ""() #18, !srcloc !43
  unreachable

11:                                               ; preds = %5
  %12 = tail call ptr @getname(ptr noundef %3) #18
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = ptrtoint ptr %12 to i32
  br label %713

16:                                               ; preds = %11
  %17 = tail call ptr @file_open_name(ptr noundef %12, i32 noundef 131074, i16 noundef zeroext 0) #18
  %18 = ptrtoint ptr %17 to i32
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %711, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 17
  %22 = load ptr, ptr %21, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #18
  %23 = load ptr, ptr @swap_active_head, align 4
  %24 = icmp eq ptr %23, @swap_active_head
  br i1 %24, label %40, label %25

25:                                               ; preds = %37, %20
  %26 = phi ptr [ %38, %37 ], [ %23, %20 ]
  %27 = getelementptr i8, ptr %26, i32 -20
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %26, i32 80
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.file, ptr %33, i32 0, i32 17
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, %22
  br i1 %36, label %43, label %37

37:                                               ; preds = %31, %25
  %38 = load ptr, ptr %26, align 4
  %39 = icmp eq ptr %38, @swap_active_head
  br i1 %39, label %40, label %25

40:                                               ; preds = %37, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %41 = load i16, ptr @swap_lock, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr @swap_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %708

43:                                               ; preds = %31
  %44 = getelementptr i8, ptr %26, i32 -20
  %45 = getelementptr i8, ptr %26, i32 80
  %46 = getelementptr i8, ptr %26, i32 -28
  %47 = getelementptr i8, ptr %26, i32 -12
  %48 = load ptr, ptr %7, align 4
  %49 = getelementptr i8, ptr %26, i32 48
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 @cap_vm_enough_memory(ptr noundef %48, i32 noundef %50) #18
  %52 = tail call i32 @__vm_enough_memory(ptr noundef %48, i32 noundef %50, i32 noundef %51) #18
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %43
  %55 = load i32, ptr %49, align 4
  %56 = sub i32 0, %55
  %57 = sext i32 %56 to i64
  %58 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %57, i32 noundef %58) #18
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #18
  %59 = getelementptr i8, ptr %26, i32 144
  %60 = load ptr, ptr @swap_avail_heads, align 4
  tail call void @plist_del(ptr noundef %59, ptr noundef %60) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %61 = load i16, ptr @swap_avail_lock, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr @swap_avail_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %63 = getelementptr i8, ptr %26, i32 104
  tail call void @_raw_spin_lock(ptr noundef %63) #18
  %64 = getelementptr i8, ptr %26, i32 -16
  %65 = load i16, ptr %64, align 4
  %66 = icmp slt i16 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %54
  %68 = load ptr, ptr %26, align 4
  %69 = icmp eq ptr %68, @swap_active_head
  br i1 %69, label %89, label %73

70:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %71 = load i16, ptr @swap_lock, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr @swap_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %708

73:                                               ; preds = %86, %67
  %74 = phi ptr [ %87, %86 ], [ %68, %67 ]
  %75 = getelementptr i8, ptr %74, i32 -12
  %76 = getelementptr i8, ptr %74, i32 -16
  %77 = load i16, ptr %76, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %76, align 4
  %79 = load i32, ptr %75, align 4
  %80 = add i32 %79, -1
  store i32 %80, ptr %75, align 4
  %81 = getelementptr i8, ptr %74, i32 144
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %86, label %84

84:                                               ; preds = %73
  %85 = add i32 %82, -1
  store i32 %85, ptr %81, align 4
  br label %86

86:                                               ; preds = %84, %73
  %87 = load ptr, ptr %74, align 4
  %88 = icmp eq ptr %87, @swap_active_head
  br i1 %88, label %89, label %73

89:                                               ; preds = %86, %67
  %90 = load i32, ptr @least_priority, align 4
  %91 = add i32 %90, 1
  store i32 %91, ptr @least_priority, align 4
  br label %92

92:                                               ; preds = %89, %54
  tail call void @plist_del(ptr noundef %47, ptr noundef nonnull @swap_active_head) #18
  %93 = load i32, ptr %49, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nr_swap_pages) #18, !srcloc !14
  %94 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_swap_pages, ptr nonnull @nr_swap_pages, i32 %93, ptr nonnull elementtype(i32) @nr_swap_pages) #18, !srcloc !15
  %95 = load i32, ptr %49, align 4
  %96 = load i32, ptr @total_swap_pages, align 4
  %97 = sub i32 %96, %95
  store i32 %97, ptr @total_swap_pages, align 4
  %98 = load i32, ptr %44, align 4
  %99 = and i32 %98, -3
  store i32 %99, ptr %44, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %100 = load i16, ptr %63, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %63, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %102 = load i16, ptr @swap_lock, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr @swap_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  tail call void @disable_swap_slots_cache_lock() #18
  %104 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 93
  %105 = load ptr, ptr %104, align 16
  %106 = getelementptr inbounds %struct.signal_struct, ptr %105, i32 0, i32 51
  store i8 1, ptr %106, align 8
  %107 = getelementptr i8, ptr %26, i32 8
  %108 = load i8, ptr %107, align 4
  %109 = sext i8 %108 to i32
  %110 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %109
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.swap_info_struct, ptr %111, i32 0, i32 12
  %113 = load volatile i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %512, label %115

115:                                              ; preds = %92
  %116 = getelementptr inbounds %struct.anon.24, ptr %2, i32 0, i32 3
  %117 = getelementptr inbounds %struct.vm_fault, ptr %2, i32 0, i32 2
  %118 = getelementptr inbounds i8, ptr %2, i32 4
  %119 = getelementptr inbounds %struct.swap_info_struct, ptr %111, i32 0, i32 5
  %120 = getelementptr inbounds %struct.swap_info_struct, ptr %111, i32 0, i32 6
  %121 = and i32 %109, 63
  %122 = getelementptr [0 x ptr], ptr @swapper_spaces, i32 0, i32 %121
  %123 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 149
  br label %124

124:                                              ; preds = %508, %115
  %125 = call i32 @shmem_unuse(i32 noundef %109) #18
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %522

127:                                              ; preds = %124
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 10)) #18, !srcloc !14
  %128 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 10), ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 10), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 10)) #18, !srcloc !25
  br label %129

129:                                              ; preds = %411, %127
  %130 = phi ptr [ %145, %411 ], [ getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16), %127 ]
  %131 = phi ptr [ %153, %411 ], [ @init_mm, %127 ]
  call void @_raw_spin_lock(ptr noundef nonnull @mmlist_lock) #18
  br label %132

132:                                              ; preds = %147, %129
  %133 = phi ptr [ %145, %147 ], [ %130, %129 ]
  %134 = load volatile i32, ptr %112, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %413, label %136

136:                                              ; preds = %132
  %137 = load volatile i32, ptr %6, align 4
  %138 = and i32 %137, 256
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %413, !prof !27

140:                                              ; preds = %136
  %141 = load volatile i32, ptr %6, align 4
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %413

144:                                              ; preds = %140
  %145 = load ptr, ptr %133, align 4
  %146 = icmp eq ptr %145, getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16)
  br i1 %146, label %413, label %147

147:                                              ; preds = %144
  %148 = getelementptr i8, ptr %145, i32 -44
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !29
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %148) #18, !srcloc !14
  %149 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %148, ptr %148, i32 0, i32 1, ptr elementtype(i32) %148) #18, !srcloc !30
  %150 = extractvalue { i32, i32, i32 } %149, 0
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %132, label %152

152:                                              ; preds = %147
  %153 = getelementptr i8, ptr %145, i32 -88
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !31
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %154 = load i16, ptr @mmlist_lock, align 4
  %155 = add i16 %154, 1
  store i16 %155, ptr @mmlist_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  call void @mmput(ptr noundef %131) #18
  %156 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %153, i1 noundef zeroext false) #18
  br label %159

159:                                              ; preds = %158, %152
  %160 = getelementptr i8, ptr %145, i32 -24
  call void @down_read(ptr noundef %160) #18
  %161 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %153, i1 noundef zeroext false, i1 noundef zeroext true) #18
  br label %164

164:                                              ; preds = %163, %159
  %165 = load ptr, ptr %153, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %404, label %167

167:                                              ; preds = %399, %164
  %168 = phi ptr [ %402, %399 ], [ %165, %164 ]
  %169 = getelementptr inbounds %struct.vm_area_struct, ptr %168, i32 0, i32 11
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %399, label %172

172:                                              ; preds = %167
  %173 = load i32, ptr %168, align 4
  %174 = getelementptr inbounds %struct.vm_area_struct, ptr %168, i32 0, i32 1
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds %struct.vm_area_struct, ptr %168, i32 0, i32 6
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.anon.21, ptr %177, i32 0, i32 8
  %179 = load ptr, ptr %178, align 4
  %180 = lshr i32 %173, 21
  %181 = getelementptr [2 x i32], ptr %179, i32 %180
  %182 = add i32 %175, -1
  %183 = getelementptr inbounds %struct.vm_area_struct, ptr %168, i32 0, i32 7
  br label %184

184:                                              ; preds = %396, %172
  %185 = phi i32 [ %173, %172 ], [ %191, %396 ]
  %186 = phi ptr [ %181, %172 ], [ %397, %396 ]
  %187 = add i32 %185, 2097152
  %188 = and i32 %187, -2097152
  %189 = add i32 %188, -1
  %190 = icmp ult i32 %189, %182
  %191 = select i1 %190, i32 %188, i32 %175
  %192 = call i32 @__cond_resched() #18
  %193 = load i32, ptr %186, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %396, label %195

195:                                              ; preds = %184
  %196 = and i32 %193, 2
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198, !prof !27

198:                                              ; preds = %195
  call void @pmd_clear_bad(ptr noundef %186) #18
  br label %396

199:                                              ; preds = %195
  %200 = load ptr, ptr %110, align 4
  %201 = load ptr, ptr @mem_map, align 4
  %202 = lshr i32 %193, 12
  %203 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %204 = sub i32 %202, %203
  %205 = getelementptr %struct.page, ptr %201, i32 %204
  %206 = load i32, ptr @pgprot_kernel, align 4
  %207 = or i32 %206, 512
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  %208 = load i32, ptr %123, align 8
  %209 = add i32 %208, 1
  store i32 %209, ptr %123, align 8
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !37
  %210 = call ptr @__kmap_local_page_prot(ptr noundef %205, i32 noundef %207) #18
  %211 = lshr i32 %185, 12
  %212 = and i32 %211, 511
  %213 = getelementptr i32, ptr %210, i32 %212
  %214 = getelementptr inbounds %struct.swap_info_struct, ptr %200, i32 0, i32 6
  br label %215

215:                                              ; preds = %388, %199
  %216 = phi i32 [ %185, %199 ], [ %391, %388 ]
  %217 = phi ptr [ %213, %199 ], [ %390, %388 ]
  %218 = load i32, ptr %217, align 4
  %219 = icmp eq i32 %218, 0
  %220 = and i32 %218, 1
  %221 = icmp ne i32 %220, 0
  %222 = or i1 %219, %221
  br i1 %222, label %388, label %223

223:                                              ; preds = %215
  %224 = lshr i32 %218, 7
  %225 = shl i32 %218, 24
  %226 = and i32 %225, 2080374784
  %227 = or i32 %226, %224
  %228 = insertvalue [1 x i32] poison, i32 %227, 0
  %229 = lshr exact i32 %226, 26
  %230 = icmp eq i32 %229, %109
  br i1 %230, label %231, label %388

231:                                              ; preds = %223
  call void @kunmap_local_indexed(ptr noundef %217) #18
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  %232 = load i32, ptr %123, align 8
  %233 = add i32 %232, -1
  store i32 %233, ptr %123, align 8
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  %234 = load ptr, ptr %214, align 4
  %235 = getelementptr i8, ptr %234, i32 %224
  %236 = call ptr @lookup_swap_cache([1 x i32] %228, ptr noundef nonnull %168, i32 noundef %216) #18
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %247

238:                                              ; preds = %231
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(48) %118, i8 0, i64 48, i1 false) #18
  store ptr %168, ptr %2, align 4
  store i32 %216, ptr %116, align 4
  store ptr %186, ptr %117, align 4
  %239 = call ptr @swapin_readahead([1 x i32] %228, i32 noundef 17829066, ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %2) #18
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %247

241:                                              ; preds = %238
  %242 = load volatile i8, ptr %235, align 1
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %373, label %244

244:                                              ; preds = %241
  %245 = load volatile i8, ptr %235, align 1
  %246 = icmp eq i8 %245, 63
  br i1 %246, label %373, label %404

247:                                              ; preds = %238, %231
  %248 = phi ptr [ %239, %238 ], [ %236, %231 ]
  %249 = getelementptr inbounds %struct.page, ptr %248, i32 0, i32 1
  %250 = load volatile i32, ptr %249, align 4
  %251 = and i32 %250, 1
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %255, label %253, !prof !27

253:                                              ; preds = %247
  %254 = add i32 %250, -1
  br label %257

255:                                              ; preds = %247
  %256 = ptrtoint ptr %248 to i32
  br label %257

257:                                              ; preds = %255, %253
  %258 = phi i32 [ %254, %253 ], [ %256, %255 ]
  %259 = inttoptr i32 %258 to ptr
  %260 = load volatile i32, ptr %259, align 4
  %261 = and i32 %260, 1
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %257
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %259) #18, !srcloc !14
  %264 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %259, ptr %259, i32 1, ptr elementtype(i32) %259) #18, !srcloc !40
  %265 = extractvalue { i32, i32, i32 } %264, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !41
  %266 = and i32 %265, 1
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %263, %257
  call void @__folio_lock(ptr noundef %259) #18
  br label %269

269:                                              ; preds = %268, %263
  call void @wait_on_page_writeback(ptr noundef nonnull %248) #18
  %270 = load ptr, ptr @mem_map, align 4
  %271 = load i32, ptr %186, align 4
  %272 = lshr i32 %271, 12
  %273 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %274 = sub i32 %272, %273
  %275 = getelementptr %struct.page, ptr %270, i32 %274, i32 1, i32 0, i32 3
  %276 = getelementptr %struct.page, ptr %270, i32 %274
  %277 = load i32, ptr @pgprot_kernel, align 4
  %278 = or i32 %277, 512
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  %279 = load i32, ptr %123, align 8
  %280 = add i32 %279, 1
  store i32 %280, ptr %123, align 8
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !37
  %281 = call ptr @__kmap_local_page_prot(ptr noundef %276, i32 noundef %278) #18
  %282 = lshr i32 %216, 12
  %283 = and i32 %282, 511
  %284 = getelementptr i32, ptr %281, i32 %283
  call void @_raw_spin_lock(ptr noundef %275) #18
  %285 = load i32, ptr %284, align 4
  %286 = lshr exact i32 %226, 24
  %287 = and i32 %218, -128
  %288 = or i32 %286, %287
  %289 = icmp eq i32 %285, %288
  br i1 %289, label %290, label %352, !prof !27

290:                                              ; preds = %269
  %291 = load ptr, ptr %176, align 4
  %292 = getelementptr %struct.anon.21, ptr %291, i32 0, i32 40, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !33
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %292) #18, !srcloc !14
  %293 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %292, ptr %292, i32 1, ptr elementtype(i32) %292) #18, !srcloc !34
  %294 = extractvalue { i32, i32 } %293, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !35
  call void @mm_trace_rss_stat(ptr noundef %291, i32 noundef 2, i32 noundef %294) #18
  %295 = load ptr, ptr %176, align 4
  %296 = getelementptr %struct.anon.21, ptr %295, i32 0, i32 40, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !44
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %296) #18, !srcloc !14
  %297 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %296, ptr %296, i32 1, ptr elementtype(i32) %296) #18, !srcloc !45
  %298 = extractvalue { i32, i32 } %297, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !46
  call void @mm_trace_rss_stat(ptr noundef %295, i32 noundef 1, i32 noundef %298) #18
  %299 = load volatile i32, ptr %249, align 4
  %300 = and i32 %299, 1
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %305, label %302, !prof !27

302:                                              ; preds = %290
  %303 = add i32 %299, -1
  %304 = ptrtoint ptr %248 to i32
  br label %307

305:                                              ; preds = %290
  %306 = ptrtoint ptr %248 to i32
  br label %307

307:                                              ; preds = %305, %302
  %308 = phi i32 [ %304, %302 ], [ %306, %305 ]
  %309 = phi i32 [ %303, %302 ], [ %306, %305 ]
  %310 = inttoptr i32 %309 to ptr
  %311 = getelementptr inbounds %struct.page, ptr %310, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %311) #18, !srcloc !14
  %312 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %311, ptr %311, i32 1, ptr elementtype(i32) %311) #18, !srcloc !25
  call void @page_add_anon_rmap(ptr noundef nonnull %248, ptr noundef nonnull %168, i32 noundef %216, i1 noundef zeroext false) #18
  %313 = load ptr, ptr %176, align 4
  %314 = load ptr, ptr @mem_map, align 4
  %315 = ptrtoint ptr %314 to i32
  %316 = sub i32 %308, %315
  %317 = lshr exact i32 %316, 5
  %318 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %319 = add i32 %317, %318
  %320 = shl i32 %319, 12
  %321 = load i32, ptr %183, align 4
  %322 = and i32 %321, -3
  %323 = or i32 %320, %322
  call void @set_pte_at(ptr noundef %313, i32 noundef %216, ptr noundef %284, i32 noundef %323) #18
  %324 = icmp eq i32 %227, 0
  br i1 %324, label %352, label %325

325:                                              ; preds = %307
  %326 = icmp ugt i32 %227, 2013265919
  br i1 %326, label %339, label %327

327:                                              ; preds = %325
  %328 = load volatile ptr, ptr %110, align 4
  %329 = icmp eq ptr %328, null
  br i1 %329, label %339, label %330

330:                                              ; preds = %327
  %331 = getelementptr inbounds %struct.swap_info_struct, ptr %328, i32 0, i32 1
  %332 = load i32, ptr %331, align 4
  %333 = and i32 %332, 1
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %339, label %335

335:                                              ; preds = %330
  %336 = getelementptr inbounds %struct.swap_info_struct, ptr %328, i32 0, i32 5
  %337 = load i32, ptr %336, align 4
  %338 = icmp ult i32 %224, %337
  br i1 %338, label %342, label %339

339:                                              ; preds = %335, %330, %327, %325
  %340 = phi ptr [ @Bad_offset, %335 ], [ @Unused_file, %330 ], [ @Bad_file, %325 ], [ @Bad_file, %327 ]
  %341 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.__swap_info_get, ptr noundef nonnull %340, i32 noundef %227) #19
  br label %352

342:                                              ; preds = %335
  %343 = getelementptr inbounds %struct.swap_info_struct, ptr %328, i32 0, i32 6
  %344 = load ptr, ptr %343, align 4
  %345 = getelementptr i8, ptr %344, i32 %224
  %346 = load i8, ptr %345, align 1
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %342
  %349 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._swap_info_get, ptr noundef nonnull @Unused_offset, i32 noundef %227) #19
  br label %352

350:                                              ; preds = %342
  %351 = call fastcc zeroext i8 @__swap_entry_free(ptr noundef nonnull %328, [1 x i32] %228) #18
  br label %352

352:                                              ; preds = %350, %348, %339, %307, %269
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %353 = load i16, ptr %275, align 4
  %354 = add i16 %353, 1
  store i16 %354, ptr %275, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  call void @kunmap_local_indexed(ptr noundef %284) #18
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  %355 = load i32, ptr %123, align 8
  %356 = add i32 %355, -1
  store i32 %356, ptr %123, align 8
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  %357 = call i32 @try_to_free_swap(ptr noundef nonnull %248) #18
  call void @unlock_page(ptr noundef nonnull %248) #18
  %358 = load volatile i32, ptr %249, align 4
  %359 = and i32 %358, 1
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %363, label %361, !prof !27

361:                                              ; preds = %352
  %362 = add i32 %358, -1
  br label %365

363:                                              ; preds = %352
  %364 = ptrtoint ptr %248 to i32
  br label %365

365:                                              ; preds = %363, %361
  %366 = phi i32 [ %362, %361 ], [ %364, %363 ]
  %367 = inttoptr i32 %366 to ptr
  %368 = getelementptr inbounds %struct.page, ptr %367, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !33
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %368) #18, !srcloc !14
  %369 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %368, ptr %368, i32 1, ptr elementtype(i32) %368) #18, !srcloc !34
  %370 = extractvalue { i32, i32 } %369, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !35
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %365
  call void @__put_page(ptr noundef %367) #18
  br label %373

373:                                              ; preds = %372, %365, %244, %241
  %374 = load ptr, ptr @mem_map, align 4
  %375 = load i32, ptr %186, align 4
  %376 = lshr i32 %375, 12
  %377 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %378 = sub i32 %376, %377
  %379 = getelementptr %struct.page, ptr %374, i32 %378
  %380 = load i32, ptr @pgprot_kernel, align 4
  %381 = or i32 %380, 512
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  %382 = load i32, ptr %123, align 8
  %383 = add i32 %382, 1
  store i32 %383, ptr %123, align 8
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !37
  %384 = call ptr @__kmap_local_page_prot(ptr noundef %379, i32 noundef %381) #18
  %385 = lshr i32 %216, 12
  %386 = and i32 %385, 511
  %387 = getelementptr i32, ptr %384, i32 %386
  br label %388

388:                                              ; preds = %373, %223, %215
  %389 = phi ptr [ %217, %223 ], [ %387, %373 ], [ %217, %215 ]
  %390 = getelementptr i32, ptr %389, i32 1
  %391 = add i32 %216, 4096
  %392 = icmp eq i32 %391, %191
  br i1 %392, label %393, label %215

393:                                              ; preds = %388
  call void @kunmap_local_indexed(ptr noundef %389) #18
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  %394 = load i32, ptr %123, align 8
  %395 = add i32 %394, -1
  store i32 %395, ptr %123, align 8
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  br label %396

396:                                              ; preds = %393, %198, %184
  %397 = getelementptr [2 x i32], ptr %186, i32 1
  %398 = icmp eq i32 %191, %175
  br i1 %398, label %399, label %184

399:                                              ; preds = %396, %167
  %400 = call i32 @__cond_resched() #18
  %401 = getelementptr inbounds %struct.vm_area_struct, ptr %168, i32 0, i32 2
  %402 = load ptr, ptr %401, align 4
  %403 = icmp eq ptr %402, null
  br i1 %403, label %404, label %167

404:                                              ; preds = %399, %244, %164
  %405 = phi i1 [ true, %164 ], [ false, %244 ], [ true, %399 ]
  %406 = phi i32 [ 0, %164 ], [ -12, %244 ], [ 0, %399 ]
  %407 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %408 = icmp sgt i32 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %404
  call void @__mmap_lock_do_trace_released(ptr noundef %153, i1 noundef zeroext false) #18
  br label %410

410:                                              ; preds = %409, %404
  call void @up_read(ptr noundef %160) #18
  br i1 %405, label %411, label %521

411:                                              ; preds = %410
  %412 = call i32 @__cond_resched() #18
  br label %129

413:                                              ; preds = %144, %140, %136, %132
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %414 = load i16, ptr @mmlist_lock, align 4
  %415 = add i16 %414, 1
  store i16 %415, ptr @mmlist_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  call void @mmput(ptr noundef %131) #18
  %416 = load volatile i32, ptr %112, align 4
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %501, label %418

418:                                              ; preds = %498, %413
  %419 = phi i32 [ %448, %498 ], [ 0, %413 ]
  %420 = load volatile i32, ptr %6, align 4
  %421 = and i32 %420, 256
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %501, !prof !27

423:                                              ; preds = %418
  %424 = load volatile i32, ptr %6, align 4
  %425 = and i32 %424, 1
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %501

427:                                              ; preds = %423
  %428 = add i32 %419, 1
  %429 = load i32, ptr %119, align 4
  %430 = icmp ult i32 %428, %429
  br i1 %430, label %431, label %447

431:                                              ; preds = %443, %427
  %432 = phi i32 [ %444, %443 ], [ %429, %427 ]
  %433 = phi i32 [ %445, %443 ], [ %428, %427 ]
  %434 = load ptr, ptr %120, align 4
  %435 = getelementptr i8, ptr %434, i32 %433
  %436 = load volatile i8, ptr %435, align 1
  switch i8 %436, label %447 [
    i8 127, label %437
    i8 63, label %437
    i8 0, label %437
  ]

437:                                              ; preds = %431, %431, %431
  %438 = and i32 %433, 255
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %443

440:                                              ; preds = %437
  %441 = call i32 @__cond_resched() #18
  %442 = load i32, ptr %119, align 4
  br label %443

443:                                              ; preds = %440, %437
  %444 = phi i32 [ %432, %437 ], [ %442, %440 ]
  %445 = add i32 %433, 1
  %446 = icmp ult i32 %445, %444
  br i1 %446, label %431, label %447

447:                                              ; preds = %443, %431, %427
  %448 = phi i32 [ %428, %427 ], [ %433, %431 ], [ %445, %443 ]
  %449 = phi i32 [ %429, %427 ], [ %432, %431 ], [ %444, %443 ]
  %450 = icmp eq i32 %448, %449
  %451 = icmp eq i32 %448, 0
  %452 = or i1 %451, %450
  br i1 %452, label %501, label %453

453:                                              ; preds = %447
  %454 = load ptr, ptr %122, align 4
  %455 = lshr i32 %448, 14
  %456 = and i32 %455, 4095
  %457 = getelementptr %struct.address_space, ptr %454, i32 %456
  %458 = call ptr @pagecache_get_page(ptr noundef %457, i32 noundef %448, i32 noundef 0, i32 noundef 0) #18
  %459 = icmp eq ptr %458, null
  br i1 %459, label %498, label %460

460:                                              ; preds = %453
  %461 = getelementptr inbounds %struct.page, ptr %458, i32 0, i32 1
  %462 = load volatile i32, ptr %461, align 4
  %463 = and i32 %462, 1
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %467, label %465, !prof !27

465:                                              ; preds = %460
  %466 = add i32 %462, -1
  br label %469

467:                                              ; preds = %460
  %468 = ptrtoint ptr %458 to i32
  br label %469

469:                                              ; preds = %467, %465
  %470 = phi i32 [ %466, %465 ], [ %468, %467 ]
  %471 = inttoptr i32 %470 to ptr
  %472 = load volatile i32, ptr %471, align 4
  %473 = and i32 %472, 1
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %480

475:                                              ; preds = %469
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %471) #18, !srcloc !14
  %476 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %471, ptr %471, i32 1, ptr elementtype(i32) %471) #18, !srcloc !40
  %477 = extractvalue { i32, i32, i32 } %476, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !41
  %478 = and i32 %477, 1
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %481, label %480

480:                                              ; preds = %475, %469
  call void @__folio_lock(ptr noundef %471) #18
  br label %481

481:                                              ; preds = %480, %475
  call void @wait_on_page_writeback(ptr noundef nonnull %458) #18
  %482 = call i32 @try_to_free_swap(ptr noundef nonnull %458) #18
  call void @unlock_page(ptr noundef nonnull %458) #18
  %483 = load volatile i32, ptr %461, align 4
  %484 = and i32 %483, 1
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %488, label %486, !prof !27

486:                                              ; preds = %481
  %487 = add i32 %483, -1
  br label %490

488:                                              ; preds = %481
  %489 = ptrtoint ptr %458 to i32
  br label %490

490:                                              ; preds = %488, %486
  %491 = phi i32 [ %487, %486 ], [ %489, %488 ]
  %492 = inttoptr i32 %491 to ptr
  %493 = getelementptr inbounds %struct.page, ptr %492, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !33
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %493) #18, !srcloc !14
  %494 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %493, ptr %493, i32 1, ptr elementtype(i32) %493) #18, !srcloc !34
  %495 = extractvalue { i32, i32 } %494, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !35
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %498

497:                                              ; preds = %490
  call void @__put_page(ptr noundef %492) #18
  br label %498

498:                                              ; preds = %497, %490, %453
  %499 = load volatile i32, ptr %112, align 4
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %418

501:                                              ; preds = %498, %447, %423, %418, %413
  %502 = load volatile i32, ptr %112, align 4
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %512, label %504

504:                                              ; preds = %501
  %505 = load volatile i32, ptr %6, align 4
  %506 = and i32 %505, 256
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %522, !prof !27

508:                                              ; preds = %504
  %509 = load volatile i32, ptr %6, align 4
  %510 = and i32 %509, 1
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %124, label %522

512:                                              ; preds = %501, %92
  %513 = load ptr, ptr %104, align 16
  %514 = getelementptr inbounds %struct.signal_struct, ptr %513, i32 0, i32 51
  store i8 0, ptr %514, align 8
  call void @reenable_swap_slots_cache_unlock() #18
  call void @percpu_ref_kill_and_confirm(ptr noundef %46, ptr noundef null) #18
  call void @synchronize_rcu() #18
  %515 = getelementptr i8, ptr %26, i32 88
  call void @wait_for_completion(ptr noundef %515) #18
  %516 = getelementptr i8, ptr %26, i32 112
  %517 = call zeroext i1 @flush_work(ptr noundef %516) #18
  %518 = getelementptr i8, ptr %26, i32 72
  %519 = load volatile ptr, ptr %518, align 4
  %520 = icmp eq ptr %519, null
  br i1 %520, label %570, label %566

521:                                              ; preds = %410
  call void @mmput(ptr noundef %153) #18
  br label %522

522:                                              ; preds = %521, %508, %504, %124
  %523 = phi i32 [ %406, %521 ], [ %125, %124 ], [ -4, %508 ], [ -4, %504 ]
  %524 = load ptr, ptr %104, align 16
  %525 = getelementptr inbounds %struct.signal_struct, ptr %524, i32 0, i32 51
  store i8 0, ptr %525, align 8
  call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #18
  call void @_raw_spin_lock(ptr noundef %63) #18
  %526 = load i16, ptr %64, align 4
  %527 = zext i16 %526 to i32
  %528 = icmp sgt i16 %526, -1
  br i1 %528, label %532, label %529

529:                                              ; preds = %522
  %530 = load i32, ptr @least_priority, align 4
  %531 = add i32 %530, -1
  store i32 %531, ptr @least_priority, align 4
  br label %532

532:                                              ; preds = %529, %522
  %533 = phi i32 [ %531, %529 ], [ %527, %522 ]
  %534 = trunc i32 %533 to i16
  store i16 %534, ptr %64, align 4
  %535 = shl i32 %533, 16
  %536 = ashr exact i32 %535, 16
  %537 = sub nsw i32 0, %536
  store i32 %537, ptr %47, align 4
  %538 = icmp sgt i16 %534, -1
  br i1 %538, label %560, label %539

539:                                              ; preds = %532
  %540 = getelementptr i8, ptr %26, i32 76
  %541 = load ptr, ptr %540, align 4
  %542 = icmp eq ptr %541, null
  br i1 %542, label %543, label %552

543:                                              ; preds = %539
  %544 = load ptr, ptr %45, align 4
  %545 = getelementptr inbounds %struct.file, ptr %544, i32 0, i32 2
  %546 = load ptr, ptr %545, align 8
  %547 = getelementptr inbounds %struct.inode, ptr %546, i32 0, i32 8
  %548 = load ptr, ptr %547, align 4
  %549 = getelementptr inbounds %struct.super_block, ptr %548, i32 0, i32 20
  %550 = load ptr, ptr %549, align 4
  %551 = icmp eq ptr %550, null
  br i1 %551, label %559, label %552

552:                                              ; preds = %543, %539
  %553 = phi ptr [ %550, %543 ], [ %541, %539 ]
  %554 = getelementptr inbounds %struct.block_device, ptr %553, i32 0, i32 17
  %555 = load ptr, ptr %554, align 8
  %556 = getelementptr inbounds %struct.gendisk, ptr %555, i32 0, i32 21
  %557 = load i32, ptr %556, align 4
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %560, label %559

559:                                              ; preds = %552, %543
  br label %560

560:                                              ; preds = %559, %552, %532
  %561 = phi i32 [ %537, %559 ], [ %537, %532 ], [ 1, %552 ]
  store i32 %561, ptr %59, align 4
  call fastcc void @_enable_swap_info(ptr noundef %46) #18
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %562 = load i16, ptr %63, align 4
  %563 = add i16 %562, 1
  store i16 %563, ptr %63, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %564 = load i16, ptr @swap_lock, align 4
  %565 = add i16 %564, 1
  store i16 %565, ptr @swap_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  call void @reenable_swap_slots_cache_unlock() #18
  br label %708

566:                                              ; preds = %566, %512
  %567 = phi ptr [ %568, %566 ], [ %519, %512 ]
  call void @rb_erase(ptr noundef nonnull %567, ptr noundef %518) #18
  call void @kfree(ptr noundef nonnull %567) #18
  %568 = load volatile ptr, ptr %518, align 4
  %569 = icmp eq ptr %568, null
  br i1 %569, label %570, label %566

570:                                              ; preds = %566, %512
  %571 = load i32, ptr %44, align 4
  %572 = and i32 %571, 128
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %586, label %574

574:                                              ; preds = %570
  %575 = load ptr, ptr %45, align 4
  %576 = getelementptr inbounds %struct.file, ptr %575, i32 0, i32 17
  %577 = load ptr, ptr %576, align 8
  %578 = and i32 %571, -129
  store i32 %578, ptr %44, align 4
  %579 = getelementptr inbounds %struct.address_space, ptr %577, i32 0, i32 9
  %580 = load ptr, ptr %579, align 4
  %581 = getelementptr inbounds %struct.address_space_operations, ptr %580, i32 0, i32 21
  %582 = load ptr, ptr %581, align 4
  %583 = icmp eq ptr %582, null
  br i1 %583, label %586, label %584

584:                                              ; preds = %574
  call void %582(ptr noundef %575) #18
  %585 = load i32, ptr %44, align 4
  br label %586

586:                                              ; preds = %584, %574, %570
  %587 = phi i32 [ %571, %570 ], [ %578, %574 ], [ %585, %584 ]
  %588 = and i32 %587, 32
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %622, label %590

590:                                              ; preds = %586
  %591 = getelementptr i8, ptr %26, i32 12
  %592 = load i32, ptr %591, align 4
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %622, label %594

594:                                              ; preds = %590
  %595 = getelementptr i8, ptr %26, i32 16
  br label %596

596:                                              ; preds = %618, %594
  %597 = phi i32 [ 0, %594 ], [ %619, %618 ]
  %598 = load ptr, ptr %595, align 4
  %599 = getelementptr i8, ptr %598, i32 %597
  %600 = call ptr @vmalloc_to_page(ptr noundef %599) #18
  %601 = getelementptr inbounds %struct.page, ptr %600, i32 0, i32 1, i32 0, i32 3
  %602 = load i32, ptr %601, align 4
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %618, label %604

604:                                              ; preds = %596
  %605 = getelementptr inbounds %struct.page, ptr %600, i32 0, i32 1
  %606 = load ptr, ptr %605, align 4
  %607 = getelementptr i8, ptr %606, i32 -4
  %608 = icmp eq ptr %607, %600
  br i1 %608, label %618, label %609

609:                                              ; preds = %609, %604
  %610 = phi ptr [ %616, %609 ], [ %607, %604 ]
  %611 = phi ptr [ %612, %609 ], [ %606, %604 ]
  %612 = load ptr, ptr %611, align 4
  %613 = getelementptr inbounds %struct.list_head, ptr %611, i32 0, i32 1
  %614 = load ptr, ptr %613, align 4
  %615 = getelementptr inbounds %struct.list_head, ptr %612, i32 0, i32 1
  store ptr %614, ptr %615, align 4
  store volatile ptr %612, ptr %614, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %611, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %613, align 4
  call void @__free_pages(ptr noundef %610, i32 noundef 0) #18
  %616 = getelementptr i8, ptr %612, i32 -4
  %617 = icmp eq ptr %616, %600
  br i1 %617, label %618, label %609

618:                                              ; preds = %609, %604, %596
  %619 = add i32 %597, 4096
  %620 = load i32, ptr %591, align 4
  %621 = icmp ult i32 %619, %620
  br i1 %621, label %596, label %622

622:                                              ; preds = %618, %590, %586
  %623 = getelementptr i8, ptr %26, i32 76
  %624 = load ptr, ptr %623, align 4
  %625 = icmp eq ptr %624, null
  br i1 %625, label %633, label %626

626:                                              ; preds = %622
  %627 = getelementptr inbounds %struct.block_device, ptr %624, i32 0, i32 18
  %628 = load ptr, ptr %627, align 4
  %629 = getelementptr inbounds %struct.request_queue, ptr %628, i32 0, i32 11
  %630 = load volatile i32, ptr %629, align 4
  %631 = and i32 %630, 64
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %633, label %635

633:                                              ; preds = %626, %622
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nr_rotate_swap) #18, !srcloc !14
  %634 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_rotate_swap, ptr nonnull @nr_rotate_swap, i32 1, ptr nonnull elementtype(i32) @nr_rotate_swap) #18, !srcloc !15
  br label %635

635:                                              ; preds = %633, %626
  call void @mutex_lock(ptr noundef nonnull @swapon_mutex) #18
  call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #18
  call void @_raw_spin_lock(ptr noundef %63) #18
  %636 = load i32, ptr @nr_swapfiles, align 4
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %648, label %641

638:                                              ; preds = %641
  %639 = add nuw i32 %642, 1
  %640 = icmp eq i32 %639, %636
  br i1 %640, label %648, label %641

641:                                              ; preds = %638, %635
  %642 = phi i32 [ %639, %638 ], [ 0, %635 ]
  %643 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %642
  %644 = load ptr, ptr %643, align 4
  %645 = getelementptr inbounds %struct.swap_info_struct, ptr %644, i32 0, i32 12
  %646 = load i32, ptr %645, align 4
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %638, label %661

648:                                              ; preds = %638, %635
  call void @_raw_spin_lock(ptr noundef nonnull @mmlist_lock) #18
  %649 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16), align 8
  %650 = icmp eq ptr %649, getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16)
  br i1 %650, label %658, label %651

651:                                              ; preds = %651, %648
  %652 = phi ptr [ %653, %651 ], [ %649, %648 ]
  %653 = load ptr, ptr %652, align 4
  %654 = getelementptr inbounds %struct.list_head, ptr %652, i32 0, i32 1
  %655 = load ptr, ptr %654, align 4
  %656 = getelementptr inbounds %struct.list_head, ptr %653, i32 0, i32 1
  store ptr %655, ptr %656, align 4
  store volatile ptr %653, ptr %655, align 4
  store volatile ptr %652, ptr %652, align 4
  store ptr %652, ptr %654, align 4
  %657 = icmp eq ptr %653, getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16)
  br i1 %657, label %658, label %651

658:                                              ; preds = %651, %648
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %659 = load i16, ptr @mmlist_lock, align 4
  %660 = add i16 %659, 1
  store i16 %660, ptr @mmlist_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %661

661:                                              ; preds = %658, %641
  %662 = getelementptr i8, ptr %26, i32 44
  store i32 0, ptr %662, align 4
  %663 = load i32, ptr %44, align 4
  %664 = icmp ugt i32 %663, 16383
  br i1 %664, label %665, label %673

665:                                              ; preds = %665, %661
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %666 = load i16, ptr %63, align 4
  %667 = add i16 %666, 1
  store i16 %667, ptr %63, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %668 = load i16, ptr @swap_lock, align 4
  %669 = add i16 %668, 1
  store i16 %669, ptr @swap_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %670 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #18
  call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #18
  call void @_raw_spin_lock(ptr noundef %63) #18
  %671 = load i32, ptr %44, align 4
  %672 = icmp ugt i32 %671, 16383
  br i1 %672, label %665, label %673

673:                                              ; preds = %665, %661
  %674 = load ptr, ptr %45, align 4
  %675 = getelementptr i8, ptr %26, i32 84
  %676 = load i32, ptr %675, align 4
  store ptr null, ptr %45, align 4
  %677 = getelementptr i8, ptr %26, i32 12
  store i32 0, ptr %677, align 4
  %678 = getelementptr i8, ptr %26, i32 16
  %679 = load ptr, ptr %678, align 4
  store ptr null, ptr %678, align 4
  %680 = getelementptr i8, ptr %26, i32 20
  %681 = load ptr, ptr %680, align 4
  store ptr null, ptr %680, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %682 = load i16, ptr %63, align 4
  %683 = add i16 %682, 1
  store i16 %683, ptr %63, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %684 = load i16, ptr @swap_lock, align 4
  %685 = add i16 %684, 1
  store i16 %685, ptr @swap_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  call void @mutex_unlock(ptr noundef nonnull @swapon_mutex) #18
  %686 = getelementptr i8, ptr %26, i32 68
  %687 = load ptr, ptr %686, align 4
  call void @free_percpu(ptr noundef %687) #18
  store ptr null, ptr %686, align 4
  %688 = getelementptr i8, ptr %26, i32 64
  %689 = load ptr, ptr %688, align 4
  call void @free_percpu(ptr noundef %689) #18
  store ptr null, ptr %688, align 4
  call void @vfree(ptr noundef %679) #18
  call void @kvfree(ptr noundef %681) #18
  call void @kvfree(ptr noundef null) #18
  %690 = load i8, ptr %107, align 4
  %691 = sext i8 %690 to i32
  call void @exit_swap_address_space(i32 noundef %691) #18
  %692 = load ptr, ptr %22, align 4
  %693 = load i16, ptr %692, align 8
  %694 = and i16 %693, -4096
  %695 = icmp eq i16 %694, 24576
  br i1 %695, label %696, label %699

696:                                              ; preds = %673
  %697 = call ptr @I_BDEV(ptr noundef %692) #18
  %698 = call i32 @set_blocksize(ptr noundef %697, i32 noundef %676) #18
  call void @blkdev_put(ptr noundef %697, i32 noundef 131) #18
  br label %699

699:                                              ; preds = %696, %673
  %700 = getelementptr inbounds %struct.inode, ptr %692, i32 0, i32 24
  call void @down_write(ptr noundef %700) #18
  %701 = getelementptr inbounds %struct.inode, ptr %692, i32 0, i32 4
  %702 = load i32, ptr %701, align 4
  %703 = and i32 %702, -257
  store i32 %703, ptr %701, align 4
  call void @up_write(ptr noundef %700) #18
  %704 = call i32 @filp_close(ptr noundef %674, ptr noundef null) #18
  call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #18
  store i32 0, ptr %44, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %705 = load i16, ptr @swap_lock, align 4
  %706 = add i16 %705, 1
  store i16 %706, ptr @swap_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @proc_poll_event) #18, !srcloc !14
  %707 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @proc_poll_event, ptr nonnull @proc_poll_event, i32 1, ptr nonnull elementtype(i32) @proc_poll_event) #18, !srcloc !25
  call void @__wake_up(ptr noundef nonnull @proc_poll_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #18
  br label %708

708:                                              ; preds = %699, %560, %70, %40
  %709 = phi i32 [ -12, %70 ], [ %523, %560 ], [ 0, %699 ], [ -22, %40 ]
  %710 = call i32 @filp_close(ptr noundef %17, ptr noundef null) #18
  br label %711

711:                                              ; preds = %708, %16
  %712 = phi i32 [ %18, %16 ], [ %709, %708 ]
  call void @putname(ptr noundef %12) #18
  br label %713

713:                                              ; preds = %711, %14, %1
  %714 = phi i32 [ %15, %14 ], [ %712, %711 ], [ -1, %1 ]
  ret i32 %714
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @procswaps_init() #7 section ".init.text" {
  %1 = tail call ptr @proc_create(ptr noundef nonnull @.str.5, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @swaps_proc_ops) #18
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal i32 @max_swapfiles_check() #8 section ".init.text" {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @generic_max_swapfile_size() local_unnamed_addr #9 {
  ret i32 33554432
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @max_swapfile_size() local_unnamed_addr #0 {
  ret i32 33554432
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_swapon(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store i64 0, ptr %3, align 8, !annotation !17
  %5 = icmp ult i32 %1, 524288
  br i1 %5, label %6, label %935

6:                                                ; preds = %2
  %7 = tail call zeroext i1 @capable(i32 noundef 21) #18
  br i1 %7, label %8, label %935

8:                                                ; preds = %6
  %9 = load ptr, ptr @swap_avail_heads, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %935, label %11

11:                                               ; preds = %8
  %12 = tail call noalias ptr @kvmalloc_node(i32 noundef 192, i32 noundef 3520, i32 noundef -1) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %71, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @percpu_ref_init(ptr noundef nonnull %12, ptr noundef nonnull @swap_users_ref_free, i32 noundef 2, i32 noundef 3264) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %69

17:                                               ; preds = %14
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #18
  %18 = load i32, ptr @nr_swapfiles, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %28, %17
  %21 = phi i32 [ %29, %28 ], [ 0, %17 ]
  %22 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.swap_info_struct, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = add nuw i32 %21, 1
  %30 = icmp eq i32 %29, %18
  br i1 %30, label %33, label %20

31:                                               ; preds = %20
  %32 = icmp ugt i32 %21, 29
  br i1 %32, label %35, label %44

33:                                               ; preds = %28
  %34 = icmp ugt i32 %18, 29
  br i1 %34, label %35, label %38

35:                                               ; preds = %33, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %36 = load i16, ptr @swap_lock, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr @swap_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  tail call void @percpu_ref_exit(ptr noundef nonnull %12) #18
  br label %69

38:                                               ; preds = %33, %17
  %39 = trunc i32 %18 to i8
  %40 = getelementptr inbounds %struct.swap_info_struct, ptr %12, i32 0, i32 4
  store i8 %39, ptr %40, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !47
  %41 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %18
  store volatile ptr %12, ptr %41, align 4
  %42 = load i32, ptr @nr_swapfiles, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr @nr_swapfiles, align 4
  br label %44

44:                                               ; preds = %38, %31
  %45 = phi ptr [ null, %38 ], [ %12, %31 ]
  %46 = phi ptr [ %12, %38 ], [ %23, %31 ]
  %47 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 17
  store ptr null, ptr %47, align 4
  %48 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 3
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 3, i32 1
  store volatile ptr %49, ptr %49, align 4
  %50 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 3, i32 1, i32 1
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 3, i32 2
  store volatile ptr %51, ptr %51, align 4
  %52 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 3, i32 2, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 26
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 1, i32 0, i32 1
  store volatile ptr %54, ptr %54, align 4
  %55 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 1, i32 1
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 1, i32 2
  store volatile ptr %56, ptr %56, align 4
  %57 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 1, i32 3
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 1
  store i32 1, ptr %58, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %59 = load i16, ptr @swap_lock, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr @swap_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %61 = icmp eq ptr %45, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %44
  tail call void @percpu_ref_exit(ptr noundef nonnull %45) #18
  tail call void @kvfree(ptr noundef nonnull %45) #18
  br label %63

63:                                               ; preds = %62, %44
  %64 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 22
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 23
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 21
  store i32 0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 21, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %67, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #18
  %68 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %71, label %74

69:                                               ; preds = %35, %14
  %70 = phi ptr [ inttoptr (i32 -1 to ptr), %35 ], [ inttoptr (i32 -12 to ptr), %14 ]
  tail call void @kvfree(ptr noundef nonnull %12) #18
  br label %71

71:                                               ; preds = %69, %63, %11
  %72 = phi ptr [ %46, %63 ], [ inttoptr (i32 -12 to ptr), %11 ], [ %70, %69 ]
  %73 = ptrtoint ptr %72 to i32
  br label %935

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 24
  store i32 -32, ptr %75, align 4
  %76 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 24, i32 1
  store volatile ptr %76, ptr %76, align 4
  %77 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 24, i32 1, i32 1
  store ptr %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 24, i32 2
  store ptr @swap_discard_work, ptr %78, align 4
  %79 = tail call ptr @getname(ptr noundef %4) #18
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = ptrtoint ptr %79 to i32
  br label %830

83:                                               ; preds = %74
  %84 = tail call ptr @file_open_name(ptr noundef %79, i32 noundef 131074, i16 noundef zeroext 0) #18
  %85 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = ptrtoint ptr %84 to i32
  br label %830

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 19
  store ptr %84, ptr %89, align 4
  %90 = getelementptr inbounds %struct.file, ptr %84, i32 0, i32 17
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.file, ptr %84, i32 0, i32 1, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %91, align 4
  %95 = load i16, ptr %94, align 8
  %96 = and i16 %95, -4096
  switch i16 %96, label %124 [
    i16 24576, label %97
    i16 -32768, label %116
  ]

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.inode, ptr %94, i32 0, i32 12
  %99 = load i32, ptr %98, align 4
  %100 = tail call ptr @blkdev_get_by_dev(i32 noundef %99, i32 noundef 131, ptr noundef %46) #18
  %101 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 18
  store ptr %100, ptr %101, align 4
  %102 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %102, label %122, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.block_device, ptr %100, i32 0, i32 7
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.inode, ptr %105, i32 0, i32 19
  %107 = load i8, ptr %106, align 2
  %108 = zext i8 %107 to i32
  %109 = shl nuw i32 1, %108
  %110 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 20
  store i32 %109, ptr %110, align 4
  %111 = tail call i32 @set_blocksize(ptr noundef %100, i32 noundef 4096) #18
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %830, label %113

113:                                              ; preds = %103
  %114 = load i32, ptr %58, align 4
  %115 = or i32 %114, 64
  store i32 %115, ptr %58, align 4
  br label %124

116:                                              ; preds = %88
  %117 = getelementptr inbounds %struct.inode, ptr %94, i32 0, i32 8
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.super_block, ptr %118, i32 0, i32 20
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 18
  store ptr %120, ptr %121, align 4
  br label %124

122:                                              ; preds = %97
  %123 = ptrtoint ptr %100 to i32
  store ptr null, ptr %101, align 4
  br label %830

124:                                              ; preds = %116, %113, %88
  %125 = getelementptr inbounds %struct.inode, ptr %94, i32 0, i32 24
  tail call void @down_write(ptr noundef %125) #18
  %126 = getelementptr inbounds %struct.dentry, ptr %93, i32 0, i32 2, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.dentry, ptr %93, i32 0, i32 3
  %131 = load ptr, ptr %130, align 8
  %132 = icmp eq ptr %131, %93
  br i1 %132, label %133, label %824

133:                                              ; preds = %129, %124
  %134 = load i32, ptr %93, align 8
  %135 = and i32 %134, 256
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %824

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.inode, ptr %94, i32 0, i32 4
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 256
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %824

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.address_space, ptr %91, i32 0, i32 9
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.address_space_operations, ptr %144, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %824, label %148

148:                                              ; preds = %142
  %149 = tail call ptr @read_cache_page(ptr noundef %91, i32 noundef 0, ptr noundef null, ptr noundef %84) #18
  %150 = icmp ugt ptr %149, inttoptr (i32 -4096 to ptr)
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = ptrtoint ptr %149 to i32
  br label %824

153:                                              ; preds = %148
  %154 = load i32, ptr %149, align 4
  %155 = lshr i32 %154, 30
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %164, label %157

157:                                              ; preds = %153
  %158 = icmp ne i32 %155, 3
  %159 = load i32, ptr @movable_zone, align 4
  %160 = icmp ne i32 %159, 2
  %161 = select i1 %158, i1 true, i1 %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = tail call ptr @page_address(ptr noundef %149) #18
  br label %166

164:                                              ; preds = %157, %153
  %165 = tail call ptr @kmap_high(ptr noundef %149) #18
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi ptr [ %165, %164 ], [ %163, %162 ]
  %168 = getelementptr inbounds %struct.anon.101, ptr %167, i32 0, i32 1
  %169 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.22, ptr noundef dereferenceable(10) %168, i32 10) #18
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %166
  %172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #19
  br label %824

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.anon.102, ptr %167, i32 0, i32 1
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, 16777216
  br i1 %176, label %177, label %197

177:                                              ; preds = %173
  store i32 1, ptr %174, align 4
  %178 = getelementptr inbounds %struct.anon.102, ptr %167, i32 0, i32 2
  %179 = load i32, ptr %178, align 4
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #18
  store i32 %180, ptr %178, align 4
  %181 = getelementptr inbounds %struct.anon.102, ptr %167, i32 0, i32 3
  %182 = load i32, ptr %181, align 4
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #18
  store i32 %183, ptr %181, align 4
  %184 = icmp ugt i32 %183, 637
  br i1 %184, label %824, label %185

185:                                              ; preds = %177
  %186 = icmp eq i32 %182, 0
  br i1 %186, label %202, label %187

187:                                              ; preds = %187, %185
  %188 = phi i32 [ %192, %187 ], [ 0, %185 ]
  %189 = getelementptr %struct.anon.102, ptr %167, i32 0, i32 7, i32 %188
  %190 = load i32, ptr %189, align 4
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #18
  store i32 %191, ptr %189, align 4
  %192 = add nuw i32 %188, 1
  %193 = load i32, ptr %181, align 4
  %194 = icmp ult i32 %192, %193
  br i1 %194, label %187, label %195

195:                                              ; preds = %187
  %196 = load i32, ptr %174, align 4
  br label %197

197:                                              ; preds = %195, %173
  %198 = phi i32 [ %175, %173 ], [ %196, %195 ]
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %198) #19
  br label %824

202:                                              ; preds = %197, %185
  %203 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 9
  store i32 1, ptr %203, align 4
  %204 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 13
  store i32 1, ptr %204, align 4
  %205 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 14
  store i32 0, ptr %205, align 4
  %206 = tail call i32 @max_swapfile_size() #18
  %207 = getelementptr inbounds %struct.anon.102, ptr %167, i32 0, i32 2
  %208 = load i32, ptr %207, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %202
  %211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #19
  br label %824

212:                                              ; preds = %202
  %213 = icmp ugt i32 %208, %206
  br i1 %213, label %214, label %218

214:                                              ; preds = %212
  %215 = shl i32 %206, 2
  %216 = shl i32 %208, 2
  %217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %215, i32 noundef %216) #19
  br label %218

218:                                              ; preds = %214, %212
  %219 = icmp ugt i32 %206, %208
  %220 = add i32 %208, 1
  %221 = icmp eq i32 %220, 0
  %222 = select i1 %221, i32 -1, i32 %220
  %223 = select i1 %219, i32 %222, i32 %206
  %224 = add i32 %223, -1
  %225 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 10
  store i32 %224, ptr %225, align 4
  %226 = icmp eq i32 %223, 0
  br i1 %226, label %824, label %227

227:                                              ; preds = %218
  %228 = getelementptr inbounds %struct.inode, ptr %94, i32 0, i32 22
  %229 = getelementptr inbounds %struct.inode, ptr %94, i32 0, i32 13
  br label %230

230:                                              ; preds = %238, %227
  %231 = load volatile i32, ptr %228, align 4
  %232 = and i32 %231, 1
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %234, %230
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !48
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !49
  %235 = load volatile i32, ptr %228, align 4
  %236 = and i32 %235, 1
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %234

238:                                              ; preds = %234, %230
  %239 = phi i32 [ %231, %230 ], [ %235, %234 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !50
  %240 = load i64, ptr %229, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !51
  %241 = load volatile i32, ptr %228, align 4
  %242 = icmp eq i32 %241, %239
  br i1 %242, label %243, label %230

243:                                              ; preds = %238
  %244 = lshr i64 %240, 12
  %245 = trunc i64 %244 to i32
  %246 = icmp ne i32 %245, 0
  %247 = icmp ugt i32 %223, %245
  %248 = select i1 %246, i1 %247, i1 false
  br i1 %248, label %249, label %251

249:                                              ; preds = %243
  %250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #19
  br label %824

251:                                              ; preds = %243
  %252 = getelementptr inbounds %struct.anon.102, ptr %167, i32 0, i32 3
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %261, label %255

255:                                              ; preds = %251
  %256 = load i16, ptr %94, align 8
  %257 = and i16 %256, -4096
  %258 = icmp eq i16 %257, -32768
  %259 = icmp ugt i32 %253, 637
  %260 = select i1 %258, i1 true, i1 %259
  br i1 %260, label %824, label %261, !prof !52

261:                                              ; preds = %255, %251
  %262 = tail call noalias ptr @vzalloc(i32 noundef %223) #21
  %263 = icmp eq ptr %262, null
  br i1 %263, label %824, label %264

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 18
  %266 = load ptr, ptr %265, align 4
  %267 = icmp eq ptr %266, null
  br i1 %267, label %370, label %268

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.block_device, ptr %266, i32 0, i32 17
  %270 = load ptr, ptr %269, align 8
  %271 = getelementptr inbounds %struct.gendisk, ptr %270, i32 0, i32 9
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.request_queue, ptr %272, i32 0, i32 11
  %274 = load volatile i32, ptr %273, align 4
  %275 = and i32 %274, 32768
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %281, label %277

277:                                              ; preds = %268
  %278 = load i32, ptr %58, align 4
  %279 = or i32 %278, 2048
  store i32 %279, ptr %58, align 4
  %280 = load ptr, ptr %269, align 8
  br label %281

281:                                              ; preds = %277, %268
  %282 = phi ptr [ %280, %277 ], [ %270, %268 ]
  %283 = getelementptr inbounds %struct.gendisk, ptr %282, i32 0, i32 8
  %284 = load ptr, ptr %283, align 8
  %285 = getelementptr inbounds %struct.block_device_operations, ptr %284, i32 0, i32 3
  %286 = load ptr, ptr %285, align 4
  %287 = icmp eq ptr %286, null
  br i1 %287, label %291, label %288

288:                                              ; preds = %281
  %289 = load i32, ptr %58, align 4
  %290 = or i32 %289, 4096
  store i32 %290, ptr %58, align 4
  br label %291

291:                                              ; preds = %288, %281
  %292 = getelementptr inbounds %struct.block_device, ptr %266, i32 0, i32 18
  %293 = load ptr, ptr %292, align 4
  %294 = getelementptr inbounds %struct.request_queue, ptr %293, i32 0, i32 11
  %295 = load volatile i32, ptr %294, align 4
  %296 = and i32 %295, 64
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %370, label %298

298:                                              ; preds = %291
  %299 = load i32, ptr %58, align 4
  %300 = or i32 %299, 16
  store i32 %300, ptr %58, align 4
  %301 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #21
  %302 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 15
  store ptr %301, ptr %302, align 4
  %303 = icmp eq ptr %301, null
  br i1 %303, label %824, label %304

304:                                              ; preds = %298
  %305 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %306 = load i32, ptr @nr_cpu_ids, align 4
  %307 = icmp ult i32 %305, %306
  br i1 %307, label %308, label %327

308:                                              ; preds = %308, %304
  %309 = phi i32 [ %324, %308 ], [ %305, %304 ]
  %310 = load i32, ptr %225, align 4
  %311 = tail call i32 @prandom_u32() #18
  %312 = zext i32 %311 to i64
  %313 = zext i32 %310 to i64
  %314 = mul nuw i64 %312, %313
  %315 = lshr i64 %314, 32
  %316 = trunc i64 %315 to i32
  %317 = add nuw i32 %316, 1
  %318 = load ptr, ptr %302, align 4
  %319 = ptrtoint ptr %318 to i32
  %320 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %309
  %321 = load i32, ptr %320, align 4
  %322 = add i32 %321, %319
  %323 = inttoptr i32 %322 to ptr
  store i32 %317, ptr %323, align 4
  %324 = tail call i32 @cpumask_next(i32 noundef %309, ptr noundef nonnull @__cpu_possible_mask) #22
  %325 = load i32, ptr @nr_cpu_ids, align 4
  %326 = icmp ult i32 %324, %325
  br i1 %326, label %308, label %327

327:                                              ; preds = %308, %304
  %328 = add i32 %223, 255
  %329 = lshr i32 %328, 8
  %330 = shl nuw nsw i32 %329, 3
  %331 = tail call noalias ptr @kvmalloc_node(i32 noundef %330, i32 noundef 3520, i32 noundef -1) #21
  %332 = icmp eq ptr %331, null
  br i1 %332, label %824, label %333

333:                                              ; preds = %327
  %334 = icmp ult i32 %328, 256
  br i1 %334, label %342, label %335

335:                                              ; preds = %333
  %336 = tail call i32 @llvm.umax.i32(i32 %329, i32 1) #18
  br label %337

337:                                              ; preds = %337, %335
  %338 = phi i32 [ %340, %337 ], [ 0, %335 ]
  %339 = getelementptr %struct.swap_cluster_info, ptr %331, i32 %338
  store i32 0, ptr %339, align 4
  %340 = add nuw nsw i32 %338, 1
  %341 = icmp eq i32 %340, %336
  br i1 %341, label %342, label %337

342:                                              ; preds = %337, %333
  %343 = tail call noalias ptr @__alloc_percpu(i32 noundef 12, i32 noundef 4) #21
  %344 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 16
  store ptr %343, ptr %344, align 4
  %345 = icmp eq ptr %343, null
  br i1 %345, label %824, label %346

346:                                              ; preds = %342
  %347 = load i32, ptr @nr_cpu_ids, align 4
  %348 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  %349 = icmp ult i32 %348, %347
  br i1 %349, label %350, label %374

350:                                              ; preds = %346
  %351 = ptrtoint ptr %343 to i32
  %352 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %348
  %353 = load i32, ptr %352, align 4
  %354 = add i32 %353, %351
  %355 = inttoptr i32 %354 to ptr
  %356 = getelementptr inbounds %struct.swap_cluster_info, ptr %355, i32 0, i32 1
  store i32 33554432, ptr %356, align 4
  %357 = tail call i32 @cpumask_next(i32 noundef %348, ptr noundef nonnull @__cpu_possible_mask) #22
  %358 = icmp ult i32 %357, %347
  br i1 %358, label %359, label %374

359:                                              ; preds = %359, %350
  %360 = phi i32 [ %368, %359 ], [ %357, %350 ]
  %361 = load ptr, ptr %344, align 4
  %362 = ptrtoint ptr %361 to i32
  %363 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %360
  %364 = load i32, ptr %363, align 4
  %365 = add i32 %364, %362
  %366 = inttoptr i32 %365 to ptr
  %367 = getelementptr inbounds %struct.swap_cluster_info, ptr %366, i32 0, i32 1
  store i32 33554432, ptr %367, align 4
  %368 = tail call i32 @cpumask_next(i32 noundef %360, ptr noundef nonnull @__cpu_possible_mask) #22
  %369 = icmp ult i32 %368, %347
  br i1 %369, label %359, label %374

370:                                              ; preds = %291, %264
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nr_rotate_swap) #18, !srcloc !14
  %371 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_rotate_swap, ptr nonnull @nr_rotate_swap, i32 1, ptr nonnull elementtype(i32) @nr_rotate_swap) #18, !srcloc !25
  %372 = add i32 %223, 255
  %373 = lshr i32 %372, 8
  br label %374

374:                                              ; preds = %370, %359, %350, %346
  %375 = phi i32 [ %329, %350 ], [ %373, %370 ], [ %329, %346 ], [ %329, %359 ]
  %376 = phi i32 [ %328, %350 ], [ %372, %370 ], [ %328, %346 ], [ %328, %359 ]
  %377 = phi i1 [ false, %350 ], [ true, %370 ], [ false, %346 ], [ false, %359 ]
  %378 = phi ptr [ %331, %350 ], [ null, %370 ], [ %331, %346 ], [ %331, %359 ]
  %379 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 4
  %380 = load i32, ptr %204, align 4
  %381 = lshr i32 %380, 8
  %382 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 8, i32 0, i32 1
  store i32 33554432, ptr %382, align 4
  %383 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 8, i32 1, i32 1
  store i32 33554432, ptr %383, align 4
  %384 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 25, i32 0, i32 1
  store i32 33554432, ptr %384, align 4
  %385 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 25, i32 1, i32 1
  store i32 33554432, ptr %385, align 4
  %386 = load i32, ptr %252, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %391, label %388

388:                                              ; preds = %374
  %389 = icmp eq ptr %378, null
  %390 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 7
  br label %399

391:                                              ; preds = %440, %374
  %392 = phi i32 [ %224, %374 ], [ %441, %440 ]
  %393 = or i32 %224, 255
  %394 = add i32 %393, 1
  %395 = icmp ugt i32 %394, %223
  br i1 %395, label %396, label %477

396:                                              ; preds = %391
  %397 = icmp eq ptr %378, null
  %398 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 7
  br label %445

399:                                              ; preds = %440, %388
  %400 = phi i32 [ 0, %388 ], [ %442, %440 ]
  %401 = phi i32 [ %224, %388 ], [ %441, %440 ]
  %402 = getelementptr %struct.anon.102, ptr %167, i32 0, i32 7, i32 %400
  %403 = load i32, ptr %402, align 4
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %824, label %405

405:                                              ; preds = %399
  %406 = load i32, ptr %207, align 4
  %407 = icmp ugt i32 %403, %406
  br i1 %407, label %824, label %408

408:                                              ; preds = %405
  %409 = icmp ult i32 %403, %223
  br i1 %409, label %410, label %440

410:                                              ; preds = %408
  %411 = getelementptr i8, ptr %262, i32 %403
  store i8 63, ptr %411, align 1
  %412 = add i32 %401, -1
  %413 = lshr i32 %403, 8
  br i1 %389, label %440, label %414

414:                                              ; preds = %410
  %415 = getelementptr %struct.swap_cluster_info, ptr %378, i32 %413, i32 1
  %416 = load i32, ptr %415, align 4
  %417 = and i32 %416, 16777216
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %434, label %419

419:                                              ; preds = %414
  %420 = load ptr, ptr %390, align 4
  %421 = load i32, ptr %382, align 4
  %422 = and i32 %421, 16777215
  %423 = load i32, ptr %383, align 4
  %424 = and i32 %423, 16777215
  %425 = icmp eq i32 %424, %422
  br i1 %425, label %426, label %427

426:                                              ; preds = %419
  store i32 33554432, ptr %382, align 4
  store i32 33554432, ptr %383, align 4
  br label %431

427:                                              ; preds = %419
  %428 = getelementptr %struct.swap_cluster_info, ptr %420, i32 %422, i32 1
  %429 = load i32, ptr %428, align 4
  %430 = and i32 %429, 16777215
  store i32 %430, ptr %382, align 4
  br label %431

431:                                              ; preds = %427, %426
  %432 = getelementptr %struct.swap_cluster_info, ptr %420, i32 %413, i32 1
  store i32 0, ptr %432, align 4
  %433 = load i32, ptr %415, align 4
  br label %434

434:                                              ; preds = %431, %414
  %435 = phi i32 [ %433, %431 ], [ %416, %414 ]
  %436 = add i32 %435, 1
  %437 = and i32 %436, 16777215
  %438 = and i32 %435, -16777216
  %439 = or i32 %437, %438
  store i32 %439, ptr %415, align 4
  br label %440

440:                                              ; preds = %434, %410, %408
  %441 = phi i32 [ %412, %434 ], [ %412, %410 ], [ %401, %408 ]
  %442 = add nuw i32 %400, 1
  %443 = load i32, ptr %252, align 4
  %444 = icmp ult i32 %442, %443
  br i1 %444, label %399, label %391

445:                                              ; preds = %474, %396
  %446 = phi i32 [ %223, %396 ], [ %475, %474 ]
  %447 = lshr i32 %446, 8
  br i1 %397, label %474, label %448

448:                                              ; preds = %445
  %449 = getelementptr %struct.swap_cluster_info, ptr %378, i32 %447, i32 1
  %450 = load i32, ptr %449, align 4
  %451 = and i32 %450, 16777216
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %468, label %453

453:                                              ; preds = %448
  %454 = load ptr, ptr %398, align 4
  %455 = load i32, ptr %382, align 4
  %456 = and i32 %455, 16777215
  %457 = load i32, ptr %383, align 4
  %458 = and i32 %457, 16777215
  %459 = icmp eq i32 %458, %456
  br i1 %459, label %460, label %461

460:                                              ; preds = %453
  store i32 33554432, ptr %382, align 4
  store i32 33554432, ptr %383, align 4
  br label %465

461:                                              ; preds = %453
  %462 = getelementptr %struct.swap_cluster_info, ptr %454, i32 %456, i32 1
  %463 = load i32, ptr %462, align 4
  %464 = and i32 %463, 16777215
  store i32 %464, ptr %382, align 4
  br label %465

465:                                              ; preds = %461, %460
  %466 = getelementptr %struct.swap_cluster_info, ptr %454, i32 %447, i32 1
  store i32 0, ptr %466, align 4
  %467 = load i32, ptr %449, align 4
  br label %468

468:                                              ; preds = %465, %448
  %469 = phi i32 [ %467, %465 ], [ %450, %448 ]
  %470 = add i32 %469, 1
  %471 = and i32 %470, 16777215
  %472 = and i32 %469, -16777216
  %473 = or i32 %471, %472
  store i32 %473, ptr %449, align 4
  br label %474

474:                                              ; preds = %468, %445
  %475 = add nuw i32 %446, 1
  %476 = icmp eq i32 %446, %393
  br i1 %476, label %477, label %445

477:                                              ; preds = %474, %391
  %478 = icmp eq i32 %392, 0
  br i1 %478, label %621, label %479

479:                                              ; preds = %477
  store i8 63, ptr %262, align 1
  %480 = icmp eq ptr %378, null
  br i1 %480, label %508, label %481

481:                                              ; preds = %479
  %482 = getelementptr %struct.swap_cluster_info, ptr %378, i32 0, i32 1
  %483 = load i32, ptr %482, align 4
  %484 = and i32 %483, 16777216
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %502, label %486

486:                                              ; preds = %481
  %487 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 7
  %488 = load ptr, ptr %487, align 4
  %489 = load i32, ptr %382, align 4
  %490 = and i32 %489, 16777215
  %491 = load i32, ptr %383, align 4
  %492 = and i32 %491, 16777215
  %493 = icmp eq i32 %492, %490
  br i1 %493, label %494, label %495

494:                                              ; preds = %486
  store i32 33554432, ptr %382, align 4
  store i32 33554432, ptr %383, align 4
  br label %499

495:                                              ; preds = %486
  %496 = getelementptr %struct.swap_cluster_info, ptr %488, i32 %490, i32 1
  %497 = load i32, ptr %496, align 4
  %498 = and i32 %497, 16777215
  store i32 %498, ptr %382, align 4
  br label %499

499:                                              ; preds = %495, %494
  %500 = getelementptr %struct.swap_cluster_info, ptr %488, i32 0, i32 1
  store i32 0, ptr %500, align 4
  %501 = load i32, ptr %482, align 4
  br label %502

502:                                              ; preds = %499, %481
  %503 = phi i32 [ %501, %499 ], [ %483, %481 ]
  %504 = add i32 %503, 1
  %505 = and i32 %504, 16777215
  %506 = and i32 %503, -16777216
  %507 = or i32 %505, %506
  store i32 %507, ptr %482, align 4
  br label %508

508:                                              ; preds = %502, %479
  %509 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 5
  store i32 %223, ptr %509, align 4
  %510 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 11
  store i32 %392, ptr %510, align 4
  %511 = load ptr, ptr %89, align 4
  %512 = getelementptr inbounds %struct.file, ptr %511, i32 0, i32 17
  %513 = load ptr, ptr %512, align 8
  %514 = load ptr, ptr %513, align 4
  %515 = load i16, ptr %514, align 8
  %516 = and i16 %515, -4096
  %517 = icmp eq i16 %516, 24576
  br i1 %517, label %518, label %557

518:                                              ; preds = %518, %508
  %519 = phi ptr [ %521, %518 ], [ null, %508 ]
  %520 = phi ptr [ %523, %518 ], [ %47, %508 ]
  %521 = load ptr, ptr %520, align 4
  %522 = icmp eq ptr %521, null
  %523 = getelementptr inbounds %struct.rb_node, ptr %521, i32 0, i32 1
  br i1 %522, label %524, label %518

524:                                              ; preds = %518
  %525 = icmp eq ptr %519, null
  br i1 %525, label %542, label %526

526:                                              ; preds = %524
  %527 = getelementptr inbounds %struct.swap_extent, ptr %519, i32 0, i32 1
  %528 = load i32, ptr %527, align 4
  %529 = getelementptr inbounds %struct.swap_extent, ptr %519, i32 0, i32 2
  %530 = load i32, ptr %529, align 8
  %531 = sub i32 0, %528
  %532 = icmp eq i32 %530, %531
  br i1 %532, label %534, label %533, !prof !27

533:                                              ; preds = %526
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2282, 0\0A.popsection", ""() #18, !srcloc !42
  unreachable

534:                                              ; preds = %526
  %535 = getelementptr inbounds %struct.swap_extent, ptr %519, i32 0, i32 3
  %536 = load i64, ptr %535, align 8
  %537 = zext i32 %530 to i64
  %538 = sub nsw i64 0, %537
  %539 = icmp eq i64 %536, %538
  br i1 %539, label %540, label %542

540:                                              ; preds = %534
  %541 = add i32 %530, %223
  store i32 %541, ptr %529, align 8
  br label %553

542:                                              ; preds = %534, %524
  %543 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %544 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %543, i32 noundef 3264, i32 noundef 32) #20
  %545 = icmp eq ptr %544, null
  br i1 %545, label %553, label %546

546:                                              ; preds = %542
  %547 = getelementptr inbounds %struct.swap_extent, ptr %544, i32 0, i32 1
  store i32 0, ptr %547, align 4
  %548 = getelementptr inbounds %struct.swap_extent, ptr %544, i32 0, i32 2
  store i32 %223, ptr %548, align 8
  %549 = getelementptr inbounds %struct.swap_extent, ptr %544, i32 0, i32 3
  store i64 0, ptr %549, align 8
  %550 = ptrtoint ptr %519 to i32
  store i32 %550, ptr %544, align 8
  %551 = getelementptr inbounds %struct.rb_node, ptr %544, i32 0, i32 1
  store ptr null, ptr %551, align 4
  %552 = getelementptr inbounds %struct.rb_node, ptr %544, i32 0, i32 2
  store ptr null, ptr %552, align 8
  store ptr %544, ptr %520, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %544, ptr noundef %47) #18
  br label %553

553:                                              ; preds = %546, %542, %540
  %554 = phi i32 [ 0, %540 ], [ 1, %546 ], [ -12, %542 ]
  %555 = load i32, ptr %510, align 4
  %556 = zext i32 %555 to i64
  store i64 %556, ptr %3, align 8
  br label %614

557:                                              ; preds = %508
  %558 = getelementptr inbounds %struct.address_space, ptr %513, i32 0, i32 9
  %559 = load ptr, ptr %558, align 4
  %560 = getelementptr inbounds %struct.address_space_operations, ptr %559, i32 0, i32 20
  %561 = load ptr, ptr %560, align 4
  %562 = icmp eq ptr %561, null
  br i1 %562, label %612, label %563

563:                                              ; preds = %557
  %564 = call i32 %561(ptr noundef %46, ptr noundef %511, ptr noundef nonnull %3) #18
  %565 = icmp sgt i32 %564, -1
  br i1 %565, label %566, label %824

566:                                              ; preds = %563
  %567 = load i32, ptr %58, align 4
  %568 = or i32 %567, 128
  store i32 %568, ptr %58, align 4
  %569 = icmp eq i32 %564, 0
  br i1 %569, label %570, label %617

570:                                              ; preds = %566
  %571 = or i32 %567, 384
  store i32 %571, ptr %58, align 4
  %572 = load i32, ptr %509, align 4
  br label %573

573:                                              ; preds = %573, %570
  %574 = phi ptr [ null, %570 ], [ %576, %573 ]
  %575 = phi ptr [ %47, %570 ], [ %578, %573 ]
  %576 = load ptr, ptr %575, align 4
  %577 = icmp eq ptr %576, null
  %578 = getelementptr inbounds %struct.rb_node, ptr %576, i32 0, i32 1
  br i1 %577, label %579, label %573

579:                                              ; preds = %573
  %580 = icmp eq ptr %574, null
  br i1 %580, label %597, label %581

581:                                              ; preds = %579
  %582 = getelementptr inbounds %struct.swap_extent, ptr %574, i32 0, i32 1
  %583 = load i32, ptr %582, align 4
  %584 = getelementptr inbounds %struct.swap_extent, ptr %574, i32 0, i32 2
  %585 = load i32, ptr %584, align 8
  %586 = sub i32 0, %583
  %587 = icmp eq i32 %585, %586
  br i1 %587, label %589, label %588, !prof !27

588:                                              ; preds = %581
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2282, 0\0A.popsection", ""() #18, !srcloc !42
  unreachable

589:                                              ; preds = %581
  %590 = getelementptr inbounds %struct.swap_extent, ptr %574, i32 0, i32 3
  %591 = load i64, ptr %590, align 8
  %592 = zext i32 %585 to i64
  %593 = sub nsw i64 0, %592
  %594 = icmp eq i64 %591, %593
  br i1 %594, label %595, label %597

595:                                              ; preds = %589
  %596 = add i32 %585, %572
  store i32 %596, ptr %584, align 8
  br label %608

597:                                              ; preds = %589, %579
  %598 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %599 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %598, i32 noundef 3264, i32 noundef 32) #20
  %600 = icmp eq ptr %599, null
  br i1 %600, label %608, label %601

601:                                              ; preds = %597
  %602 = getelementptr inbounds %struct.swap_extent, ptr %599, i32 0, i32 1
  store i32 0, ptr %602, align 4
  %603 = getelementptr inbounds %struct.swap_extent, ptr %599, i32 0, i32 2
  store i32 %572, ptr %603, align 8
  %604 = getelementptr inbounds %struct.swap_extent, ptr %599, i32 0, i32 3
  store i64 0, ptr %604, align 8
  %605 = ptrtoint ptr %574 to i32
  store i32 %605, ptr %599, align 8
  %606 = getelementptr inbounds %struct.rb_node, ptr %599, i32 0, i32 1
  store ptr null, ptr %606, align 4
  %607 = getelementptr inbounds %struct.rb_node, ptr %599, i32 0, i32 2
  store ptr null, ptr %607, align 8
  store ptr %599, ptr %575, align 4
  call void @rb_insert_color(ptr noundef nonnull %599, ptr noundef %47) #18
  br label %608

608:                                              ; preds = %601, %597, %595
  %609 = phi i32 [ 0, %595 ], [ 1, %601 ], [ -12, %597 ]
  %610 = load i32, ptr %510, align 4
  %611 = zext i32 %610 to i64
  store i64 %611, ptr %3, align 8
  br label %614

612:                                              ; preds = %557
  %613 = call i32 @generic_swapfile_activate(ptr noundef %46, ptr noundef %511, ptr noundef nonnull %3) #18
  br label %614

614:                                              ; preds = %612, %608, %553
  %615 = phi i32 [ %554, %553 ], [ %613, %612 ], [ %609, %608 ]
  %616 = icmp slt i32 %615, 0
  br i1 %616, label %824, label %617

617:                                              ; preds = %614, %566
  %618 = phi i32 [ %615, %614 ], [ %564, %566 ]
  %619 = load i32, ptr %510, align 4
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %623

621:                                              ; preds = %617, %477
  %622 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #19
  br label %824

623:                                              ; preds = %617
  br i1 %480, label %670, label %624

624:                                              ; preds = %623
  %625 = add nuw nsw i32 %375, 63
  %626 = lshr i32 %625, 6
  %627 = icmp ult i32 %376, 256
  %628 = call i32 @llvm.umax.i32(i32 %626, i32 1) #18
  br label %629

629:                                              ; preds = %665, %624
  %630 = phi i32 [ 0, %624 ], [ %666, %665 ]
  %631 = add nuw nsw i32 %630, %381
  %632 = and i32 %631, 63
  br i1 %627, label %665, label %633

633:                                              ; preds = %662, %629
  %634 = phi i32 [ %663, %662 ], [ 0, %629 ]
  %635 = shl i32 %634, 6
  %636 = or i32 %635, %632
  %637 = icmp ult i32 %636, %375
  br i1 %637, label %638, label %662

638:                                              ; preds = %633
  %639 = getelementptr %struct.swap_cluster_info, ptr %378, i32 %636, i32 1
  %640 = load i32, ptr %639, align 4
  %641 = and i32 %640, 16777215
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %643, label %662

643:                                              ; preds = %638
  store i32 16777216, ptr %639, align 4
  %644 = load i32, ptr %382, align 4
  %645 = and i32 %644, 33554432
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %649, label %647

647:                                              ; preds = %643
  %648 = and i32 %636, 16777215
  store i32 %648, ptr %382, align 4
  br label %660

649:                                              ; preds = %643
  %650 = load i32, ptr %383, align 4
  %651 = and i32 %650, 16777215
  %652 = getelementptr %struct.swap_cluster_info, ptr %378, i32 %651
  call void @_raw_spin_lock(ptr noundef %652) #18
  %653 = getelementptr %struct.swap_cluster_info, ptr %378, i32 %651, i32 1
  %654 = load i32, ptr %653, align 4
  %655 = and i32 %636, 16777215
  %656 = and i32 %654, -16777216
  %657 = or i32 %656, %655
  store i32 %657, ptr %653, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %658 = load i16, ptr %652, align 4
  %659 = add i16 %658, 1
  store i16 %659, ptr %652, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %660

660:                                              ; preds = %649, %647
  %661 = phi i32 [ %655, %649 ], [ %648, %647 ]
  store i32 %661, ptr %383, align 4
  br label %662

662:                                              ; preds = %660, %638, %633
  %663 = add nuw nsw i32 %634, 1
  %664 = icmp eq i32 %663, %628
  br i1 %664, label %665, label %633

665:                                              ; preds = %662, %629
  %666 = add nuw nsw i32 %630, 1
  %667 = icmp eq i32 %666, 64
  br i1 %667, label %668, label %629

668:                                              ; preds = %665
  %669 = icmp slt i32 %618, 0
  br i1 %669, label %824, label %670, !prof !16

670:                                              ; preds = %668, %623
  %671 = load ptr, ptr %265, align 4
  %672 = icmp eq ptr %671, null
  %673 = and i32 %1, 65536
  %674 = icmp eq i32 %673, 0
  %675 = or i1 %674, %672
  br i1 %675, label %738, label %676

676:                                              ; preds = %670
  %677 = getelementptr inbounds %struct.block_device, ptr %671, i32 0, i32 18
  %678 = load ptr, ptr %677, align 4
  %679 = getelementptr inbounds %struct.request_queue, ptr %678, i32 0, i32 11
  %680 = load volatile i32, ptr %679, align 4
  %681 = and i32 %680, 256
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %738, label %683

683:                                              ; preds = %676
  %684 = load i32, ptr %58, align 4
  %685 = or i32 %684, 1540
  store i32 %685, ptr %58, align 4
  %686 = and i32 %1, 131072
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %691

688:                                              ; preds = %683
  %689 = and i32 %1, 262144
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %694, label %691

691:                                              ; preds = %688, %683
  %692 = phi i32 [ -1025, %683 ], [ -513, %688 ]
  %693 = and i32 %685, %692
  store i32 %693, ptr %58, align 4
  br label %694

694:                                              ; preds = %691, %688
  %695 = phi i32 [ %685, %688 ], [ %693, %691 ]
  %696 = and i32 %695, 512
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %738, label %698

698:                                              ; preds = %694
  %699 = call ptr @rb_first(ptr noundef %47) #18
  %700 = getelementptr inbounds %struct.swap_extent, ptr %699, i32 0, i32 2
  %701 = load i32, ptr %700, align 8
  %702 = zext i32 %701 to i64
  %703 = shl nuw nsw i64 %702, 3
  %704 = add nsw i64 %703, -8
  %705 = icmp eq i64 %704, 0
  br i1 %705, label %716, label %706

706:                                              ; preds = %698
  %707 = getelementptr inbounds %struct.swap_extent, ptr %699, i32 0, i32 3
  %708 = load i64, ptr %707, align 8
  %709 = shl i64 %708, 3
  %710 = add i64 %709, 8
  %711 = load ptr, ptr %265, align 4
  %712 = call i32 @blkdev_issue_discard(ptr noundef %711, i64 noundef %710, i64 noundef %704, i32 noundef 3264, i32 noundef 0) #18
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %735

714:                                              ; preds = %706
  %715 = call i32 @__cond_resched() #18
  br label %716

716:                                              ; preds = %714, %698
  %717 = call ptr @rb_next(ptr noundef %699) #18
  %718 = icmp eq ptr %717, null
  br i1 %718, label %738, label %719

719:                                              ; preds = %731, %716
  %720 = phi ptr [ %733, %731 ], [ %717, %716 ]
  %721 = getelementptr inbounds %struct.swap_extent, ptr %720, i32 0, i32 3
  %722 = load i64, ptr %721, align 8
  %723 = shl i64 %722, 3
  %724 = getelementptr inbounds %struct.swap_extent, ptr %720, i32 0, i32 2
  %725 = load i32, ptr %724, align 8
  %726 = zext i32 %725 to i64
  %727 = shl nuw nsw i64 %726, 3
  %728 = load ptr, ptr %265, align 4
  %729 = call i32 @blkdev_issue_discard(ptr noundef %728, i64 noundef %723, i64 noundef %727, i32 noundef 3264, i32 noundef 0) #18
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %735

731:                                              ; preds = %719
  %732 = call i32 @__cond_resched() #18
  %733 = call ptr @rb_next(ptr noundef nonnull %720) #18
  %734 = icmp eq ptr %733, null
  br i1 %734, label %738, label %719

735:                                              ; preds = %719, %706
  %736 = phi i32 [ %712, %706 ], [ %729, %719 ]
  %737 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %46, i32 noundef %736) #19
  br label %738

738:                                              ; preds = %735, %731, %716, %694, %676, %670
  %739 = load i8, ptr %379, align 4
  %740 = sext i8 %739 to i32
  %741 = call i32 @init_swap_address_space(i32 noundef %740, i32 noundef %223) #18
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %743, label %824

743:                                              ; preds = %738
  %744 = load i32, ptr %138, align 4
  %745 = or i32 %744, 256
  store i32 %745, ptr %138, align 4
  call void @inode_dio_wait(ptr noundef %94) #18
  %746 = getelementptr inbounds %struct.inode, ptr %94, i32 0, i32 9
  %747 = load ptr, ptr %746, align 8
  %748 = call i32 @filemap_write_and_wait_range(ptr noundef %747, i64 noundef 0, i64 noundef 9223372036854775807) #18
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %755, label %750

750:                                              ; preds = %743
  %751 = load i32, ptr %138, align 4
  %752 = and i32 %751, -257
  store i32 %752, ptr %138, align 4
  %753 = load i8, ptr %379, align 4
  %754 = sext i8 %753 to i32
  call void @exit_swap_address_space(i32 noundef %754) #18
  br label %824

755:                                              ; preds = %743
  call void @mutex_lock(ptr noundef nonnull @swapon_mutex) #18
  %756 = and i32 %1, 32767
  call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #18
  call void @_raw_spin_lock(ptr noundef %64) #18
  %757 = and i32 %1, 32768
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %762

759:                                              ; preds = %755
  %760 = load i32, ptr @least_priority, align 4
  %761 = add i32 %760, -1
  store i32 %761, ptr @least_priority, align 4
  br label %762

762:                                              ; preds = %759, %755
  %763 = phi i32 [ %761, %759 ], [ %756, %755 ]
  %764 = trunc i32 %763 to i16
  %765 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 2
  store i16 %764, ptr %765, align 4
  %766 = shl i32 %763, 16
  %767 = ashr exact i32 %766, 16
  %768 = sub nsw i32 0, %767
  store i32 %768, ptr %48, align 4
  %769 = icmp sgt i16 %764, -1
  br i1 %769, label %790, label %770

770:                                              ; preds = %762
  %771 = load ptr, ptr %265, align 4
  %772 = icmp eq ptr %771, null
  br i1 %772, label %773, label %782

773:                                              ; preds = %770
  %774 = load ptr, ptr %89, align 4
  %775 = getelementptr inbounds %struct.file, ptr %774, i32 0, i32 2
  %776 = load ptr, ptr %775, align 8
  %777 = getelementptr inbounds %struct.inode, ptr %776, i32 0, i32 8
  %778 = load ptr, ptr %777, align 4
  %779 = getelementptr inbounds %struct.super_block, ptr %778, i32 0, i32 20
  %780 = load ptr, ptr %779, align 4
  %781 = icmp eq ptr %780, null
  br i1 %781, label %789, label %782

782:                                              ; preds = %773, %770
  %783 = phi ptr [ %780, %773 ], [ %771, %770 ]
  %784 = getelementptr inbounds %struct.block_device, ptr %783, i32 0, i32 17
  %785 = load ptr, ptr %784, align 8
  %786 = getelementptr inbounds %struct.gendisk, ptr %785, i32 0, i32 21
  %787 = load i32, ptr %786, align 4
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %790, label %789

789:                                              ; preds = %782, %773
  br label %790

790:                                              ; preds = %789, %782, %762
  %791 = phi i32 [ %768, %789 ], [ %768, %762 ], [ 1, %782 ]
  store i32 %791, ptr %53, align 4
  %792 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 6
  store ptr %262, ptr %792, align 4
  %793 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 7
  store ptr %378, ptr %793, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %794 = load i16, ptr %64, align 4
  %795 = add i16 %794, 1
  store i16 %795, ptr %64, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %796 = load i16, ptr @swap_lock, align 4
  %797 = add i16 %796, 1
  store i16 %797, ptr @swap_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  call void @percpu_ref_resurrect(ptr noundef %46) #18
  call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #18
  call void @_raw_spin_lock(ptr noundef %64) #18
  call fastcc void @_enable_swap_info(ptr noundef %46) #18
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %798 = load i16, ptr %64, align 4
  %799 = add i16 %798, 1
  store i16 %799, ptr %64, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %800 = load i16, ptr @swap_lock, align 4
  %801 = add i16 %800, 1
  store i16 %801, ptr @swap_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %802 = load i32, ptr %510, align 4
  %803 = shl i32 %802, 2
  %804 = load ptr, ptr %79, align 4
  %805 = load i16, ptr %765, align 4
  %806 = sext i16 %805 to i32
  %807 = load i64, ptr %3, align 8
  %808 = shl i64 %807, 2
  %809 = load i32, ptr %58, align 4
  %810 = and i32 %809, 16
  %811 = icmp eq i32 %810, 0
  %812 = select i1 %811, ptr @.str.13, ptr @.str.16
  %813 = and i32 %809, 4
  %814 = icmp eq i32 %813, 0
  %815 = select i1 %814, ptr @.str.13, ptr @.str.17
  %816 = and i32 %809, 512
  %817 = icmp eq i32 %816, 0
  %818 = select i1 %817, ptr @.str.13, ptr @.str.18
  %819 = and i32 %809, 1024
  %820 = icmp eq i32 %819, 0
  %821 = select i1 %820, ptr @.str.13, ptr @.str.19
  %822 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %803, ptr noundef %804, i32 noundef %806, i32 noundef %618, i64 noundef %808, ptr noundef nonnull %812, ptr noundef nonnull %815, ptr noundef nonnull %818, ptr noundef nonnull %821, ptr noundef nonnull @.str.13) #19
  call void @mutex_unlock(ptr noundef nonnull @swapon_mutex) #18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @proc_poll_event) #18, !srcloc !14
  %823 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @proc_poll_event, ptr nonnull @proc_poll_event, i32 1, ptr nonnull elementtype(i32) @proc_poll_event) #18, !srcloc !25
  call void @__wake_up(ptr noundef nonnull @proc_poll_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #18
  br label %890

824:                                              ; preds = %750, %738, %668, %621, %614, %563, %405, %399, %342, %327, %298, %261, %255, %249, %218, %210, %200, %177, %171, %151, %142, %137, %133, %129
  %825 = phi ptr [ %149, %151 ], [ %149, %738 ], [ %149, %750 ], [ null, %133 ], [ null, %129 ], [ null, %137 ], [ null, %142 ], [ %149, %261 ], [ %149, %668 ], [ %149, %298 ], [ %149, %327 ], [ %149, %342 ], [ %149, %171 ], [ %149, %200 ], [ %149, %249 ], [ %149, %210 ], [ %149, %177 ], [ %149, %218 ], [ %149, %255 ], [ %149, %621 ], [ %149, %614 ], [ %149, %563 ], [ %149, %399 ], [ %149, %405 ]
  %826 = phi i1 [ false, %151 ], [ %377, %738 ], [ %377, %750 ], [ false, %133 ], [ false, %129 ], [ false, %137 ], [ false, %142 ], [ false, %261 ], [ %377, %668 ], [ false, %298 ], [ false, %327 ], [ false, %342 ], [ false, %171 ], [ false, %200 ], [ false, %249 ], [ false, %210 ], [ false, %177 ], [ false, %218 ], [ false, %255 ], [ %377, %621 ], [ %377, %614 ], [ %377, %563 ], [ %377, %399 ], [ %377, %405 ]
  %827 = phi ptr [ null, %151 ], [ %378, %738 ], [ %378, %750 ], [ null, %133 ], [ null, %129 ], [ null, %137 ], [ null, %142 ], [ null, %261 ], [ %378, %668 ], [ null, %298 ], [ null, %327 ], [ %331, %342 ], [ null, %171 ], [ null, %200 ], [ null, %249 ], [ null, %210 ], [ null, %177 ], [ null, %218 ], [ null, %255 ], [ %378, %621 ], [ %378, %614 ], [ %378, %563 ], [ %378, %399 ], [ %378, %405 ]
  %828 = phi ptr [ null, %151 ], [ %262, %738 ], [ %262, %750 ], [ null, %133 ], [ null, %129 ], [ null, %137 ], [ null, %142 ], [ null, %261 ], [ %262, %668 ], [ %262, %298 ], [ %262, %327 ], [ %262, %342 ], [ null, %171 ], [ null, %200 ], [ null, %249 ], [ null, %210 ], [ null, %177 ], [ null, %218 ], [ null, %255 ], [ %262, %621 ], [ %262, %614 ], [ %262, %563 ], [ %262, %399 ], [ %262, %405 ]
  %829 = phi i32 [ %152, %151 ], [ %741, %738 ], [ %748, %750 ], [ -2, %133 ], [ -2, %129 ], [ -16, %137 ], [ -22, %142 ], [ -12, %261 ], [ %618, %668 ], [ -12, %298 ], [ -12, %327 ], [ -12, %342 ], [ -22, %171 ], [ -22, %200 ], [ -22, %249 ], [ -22, %210 ], [ -22, %177 ], [ -22, %218 ], [ -22, %255 ], [ -22, %621 ], [ %615, %614 ], [ %564, %563 ], [ -22, %399 ], [ -22, %405 ]
  call void @up_write(ptr noundef %125) #18
  br label %830

830:                                              ; preds = %824, %122, %103, %86, %81
  %831 = phi ptr [ null, %81 ], [ null, %86 ], [ null, %122 ], [ %825, %824 ], [ null, %103 ]
  %832 = phi ptr [ null, %81 ], [ null, %86 ], [ %94, %122 ], [ %94, %824 ], [ %94, %103 ]
  %833 = phi i1 [ false, %81 ], [ false, %86 ], [ false, %122 ], [ %826, %824 ], [ false, %103 ]
  %834 = phi ptr [ null, %81 ], [ null, %86 ], [ null, %122 ], [ %827, %824 ], [ null, %103 ]
  %835 = phi ptr [ null, %81 ], [ null, %86 ], [ null, %122 ], [ %828, %824 ], [ null, %103 ]
  %836 = phi i32 [ %82, %81 ], [ %87, %86 ], [ %123, %122 ], [ %829, %824 ], [ %111, %103 ]
  %837 = phi ptr [ null, %81 ], [ null, %86 ], [ %84, %122 ], [ %84, %824 ], [ %84, %103 ]
  %838 = phi ptr [ null, %81 ], [ %79, %86 ], [ %79, %122 ], [ %79, %824 ], [ %79, %103 ]
  %839 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 16
  %840 = load ptr, ptr %839, align 4
  call void @free_percpu(ptr noundef %840) #18
  store ptr null, ptr %839, align 4
  %841 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 15
  %842 = load ptr, ptr %841, align 4
  call void @free_percpu(ptr noundef %842) #18
  store ptr null, ptr %841, align 4
  %843 = icmp eq ptr %832, null
  br i1 %843, label %857, label %844

844:                                              ; preds = %830
  %845 = load i16, ptr %832, align 8
  %846 = and i16 %845, -4096
  %847 = icmp eq i16 %846, 24576
  br i1 %847, label %848, label %857

848:                                              ; preds = %844
  %849 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 18
  %850 = load ptr, ptr %849, align 4
  %851 = icmp eq ptr %850, null
  br i1 %851, label %857, label %852

852:                                              ; preds = %848
  %853 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 20
  %854 = load i32, ptr %853, align 4
  %855 = call i32 @set_blocksize(ptr noundef nonnull %850, i32 noundef %854) #18
  %856 = load ptr, ptr %849, align 4
  call void @blkdev_put(ptr noundef %856, i32 noundef 131) #18
  br label %857

857:                                              ; preds = %852, %848, %844, %830
  %858 = load volatile ptr, ptr %47, align 4
  %859 = icmp eq ptr %858, null
  br i1 %859, label %864, label %860

860:                                              ; preds = %860, %857
  %861 = phi ptr [ %862, %860 ], [ %858, %857 ]
  call void @rb_erase(ptr noundef nonnull %861, ptr noundef %47) #18
  call void @kfree(ptr noundef nonnull %861) #18
  %862 = load volatile ptr, ptr %47, align 4
  %863 = icmp eq ptr %862, null
  br i1 %863, label %864, label %860

864:                                              ; preds = %860, %857
  %865 = load i32, ptr %58, align 4
  %866 = and i32 %865, 128
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %880, label %868

868:                                              ; preds = %864
  %869 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 19
  %870 = load ptr, ptr %869, align 4
  %871 = getelementptr inbounds %struct.file, ptr %870, i32 0, i32 17
  %872 = load ptr, ptr %871, align 8
  %873 = and i32 %865, -129
  store i32 %873, ptr %58, align 4
  %874 = getelementptr inbounds %struct.address_space, ptr %872, i32 0, i32 9
  %875 = load ptr, ptr %874, align 4
  %876 = getelementptr inbounds %struct.address_space_operations, ptr %875, i32 0, i32 21
  %877 = load ptr, ptr %876, align 4
  %878 = icmp eq ptr %877, null
  br i1 %878, label %880, label %879

879:                                              ; preds = %868
  call void %877(ptr noundef %870) #18
  br label %880

880:                                              ; preds = %879, %868, %864
  call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #18
  %881 = getelementptr inbounds %struct.swap_info_struct, ptr %46, i32 0, i32 19
  store ptr null, ptr %881, align 4
  store i32 0, ptr %58, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %882 = load i16, ptr @swap_lock, align 4
  %883 = add i16 %882, 1
  store i16 %883, ptr @swap_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  call void @vfree(ptr noundef %835) #18
  call void @kvfree(ptr noundef %834) #18
  call void @kvfree(ptr noundef null) #18
  br i1 %833, label %884, label %886

884:                                              ; preds = %880
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nr_rotate_swap) #18, !srcloc !14
  %885 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_rotate_swap, ptr nonnull @nr_rotate_swap, i32 1, ptr nonnull elementtype(i32) @nr_rotate_swap) #18, !srcloc !15
  br label %886

886:                                              ; preds = %884, %880
  %887 = icmp eq ptr %837, null
  br i1 %887, label %890, label %888

888:                                              ; preds = %886
  %889 = call i32 @filp_close(ptr noundef nonnull %837, ptr noundef null) #18
  br label %890

890:                                              ; preds = %888, %886, %790
  %891 = phi ptr [ %831, %888 ], [ %831, %886 ], [ %149, %790 ]
  %892 = phi ptr [ null, %888 ], [ null, %886 ], [ %94, %790 ]
  %893 = phi i32 [ %836, %888 ], [ %836, %886 ], [ 0, %790 ]
  %894 = phi ptr [ %838, %888 ], [ %838, %886 ], [ %79, %790 ]
  %895 = icmp eq ptr %891, null
  %896 = icmp ugt ptr %891, inttoptr (i32 -4096 to ptr)
  %897 = or i1 %895, %896
  br i1 %897, label %925, label %898

898:                                              ; preds = %890
  %899 = load i32, ptr %891, align 4
  %900 = lshr i32 %899, 30
  %901 = icmp eq i32 %900, 2
  br i1 %901, label %907, label %902

902:                                              ; preds = %898
  %903 = icmp ne i32 %900, 3
  %904 = load i32, ptr @movable_zone, align 4
  %905 = icmp ne i32 %904, 2
  %906 = select i1 %903, i1 true, i1 %905
  br i1 %906, label %908, label %907

907:                                              ; preds = %902, %898
  call void @kunmap_high(ptr noundef nonnull %891) #18
  br label %908

908:                                              ; preds = %907, %902
  %909 = getelementptr inbounds %struct.page, ptr %891, i32 0, i32 1
  %910 = load volatile i32, ptr %909, align 4
  %911 = and i32 %910, 1
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %915, label %913, !prof !27

913:                                              ; preds = %908
  %914 = add i32 %910, -1
  br label %917

915:                                              ; preds = %908
  %916 = ptrtoint ptr %891 to i32
  br label %917

917:                                              ; preds = %915, %913
  %918 = phi i32 [ %914, %913 ], [ %916, %915 ]
  %919 = inttoptr i32 %918 to ptr
  %920 = getelementptr inbounds %struct.page, ptr %919, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !33
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %920) #18, !srcloc !14
  %921 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %920, ptr %920, i32 1, ptr elementtype(i32) %920) #18, !srcloc !34
  %922 = extractvalue { i32, i32 } %921, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !35
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %924, label %925

924:                                              ; preds = %917
  call void @__put_page(ptr noundef %919) #18
  br label %925

925:                                              ; preds = %924, %917, %890
  %926 = icmp eq ptr %894, null
  br i1 %926, label %928, label %927

927:                                              ; preds = %925
  call void @putname(ptr noundef nonnull %894) #18
  br label %928

928:                                              ; preds = %927, %925
  %929 = icmp eq ptr %892, null
  br i1 %929, label %932, label %930

930:                                              ; preds = %928
  %931 = getelementptr inbounds %struct.inode, ptr %892, i32 0, i32 24
  call void @up_write(ptr noundef %931) #18
  br label %932

932:                                              ; preds = %930, %928
  %933 = icmp eq i32 %893, 0
  br i1 %933, label %934, label %935

934:                                              ; preds = %932
  call void @enable_swap_slots_cache() #18
  br label %935

935:                                              ; preds = %934, %932, %71, %8, %6, %2
  %936 = phi i32 [ %73, %71 ], [ -22, %2 ], [ -1, %6 ], [ -12, %8 ], [ 0, %934 ], [ %893, %932 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 %936
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @si_swapinfo(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_lock) #18
  %2 = load i32, ptr @nr_swapfiles, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %17, %1
  %5 = phi i32 [ %18, %17 ], [ 0, %1 ]
  %6 = phi i32 [ %19, %17 ], [ 0, %1 ]
  %7 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.swap_info_struct, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.swap_info_struct, ptr %8, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %5
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i32 [ %16, %13 ], [ %5, %4 ]
  %19 = add nuw i32 %6, 1
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %4

21:                                               ; preds = %17, %1
  %22 = phi i32 [ 0, %1 ], [ %18, %17 ]
  %23 = load volatile i32, ptr @nr_swap_pages, align 4
  %24 = add i32 %23, %22
  %25 = getelementptr inbounds %struct.sysinfo, ptr %0, i32 0, i32 7
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr @total_swap_pages, align 4
  %27 = add i32 %26, %22
  %28 = getelementptr inbounds %struct.sysinfo, ptr %0, i32 0, i32 6
  store i32 %27, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %29 = load i16, ptr @swap_lock, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr @swap_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @swap_shmem_alloc([1 x i32] %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @__swap_duplicate([1 x i32] %0, i8 noundef zeroext -65)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__swap_duplicate([1 x i32] %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call ptr @get_swap_device([1 x i32] %0)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %90, label %5

5:                                                ; preds = %2
  %6 = extractvalue [1 x i32] %0, 0
  %7 = and i32 %6, 67108863
  %8 = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = lshr i32 %7, 8
  %13 = getelementptr %struct.swap_cluster_info, ptr %9, i32 %12
  tail call void @_raw_spin_lock(ptr noundef %13) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %5
  %16 = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %16) #18
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ null, %15 ], [ %13, %11 ]
  %19 = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %7
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, -65
  %24 = icmp eq i8 %23, 63
  br i1 %24, label %56, label %25, !prof !16

25:                                               ; preds = %17
  %26 = and i8 %22, 64
  %27 = icmp eq i8 %1, 64
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = icmp eq i8 %26, 0
  %30 = icmp ne i8 %23, 0
  %31 = and i1 %29, %30
  %32 = select i1 %29, i32 -2, i32 -17
  %33 = select i1 %31, i8 64, i8 %26
  %34 = select i1 %31, i32 0, i32 %32
  br label %49

35:                                               ; preds = %25
  %36 = icmp eq i8 %22, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %35
  %38 = and i8 %22, 63
  %39 = icmp ult i8 %38, 62
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = add i8 %23, %1
  br label %49

42:                                               ; preds = %37
  %43 = icmp eq i8 %38, 63
  br i1 %43, label %49, label %44

44:                                               ; preds = %42
  %45 = tail call fastcc zeroext i1 @swap_count_continued(ptr noundef nonnull %3, i32 noundef %7, i8 noundef zeroext %23)
  %46 = select i1 %45, i8 -128, i8 %23
  %47 = select i1 %45, i32 0, i32 -12
  %48 = load ptr, ptr %19, align 4
  br label %49

49:                                               ; preds = %44, %42, %40, %35, %28
  %50 = phi ptr [ %20, %40 ], [ %20, %42 ], [ %48, %44 ], [ %20, %35 ], [ %20, %28 ]
  %51 = phi i8 [ %41, %40 ], [ %23, %42 ], [ %46, %44 ], [ 0, %35 ], [ %23, %28 ]
  %52 = phi i8 [ %26, %40 ], [ %26, %42 ], [ %26, %44 ], [ 0, %35 ], [ %33, %28 ]
  %53 = phi i32 [ 0, %40 ], [ -22, %42 ], [ %47, %44 ], [ -2, %35 ], [ %34, %28 ]
  %54 = or i8 %52, %51
  %55 = getelementptr i8, ptr %50, i32 %7
  store volatile i8 %54, ptr %55, align 1
  br label %56

56:                                               ; preds = %49, %17
  %57 = phi i32 [ %53, %49 ], [ -2, %17 ]
  %58 = icmp eq ptr %18, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %60 = load i16, ptr %18, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %66

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.swap_info_struct, ptr %3, i32 0, i32 22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %64 = load i16, ptr %63, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %63, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %66

66:                                               ; preds = %62, %59
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %67 = load volatile i32, ptr %3, align 4
  %68 = and i32 %67, 3
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %79, !prof !27

70:                                               ; preds = %66
  %71 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !23
  %72 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %73 = inttoptr i32 %72 to ptr
  %74 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %73) #11, !srcloc !19
  %75 = add i32 %74, %67
  %76 = inttoptr i32 %75 to ptr
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, -1
  store i32 %78, ptr %76, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %71) #18, !srcloc !24
  br label %89

79:                                               ; preds = %66
  %80 = getelementptr inbounds %struct.percpu_ref, ptr %3, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #18, !srcloc !14
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #18, !srcloc !34
  %83 = extractvalue { i32, i32 } %82, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !35
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89, !prof !16

85:                                               ; preds = %79
  %86 = load ptr, ptr %80, align 4
  %87 = getelementptr inbounds %struct.percpu_ref_data, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  tail call void %88(ptr noundef nonnull %3) #18
  br label %89

89:                                               ; preds = %85, %79, %70
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %90

90:                                               ; preds = %89, %2
  %91 = phi i32 [ %57, %89 ], [ -22, %2 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @swap_duplicate([1 x i32] %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %5, %1
  %3 = tail call fastcc i32 @__swap_duplicate([1 x i32] %0, i8 noundef zeroext 1)
  %4 = icmp eq i32 %3, -12
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call i32 @add_swap_count_continuation([1 x i32] %0, i32 noundef 2592)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %2, label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %6, %5 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @add_swap_count_continuation([1 x i32] %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = or i32 %1, 2
  %4 = tail call ptr @__alloc_pages(i32 noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  %5 = tail call ptr @get_swap_device([1 x i32] %0)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %111, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.swap_info_struct, ptr %5, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %8) #18
  %9 = extractvalue [1 x i32] %0, 0
  %10 = and i32 %9, 67108863
  %11 = getelementptr inbounds %struct.swap_info_struct, ptr %5, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = lshr i32 %10, 8
  %16 = getelementptr %struct.swap_cluster_info, ptr %12, i32 %15
  tail call void @_raw_spin_lock(ptr noundef %16) #18
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi ptr [ %16, %14 ], [ null, %7 ]
  %19 = getelementptr inbounds %struct.swap_info_struct, ptr %5, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %10
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, -65
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 63
  %26 = icmp eq i32 %25, 62
  br i1 %26, label %27, label %78

27:                                               ; preds = %17
  %28 = icmp eq ptr %4, null
  br i1 %28, label %78, label %29

29:                                               ; preds = %27
  %30 = tail call ptr @vmalloc_to_page(ptr noundef %21) #18
  %31 = and i32 %9, 4095
  %32 = getelementptr inbounds %struct.swap_info_struct, ptr %5, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %32) #18
  %33 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %34 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = and i32 %24, 128
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40, !prof !27

40:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3578, 0\0A.popsection", ""() #18, !srcloc !53
  unreachable

41:                                               ; preds = %37
  store volatile ptr %33, ptr %33, align 4
  %42 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %33, ptr %42, align 4
  store i32 32, ptr %34, align 4
  %43 = getelementptr inbounds %struct.swap_info_struct, ptr %5, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, 32
  store i32 %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %41, %29
  br label %47

47:                                               ; preds = %55, %46
  %48 = phi ptr [ %50, %55 ], [ %33, %46 ]
  %49 = phi i8 [ %64, %55 ], [ %23, %46 ]
  %50 = load ptr, ptr %48, align 4
  %51 = getelementptr i8, ptr %50, i32 -4
  %52 = icmp eq ptr %50, %33
  br i1 %52, label %69, label %53

53:                                               ; preds = %47
  %54 = icmp sgt i8 %49, -1
  br i1 %54, label %74, label %55

55:                                               ; preds = %53
  %56 = load i32, ptr @pgprot_kernel, align 4
  %57 = or i32 %56, 512
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  %58 = tail call ptr @llvm.thread.pointer() #18
  %59 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 149
  %60 = load i32, ptr %59, align 8
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !37
  %62 = tail call ptr @__kmap_local_page_prot(ptr noundef %51, i32 noundef %57) #18
  %63 = getelementptr i8, ptr %62, i32 %31
  %64 = load i8, ptr %63, align 1
  tail call void @kunmap_local_indexed(ptr noundef %63) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  %65 = load i32, ptr %59, align 8
  %66 = add i32 %65, -1
  store i32 %66, ptr %59, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  %67 = and i8 %64, 127
  %68 = icmp eq i8 %67, 127
  br i1 %68, label %47, label %74

69:                                               ; preds = %47
  %70 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %71 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1, i32 0, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  store ptr %70, ptr %71, align 4
  store ptr %33, ptr %70, align 4
  %73 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %72, ptr %73, align 4
  store volatile ptr %70, ptr %72, align 4
  br label %74

74:                                               ; preds = %69, %55, %53
  %75 = phi ptr [ null, %69 ], [ %4, %53 ], [ %4, %55 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %76 = load i16, ptr %32, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %78

78:                                               ; preds = %74, %27, %17
  %79 = phi ptr [ %4, %17 ], [ %75, %74 ], [ null, %27 ]
  %80 = phi i32 [ 0, %17 ], [ 0, %74 ], [ -12, %27 ]
  %81 = icmp eq ptr %18, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %83 = load i16, ptr %18, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %85

85:                                               ; preds = %82, %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %86 = load i16, ptr %8, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %88 = load volatile i32, ptr %5, align 4
  %89 = and i32 %88, 3
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %100, !prof !27

91:                                               ; preds = %85
  %92 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !23
  %93 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %94 = inttoptr i32 %93 to ptr
  %95 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %94) #11, !srcloc !19
  %96 = add i32 %95, %88
  %97 = inttoptr i32 %96 to ptr
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, -1
  store i32 %99, ptr %97, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %92) #18, !srcloc !24
  br label %110

100:                                              ; preds = %85
  %101 = getelementptr inbounds %struct.percpu_ref, ptr %5, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #18, !srcloc !14
  %103 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 1, ptr elementtype(i32) %102) #18, !srcloc !34
  %104 = extractvalue { i32, i32 } %103, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !35
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110, !prof !16

106:                                              ; preds = %100
  %107 = load ptr, ptr %101, align 4
  %108 = getelementptr inbounds %struct.percpu_ref_data, ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  tail call void %109(ptr noundef nonnull %5) #18
  br label %110

110:                                              ; preds = %106, %100, %91
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %111

111:                                              ; preds = %110, %2
  %112 = phi ptr [ %79, %110 ], [ %4, %2 ]
  %113 = phi i32 [ %80, %110 ], [ 0, %2 ]
  %114 = icmp eq ptr %112, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  tail call void @__free_pages(ptr noundef nonnull %112, i32 noundef 0) #18
  br label %116

116:                                              ; preds = %115, %111
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @swapcache_prepare([1 x i32] %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @__swap_duplicate([1 x i32] %0, i8 noundef zeroext 64)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @swapcache_mapping(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 2013265919
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = lshr i32 %3, 26
  %7 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %6
  %8 = load volatile ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %8, %5 ], [ null, %1 ]
  %11 = getelementptr inbounds %struct.swap_info_struct, ptr %10, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 17
  %14 = load ptr, ptr %13, align 8
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @swapfile_init() #7 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 8) #20
  store ptr %2, ptr @swap_avail_heads, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #19
  br label %8

6:                                                ; preds = %0
  store volatile ptr %2, ptr %2, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ 0, %6 ], [ -12, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_del(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @scan_swap_map_try_ssd_cluster(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 16
  %5 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 8, i32 0, i32 1
  %6 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 25, i32 0, i32 1
  %7 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 15
  %8 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 8
  %9 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 5
  %10 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 7
  %11 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 6
  br label %12

12:                                               ; preds = %51, %3
  %13 = load ptr, ptr %4, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #11, !srcloc !19
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.swap_cluster_info, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 33554432
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.percpu_cluster, ptr %19, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %21, 8
  br label %52

28:                                               ; preds = %12
  %29 = load i32, ptr %5, align 4
  %30 = and i32 %29, 33554432
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i64, ptr %8, align 4
  store i64 %33, ptr %19, align 4
  %34 = lshr i64 %33, 24
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, -256
  %37 = getelementptr inbounds %struct.percpu_cluster, ptr %19, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  br label %52

38:                                               ; preds = %28
  %39 = load i32, ptr %6, align 4
  %40 = and i32 %39, 33554432
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %90

42:                                               ; preds = %38
  tail call fastcc void @swap_do_scheduled_discard(ptr noundef %0)
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !54
  %43 = load ptr, ptr %7, align 4
  %44 = ptrtoint ptr %43 to i32
  %45 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %46 = inttoptr i32 %45 to ptr
  %47 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %46) #11, !srcloc !19
  %48 = add i32 %47, %44
  %49 = inttoptr i32 %48 to ptr
  %50 = load volatile i32, ptr %49, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !55
  store i32 %50, ptr %2, align 4
  store i32 %50, ptr %1, align 4
  br label %51

51:                                               ; preds = %85, %42
  br label %12

52:                                               ; preds = %32, %24
  %53 = phi i32 [ %27, %24 ], [ %36, %32 ]
  %54 = phi i32 [ %26, %24 ], [ %36, %32 ]
  %55 = load i32, ptr %9, align 4
  %56 = add i32 %53, 256
  %57 = tail call i32 @llvm.umin.i32(i32 %55, i32 %56)
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %52
  %60 = load ptr, ptr %10, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = lshr i32 %54, 8
  %64 = getelementptr %struct.swap_cluster_info, ptr %60, i32 %63
  tail call void @_raw_spin_lock(ptr noundef %64) #18
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi ptr [ %64, %62 ], [ null, %59 ]
  %67 = load ptr, ptr %11, align 4
  br label %68

68:                                               ; preds = %73, %65
  %69 = phi i32 [ %54, %65 ], [ %74, %73 ]
  %70 = getelementptr i8, ptr %67, i32 %69
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = add i32 %69, 1
  %75 = icmp eq i32 %74, %57
  br i1 %75, label %76, label %68

76:                                               ; preds = %73, %68
  %77 = phi i32 [ %57, %73 ], [ %69, %68 ]
  %78 = icmp eq ptr %66, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %80 = load i16, ptr %66, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %66, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %82

82:                                               ; preds = %79, %76, %52
  %83 = phi i32 [ %54, %52 ], [ %77, %76 ], [ %77, %79 ]
  %84 = icmp ult i32 %83, %57
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  store i32 33554432, ptr %20, align 4
  br label %51

86:                                               ; preds = %82
  %87 = inttoptr i32 %18 to ptr
  %88 = getelementptr inbounds %struct.percpu_cluster, ptr %87, i32 0, i32 1
  %89 = add nuw i32 %83, 1
  store i32 %89, ptr %88, align 4
  store i32 %83, ptr %1, align 4
  store i32 %83, ptr %2, align 4
  br label %90

90:                                               ; preds = %86, %38
  %91 = phi i1 [ true, %86 ], [ false, %38 ]
  ret i1 %91
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @swap_do_scheduled_discard(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 25, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 33554432
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %119

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 25, i32 1, i32 1
  %10 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 22
  %11 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 17
  %12 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 18
  %13 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 8, i32 0, i32 1
  %14 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 8, i32 1, i32 1
  %15 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 6
  br label %16

16:                                               ; preds = %115, %8
  %17 = phi i32 [ %5, %8 ], [ %116, %115 ]
  %18 = and i32 %17, 16777215
  %19 = load i32, ptr %9, align 4
  %20 = and i32 %19, 16777215
  %21 = icmp eq i32 %20, %18
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 33554432, ptr %4, align 4
  store i32 33554432, ptr %9, align 4
  br label %27

23:                                               ; preds = %16
  %24 = getelementptr %struct.swap_cluster_info, ptr %3, i32 %18, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 16777215
  store i32 %26, ptr %4, align 4
  br label %27

27:                                               ; preds = %23, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %28 = load i16, ptr %10, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  %30 = shl nuw i32 %18, 8
  %31 = load ptr, ptr %11, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %47, %27
  %34 = phi ptr [ %49, %47 ], [ %31, %27 ]
  %35 = getelementptr inbounds %struct.swap_extent, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, %30
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rb_node, ptr %34, i32 0, i32 2
  br label %47

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.swap_extent, ptr %34, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = add i32 %42, %36
  %44 = icmp ugt i32 %43, %30
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.rb_node, ptr %34, i32 0, i32 1
  br label %47

47:                                               ; preds = %45, %38
  %48 = phi ptr [ %39, %38 ], [ %46, %45 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %33

51:                                               ; preds = %47, %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #18, !srcloc !9
  unreachable

52:                                               ; preds = %75, %40
  %53 = phi i32 [ %80, %75 ], [ %42, %40 ]
  %54 = phi i32 [ %78, %75 ], [ %36, %40 ]
  %55 = phi i32 [ %76, %75 ], [ %30, %40 ]
  %56 = phi ptr [ %73, %75 ], [ %34, %40 ]
  %57 = phi i32 [ %72, %75 ], [ 256, %40 ]
  %58 = sub i32 %55, %54
  %59 = getelementptr inbounds %struct.swap_extent, ptr %56, i32 0, i32 3
  %60 = load i64, ptr %59, align 8
  %61 = zext i32 %58 to i64
  %62 = add i64 %60, %61
  %63 = sub i32 %53, %58
  %64 = tail call i32 @llvm.umin.i32(i32 %63, i32 %57) #18
  %65 = zext i32 %64 to i64
  %66 = shl i64 %62, 3
  %67 = shl nuw nsw i64 %65, 3
  %68 = load ptr, ptr %12, align 4
  %69 = tail call i32 @blkdev_issue_discard(ptr noundef %68, i64 noundef %66, i64 noundef %67, i32 noundef 3072, i32 noundef 0) #18
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %52
  %72 = sub i32 %57, %64
  %73 = tail call ptr @rb_next(ptr noundef %56) #18
  %74 = icmp eq i32 %72, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = add i32 %64, %55
  %77 = getelementptr inbounds %struct.swap_extent, ptr %73, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.swap_extent, ptr %73, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  br label %52

81:                                               ; preds = %71, %52
  tail call void @_raw_spin_lock(ptr noundef %10) #18
  %82 = load ptr, ptr %2, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = getelementptr %struct.swap_cluster_info, ptr %82, i32 %18
  tail call void @_raw_spin_lock(ptr noundef %85) #18
  %86 = load ptr, ptr %2, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi ptr [ %86, %84 ], [ null, %81 ]
  %89 = phi ptr [ %85, %84 ], [ null, %81 ]
  %90 = getelementptr %struct.swap_cluster_info, ptr %88, i32 %18, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 16777215
  %93 = or i32 %92, 16777216
  store i32 %93, ptr %90, align 4
  %94 = load i32, ptr %13, align 4
  %95 = and i32 %94, 33554432
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %87
  store i32 %18, ptr %13, align 4
  br label %108

98:                                               ; preds = %87
  %99 = load i32, ptr %14, align 4
  %100 = and i32 %99, 16777215
  %101 = getelementptr %struct.swap_cluster_info, ptr %88, i32 %100
  tail call void @_raw_spin_lock(ptr noundef %101) #18
  %102 = getelementptr %struct.swap_cluster_info, ptr %88, i32 %100, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, -16777216
  %105 = or i32 %104, %18
  store i32 %105, ptr %102, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %106 = load i16, ptr %101, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr %101, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %108

108:                                              ; preds = %98, %97
  store i32 %18, ptr %14, align 4
  %109 = load ptr, ptr %15, align 4
  %110 = getelementptr i8, ptr %109, i32 %30
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(256) %110, i8 0, i32 256, i1 false)
  %111 = icmp eq ptr %89, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %113 = load i16, ptr %89, align 4
  %114 = add i16 %113, 1
  store i16 %114, ptr %89, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %115

115:                                              ; preds = %112, %108
  %116 = load i32, ptr %4, align 4
  %117 = and i32 %116, 33554432
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %16, label %119

119:                                              ; preds = %115, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_shadow_from_swap_cache(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @swap_count_continued(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  %7 = tail call ptr @vmalloc_to_page(ptr noundef %6) #18
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = icmp sgt i8 %2, -1
  br i1 %12, label %156, label %13, !prof !27

13:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3639, 0\0A.popsection", ""() #18, !srcloc !56
  unreachable

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %16 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %16) #18
  %17 = and i32 %1, 4095
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr i8, ptr %18, i32 -4
  %20 = load i32, ptr @pgprot_kernel, align 4
  %21 = or i32 %20, 512
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  %22 = tail call ptr @llvm.thread.pointer() #18
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 149
  %24 = load i32, ptr %23, align 8
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !37
  %26 = tail call ptr @__kmap_local_page_prot(ptr noundef %19, i32 noundef %21) #18
  %27 = getelementptr i8, ptr %26, i32 %17
  switch i8 %2, label %90 [
    i8 62, label %61
    i8 -66, label %28
    i8 -128, label %91
  ], !prof !57

28:                                               ; preds = %40, %14
  %29 = phi ptr [ %46, %40 ], [ %27, %14 ]
  %30 = phi ptr [ %37, %40 ], [ %19, %14 ]
  %31 = load i8, ptr %29, align 1
  switch i8 %31, label %64 [
    i8 -1, label %32
    i8 127, label %47
  ]

32:                                               ; preds = %28
  tail call void @kunmap_local_indexed(ptr noundef %29) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  %33 = load i32, ptr %23, align 8
  %34 = add i32 %33, -1
  store i32 %34, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  %35 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 -4
  %38 = icmp eq ptr %37, %7
  br i1 %38, label %39, label %40, !prof !16

39:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3658, 0\0A.popsection", ""() #18, !srcloc !58
  unreachable

40:                                               ; preds = %32
  %41 = load i32, ptr @pgprot_kernel, align 4
  %42 = or i32 %41, 512
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  %43 = load i32, ptr %23, align 8
  %44 = add i32 %43, 1
  store i32 %44, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !37
  %45 = tail call ptr @__kmap_local_page_prot(ptr noundef %37, i32 noundef %42) #18
  %46 = getelementptr i8, ptr %45, i32 %17
  br label %28

47:                                               ; preds = %28
  tail call void @kunmap_local_indexed(ptr noundef %29) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  %48 = load i32, ptr %23, align 8
  %49 = add i32 %48, -1
  store i32 %49, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  %50 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 -4
  %53 = icmp eq ptr %52, %7
  br i1 %53, label %152, label %54

54:                                               ; preds = %47
  %55 = load i32, ptr @pgprot_kernel, align 4
  %56 = or i32 %55, 512
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  %57 = load i32, ptr %23, align 8
  %58 = add i32 %57, 1
  store i32 %58, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !37
  %59 = tail call ptr @__kmap_local_page_prot(ptr noundef %52, i32 noundef %56) #18
  %60 = getelementptr i8, ptr %59, i32 %17
  br label %61

61:                                               ; preds = %54, %14
  %62 = phi ptr [ %27, %14 ], [ %60, %54 ]
  %63 = phi ptr [ %19, %14 ], [ %52, %54 ]
  store i8 0, ptr %62, align 1
  br label %66

64:                                               ; preds = %28
  %65 = add nuw i8 %31, 1
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i8 [ 1, %61 ], [ %65, %64 ]
  %68 = phi ptr [ %62, %61 ], [ %29, %64 ]
  %69 = phi ptr [ %63, %61 ], [ %30, %64 ]
  store i8 %67, ptr %68, align 1
  tail call void @kunmap_local_indexed(ptr noundef %68) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  %70 = load i32, ptr %23, align 8
  %71 = add i32 %70, -1
  store i32 %71, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  %72 = getelementptr inbounds %struct.page, ptr %69, i32 0, i32 1, i32 0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 -4
  %75 = icmp eq ptr %74, %7
  br i1 %75, label %152, label %76

76:                                               ; preds = %76, %66
  %77 = phi ptr [ %88, %76 ], [ %74, %66 ]
  %78 = load i32, ptr @pgprot_kernel, align 4
  %79 = or i32 %78, 512
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  %80 = load i32, ptr %23, align 8
  %81 = add i32 %80, 1
  store i32 %81, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !37
  %82 = tail call ptr @__kmap_local_page_prot(ptr noundef %77, i32 noundef %79) #18
  %83 = getelementptr i8, ptr %82, i32 %17
  store i8 -128, ptr %83, align 1
  tail call void @kunmap_local_indexed(ptr noundef %83) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  %84 = load i32, ptr %23, align 8
  %85 = add i32 %84, -1
  store i32 %85, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  %86 = getelementptr inbounds %struct.page, ptr %77, i32 0, i32 1, i32 0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr i8, ptr %87, i32 -4
  %89 = icmp eq ptr %88, %7
  br i1 %89, label %152, label %76

90:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3684, 0\0A.popsection", ""() #18, !srcloc !59
  unreachable

91:                                               ; preds = %103, %14
  %92 = phi ptr [ %109, %103 ], [ %27, %14 ]
  %93 = phi ptr [ %100, %103 ], [ %19, %14 ]
  %94 = load i8, ptr %92, align 1
  switch i8 %94, label %111 [
    i8 -128, label %95
    i8 0, label %110
  ], !prof !60

95:                                               ; preds = %91
  tail call void @kunmap_local_indexed(ptr noundef %92) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  %96 = load i32, ptr %23, align 8
  %97 = add i32 %96, -1
  store i32 %97, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  %98 = getelementptr inbounds %struct.page, ptr %93, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 -4
  %101 = icmp eq ptr %100, %7
  br i1 %101, label %102, label %103, !prof !16

102:                                              ; preds = %95
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3688, 0\0A.popsection", ""() #18, !srcloc !61
  unreachable

103:                                              ; preds = %95
  %104 = load i32, ptr @pgprot_kernel, align 4
  %105 = or i32 %104, 512
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  %106 = load i32, ptr %23, align 8
  %107 = add i32 %106, 1
  store i32 %107, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !37
  %108 = tail call ptr @__kmap_local_page_prot(ptr noundef %100, i32 noundef %105) #18
  %109 = getelementptr i8, ptr %108, i32 %17
  br label %91

110:                                              ; preds = %91
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3691, 0\0A.popsection", ""() #18, !srcloc !62
  unreachable

111:                                              ; preds = %91
  %112 = add i8 %94, -1
  store i8 %112, ptr %92, align 1
  %113 = icmp eq i8 %112, 0
  %114 = select i1 %113, i8 0, i8 -128
  tail call void @kunmap_local_indexed(ptr noundef %92) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  %115 = load i32, ptr %23, align 8
  %116 = add i32 %115, -1
  store i32 %116, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  %117 = getelementptr inbounds %struct.page, ptr %93, i32 0, i32 1, i32 0, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr i8, ptr %118, i32 -4
  %120 = icmp eq ptr %119, %7
  br i1 %120, label %149, label %121

121:                                              ; preds = %111
  %122 = load i32, ptr @pgprot_kernel, align 4
  %123 = or i32 %122, 512
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  %124 = load i32, ptr %23, align 8
  %125 = add i32 %124, 1
  store i32 %125, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !37
  %126 = tail call ptr @__kmap_local_page_prot(ptr noundef %119, i32 noundef %123) #18
  %127 = getelementptr i8, ptr %126, i32 %17
  %128 = or i8 %114, 127
  store i8 %128, ptr %127, align 1
  tail call void @kunmap_local_indexed(ptr noundef %127) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  %129 = load i32, ptr %23, align 8
  %130 = add i32 %129, -1
  store i32 %130, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  %131 = getelementptr i8, ptr %118, i32 4
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr i8, ptr %132, i32 -4
  %134 = icmp eq ptr %133, %7
  br i1 %134, label %149, label %135

135:                                              ; preds = %135, %121
  %136 = phi ptr [ %147, %135 ], [ %133, %121 ]
  %137 = load i32, ptr @pgprot_kernel, align 4
  %138 = or i32 %137, 512
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  %139 = load i32, ptr %23, align 8
  %140 = add i32 %139, 1
  store i32 %140, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !37
  %141 = tail call ptr @__kmap_local_page_prot(ptr noundef %136, i32 noundef %138) #18
  %142 = getelementptr i8, ptr %141, i32 %17
  store i8 -1, ptr %142, align 1
  tail call void @kunmap_local_indexed(ptr noundef %142) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  %143 = load i32, ptr %23, align 8
  %144 = add i32 %143, -1
  store i32 %144, ptr %23, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  %145 = getelementptr inbounds %struct.page, ptr %136, i32 0, i32 1, i32 0, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr i8, ptr %146, i32 -4
  %148 = icmp eq ptr %147, %7
  br i1 %148, label %149, label %135, !llvm.loop !63

149:                                              ; preds = %135, %121, %111
  %150 = phi i8 [ %114, %111 ], [ -128, %121 ], [ -128, %135 ]
  %151 = icmp eq i8 %150, -128
  br label %152

152:                                              ; preds = %149, %76, %66, %47
  %153 = phi i1 [ %151, %149 ], [ false, %47 ], [ true, %66 ], [ true, %76 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %154 = load i16, ptr %16, align 4
  %155 = add i16 %154, 1
  store i16 %155, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  br label %156

156:                                              ; preds = %152, %11
  %157 = phi i1 [ %153, %152 ], [ false, %11 ]
  ret i1 %157
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_open_name(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_swap_slots_cache_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @reenable_swap_slots_cache_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_swap_address_space(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @I_BDEV(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vm_enough_memory(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_vm_enough_memory(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_unuse(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmd_clear_bad(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_swap_cache([1 x i32], ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swapin_readahead([1 x i32], i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_anon_rmap(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_enable_swap_info(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 2
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nr_swap_pages) #18, !srcloc !14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_swap_pages, ptr nonnull @nr_swap_pages, i32 %7, ptr nonnull elementtype(i32) @nr_swap_pages) #18, !srcloc !25
  %9 = load i32, ptr %6, align 4
  %10 = load i32, ptr @total_swap_pages, align 4
  %11 = add i32 %10, %9
  store i32 %11, ptr @total_swap_pages, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %12 = load volatile i32, ptr @swap_lock, align 4
  store volatile i32 %12, ptr %2, align 4
  %13 = lshr i32 %12, 16
  %14 = and i32 %12, 65535
  %15 = icmp eq i32 %14, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %15, label %16, label %17, !prof !16

16:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swapfile.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2409, 0\0A.popsection", ""() #18, !srcloc !65
  unreachable

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 3
  tail call void @plist_add(ptr noundef %18, ptr noundef nonnull @swap_active_head) #18
  tail call void @_raw_spin_lock(ptr noundef nonnull @swap_avail_lock) #18
  %19 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 1, i32 2
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %23, label %22, !prof !27

22:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 710, i32 noundef 9, ptr noundef null) #18
  br label %23

23:                                               ; preds = %22, %17
  %24 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 26
  %25 = load ptr, ptr @swap_avail_heads, align 4
  tail call void @plist_add(ptr noundef %24, ptr noundef %25) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %26 = load i16, ptr @swap_avail_lock, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr @swap_avail_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_kill_and_confirm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @swaps_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @swaps_op) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = load volatile i32, ptr @proc_poll_event, align 4
  %9 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 9
  store i32 %8, ptr %9, align 8
  br label %10

10:                                               ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @swaps_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void %7(ptr noundef %0, ptr noundef nonnull @proc_poll_wait, ptr noundef nonnull %1) #18
  br label %10

10:                                               ; preds = %9, %6, %2
  %11 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 9
  %12 = load i32, ptr %11, align 8
  %13 = load volatile i32, ptr @proc_poll_event, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load volatile i32, ptr @proc_poll_event, align 4
  store i32 %16, ptr %11, align 8
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i32 [ 75, %15 ], [ 65, %10 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @swap_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %1, align 8
  tail call void @mutex_lock(ptr noundef nonnull @swapon_mutex) #18
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %23, %2
  %6 = phi i64 [ %24, %23 ], [ %3, %2 ]
  %7 = phi i32 [ %25, %23 ], [ 0, %2 ]
  %8 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %7
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.swap_info_struct, ptr %9, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = add i64 %6, -1
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20, %16, %11
  %24 = phi i64 [ %21, %20 ], [ %6, %16 ], [ %6, %11 ]
  %25 = add nuw nsw i32 %7, 1
  %26 = icmp eq i32 %25, 30
  br i1 %26, label %27, label %5

27:                                               ; preds = %23, %20, %5, %2
  %28 = phi ptr [ inttoptr (i32 1 to ptr), %2 ], [ null, %23 ], [ null, %5 ], [ %9, %20 ]
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @swap_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @swapon_mutex) #18
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @swap_next(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr nocapture noundef %2) #13 {
  %4 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = load i64, ptr %2, align 8
  %7 = add i64 %6, 1
  store i64 %7, ptr %2, align 8
  br label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 4
  %10 = load i8, ptr %9, align 4
  %11 = sext i8 %10 to i32
  %12 = add nsw i32 %11, 1
  %13 = load i64, ptr %2, align 8
  %14 = add i64 %13, 1
  store i64 %14, ptr %2, align 8
  %15 = icmp sgt i8 %10, 28
  br i1 %15, label %35, label %16

16:                                               ; preds = %8, %5
  %17 = phi i32 [ %12, %8 ], [ 0, %5 ]
  br label %18

18:                                               ; preds = %32, %16
  %19 = phi i32 [ %33, %32 ], [ %17, %16 ]
  %20 = getelementptr [30 x ptr], ptr @swap_info, i32 0, i32 %19
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.swap_info_struct, ptr %21, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.swap_info_struct, ptr %21, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %23
  %33 = add nsw i32 %19, 1
  %34 = icmp eq i32 %33, 30
  br i1 %34, label %35, label %18

35:                                               ; preds = %32, %28, %18, %8
  %36 = phi ptr [ null, %8 ], [ null, %32 ], [ null, %18 ], [ %21, %28 ]
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @swap_show(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.6) #18
  br label %31

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 2
  %12 = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @seq_file_path(ptr noundef %0, ptr noundef %13, ptr noundef nonnull @.str.7) #18
  %15 = icmp slt i32 %14, 40
  %16 = sub i32 40, %14
  %17 = select i1 %15, i32 %16, i32 1
  %18 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, -4096
  %22 = icmp eq i16 %21, 24576
  %23 = select i1 %22, ptr @.str.10, ptr @.str.11
  %24 = icmp ult i32 %8, 10000000
  %25 = select i1 %24, ptr @.str.12, ptr @.str.13
  %26 = icmp ult i32 %11, 10000000
  %27 = select i1 %26, ptr @.str.12, ptr @.str.13
  %28 = getelementptr inbounds %struct.swap_info_struct, ptr %1, i32 0, i32 2
  %29 = load i16, ptr %28, align 4
  %30 = sext i16 %29 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %17, ptr noundef nonnull @.str.9, ptr noundef nonnull %23, i32 noundef %8, ptr noundef nonnull %25, i32 noundef %11, ptr noundef nonnull %27, i32 noundef %30) #18
  br label %31

31:                                               ; preds = %5, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_file_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @swap_discard_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -140
  %3 = getelementptr i8, ptr %0, i32 -8
  tail call void @_raw_spin_lock(ptr noundef %3) #18
  tail call fastcc void @swap_do_scheduled_discard(ptr noundef %2)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %4 = load i16, ptr %3, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_swap_address_space(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_swap_slots_cache() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @percpu_ref_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @swap_users_ref_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.swap_info_struct, ptr %0, i32 0, i32 21
  tail call void @complete(ptr noundef %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_swapfile_activate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_resurrect(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #17

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readonly willreturn }

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
!9 = !{i64 2154519639, i64 2154520117, i64 2154519676, i64 2154519732, i64 2154519766, i64 2154519790, i64 2154519831, i64 2154519852, i64 2154519880, i64 2154519914}
!10 = !{i64 2149102191}
!11 = !{i64 2149098015}
!12 = !{i64 2149098090, i64 2149098117, i64 2149098164, i64 2149098186, i64 2149098214, i64 2149098234}
!13 = !{i64 2149125194}
!14 = !{i64 935125, i64 2148425096, i64 2148425122, i64 2148425169, i64 2148425191, i64 2148425219, i64 2148425239}
!15 = !{i64 2148438868, i64 2148438894, i64 2148438923, i64 2148438957, i64 2148438988, i64 2148439011}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"auto-init"}
!18 = !{i64 2154743665}
!19 = !{i64 859503}
!20 = !{i64 2154760054}
!21 = !{i64 2154656869}
!22 = !{i64 2154673258}
!23 = !{i64 840803, i64 840864}
!24 = !{i64 843820}
!25 = !{i64 2148436511, i64 2148436537, i64 2148436566, i64 2148436600, i64 2148436631, i64 2148436654}
!26 = !{i64 2149500963}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2149501180}
!29 = !{i64 2148436018}
!30 = !{i64 921694, i64 921719, i64 921741, i64 921757, i64 921769, i64 921789, i64 921813, i64 921829, i64 921841}
!31 = !{i64 2148436144}
!32 = !{i64 2154824590}
!33 = !{i64 2148537190}
!34 = !{i64 2148439552, i64 2148439584, i64 2148439613, i64 2148439647, i64 2148439678, i64 2148439701}
!35 = !{i64 2148537393}
!36 = !{i64 2153039566}
!37 = !{i64 2151598860}
!38 = !{i64 2151599067}
!39 = !{i64 2153042191}
!40 = !{i64 2148444973, i64 2148445005, i64 2148445034, i64 2148445068, i64 2148445099, i64 2148445122}
!41 = !{i64 2148546313}
!42 = !{i64 2154865774, i64 2154866253, i64 2154865811, i64 2154865867, i64 2154865901, i64 2154865925, i64 2154865966, i64 2154865987, i64 2154866015, i64 2154866049}
!43 = !{i64 2154879398, i64 2154879877, i64 2154879435, i64 2154879491, i64 2154879525, i64 2154879549, i64 2154879590, i64 2154879611, i64 2154879639, i64 2154879673}
!44 = !{i64 2148534357}
!45 = !{i64 2148437195, i64 2148437227, i64 2148437256, i64 2148437290, i64 2148437321, i64 2148437344}
!46 = !{i64 2148534560}
!47 = !{i64 2154898107}
!48 = !{i64 2151911275}
!49 = !{i64 2151911117}
!50 = !{i64 2151911419}
!51 = !{i64 2149344996}
!52 = !{!"branch_weights", i32 2002, i32 2000}
!53 = !{i64 2154949640, i64 2154950119, i64 2154949677, i64 2154949733, i64 2154949767, i64 2154949791, i64 2154949832, i64 2154949853, i64 2154949881, i64 2154949915}
!54 = !{i64 2154568741}
!55 = !{i64 2154585130}
!56 = !{i64 2154955791, i64 2154956270, i64 2154955828, i64 2154955884, i64 2154955918, i64 2154955942, i64 2154955983, i64 2154956004, i64 2154956032, i64 2154956066}
!57 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!58 = !{i64 2154961459, i64 2154961938, i64 2154961496, i64 2154961552, i64 2154961586, i64 2154961610, i64 2154961651, i64 2154961672, i64 2154961700, i64 2154961734}
!59 = !{i64 2154974522, i64 2154975001, i64 2154974559, i64 2154974615, i64 2154974649, i64 2154974673, i64 2154974714, i64 2154974735, i64 2154974763, i64 2154974797}
!60 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!61 = !{i64 2154978677, i64 2154979156, i64 2154978714, i64 2154978770, i64 2154978804, i64 2154978828, i64 2154978869, i64 2154978890, i64 2154978918, i64 2154978952}
!62 = !{i64 2154979672, i64 2154980151, i64 2154979709, i64 2154979765, i64 2154979799, i64 2154979823, i64 2154979864, i64 2154979885, i64 2154979913, i64 2154979947}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.peeled.count", i32 1}
!65 = !{i64 2154868611, i64 2154869090, i64 2154868648, i64 2154868704, i64 2154868738, i64 2154868762, i64 2154868803, i64 2154868824, i64 2154868852, i64 2154868886}
