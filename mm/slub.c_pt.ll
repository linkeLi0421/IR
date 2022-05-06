; ModuleID = '/llk/IR/mm/slub.c_pt.bc'
source_filename = "../mm/slub.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_cache_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_cache_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_cache_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_cache_alloc_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_cache_alloc_trace\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_cache_alloc_trace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_cache_free:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_cache_free\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_cache_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_cache_free_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_cache_free_bulk\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_cache_free_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmem_cache_alloc_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22kmem_cache_alloc_bulk\22\09\09\09\09\09"
module asm "__kstrtabns_kmem_cache_alloc_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__kmalloc\22\09\09\09\09\09"
module asm "__kstrtabns___kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ksize:\09\09\09\09\09"
module asm "\09.asciz \09\22__ksize\22\09\09\09\09\09"
module asm "__kstrtabns___ksize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22kfree\22\09\09\09\09\09"
module asm "__kstrtabns_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kmalloc_track_caller:\09\09\09\09\09"
module asm "\09.asciz \09\22__kmalloc_track_caller\22\09\09\09\09\09"
module asm "__kstrtabns___kmalloc_track_caller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_validate_slab_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22validate_slab_cache\22\09\09\09\09\09"
module asm "__kstrtabns_validate_slab_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kmem_cache = type { ptr, i32, i32, i32, i32, %struct.reciprocal_value, i32, i32, i32, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.kobject, i32, i32, [1 x ptr] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.kmem_cache_order_objects = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nodemask_t = type { [1 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.slub_flush_work = type { %struct.work_struct, ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.slab_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.track = type { i32, [16 x i32], i32, i32, i32 }
%struct.kmem_cache_cpu = type { ptr, i32, ptr, ptr, %struct.local_lock_t }
%struct.local_lock_t = type {}
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.4, %union.anon.67, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.slab = type { i32, %union.anon, ptr, ptr, %union.anon.0, i32, %struct.atomic_t }
%union.anon = type { %struct.list_head }
%union.anon.0 = type { i32 }
%struct.kmem_cache_node = type { %struct.spinlock, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head }
%struct.anon.8 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.kmem_obj_info = type { ptr, ptr, ptr, i32, ptr, ptr, [16 x ptr], [16 x ptr] }
%struct.saved_alias = type { ptr, ptr, ptr }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.slabinfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.__va_list = type { ptr }
%struct.va_format = type { ptr, ptr }
%struct.anon.74 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.71 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.18, ptr }
%union.anon.18 = type { i64 }
%struct.lockref = type { %union.anon.20 }
%union.anon.20 = type { i64 }
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.loc_track = type { i32, i32, ptr, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.location = type { i32, i32, i64, i32, i32, i32, i32, [1 x i32], %struct.nodemask_t }

@slub_debug_enabled = dso_local global %struct.static_key_false zeroinitializer, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [10 x i8] c"Allocated\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Freed\00", align 1
@__setup_str_setup_slub_debug = internal constant [11 x i8] c"slub_debug\00", section ".init.rodata", align 1
@__setup_setup_slub_debug = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_slub_debug, ptr @setup_slub_debug, i32 0 }, section ".init.setup", align 4
@slub_debug = internal unnamed_addr global i32 0, align 4
@slub_debug_string = internal unnamed_addr global ptr null, align 4
@__kstrtab_kmem_cache_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_cache_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_cache_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_cache_alloc to i32), ptr @__kstrtab_kmem_cache_alloc, ptr @__kstrtabns_kmem_cache_alloc }, section "___ksymtab+kmem_cache_alloc", align 4
@__kstrtab_kmem_cache_alloc_trace = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_cache_alloc_trace = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_cache_alloc_trace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_cache_alloc_trace to i32), ptr @__kstrtab_kmem_cache_alloc_trace, ptr @__kstrtabns_kmem_cache_alloc_trace }, section "___ksymtab+kmem_cache_alloc_trace", align 4
@__kstrtab_kmem_cache_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_cache_free = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_cache_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_cache_free to i32), ptr @__kstrtab_kmem_cache_free, ptr @__kstrtabns_kmem_cache_free }, section "___ksymtab+kmem_cache_free", align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"mm/slub.c\00", align 1
@__kstrtab_kmem_cache_free_bulk = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_cache_free_bulk = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_cache_free_bulk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_cache_free_bulk to i32), ptr @__kstrtab_kmem_cache_free_bulk, ptr @__kstrtabns_kmem_cache_free_bulk }, section "___ksymtab+kmem_cache_free_bulk", align 4
@__kstrtab_kmem_cache_alloc_bulk = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmem_cache_alloc_bulk = external dso_local constant [0 x i8], align 1
@__ksymtab_kmem_cache_alloc_bulk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmem_cache_alloc_bulk to i32), ptr @__kstrtab_kmem_cache_alloc_bulk, ptr @__kstrtabns_kmem_cache_alloc_bulk }, section "___ksymtab+kmem_cache_alloc_bulk", align 4
@kmem_obj_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__setup_str_setup_slub_min_order = internal constant [16 x i8] c"slub_min_order=\00", section ".init.rodata", align 1
@__setup_setup_slub_min_order = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_slub_min_order, ptr @setup_slub_min_order, i32 0 }, section ".init.setup", align 4
@__setup_str_setup_slub_max_order = internal constant [16 x i8] c"slub_max_order=\00", section ".init.rodata", align 1
@__setup_setup_slub_max_order = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_slub_max_order, ptr @setup_slub_max_order, i32 0 }, section ".init.setup", align 4
@__setup_str_setup_slub_min_objects = internal constant [18 x i8] c"slub_min_objects=\00", section ".init.rodata", align 1
@__setup_setup_slub_min_objects = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_slub_min_objects, ptr @setup_slub_min_objects, i32 0 }, section ".init.setup", align 4
@__kstrtab___kmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___kmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab___kmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kmalloc to i32), ptr @__kstrtab___kmalloc, ptr @__kstrtabns___kmalloc }, section "___ksymtab+__kmalloc", align 4
@__kstrtab___ksize = external dso_local constant [0 x i8], align 1
@__kstrtabns___ksize = external dso_local constant [0 x i8], align 1
@__ksymtab___ksize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ksize to i32), ptr @__kstrtab___ksize, ptr @__kstrtabns___ksize }, section "___ksymtab+__ksize", align 4
@__kstrtab_kfree = external dso_local constant [0 x i8], align 1
@__kstrtabns_kfree = external dso_local constant [0 x i8], align 1
@__ksymtab_kfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kfree to i32), ptr @__kstrtab_kfree, ptr @__kstrtabns_kfree }, section "___ksymtab+kfree", align 4
@kmem_cache_init.boot_kmem_cache = internal global %struct.kmem_cache zeroinitializer, section ".init.data", align 4
@kmem_cache_init.boot_kmem_cache_node = internal global %struct.kmem_cache zeroinitializer, section ".init.data", align 4
@slub_max_order = internal global i32 3, align 4
@kmem_cache_node = internal unnamed_addr global ptr null, align 4
@kmem_cache = external dso_local local_unnamed_addr global ptr, align 4
@slab_nodes = internal global %struct.nodemask_t zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"kmem_cache_node\00", align 1
@slab_state = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"kmem_cache\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"slub:dead\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"\016SLUB: HWalign=%d, Order=%u-%u, MinObjects=%u, CPUs=%u, Nodes=%u\0A\00", align 1
@slub_min_order = internal global i32 0, align 4
@slub_min_objects = internal global i32 0, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab___kmalloc_track_caller = external dso_local constant [0 x i8], align 1
@__kstrtabns___kmalloc_track_caller = external dso_local constant [0 x i8], align 1
@__ksymtab___kmalloc_track_caller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kmalloc_track_caller to i32), ptr @__kstrtab___kmalloc_track_caller, ptr @__kstrtabns___kmalloc_track_caller }, section "___ksymtab+__kmalloc_track_caller", align 4
@__kstrtab_validate_slab_cache = external dso_local constant [0 x i8], align 1
@__kstrtabns_validate_slab_cache = external dso_local constant [0 x i8], align 1
@__ksymtab_validate_slab_cache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @validate_slab_cache to i32), ptr @__kstrtab_validate_slab_cache, ptr @__kstrtabns_validate_slab_cache }, section "___ksymtab+validate_slab_cache", align 4
@__initcall__kmod_slub__313_6055_slab_sysfs_init6 = internal global ptr @slab_sysfs_init, section ".initcall6.init", align 4
@slab_debugfs_root = internal unnamed_addr global ptr null, align 4
@__initcall__kmod_slub__314_6236_slab_debugfs_init6 = internal global ptr @slab_debugfs_init, section ".initcall6.init", align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"\013%s in %pS age=%lu cpu=%u pid=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\013\09%pS\0A\00", align 1
@init_on_alloc = external dso_local global %struct.static_key_false, align 4
@init_on_free = external dso_local global %struct.static_key_false, align 4
@.str.9 = private unnamed_addr constant [83 x i8] c"\016mem auto-init: SLAB_POISON will take precedence over init_on_alloc/init_on_free\0A\00", align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@static_key_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"\013slub_debug option '%c' unknown. skipped\0A\00", align 1
@disable_higher_order_debug = internal unnamed_addr global i1 false, align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__tracepoint_kmem_cache_alloc = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_kmalloc = external dso_local global %struct.tracepoint, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"mm/slab.h\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"%s: Wrong slab cache. %s but object is from %s\0A\00", align 1
@__func__.cache_from_obj = private unnamed_addr constant [15 x i8] c"cache_from_obj\00", align 1
@virt_to_cache.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"%s: Object is not a Slab page!\0A\00", align 1
@__func__.virt_to_cache = private unnamed_addr constant [14 x i8] c"virt_to_cache\00", align 1
@__tracepoint_kmem_cache_free = external dso_local global %struct.tracepoint, align 4
@.str.20 = private unnamed_addr constant [37 x i8] c"Bulk freelist count(%d) invalid(%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Object at 0x%p not freed\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Not a valid slab page\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"objects %u > max %u\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"inuse %u > max %u\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"Padding overwritten. 0x%p-0x%p @offset=%tu\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Padding \00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"slab padding\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"Restoring %s 0x%p-0x%p=0x%x\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"Invalid object pointer 0x%p\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"Object already free\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"Attempt to free object(0x%p) outside of slab\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"\013SLUB <none>: no slab for object 0x%p.\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"page slab pointer corrupt.\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"Freechain corrupt\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"Freepointer corrupt\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"Freelist cleared\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"Wrong number of objects. Found %d but should be %d\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"Number of objects adjusted\00", align 1
@.str.40 = private unnamed_addr constant [54 x i8] c"Wrong object count. Counter is %d but counted were %d\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"Object count adjusted\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.43 = private unnamed_addr constant [81 x i8] c"\013=============================================================================\0A\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"\013BUG %s (%s): %pV\0A\00", align 1
@.str.45 = private unnamed_addr constant [82 x i8] c"\013-----------------------------------------------------------------------------\0A\0A\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"\013Object 0x%p @offset=%tu fp=0x%p\0A\0A\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"Redzone  \00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"Bytes b4 \00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"Object   \00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"Padding  \00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"\013Slab 0x%p objects=%u used=%u fp=0x%p flags=%pGp\0A\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"Left Redzone\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"Right Redzone\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"Alignment padding\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"Poison\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"End Poison\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"%s overwritten\00", align 1
@.str.58 = private unnamed_addr constant [58 x i8] c"\0130x%p-0x%p @offset=%tu. First byte 0x%x instead of 0x%x\0A\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"Object padding\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"\016TRACE %s %s 0x%p inuse=%d fp=0x%p\0A\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"alloc\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"Object \00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"\013FIX %s: %pV\0A\00", align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@gfp_allowed_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.68 = private unnamed_addr constant [28 x i8] c"Isolate corrupted freechain\00", align 1
@new_slab.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@slab_out_of_memory.slub_oom_rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.slab_out_of_memory = private unnamed_addr constant [19 x i8] c"slab_out_of_memory\00", align 1
@.str.70 = private unnamed_addr constant [61 x i8] c"\014SLUB: Unable to allocate memory on node %d, gfp=%#x(%pGg)\0A\00", align 1
@.str.71 = private unnamed_addr constant [83 x i8] c"\014  cache: %s, object size: %u, buffer size: %u, default order: %u, min order: %u\0A\00", align 1
@.str.72 = private unnamed_addr constant [68 x i8] c"\014  %s debugging increased min order, use slub_debug=O to disable.\0A\00", align 1
@.str.73 = private unnamed_addr constant [47 x i8] c"\014  node %d: slabs: %ld, objs: %ld, free: %ld\0A\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"Marking all objects used\00", align 1
@.str.75 = private unnamed_addr constant [29 x i8] c"Freelist Pointer check fails\00", align 1
@flush_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @flush_lock, i64 12), ptr getelementptr (i8, ptr @flush_lock, i64 12) } }, align 4
@slub_flush = internal global %struct.slub_flush_work zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.76 = private unnamed_addr constant [51 x i8] c"Objects remaining in %s on __kmem_cache_shutdown()\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"\013Object 0x%p @offset=%tu\0A\00", align 1
@object_map_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@object_map = internal global [1024 x i32] zeroinitializer, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_kfree = external dso_local global %struct.tracepoint, align 4
@free_large_kmalloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@free_large_kmalloc.__already_done.78 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"\014object pointer: 0x%p\0A\00", align 1
@slab_mutex = external dso_local global %struct.mutex, align 4
@slab_caches = external dso_local global %struct.list_head, align 4
@__cpu_present_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.83 = private unnamed_addr constant [54 x i8] c"\013SLUB %s: %ld partial slabs counted but counter=%ld\0A\00", align 1
@.str.84 = private unnamed_addr constant [46 x i8] c"\013SLUB: %s %ld slabs counted but counter=%ld\0A\00", align 1
@slab_ktype = internal global %struct.kobj_type { ptr @kmem_cache_release, ptr @slab_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@slab_kset = internal unnamed_addr global ptr null, align 4
@slab_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @slab_attrs, ptr null }, align 4
@slab_sysfs_ops = internal constant %struct.sysfs_ops { ptr @slab_attr_show, ptr @slab_attr_store }, align 4
@.str.85 = private unnamed_addr constant [5 x i8] c"%07u\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@slab_attrs = internal global [29 x ptr] [ptr @slab_size_attr, ptr @object_size_attr, ptr @objs_per_slab_attr, ptr @order_attr, ptr @min_partial_attr, ptr @cpu_partial_attr, ptr @objects_attr, ptr @objects_partial_attr, ptr @partial_attr, ptr @cpu_slabs_attr, ptr @ctor_attr, ptr @aliases_attr, ptr @align_attr, ptr @hwcache_align_attr, ptr @reclaim_account_attr, ptr @destroy_by_rcu_attr, ptr @shrink_attr, ptr @slabs_cpu_partial_attr, ptr @total_objects_attr, ptr @slabs_attr, ptr @sanity_checks_attr, ptr @trace_attr, ptr @red_zone_attr, ptr @poison_attr, ptr @store_user_attr, ptr @validate_attr, ptr @cache_dma_attr, ptr @usersize_attr, ptr null], align 4
@slab_size_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.86, i16 256 }, ptr @slab_size_show, ptr null }, align 4
@object_size_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.88, i16 256 }, ptr @object_size_show, ptr null }, align 4
@objs_per_slab_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.89, i16 256 }, ptr @objs_per_slab_show, ptr null }, align 4
@order_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.90, i16 256 }, ptr @order_show, ptr null }, align 4
@min_partial_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.91, i16 384 }, ptr @min_partial_show, ptr @min_partial_store }, align 4
@cpu_partial_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.93, i16 384 }, ptr @cpu_partial_show, ptr @cpu_partial_store }, align 4
@objects_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.94, i16 256 }, ptr @objects_show, ptr null }, align 4
@objects_partial_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.98, i16 256 }, ptr @objects_partial_show, ptr null }, align 4
@partial_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.99, i16 256 }, ptr @partial_show, ptr null }, align 4
@cpu_slabs_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.100, i16 256 }, ptr @cpu_slabs_show, ptr null }, align 4
@ctor_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.101, i16 256 }, ptr @ctor_show, ptr null }, align 4
@aliases_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.103, i16 256 }, ptr @aliases_show, ptr null }, align 4
@align_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.105, i16 256 }, ptr @align_show, ptr null }, align 4
@hwcache_align_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.106, i16 256 }, ptr @hwcache_align_show, ptr null }, align 4
@reclaim_account_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.107, i16 256 }, ptr @reclaim_account_show, ptr null }, align 4
@destroy_by_rcu_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.108, i16 256 }, ptr @destroy_by_rcu_show, ptr null }, align 4
@shrink_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.109, i16 384 }, ptr @shrink_show, ptr @shrink_store }, align 4
@slabs_cpu_partial_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.110, i16 256 }, ptr @slabs_cpu_partial_show, ptr null }, align 4
@total_objects_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.113, i16 256 }, ptr @total_objects_show, ptr null }, align 4
@slabs_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.114, i16 256 }, ptr @slabs_show, ptr null }, align 4
@sanity_checks_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.115, i16 256 }, ptr @sanity_checks_show, ptr null }, align 4
@trace_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.116, i16 256 }, ptr @trace_show, ptr null }, align 4
@red_zone_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.117, i16 256 }, ptr @red_zone_show, ptr null }, align 4
@poison_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.118, i16 256 }, ptr @poison_show, ptr null }, align 4
@store_user_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.119, i16 256 }, ptr @store_user_show, ptr null }, align 4
@validate_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.120, i16 384 }, ptr @validate_show, ptr @validate_store }, align 4
@cache_dma_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.121, i16 256 }, ptr @cache_dma_show, ptr null }, align 4
@usersize_attr = internal global %struct.slab_attribute { %struct.attribute { ptr @.str.122, i16 256 }, ptr @usersize_show, ptr null }, align 4
@.str.86 = private unnamed_addr constant [10 x i8] c"slab_size\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"object_size\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"objs_per_slab\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"min_partial\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"cpu_partial\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"objects\00", align 1
@show_slab_objects.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@show_slab_objects.__already_done.95 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"objects_partial\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"partial\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"cpu_slabs\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"ctor\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"%pS\0A\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"hwcache_align\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"reclaim_account\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"destroy_by_rcu\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"shrink\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"slabs_cpu_partial\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"%d(%d)\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c" C%d=%d(%d)\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"total_objects\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"slabs\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"sanity_checks\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"red_zone\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"poison\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"store_user\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"validate\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"cache_dma\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"usersize\00", align 1
@alias_list = internal unnamed_addr global ptr null, align 4
@.str.123 = private unnamed_addr constant [5 x i8] c"slab\00", align 1
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.124 = private unnamed_addr constant [35 x i8] c"\013Cannot register slab subsystem.\0A\00", align 1
@.str.125 = private unnamed_addr constant [45 x i8] c"\013SLUB: Unable to add boot slab %s to sysfs\0A\00", align 1
@.str.126 = private unnamed_addr constant [51 x i8] c"\013SLUB: Unable to add boot slab alias %s to sysfs\0A\00", align 1
@.str.127 = private unnamed_addr constant [13 x i8] c"alloc_traces\00", align 1
@slab_debugfs_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @slab_debug_trace_open, ptr null, ptr @slab_debug_trace_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.128 = private unnamed_addr constant [12 x i8] c"free_traces\00", align 1
@slab_debugfs_sops = internal constant %struct.seq_operations { ptr @slab_debugfs_start, ptr @slab_debugfs_stop, ptr @slab_debugfs_next, ptr @slab_debugfs_show }, align 4
@.str.129 = private unnamed_addr constant [6 x i8] c"%7ld \00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"%pS\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"<not-available>\00", align 1
@.str.132 = private unnamed_addr constant [18 x i8] c" age=%ld/%llu/%ld\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c" age=%ld\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c" pid=%ld-%ld\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c" pid=%ld\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c" cpus=%*pbl\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"No data\0A\00", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@llvm.compiler.used = appending global [16 x ptr] [ptr @__initcall__kmod_slub__313_6055_slab_sysfs_init6, ptr @__initcall__kmod_slub__314_6236_slab_debugfs_init6, ptr @__ksymtab___kmalloc, ptr @__ksymtab___kmalloc_track_caller, ptr @__ksymtab___ksize, ptr @__ksymtab_kfree, ptr @__ksymtab_kmem_cache_alloc, ptr @__ksymtab_kmem_cache_alloc_bulk, ptr @__ksymtab_kmem_cache_alloc_trace, ptr @__ksymtab_kmem_cache_free, ptr @__ksymtab_kmem_cache_free_bulk, ptr @__ksymtab_validate_slab_cache, ptr @__setup_setup_slub_debug, ptr @__setup_setup_slub_max_order, ptr @__setup_setup_slub_min_objects, ptr @__setup_setup_slub_min_order], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @fixup_red_left(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr @slub_debug_enabled, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %1, i32 %12
  br label %14

14:                                               ; preds = %10, %5, %2
  %15 = phi ptr [ %13, %10 ], [ %1, %5 ], [ %1, %2 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @print_tracking(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %10, %12
  %14 = add i32 %12, 4
  %15 = select i1 %13, i32 %12, i32 %14
  %16 = getelementptr i8, ptr %1, i32 %15
  tail call fastcc void @print_track(ptr noundef nonnull @.str, ptr noundef %16, i32 noundef %3)
  %17 = load i32, ptr %9, align 4
  %18 = load i32, ptr %11, align 4
  %19 = icmp ult i32 %17, %18
  %20 = add i32 %18, 4
  %21 = select i1 %19, i32 %18, i32 %20
  %22 = getelementptr i8, ptr %1, i32 %21
  %23 = getelementptr %struct.track, ptr %22, i32 1
  tail call fastcc void @print_track(ptr noundef nonnull @.str.1, ptr noundef %23, i32 noundef %3)
  br label %24

24:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_track(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %112, label %6

6:                                                ; preds = %3
  %7 = inttoptr i32 %4 to ptr
  %8 = getelementptr inbounds %struct.track, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %2, %9
  %11 = getelementptr inbounds %struct.track, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.track, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef nonnull %7, i32 noundef %10, i32 noundef %12, i32 noundef %14) #25
  %16 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 0
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %112, label %19

19:                                               ; preds = %6
  %20 = inttoptr i32 %17 to ptr
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %20) #25
  %22 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %112, label %25

25:                                               ; preds = %19
  %26 = inttoptr i32 %23 to ptr
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %26) #25
  %28 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %112, label %31

31:                                               ; preds = %25
  %32 = inttoptr i32 %29 to ptr
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %32) #25
  %34 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %112, label %37

37:                                               ; preds = %31
  %38 = inttoptr i32 %35 to ptr
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %38) #25
  %40 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %112, label %43

43:                                               ; preds = %37
  %44 = inttoptr i32 %41 to ptr
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %44) #25
  %46 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %112, label %49

49:                                               ; preds = %43
  %50 = inttoptr i32 %47 to ptr
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %50) #25
  %52 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %112, label %55

55:                                               ; preds = %49
  %56 = inttoptr i32 %53 to ptr
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %56) #25
  %58 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %112, label %61

61:                                               ; preds = %55
  %62 = inttoptr i32 %59 to ptr
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %62) #25
  %64 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 8
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %112, label %67

67:                                               ; preds = %61
  %68 = inttoptr i32 %65 to ptr
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %68) #25
  %70 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 9
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %112, label %73

73:                                               ; preds = %67
  %74 = inttoptr i32 %71 to ptr
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %74) #25
  %76 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 10
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %112, label %79

79:                                               ; preds = %73
  %80 = inttoptr i32 %77 to ptr
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %80) #25
  %82 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 11
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %112, label %85

85:                                               ; preds = %79
  %86 = inttoptr i32 %83 to ptr
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %86) #25
  %88 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 12
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %112, label %91

91:                                               ; preds = %85
  %92 = inttoptr i32 %89 to ptr
  %93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %92) #25
  %94 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 13
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %91
  %98 = inttoptr i32 %95 to ptr
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %98) #25
  %100 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 14
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %97
  %104 = inttoptr i32 %101 to ptr
  %105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %104) #25
  %106 = getelementptr %struct.track, ptr %1, i32 0, i32 1, i32 15
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = inttoptr i32 %107 to ptr
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %110) #25
  br label %112

112:                                              ; preds = %109, %103, %97, %91, %85, %79, %73, %67, %61, %55, %49, %43, %37, %31, %25, %19, %6, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @setup_slub_debug(ptr noundef %0) #3 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #26
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  store ptr null, ptr %3, align 4, !annotation !9
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %0, align 1
  %6 = icmp eq i8 %5, 61
  br i1 %6, label %7, label %33

7:                                                ; preds = %1
  %8 = load i8, ptr %4, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %4, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %12, %10
  %13 = phi ptr [ %17, %12 ], [ %4, %10 ]
  %14 = phi i32 [ %24, %12 ], [ 68864, %10 ]
  %15 = phi i1 [ %23, %12 ], [ false, %10 ]
  %16 = phi i1 [ %21, %12 ], [ false, %10 ]
  %17 = call fastcc ptr @parse_slub_debug_flags(ptr noundef nonnull %13, ptr noundef nonnull %2, ptr noundef nonnull %3, i1 noundef zeroext true)
  %18 = load ptr, ptr %3, align 4
  %19 = icmp eq ptr %18, null
  %20 = load i32, ptr %2, align 4
  %21 = select i1 %19, i1 true, i1 %16
  %22 = xor i1 %19, true
  %23 = select i1 %22, i1 true, i1 %15
  %24 = select i1 %19, i32 %20, i32 %14
  %25 = icmp eq ptr %17, null
  br i1 %25, label %26, label %12

26:                                               ; preds = %12
  br i1 %23, label %30, label %27

27:                                               ; preds = %26, %10
  %28 = phi i32 [ %24, %26 ], [ 68864, %10 ]
  %29 = load ptr, ptr @slub_debug_string, align 4
  br label %34

30:                                               ; preds = %26
  %31 = load i32, ptr @slub_debug, align 4
  %32 = select i1 %21, i32 %24, i32 %31
  store ptr %4, ptr @slub_debug_string, align 4
  br label %34

33:                                               ; preds = %7, %1
  store i32 68864, ptr @slub_debug, align 4
  br label %40

34:                                               ; preds = %30, %27
  %35 = phi ptr [ %4, %30 ], [ %29, %27 ]
  %36 = phi i32 [ %32, %30 ], [ %28, %27 ]
  store i32 %36, ptr @slub_debug, align 4
  %37 = icmp ne i32 %36, 0
  %38 = icmp ne ptr %35, null
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %34, %33
  %41 = load i8, ptr @static_key_initialized, align 1, !range !10
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %44, !prof !11

43:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @slub_debug_enabled) #26
  br label %44

44:                                               ; preds = %43, %40
  %45 = load volatile i32, ptr @slub_debug_enabled, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load volatile i32, ptr @slub_debug_enabled, align 4
  %49 = icmp ne i32 %48, 1
  %50 = load i1, ptr @static_key_enable.__already_done, align 1
  %51 = xor i1 %50, true
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %70, !prof !11

53:                                               ; preds = %47
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 321, i32 noundef 9, ptr noundef null) #26
  br label %70

54:                                               ; preds = %44
  store volatile i32 1, ptr @slub_debug_enabled, align 4
  br label %70

55:                                               ; preds = %34
  %56 = load i8, ptr @static_key_initialized, align 1, !range !10
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %59, !prof !11

58:                                               ; preds = %55
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.static_key_disable, ptr noundef nonnull @slub_debug_enabled) #26
  br label %59

59:                                               ; preds = %58, %55
  %60 = load volatile i32, ptr @slub_debug_enabled, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load volatile i32, ptr @slub_debug_enabled, align 4
  %64 = icmp ne i32 %63, 0
  %65 = load i1, ptr @static_key_disable.__already_done, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %70, !prof !11

68:                                               ; preds = %62
  store i1 true, ptr @static_key_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 332, i32 noundef 9, ptr noundef null) #26
  br label %70

69:                                               ; preds = %59
  store volatile i32 0, ptr @slub_debug_enabled, align 4
  br label %70

70:                                               ; preds = %69, %68, %62, %54, %53, %47
  %71 = load volatile i32, ptr @init_on_alloc, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %76, label %73, !prof !11

73:                                               ; preds = %70
  %74 = load volatile i32, ptr @init_on_free, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %82, !prof !11

76:                                               ; preds = %73, %70
  %77 = load i32, ptr @slub_debug, align 4
  %78 = and i32 %77, 2048
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #25
  br label %82

82:                                               ; preds = %80, %76, %73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #26
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kmem_cache_flags(i32 %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = load i32, ptr @slub_debug, align 4
  %7 = and i32 %1, 8388608
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %6, -65537
  %10 = select i1 %8, i32 %6, i32 %9
  %11 = tail call i32 @strlen(ptr noundef %2)
  %12 = load ptr, ptr @slub_debug_string, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %54, label %14

14:                                               ; preds = %52, %3
  %15 = phi ptr [ %16, %52 ], [ %12, %3 ]
  %16 = call fastcc ptr @parse_slub_debug_flags(ptr noundef nonnull %15, ptr noundef nonnull %5, ptr noundef nonnull %4, i1 noundef zeroext false)
  %17 = load ptr, ptr %4, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %52, label %19

19:                                               ; preds = %14
  %20 = load i8, ptr %17, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %50, label %22

22:                                               ; preds = %19
  %23 = icmp ne ptr %16, null
  %24 = getelementptr i8, ptr %16, i32 -1
  br label %25

25:                                               ; preds = %46, %22
  %26 = phi ptr [ %17, %22 ], [ %47, %46 ]
  %27 = tail call ptr @strchrnul(ptr noundef %26, i32 noundef 44) #26
  %28 = icmp ult ptr %16, %27
  %29 = select i1 %23, i1 %28, i1 false
  %30 = select i1 %29, ptr %24, ptr %27
  %31 = ptrtoint ptr %30 to i32
  %32 = ptrtoint ptr %26 to i32
  %33 = sub i32 %31, %32
  %34 = tail call ptr @strnchr(ptr noundef %26, i32 noundef %33, i32 noundef 42) #26
  %35 = icmp eq ptr %34, null
  %36 = ptrtoint ptr %34 to i32
  %37 = sub i32 %36, %32
  %38 = tail call i32 @llvm.umax.i32(i32 %11, i32 %33)
  %39 = select i1 %35, i32 %38, i32 %37
  %40 = tail call i32 @strncmp(ptr noundef %2, ptr noundef %26, i32 noundef %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %25
  %43 = load i32, ptr %5, align 4
  br label %54

44:                                               ; preds = %25
  %45 = load i8, ptr %30, align 1
  switch i8 %45, label %46 [
    i8 0, label %50
    i8 59, label %50
  ]

46:                                               ; preds = %44
  %47 = getelementptr i8, ptr %30, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %25

50:                                               ; preds = %46, %44, %44, %19
  %51 = phi ptr [ %17, %19 ], [ %26, %44 ], [ %26, %44 ], [ %47, %46 ]
  store ptr %51, ptr %4, align 4
  br label %52

52:                                               ; preds = %50, %14
  %53 = icmp eq ptr %16, null
  br i1 %53, label %54, label %14

54:                                               ; preds = %52, %42, %3
  %55 = phi i32 [ %43, %42 ], [ %10, %3 ], [ %10, %52 ]
  %56 = or i32 %55, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  ret i32 %56
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @parse_slub_debug_flags(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, i1 noundef zeroext %3) unnamed_addr #1 {
  br label %5

5:                                                ; preds = %8, %4
  %6 = phi ptr [ %0, %4 ], [ %9, %8 ]
  %7 = load i8, ptr %6, align 1
  switch i8 %7, label %12 [
    i8 59, label %8
    i8 44, label %10
  ]

8:                                                ; preds = %5
  %9 = getelementptr i8, ptr %6, i32 1
  br label %5

10:                                               ; preds = %5
  store i32 68864, ptr %1, align 4
  %11 = load i8, ptr %6, align 1
  br label %48

12:                                               ; preds = %5
  store i32 0, ptr %1, align 4
  br label %13

13:                                               ; preds = %45, %12
  %14 = phi ptr [ %6, %12 ], [ %47, %45 ]
  %15 = phi i1 [ false, %12 ], [ %46, %45 ]
  %16 = load i8, ptr %14, align 1
  switch i8 %16, label %17 [
    i8 0, label %48
    i8 44, label %48
    i8 59, label %48
  ]

17:                                               ; preds = %13
  %18 = zext i8 %16 to i32
  %19 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  %23 = add i8 %16, 32
  %24 = select i1 %22, i8 %16, i8 %23
  switch i8 %24, label %42 [
    i8 45, label %25
    i8 102, label %26
    i8 122, label %29
    i8 112, label %32
    i8 117, label %35
    i8 116, label %38
    i8 97, label %45
    i8 111, label %41
  ]

25:                                               ; preds = %17
  store i32 0, ptr %1, align 4
  br label %45

26:                                               ; preds = %17
  %27 = load i32, ptr %1, align 4
  %28 = or i32 %27, 256
  store i32 %28, ptr %1, align 4
  br label %45

29:                                               ; preds = %17
  %30 = load i32, ptr %1, align 4
  %31 = or i32 %30, 1024
  store i32 %31, ptr %1, align 4
  br label %45

32:                                               ; preds = %17
  %33 = load i32, ptr %1, align 4
  %34 = or i32 %33, 2048
  store i32 %34, ptr %1, align 4
  br label %45

35:                                               ; preds = %17
  %36 = load i32, ptr %1, align 4
  %37 = or i32 %36, 65536
  store i32 %37, ptr %1, align 4
  br label %45

38:                                               ; preds = %17
  %39 = load i32, ptr %1, align 4
  %40 = or i32 %39, 2097152
  store i32 %40, ptr %1, align 4
  br label %45

41:                                               ; preds = %17
  br label %45

42:                                               ; preds = %17
  br i1 %3, label %43, label %45

43:                                               ; preds = %42
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %18) #25
  br label %45

45:                                               ; preds = %43, %42, %41, %38, %35, %32, %29, %26, %25, %17
  %46 = phi i1 [ %15, %43 ], [ %15, %42 ], [ true, %41 ], [ %15, %38 ], [ %15, %35 ], [ %15, %32 ], [ %15, %29 ], [ %15, %26 ], [ %15, %25 ], [ %15, %17 ]
  %47 = getelementptr i8, ptr %14, i32 1
  br label %13

48:                                               ; preds = %13, %13, %13, %10
  %49 = phi i8 [ %11, %10 ], [ %16, %13 ], [ %16, %13 ], [ %16, %13 ]
  %50 = phi ptr [ %6, %10 ], [ %14, %13 ], [ %14, %13 ], [ %14, %13 ]
  %51 = phi i1 [ false, %10 ], [ %15, %13 ], [ %15, %13 ], [ %15, %13 ]
  %52 = icmp eq i8 %49, 44
  %53 = getelementptr i8, ptr %50, i32 1
  %54 = select i1 %52, ptr %53, ptr null
  %55 = select i1 %52, ptr %53, ptr %50
  store ptr %54, ptr %2, align 4
  br label %56

56:                                               ; preds = %59, %48
  %57 = phi ptr [ %55, %48 ], [ %60, %59 ]
  %58 = load i8, ptr %57, align 1
  switch i8 %58, label %59 [
    i8 59, label %61
    i8 0, label %66
  ]

59:                                               ; preds = %56
  %60 = getelementptr i8, ptr %57, i32 1
  br label %56

61:                                               ; preds = %61, %56
  %62 = phi ptr [ %63, %61 ], [ %57, %56 ]
  %63 = getelementptr i8, ptr %62, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 59
  br i1 %65, label %61, label %66

66:                                               ; preds = %61, %56
  %67 = phi i8 [ %64, %61 ], [ %58, %56 ]
  %68 = phi ptr [ %63, %61 ], [ %57, %56 ]
  %69 = select i1 %3, i1 %51, i1 false
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i1 true, ptr @disable_higher_order_debug, align 4
  br label %71

71:                                               ; preds = %70, %66
  %72 = icmp eq i8 %67, 0
  %73 = select i1 %72, ptr null, ptr %68
  ret ptr %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %1) #1 {
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  %5 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  %6 = load i32, ptr @gfp_allowed_mask, align 4
  %7 = and i32 %6, %1
  %8 = tail call i32 @should_failslab(ptr noundef %0, i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = icmp eq ptr %0, null
  %11 = or i1 %10, %9
  br i1 %11, label %124, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #19, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %19, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !13
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %19, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ne ptr %22, null
  %26 = icmp ne ptr %24, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %48, !prof !14

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  br label %30

30:                                               ; preds = %65, %28
  %31 = phi ptr [ %22, %28 ], [ %75, %65 ]
  %32 = phi i32 [ %21, %28 ], [ %74, %65 ]
  %33 = load i32, ptr %29, align 4
  %34 = getelementptr i8, ptr %31, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %37 = load ptr, ptr %0, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %40 = inttoptr i32 %39 to ptr
  %41 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %40) #19, !srcloc !12
  %42 = add i32 %41, %38
  %43 = inttoptr i32 %42 to ptr
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %31
  br i1 %45, label %51, label %65

46:                                               ; preds = %65
  %47 = inttoptr i32 %71 to ptr
  br label %48

48:                                               ; preds = %46, %12
  %49 = phi ptr [ %19, %12 ], [ %47, %46 ]
  %50 = tail call fastcc ptr @___slab_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %4, ptr noundef %49) #26
  br label %81

51:                                               ; preds = %30
  %52 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %37, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  %54 = add i32 %41, %53
  %55 = inttoptr i32 %54 to ptr
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, %32
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = inttoptr i32 %42 to ptr
  %60 = inttoptr i32 %54 to ptr
  %61 = inttoptr i32 %35 to ptr
  store ptr %61, ptr %59, align 4
  %62 = add i32 %32, 1
  store i32 %62, ptr %60, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #26, !srcloc !16
  %63 = load i32, ptr %29, align 4
  %64 = getelementptr i8, ptr %61, i32 %63
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #26, !srcloc !17
  br label %81

65:                                               ; preds = %51, %30
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #26, !srcloc !16
  %66 = load ptr, ptr %0, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %69 = inttoptr i32 %68 to ptr
  %70 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %69) #19, !srcloc !12
  %71 = add i32 %70, %67
  %72 = inttoptr i32 %71 to ptr
  %73 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %72, i32 0, i32 1
  %74 = load volatile i32, ptr %73, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !13
  %75 = load ptr, ptr %72, align 4
  %76 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %72, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = icmp ne ptr %75, null
  %79 = icmp ne ptr %77, null
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %30, label %46, !prof !14

81:                                               ; preds = %58, %48
  %82 = phi ptr [ %31, %58 ], [ %50, %48 ]
  %83 = load volatile i32, ptr @init_on_free, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %100, !prof !11

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 14
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 526336
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100, !prof !11

94:                                               ; preds = %89
  %95 = icmp eq ptr %82, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr i8, ptr %82, i32 %98
  store i32 0, ptr %99, align 1
  br label %100

100:                                              ; preds = %96, %94, %89, %85, %81
  %101 = load volatile i32, ptr @init_on_alloc, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %115, !prof !11

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 14
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 526336
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = and i32 %1, 256
  %114 = icmp ne i32 %113, 0
  br label %118

115:                                              ; preds = %100
  %116 = and i32 %1, 256
  %117 = icmp ne i32 %116, 0
  br label %118

118:                                              ; preds = %115, %112, %107
  %119 = phi i1 [ %114, %112 ], [ %117, %115 ], [ true, %107 ]
  %120 = icmp ne ptr %82, null
  %121 = and i1 %120, %119
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, ptr %5, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %82, i8 0, i32 %123, i1 false) #26
  br label %124

124:                                              ; preds = %122, %118, %103, %2
  %125 = phi ptr [ null, %2 ], [ %82, %122 ], [ %82, %118 ], [ %82, %103 ]
  %126 = load i32, ptr %5, align 4
  %127 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %128 = load i32, ptr %127, align 4
  %129 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kmem_cache_alloc, i32 0, i32 1), align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %124
  %132 = tail call ptr @llvm.thread.pointer() #26
  %133 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 2
  %134 = load i32, ptr %133, align 8
  %135 = lshr i32 %134, 5
  %136 = getelementptr i32, ptr @__cpu_online_mask, i32 %135
  %137 = load volatile i32, ptr %136, align 4
  %138 = and i32 %134, 31
  %139 = shl nuw i32 1, %138
  %140 = and i32 %139, %137
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %131
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !18
  %143 = tail call i32 @__traceiter_kmem_cache_alloc(ptr noundef null, i32 noundef %4, ptr noundef %125, i32 noundef %126, i32 noundef %128, i32 noundef %1) #26
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !19
  br label %144

144:                                              ; preds = %142, %131, %124
  ret ptr %125
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(2) uwtable(sync)
define dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = ptrtoint ptr %4 to i32
  %6 = load i32, ptr @gfp_allowed_mask, align 4
  %7 = and i32 %6, %1
  %8 = tail call i32 @should_failslab(ptr noundef %0, i32 noundef %7) #26
  %9 = icmp ne i32 %8, 0
  %10 = icmp eq ptr %0, null
  %11 = or i1 %10, %9
  br i1 %11, label %125, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %0, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #19, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %19, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !13
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %19, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ne ptr %22, null
  %26 = icmp ne ptr %24, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %48, !prof !14

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  br label %30

30:                                               ; preds = %65, %28
  %31 = phi ptr [ %22, %28 ], [ %75, %65 ]
  %32 = phi i32 [ %21, %28 ], [ %74, %65 ]
  %33 = load i32, ptr %29, align 4
  %34 = getelementptr i8, ptr %31, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %37 = load ptr, ptr %0, align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %40 = inttoptr i32 %39 to ptr
  %41 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %40) #19, !srcloc !12
  %42 = add i32 %41, %38
  %43 = inttoptr i32 %42 to ptr
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %31
  br i1 %45, label %51, label %65

46:                                               ; preds = %65
  %47 = inttoptr i32 %71 to ptr
  br label %48

48:                                               ; preds = %46, %12
  %49 = phi ptr [ %19, %12 ], [ %47, %46 ]
  %50 = tail call fastcc ptr @___slab_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %5, ptr noundef %49) #26
  br label %81

51:                                               ; preds = %30
  %52 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %37, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  %54 = add i32 %41, %53
  %55 = inttoptr i32 %54 to ptr
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, %32
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = inttoptr i32 %42 to ptr
  %60 = inttoptr i32 %54 to ptr
  %61 = inttoptr i32 %35 to ptr
  store ptr %61, ptr %59, align 4
  %62 = add i32 %32, 1
  store i32 %62, ptr %60, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #26, !srcloc !16
  %63 = load i32, ptr %29, align 4
  %64 = getelementptr i8, ptr %61, i32 %63
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #26, !srcloc !17
  br label %81

65:                                               ; preds = %51, %30
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #26, !srcloc !16
  %66 = load ptr, ptr %0, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %69 = inttoptr i32 %68 to ptr
  %70 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %69) #19, !srcloc !12
  %71 = add i32 %70, %67
  %72 = inttoptr i32 %71 to ptr
  %73 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %72, i32 0, i32 1
  %74 = load volatile i32, ptr %73, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !13
  %75 = load ptr, ptr %72, align 4
  %76 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %72, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = icmp ne ptr %75, null
  %79 = icmp ne ptr %77, null
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %30, label %46, !prof !14

81:                                               ; preds = %58, %48
  %82 = phi ptr [ %31, %58 ], [ %50, %48 ]
  %83 = load volatile i32, ptr @init_on_free, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %100, !prof !11

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 14
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 526336
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100, !prof !11

94:                                               ; preds = %89
  %95 = icmp eq ptr %82, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr i8, ptr %82, i32 %98
  store i32 0, ptr %99, align 1
  br label %100

100:                                              ; preds = %96, %94, %89, %85, %81
  %101 = load volatile i32, ptr @init_on_alloc, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %115, !prof !11

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 14
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %125

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 526336
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = and i32 %1, 256
  %114 = icmp ne i32 %113, 0
  br label %118

115:                                              ; preds = %100
  %116 = and i32 %1, 256
  %117 = icmp ne i32 %116, 0
  br label %118

118:                                              ; preds = %115, %112, %107
  %119 = phi i1 [ %114, %112 ], [ %117, %115 ], [ true, %107 ]
  %120 = icmp ne ptr %82, null
  %121 = and i1 %120, %119
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  %124 = load i32, ptr %123, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %82, i8 0, i32 %124, i1 false) #26
  br label %125

125:                                              ; preds = %122, %118, %103, %3
  %126 = phi ptr [ null, %3 ], [ %82, %122 ], [ %82, %118 ], [ %82, %103 ]
  %127 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %128 = load i32, ptr %127, align 4
  %129 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kmalloc, i32 0, i32 1), align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %125
  %132 = tail call ptr @llvm.thread.pointer() #26
  %133 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 2
  %134 = load i32, ptr %133, align 8
  %135 = lshr i32 %134, 5
  %136 = getelementptr i32, ptr @__cpu_online_mask, i32 %135
  %137 = load volatile i32, ptr %136, align 4
  %138 = and i32 %134, 31
  %139 = shl nuw i32 1, %138
  %140 = and i32 %139, %137
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %131
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !20
  %143 = tail call i32 @__traceiter_kmalloc(ptr noundef null, i32 noundef %5, ptr noundef %126, i32 noundef %2, i32 noundef %128, i32 noundef %1) #26
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !21
  br label %144

144:                                              ; preds = %142, %131, %125
  ret ptr %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kmem_cache_free(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load volatile i32, ptr @slub_debug_enabled, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %48

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %48, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @mem_map, align 4
  %12 = ptrtoint ptr %1 to i32
  %13 = add i32 %12, 1073741824
  %14 = lshr i32 %13, 12
  %15 = getelementptr %struct.page, ptr %11, i32 %14, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !22

19:                                               ; preds = %10
  %20 = add i32 %16, -1
  br label %24

21:                                               ; preds = %10
  %22 = getelementptr %struct.page, ptr %11, i32 %14
  %23 = ptrtoint ptr %22 to i32
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ]
  %26 = inttoptr i32 %25 to ptr
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 512
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr null, ptr %26
  %31 = icmp eq ptr %30, null
  %32 = load i1, ptr @virt_to_cache.__already_done, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %36, !prof !11

35:                                               ; preds = %24
  store i1 true, ptr @virt_to_cache.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 627, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.virt_to_cache) #26
  br label %36

36:                                               ; preds = %35, %24
  br i1 %31, label %345, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.slab, ptr %30, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp ne ptr %39, null
  %41 = icmp ne ptr %39, %0
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %48, !prof !11

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.kmem_cache, ptr %39, i32 0, i32 18
  %47 = load ptr, ptr %46, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 663, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.cache_from_obj, ptr noundef %45, ptr noundef %47) #26
  tail call void @print_tracking(ptr noundef nonnull %39, ptr noundef %1) #26
  br label %51

48:                                               ; preds = %37, %5, %2
  %49 = phi ptr [ %0, %5 ], [ %39, %37 ], [ %0, %2 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %345, label %51

51:                                               ; preds = %48, %43
  %52 = phi ptr [ %39, %43 ], [ %49, %48 ]
  %53 = tail call ptr @llvm.returnaddress(i32 0)
  %54 = ptrtoint ptr %53 to i32
  %55 = getelementptr inbounds %struct.kmem_cache, ptr %52, i32 0, i32 18
  %56 = load ptr, ptr %55, align 4
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kmem_cache_free, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %51
  %60 = tail call ptr @llvm.thread.pointer() #26
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 5
  %64 = getelementptr i32, ptr @__cpu_online_mask, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %62, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !23
  %71 = tail call i32 @__traceiter_kmem_cache_free(ptr noundef null, i32 noundef %54, ptr noundef %1, ptr noundef %56) #26
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !24
  br label %72

72:                                               ; preds = %70, %59, %51
  %73 = load ptr, ptr @mem_map, align 4
  %74 = ptrtoint ptr %1 to i32
  %75 = add i32 %74, 1073741824
  %76 = lshr i32 %75, 12
  %77 = getelementptr %struct.page, ptr %73, i32 %76, i32 1
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81, !prof !22

81:                                               ; preds = %72
  %82 = add i32 %78, -1
  br label %86

83:                                               ; preds = %72
  %84 = getelementptr %struct.page, ptr %73, i32 %76
  %85 = ptrtoint ptr %84 to i32
  br label %86

86:                                               ; preds = %83, %81
  %87 = phi i32 [ %82, %81 ], [ %85, %83 ]
  %88 = inttoptr i32 %87 to ptr
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, 512
  %91 = icmp eq i32 %90, 0
  %92 = getelementptr inbounds %struct.kmem_cache, ptr %52, i32 0, i32 6
  %93 = getelementptr inbounds %struct.kmem_cache, ptr %52, i32 0, i32 14
  %94 = getelementptr inbounds %struct.kmem_cache, ptr %52, i32 0, i32 1
  %95 = getelementptr inbounds %struct.kmem_cache, ptr %52, i32 0, i32 4
  %96 = getelementptr inbounds %struct.kmem_cache, ptr %52, i32 0, i32 17
  %97 = getelementptr inbounds %struct.kmem_cache, ptr %52, i32 0, i32 15
  %98 = getelementptr inbounds %struct.kmem_cache, ptr %52, i32 0, i32 3
  br label %99

99:                                               ; preds = %131, %86
  %100 = phi ptr [ null, %86 ], [ %137, %131 ]
  %101 = phi ptr [ null, %86 ], [ %102, %131 ]
  %102 = phi ptr [ %1, %86 ], [ %106, %131 ]
  %103 = load i32, ptr %92, align 4
  %104 = getelementptr i8, ptr %102, i32 %103
  %105 = load i32, ptr %104, align 4
  %106 = inttoptr i32 %105 to ptr
  %107 = load volatile i32, ptr @init_on_free, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %131, !prof !11

109:                                              ; preds = %99
  %110 = load ptr, ptr %93, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %131

112:                                              ; preds = %109
  %113 = load i32, ptr %94, align 4
  %114 = and i32 %113, 526336
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %112
  %117 = load i32, ptr %95, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %102, i8 0, i32 %117, i1 false) #26
  %118 = load i32, ptr %94, align 4
  %119 = and i32 %118, 1024
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %116
  %122 = load i32, ptr %96, align 4
  br label %123

123:                                              ; preds = %121, %116
  %124 = phi i32 [ %122, %121 ], [ 0, %116 ]
  %125 = load i32, ptr %97, align 4
  %126 = getelementptr i8, ptr %102, i32 %125
  %127 = load i32, ptr %98, align 4
  %128 = add i32 %125, %124
  %129 = sub i32 %127, %128
  tail call void @llvm.memset.p0.i32(ptr align 1 %126, i8 0, i32 %129, i1 false) #26
  %130 = load i32, ptr %92, align 4
  br label %131

131:                                              ; preds = %123, %112, %109, %99
  %132 = phi i32 [ %103, %99 ], [ %103, %109 ], [ %103, %112 ], [ %130, %123 ]
  %133 = ptrtoint ptr %102 to i32
  %134 = add i32 %132, %133
  %135 = inttoptr i32 %134 to ptr
  store ptr %101, ptr %135, align 4
  %136 = icmp eq ptr %100, null
  %137 = select i1 %136, ptr %102, ptr %100
  %138 = icmp eq ptr %102, %1
  br i1 %138, label %139, label %99

139:                                              ; preds = %131
  %140 = select i1 %91, ptr null, ptr %88
  %141 = icmp eq ptr %1, null
  br i1 %141, label %345, label %142

142:                                              ; preds = %139
  %143 = select i1 %136, ptr %1, ptr %100
  %144 = icmp eq ptr %143, %1
  %145 = select i1 %144, ptr %1, ptr %137
  %146 = load ptr, ptr %52, align 4
  %147 = ptrtoint ptr %146 to i32
  %148 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %149 = inttoptr i32 %148 to ptr
  %150 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %149) #19, !srcloc !12
  %151 = add i32 %150, %147
  %152 = inttoptr i32 %151 to ptr
  %153 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %152, i32 0, i32 1
  %154 = load volatile i32, ptr %153, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !25
  %155 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %152, i32 0, i32 2
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, %140
  br i1 %157, label %158, label %201, !prof !22

158:                                              ; preds = %142
  %159 = ptrtoint ptr %145 to i32
  br label %160

160:                                              ; preds = %188, %158
  %161 = phi i32 [ %154, %158 ], [ %197, %188 ]
  %162 = phi ptr [ %152, %158 ], [ %195, %188 ]
  %163 = load volatile ptr, ptr %162, align 4
  %164 = load i32, ptr %92, align 4
  %165 = add i32 %164, %159
  %166 = inttoptr i32 %165 to ptr
  store ptr %163, ptr %166, align 4
  %167 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %168 = load ptr, ptr %52, align 4
  %169 = ptrtoint ptr %168 to i32
  %170 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %171 = inttoptr i32 %170 to ptr
  %172 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %171) #19, !srcloc !12
  %173 = add i32 %172, %169
  %174 = inttoptr i32 %173 to ptr
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, %163
  br i1 %176, label %177, label %188

177:                                              ; preds = %160
  %178 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %168, i32 0, i32 1
  %179 = ptrtoint ptr %178 to i32
  %180 = add i32 %172, %179
  %181 = inttoptr i32 %180 to ptr
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, %161
  br i1 %183, label %184, label %188

184:                                              ; preds = %177
  %185 = inttoptr i32 %173 to ptr
  %186 = inttoptr i32 %180 to ptr
  store ptr %1, ptr %185, align 4
  %187 = add i32 %161, 1
  store i32 %187, ptr %186, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %167) #26, !srcloc !16
  br label %345

188:                                              ; preds = %177, %160
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %167) #26, !srcloc !16
  %189 = load ptr, ptr %52, align 4
  %190 = ptrtoint ptr %189 to i32
  %191 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %192 = inttoptr i32 %191 to ptr
  %193 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %192) #19, !srcloc !12
  %194 = add i32 %193, %190
  %195 = inttoptr i32 %194 to ptr
  %196 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %195, i32 0, i32 1
  %197 = load volatile i32, ptr %196, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !25
  %198 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %195, i32 0, i32 2
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, %140
  br i1 %200, label %160, label %201, !prof !22

201:                                              ; preds = %188, %142
  %202 = load volatile i32, ptr @slub_debug_enabled, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %201
  %205 = load i32, ptr %94, align 4
  %206 = and i32 %205, 2166016
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %204
  %209 = tail call fastcc i32 @free_debug_processing(ptr noundef %52, ptr noundef %140, ptr noundef nonnull %1, ptr noundef %145, i32 noundef 1, i32 noundef %54) #26
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %345, label %211

211:                                              ; preds = %208, %204, %201
  %212 = getelementptr inbounds %struct.slab, ptr %140, i32 0, i32 3
  %213 = getelementptr inbounds %struct.slab, ptr %140, i32 0, i32 4
  %214 = ptrtoint ptr %145 to i32
  %215 = getelementptr %struct.kmem_cache, ptr %52, i32 0, i32 23, i32 0
  br label %216

216:                                              ; preds = %278, %211
  %217 = phi ptr [ null, %211 ], [ %254, %278 ]
  %218 = phi i32 [ 0, %211 ], [ %255, %278 ]
  %219 = icmp eq ptr %217, null
  br i1 %219, label %221, label %220, !prof !22

220:                                              ; preds = %216
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %217, i32 noundef %218) #26
  br label %221

221:                                              ; preds = %220, %216
  %222 = load ptr, ptr %212, align 4
  %223 = load i32, ptr %213, align 4
  %224 = load i32, ptr %92, align 4
  %225 = add i32 %224, %214
  %226 = inttoptr i32 %225 to ptr
  store ptr %222, ptr %226, align 4
  %227 = add i32 %223, 65535
  %228 = and i32 %227, 65535
  %229 = and i32 %223, -65536
  %230 = or i32 %228, %229
  %231 = icmp ne i32 %228, 0
  %232 = icmp ne ptr %222, null
  %233 = and i1 %232, %231
  %234 = icmp slt i32 %223, 0
  %235 = select i1 %233, i1 true, i1 %234
  br i1 %235, label %252, label %236

236:                                              ; preds = %221
  %237 = load volatile i32, ptr @slub_debug_enabled, align 4
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %236
  %240 = load i32, ptr %94, align 4
  %241 = and i32 %240, 2166016
  %242 = icmp eq i32 %241, 0
  br label %243

243:                                              ; preds = %239, %236
  %244 = phi i1 [ %242, %239 ], [ true, %236 ]
  %245 = xor i1 %244, true
  %246 = or i1 %232, %245
  br i1 %246, label %249, label %247

247:                                              ; preds = %243
  %248 = or i32 %230, -2147483648
  br label %252

249:                                              ; preds = %243
  %250 = load ptr, ptr %215, align 4
  %251 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %250) #26
  br label %252

252:                                              ; preds = %249, %247, %221
  %253 = phi i32 [ %230, %221 ], [ %230, %249 ], [ %248, %247 ]
  %254 = phi ptr [ null, %221 ], [ %250, %249 ], [ null, %247 ]
  %255 = phi i32 [ %218, %221 ], [ %251, %249 ], [ %218, %247 ]
  %256 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !26
  br label %257

257:                                              ; preds = %271, %252
  %258 = load volatile i32, ptr %140, align 4
  %259 = and i32 %258, 1
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %266, !prof !27

261:                                              ; preds = %257
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %140) #26, !srcloc !17
  %262 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %140, ptr %140, i32 1, ptr elementtype(i32) %140) #26, !srcloc !28
  %263 = extractvalue { i32, i32, i32 } %262, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !29
  %264 = and i32 %263, 1
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %272, label %266, !prof !22

266:                                              ; preds = %261, %257
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !30
  br label %267

267:                                              ; preds = %267, %266
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !31
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !32
  %268 = load volatile i32, ptr %140, align 4
  %269 = and i32 %268, 1
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %267

271:                                              ; preds = %267
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !33
  br label %257

272:                                              ; preds = %261
  %273 = load ptr, ptr %212, align 4
  %274 = icmp eq ptr %273, %222
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load i32, ptr %213, align 4
  %277 = icmp eq i32 %276, %223
  br i1 %277, label %281, label %278

278:                                              ; preds = %275, %272
  %279 = load volatile i32, ptr %140, align 4
  %280 = and i32 %279, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %280, ptr %140, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %256) #26, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !36
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !37
  br label %216

281:                                              ; preds = %275
  store ptr %1, ptr %212, align 4
  store i32 %253, ptr %213, align 4
  %282 = load volatile i32, ptr %140, align 4
  %283 = and i32 %282, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %283, ptr %140, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %256) #26, !srcloc !16
  %284 = icmp eq ptr %254, null
  br i1 %284, label %285, label %289, !prof !22

285:                                              ; preds = %281
  br i1 %234, label %345, label %286, !prof !22

286:                                              ; preds = %285
  %287 = icmp sgt i32 %253, -1
  br i1 %287, label %345, label %288

288:                                              ; preds = %286
  tail call fastcc void @put_cpu_partial(ptr noundef %52, ptr noundef %140, i32 noundef 1) #26
  br label %345

289:                                              ; preds = %281
  %290 = and i32 %253, 65535
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %298

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct.kmem_cache_node, ptr %254, i32 0, i32 1
  %294 = load i32, ptr %293, align 4
  %295 = getelementptr inbounds %struct.kmem_cache, ptr %52, i32 0, i32 2
  %296 = load i32, ptr %295, align 4
  %297 = icmp ult i32 %294, %296
  br i1 %297, label %298, label %325, !prof !22

298:                                              ; preds = %292, %289
  %299 = load volatile i32, ptr @slub_debug_enabled, align 4
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %324

301:                                              ; preds = %298
  %302 = load i32, ptr %94, align 4
  %303 = and i32 %302, 2166016
  %304 = icmp eq i32 %303, 0
  %305 = or i1 %232, %304
  br i1 %305, label %324, label %306, !prof !38

306:                                              ; preds = %301
  %307 = and i32 %302, 65536
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %315, label %309

309:                                              ; preds = %306
  %310 = getelementptr inbounds %struct.slab, ptr %140, i32 0, i32 1
  %311 = getelementptr inbounds %struct.slab, ptr %140, i32 0, i32 1, i32 0, i32 1
  %312 = load ptr, ptr %311, align 4
  %313 = load ptr, ptr %310, align 4
  %314 = getelementptr inbounds %struct.list_head, ptr %313, i32 0, i32 1
  store ptr %312, ptr %314, align 4
  store volatile ptr %313, ptr %312, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %310, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %311, align 4
  br label %315

315:                                              ; preds = %309, %306
  %316 = getelementptr inbounds %struct.kmem_cache_node, ptr %254, i32 0, i32 1
  %317 = load i32, ptr %316, align 4
  %318 = add i32 %317, 1
  store i32 %318, ptr %316, align 4
  %319 = getelementptr inbounds %struct.kmem_cache_node, ptr %254, i32 0, i32 2
  %320 = getelementptr inbounds %struct.kmem_cache_node, ptr %254, i32 0, i32 2, i32 1
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr inbounds %struct.slab, ptr %140, i32 0, i32 1
  store ptr %322, ptr %320, align 4
  store ptr %319, ptr %322, align 4
  %323 = getelementptr inbounds %struct.slab, ptr %140, i32 0, i32 1, i32 0, i32 1
  store ptr %321, ptr %323, align 4
  store volatile ptr %322, ptr %321, align 4
  br label %324

324:                                              ; preds = %315, %301, %298
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %254, i32 noundef %255) #26
  br label %345

325:                                              ; preds = %292
  br i1 %232, label %326, label %334

326:                                              ; preds = %325
  %327 = getelementptr inbounds %struct.slab, ptr %140, i32 0, i32 1
  %328 = getelementptr inbounds %struct.slab, ptr %140, i32 0, i32 1, i32 0, i32 1
  %329 = load ptr, ptr %328, align 4
  %330 = load ptr, ptr %327, align 4
  %331 = getelementptr inbounds %struct.list_head, ptr %330, i32 0, i32 1
  store ptr %329, ptr %331, align 4
  store volatile ptr %330, ptr %329, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %327, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %328, align 4
  %332 = load i32, ptr %293, align 4
  %333 = add i32 %332, -1
  store i32 %333, ptr %293, align 4
  br label %344

334:                                              ; preds = %325
  %335 = load i32, ptr %94, align 4
  %336 = and i32 %335, 65536
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %344, label %338

338:                                              ; preds = %334
  %339 = getelementptr inbounds %struct.slab, ptr %140, i32 0, i32 1
  %340 = getelementptr inbounds %struct.slab, ptr %140, i32 0, i32 1, i32 0, i32 1
  %341 = load ptr, ptr %340, align 4
  %342 = load ptr, ptr %339, align 4
  %343 = getelementptr inbounds %struct.list_head, ptr %342, i32 0, i32 1
  store ptr %341, ptr %343, align 4
  store volatile ptr %342, ptr %341, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %339, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %340, align 4
  br label %344

344:                                              ; preds = %338, %334, %326
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %254, i32 noundef %255) #26
  tail call fastcc void @discard_slab(ptr noundef %52, ptr noundef %140) #26
  br label %345

345:                                              ; preds = %344, %324, %288, %286, %285, %208, %184, %139, %48, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kmem_cache_free_bulk(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #1 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %9, label %5, !prof !11

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  br label %10

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3645, i32 noundef 9, ptr noundef null) #26
  br label %519

10:                                               ; preds = %18, %5
  %11 = phi i32 [ %1, %5 ], [ %19, %18 ]
  %12 = add i32 %11, -1
  %13 = getelementptr ptr, ptr %2, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = icmp ne i32 %12, 0
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %20

18:                                               ; preds = %516, %10
  %19 = phi i32 [ %12, %10 ], [ %517, %516 ]
  br label %10

20:                                               ; preds = %10
  %21 = getelementptr ptr, ptr %2, i32 %12
  br i1 %15, label %519, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr @mem_map, align 4
  %24 = ptrtoint ptr %14 to i32
  %25 = add i32 %24, 1073741824
  %26 = lshr i32 %25, 12
  %27 = getelementptr %struct.page, ptr %23, i32 %26, i32 1
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !22

31:                                               ; preds = %22
  %32 = add i32 %28, -1
  br label %36

33:                                               ; preds = %22
  %34 = getelementptr %struct.page, ptr %23, i32 %26
  %35 = ptrtoint ptr %34 to i32
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %32, %31 ], [ %35, %33 ]
  %38 = inttoptr i32 %37 to ptr
  br i1 %6, label %39, label %69

39:                                               ; preds = %36
  %40 = load volatile i32, ptr %38, align 4
  %41 = and i32 %40, 512
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %66, !prof !11

43:                                               ; preds = %39
  %44 = load volatile i32, ptr %38, align 4
  %45 = and i32 %44, 65536
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr %struct.page, ptr %38, i32 1, i32 1
  %49 = getelementptr inbounds %struct.anon.8, ptr %48, i32 0, i32 2
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i32 [ %51, %47 ], [ 0, %43 ]
  %54 = icmp eq i32 %53, 0
  %55 = load i1, ptr @free_large_kmalloc.__already_done, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !11

58:                                               ; preds = %52
  store i1 true, ptr @free_large_kmalloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3542, i32 noundef 9, ptr noundef null) #26
  br label %59

59:                                               ; preds = %58, %52
  br i1 %54, label %60, label %64

60:                                               ; preds = %59
  %61 = load i1, ptr @free_large_kmalloc.__already_done.78, align 1
  br i1 %61, label %64, label %62, !prof !22

62:                                               ; preds = %60
  store i1 true, ptr @free_large_kmalloc.__already_done.78, align 1
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull %14) #25
  br label %64

64:                                               ; preds = %62, %60, %59
  %65 = shl i32 -4096, %53
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 6, i32 noundef %65) #26
  tail call void @__free_pages(ptr noundef %38, i32 noundef %53) #26
  store ptr null, ptr %21, align 4
  br label %516

66:                                               ; preds = %39
  %67 = getelementptr inbounds %struct.slab, ptr %38, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  br label %129

69:                                               ; preds = %36
  %70 = load volatile i32, ptr @slub_debug_enabled, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %129

72:                                               ; preds = %69
  %73 = load i32, ptr %7, align 4
  %74 = and i32 %73, 256
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %129, label %76

76:                                               ; preds = %72
  %77 = load volatile i32, ptr %27, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80, !prof !22

80:                                               ; preds = %76
  %81 = add i32 %77, -1
  br label %85

82:                                               ; preds = %76
  %83 = getelementptr %struct.page, ptr %23, i32 %26
  %84 = ptrtoint ptr %83 to i32
  br label %85

85:                                               ; preds = %82, %80
  %86 = phi i32 [ %81, %80 ], [ %84, %82 ]
  %87 = inttoptr i32 %86 to ptr
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %88, 512
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, ptr null, ptr %87
  %92 = icmp eq ptr %91, null
  %93 = load i1, ptr @virt_to_cache.__already_done, align 1
  %94 = xor i1 %93, true
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %97, !prof !11

96:                                               ; preds = %85
  store i1 true, ptr @virt_to_cache.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 627, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.virt_to_cache) #26
  br label %97

97:                                               ; preds = %96, %85
  br i1 %92, label %129, label %98

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.slab, ptr %91, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = icmp ne ptr %100, null
  %102 = icmp ne ptr %100, %0
  %103 = and i1 %101, %102
  br i1 %103, label %104, label %129, !prof !11

104:                                              ; preds = %98
  %105 = load ptr, ptr %8, align 4
  %106 = getelementptr inbounds %struct.kmem_cache, ptr %100, i32 0, i32 18
  %107 = load ptr, ptr %106, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 663, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.cache_from_obj, ptr noundef %105, ptr noundef %107) #26
  %108 = load volatile i32, ptr @jiffies, align 64
  %109 = getelementptr inbounds %struct.kmem_cache, ptr %100, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 65536
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %129, label %113

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.kmem_cache, ptr %100, i32 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.kmem_cache, ptr %100, i32 0, i32 15
  %117 = load i32, ptr %116, align 4
  %118 = icmp ult i32 %115, %117
  %119 = add i32 %117, 4
  %120 = select i1 %118, i32 %117, i32 %119
  %121 = getelementptr i8, ptr %14, i32 %120
  tail call fastcc void @print_track(ptr noundef nonnull @.str, ptr noundef %121, i32 noundef %108) #26
  %122 = load i32, ptr %114, align 4
  %123 = load i32, ptr %116, align 4
  %124 = icmp ult i32 %122, %123
  %125 = add i32 %123, 4
  %126 = select i1 %124, i32 %123, i32 %125
  %127 = getelementptr i8, ptr %14, i32 %126
  %128 = getelementptr %struct.track, ptr %127, i32 1
  tail call fastcc void @print_track(ptr noundef nonnull @.str.1, ptr noundef %128, i32 noundef %108) #26
  br label %129

129:                                              ; preds = %113, %104, %98, %97, %72, %69, %66
  %130 = phi ptr [ %68, %66 ], [ %0, %72 ], [ %100, %98 ], [ %0, %69 ], [ null, %97 ], [ %100, %104 ], [ %100, %113 ]
  %131 = getelementptr inbounds %struct.kmem_cache, ptr %130, i32 0, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = add i32 %132, %24
  %134 = inttoptr i32 %133 to ptr
  store ptr null, ptr %134, align 4
  store ptr null, ptr %21, align 4
  %135 = icmp eq i32 %12, 0
  br i1 %135, label %259, label %136

136:                                              ; preds = %171, %129
  %137 = phi ptr [ %172, %171 ], [ %14, %129 ]
  %138 = phi i32 [ %173, %171 ], [ 1, %129 ]
  %139 = phi i32 [ %140, %171 ], [ %12, %129 ]
  %140 = add i32 %139, -1
  %141 = getelementptr ptr, ptr %2, i32 %140
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %171, label %144

144:                                              ; preds = %136
  %145 = load ptr, ptr @mem_map, align 4
  %146 = ptrtoint ptr %142 to i32
  %147 = add i32 %146, 1073741824
  %148 = lshr i32 %147, 12
  %149 = getelementptr %struct.page, ptr %145, i32 %148, i32 1
  %150 = load volatile i32, ptr %149, align 4
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153, !prof !22

153:                                              ; preds = %144
  %154 = add i32 %150, -1
  br label %158

155:                                              ; preds = %144
  %156 = getelementptr %struct.page, ptr %145, i32 %148
  %157 = ptrtoint ptr %156 to i32
  br label %158

158:                                              ; preds = %155, %153
  %159 = phi i32 [ %154, %153 ], [ %157, %155 ]
  %160 = inttoptr i32 %159 to ptr
  %161 = load volatile i32, ptr %160, align 4
  %162 = and i32 %161, 512
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, ptr null, ptr %160
  %165 = icmp eq ptr %164, %38
  br i1 %165, label %166, label %175

166:                                              ; preds = %158
  %167 = load i32, ptr %131, align 4
  %168 = add i32 %167, %146
  %169 = inttoptr i32 %168 to ptr
  store ptr %137, ptr %169, align 4
  %170 = add i32 %138, 1
  store ptr null, ptr %141, align 4
  br label %171

171:                                              ; preds = %166, %136
  %172 = phi ptr [ %137, %136 ], [ %142, %166 ]
  %173 = phi i32 [ %138, %136 ], [ %170, %166 ]
  %174 = icmp eq i32 %140, 0
  br i1 %174, label %259, label %136

175:                                              ; preds = %158
  %176 = icmp eq i32 %140, 0
  br i1 %176, label %259, label %177

177:                                              ; preds = %216, %175
  %178 = phi ptr [ %217, %216 ], [ %137, %175 ]
  %179 = phi i32 [ %218, %216 ], [ %138, %175 ]
  %180 = phi i32 [ %181, %216 ], [ %140, %175 ]
  %181 = add i32 %180, -1
  %182 = getelementptr ptr, ptr %2, i32 %181
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %216, label %185

185:                                              ; preds = %177
  %186 = load ptr, ptr @mem_map, align 4
  %187 = ptrtoint ptr %183 to i32
  %188 = add i32 %187, 1073741824
  %189 = lshr i32 %188, 12
  %190 = getelementptr %struct.page, ptr %186, i32 %189, i32 1
  %191 = load volatile i32, ptr %190, align 4
  %192 = and i32 %191, 1
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194, !prof !22

194:                                              ; preds = %185
  %195 = add i32 %191, -1
  br label %199

196:                                              ; preds = %185
  %197 = getelementptr %struct.page, ptr %186, i32 %189
  %198 = ptrtoint ptr %197 to i32
  br label %199

199:                                              ; preds = %196, %194
  %200 = phi i32 [ %195, %194 ], [ %198, %196 ]
  %201 = inttoptr i32 %200 to ptr
  %202 = load volatile i32, ptr %201, align 4
  %203 = and i32 %202, 512
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, ptr null, ptr %201
  %206 = icmp eq ptr %205, %38
  br i1 %206, label %211, label %207

207:                                              ; preds = %199
  %208 = icmp eq i32 %139, 0
  %209 = select i1 %208, i32 %180, i32 %139
  %210 = icmp eq i32 %181, 0
  br i1 %210, label %259, label %220

211:                                              ; preds = %199
  %212 = load i32, ptr %131, align 4
  %213 = add i32 %212, %187
  %214 = inttoptr i32 %213 to ptr
  store ptr %178, ptr %214, align 4
  %215 = add i32 %179, 1
  store ptr null, ptr %182, align 4
  br label %216

216:                                              ; preds = %211, %177
  %217 = phi ptr [ %178, %177 ], [ %183, %211 ]
  %218 = phi i32 [ %179, %177 ], [ %215, %211 ]
  %219 = icmp eq i32 %181, 0
  br i1 %219, label %259, label %177

220:                                              ; preds = %255, %207
  %221 = phi ptr [ %256, %255 ], [ %178, %207 ]
  %222 = phi i32 [ %257, %255 ], [ %179, %207 ]
  %223 = phi i32 [ %224, %255 ], [ %181, %207 ]
  %224 = add i32 %223, -1
  %225 = getelementptr ptr, ptr %2, i32 %224
  %226 = load ptr, ptr %225, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %255, label %228

228:                                              ; preds = %220
  %229 = load ptr, ptr @mem_map, align 4
  %230 = ptrtoint ptr %226 to i32
  %231 = add i32 %230, 1073741824
  %232 = lshr i32 %231, 12
  %233 = getelementptr %struct.page, ptr %229, i32 %232, i32 1
  %234 = load volatile i32, ptr %233, align 4
  %235 = and i32 %234, 1
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %239, label %237, !prof !22

237:                                              ; preds = %228
  %238 = add i32 %234, -1
  br label %242

239:                                              ; preds = %228
  %240 = getelementptr %struct.page, ptr %229, i32 %232
  %241 = ptrtoint ptr %240 to i32
  br label %242

242:                                              ; preds = %239, %237
  %243 = phi i32 [ %238, %237 ], [ %241, %239 ]
  %244 = inttoptr i32 %243 to ptr
  %245 = load volatile i32, ptr %244, align 4
  %246 = and i32 %245, 512
  %247 = icmp eq i32 %246, 0
  %248 = select i1 %247, ptr null, ptr %244
  %249 = icmp eq ptr %248, %38
  br i1 %249, label %250, label %259

250:                                              ; preds = %242
  %251 = load i32, ptr %131, align 4
  %252 = add i32 %251, %230
  %253 = inttoptr i32 %252 to ptr
  store ptr %221, ptr %253, align 4
  %254 = add i32 %222, 1
  store ptr null, ptr %225, align 4
  br label %255

255:                                              ; preds = %250, %220
  %256 = phi ptr [ %221, %220 ], [ %226, %250 ]
  %257 = phi i32 [ %222, %220 ], [ %254, %250 ]
  %258 = icmp eq i32 %224, 0
  br i1 %258, label %259, label %220

259:                                              ; preds = %255, %242, %216, %207, %175, %171, %129
  %260 = phi ptr [ %14, %129 ], [ %137, %175 ], [ %178, %207 ], [ %221, %242 ], [ %256, %255 ], [ %217, %216 ], [ %172, %171 ]
  %261 = phi i32 [ 1, %129 ], [ %138, %175 ], [ %179, %207 ], [ %222, %242 ], [ %257, %255 ], [ %218, %216 ], [ %173, %171 ]
  %262 = phi i32 [ 0, %129 ], [ 1, %175 ], [ %209, %207 ], [ %209, %255 ], [ %209, %242 ], [ %139, %216 ], [ 0, %171 ]
  %263 = icmp eq i32 %37, 0
  br i1 %263, label %516, label %264

264:                                              ; preds = %259
  %265 = tail call ptr @llvm.returnaddress(i32 0)
  %266 = getelementptr inbounds %struct.kmem_cache, ptr %130, i32 0, i32 14
  %267 = getelementptr inbounds %struct.kmem_cache, ptr %130, i32 0, i32 1
  %268 = getelementptr inbounds %struct.kmem_cache, ptr %130, i32 0, i32 4
  %269 = getelementptr inbounds %struct.kmem_cache, ptr %130, i32 0, i32 17
  %270 = getelementptr inbounds %struct.kmem_cache, ptr %130, i32 0, i32 15
  %271 = getelementptr inbounds %struct.kmem_cache, ptr %130, i32 0, i32 3
  br label %272

272:                                              ; preds = %304, %264
  %273 = phi ptr [ null, %264 ], [ %310, %304 ]
  %274 = phi ptr [ null, %264 ], [ %275, %304 ]
  %275 = phi ptr [ %260, %264 ], [ %279, %304 ]
  %276 = load i32, ptr %131, align 4
  %277 = getelementptr i8, ptr %275, i32 %276
  %278 = load i32, ptr %277, align 4
  %279 = inttoptr i32 %278 to ptr
  %280 = load volatile i32, ptr @init_on_free, align 4
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %304, !prof !11

282:                                              ; preds = %272
  %283 = load ptr, ptr %266, align 4
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %304

285:                                              ; preds = %282
  %286 = load i32, ptr %267, align 4
  %287 = and i32 %286, 526336
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %304

289:                                              ; preds = %285
  %290 = load i32, ptr %268, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %275, i8 0, i32 %290, i1 false) #26
  %291 = load i32, ptr %267, align 4
  %292 = and i32 %291, 1024
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %289
  %295 = load i32, ptr %269, align 4
  br label %296

296:                                              ; preds = %294, %289
  %297 = phi i32 [ %295, %294 ], [ 0, %289 ]
  %298 = load i32, ptr %270, align 4
  %299 = getelementptr i8, ptr %275, i32 %298
  %300 = load i32, ptr %271, align 4
  %301 = add i32 %298, %297
  %302 = sub i32 %300, %301
  tail call void @llvm.memset.p0.i32(ptr align 1 %299, i8 0, i32 %302, i1 false) #26
  %303 = load i32, ptr %131, align 4
  br label %304

304:                                              ; preds = %296, %285, %282, %272
  %305 = phi i32 [ %276, %272 ], [ %276, %282 ], [ %276, %285 ], [ %303, %296 ]
  %306 = ptrtoint ptr %275 to i32
  %307 = add i32 %305, %306
  %308 = inttoptr i32 %307 to ptr
  store ptr %274, ptr %308, align 4
  %309 = icmp eq ptr %273, null
  %310 = select i1 %309, ptr %275, ptr %273
  %311 = icmp eq ptr %275, %14
  br i1 %311, label %312, label %272

312:                                              ; preds = %304
  %313 = ptrtoint ptr %265 to i32
  %314 = select i1 %309, ptr %14, ptr %273
  %315 = icmp eq ptr %14, %314
  %316 = select i1 %315, ptr %14, ptr %310
  %317 = load ptr, ptr %130, align 4
  %318 = ptrtoint ptr %317 to i32
  %319 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %320 = inttoptr i32 %319 to ptr
  %321 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %320) #19, !srcloc !12
  %322 = add i32 %321, %318
  %323 = inttoptr i32 %322 to ptr
  %324 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %323, i32 0, i32 1
  %325 = load volatile i32, ptr %324, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !25
  %326 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %323, i32 0, i32 2
  %327 = load ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, %38
  br i1 %328, label %329, label %372, !prof !22

329:                                              ; preds = %312
  %330 = ptrtoint ptr %316 to i32
  br label %331

331:                                              ; preds = %359, %329
  %332 = phi i32 [ %325, %329 ], [ %368, %359 ]
  %333 = phi ptr [ %323, %329 ], [ %366, %359 ]
  %334 = load volatile ptr, ptr %333, align 4
  %335 = load i32, ptr %131, align 4
  %336 = add i32 %335, %330
  %337 = inttoptr i32 %336 to ptr
  store ptr %334, ptr %337, align 4
  %338 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %339 = load ptr, ptr %130, align 4
  %340 = ptrtoint ptr %339 to i32
  %341 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %342 = inttoptr i32 %341 to ptr
  %343 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %342) #19, !srcloc !12
  %344 = add i32 %343, %340
  %345 = inttoptr i32 %344 to ptr
  %346 = load ptr, ptr %345, align 4
  %347 = icmp eq ptr %346, %334
  br i1 %347, label %348, label %359

348:                                              ; preds = %331
  %349 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %339, i32 0, i32 1
  %350 = ptrtoint ptr %349 to i32
  %351 = add i32 %343, %350
  %352 = inttoptr i32 %351 to ptr
  %353 = load i32, ptr %352, align 4
  %354 = icmp eq i32 %353, %332
  br i1 %354, label %355, label %359

355:                                              ; preds = %348
  %356 = inttoptr i32 %344 to ptr
  %357 = inttoptr i32 %351 to ptr
  store ptr %14, ptr %356, align 4
  %358 = add i32 %332, 1
  store i32 %358, ptr %357, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %338) #26, !srcloc !16
  br label %516

359:                                              ; preds = %348, %331
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %338) #26, !srcloc !16
  %360 = load ptr, ptr %130, align 4
  %361 = ptrtoint ptr %360 to i32
  %362 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %363 = inttoptr i32 %362 to ptr
  %364 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %363) #19, !srcloc !12
  %365 = add i32 %364, %361
  %366 = inttoptr i32 %365 to ptr
  %367 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %366, i32 0, i32 1
  %368 = load volatile i32, ptr %367, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !25
  %369 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %366, i32 0, i32 2
  %370 = load ptr, ptr %369, align 4
  %371 = icmp eq ptr %370, %38
  br i1 %371, label %331, label %372, !prof !22

372:                                              ; preds = %359, %312
  %373 = load volatile i32, ptr @slub_debug_enabled, align 4
  %374 = icmp sgt i32 %373, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %372
  %376 = load i32, ptr %267, align 4
  %377 = and i32 %376, 2166016
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %382, label %379

379:                                              ; preds = %375
  %380 = tail call fastcc i32 @free_debug_processing(ptr noundef %130, ptr noundef nonnull %38, ptr noundef nonnull %14, ptr noundef %316, i32 noundef %261, i32 noundef %313) #26
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %516, label %382

382:                                              ; preds = %379, %375, %372
  %383 = getelementptr inbounds %struct.slab, ptr %38, i32 0, i32 3
  %384 = getelementptr inbounds %struct.slab, ptr %38, i32 0, i32 4
  %385 = ptrtoint ptr %316 to i32
  %386 = getelementptr %struct.kmem_cache, ptr %130, i32 0, i32 23, i32 0
  br label %387

387:                                              ; preds = %449, %382
  %388 = phi ptr [ null, %382 ], [ %425, %449 ]
  %389 = phi i32 [ 0, %382 ], [ %426, %449 ]
  %390 = icmp eq ptr %388, null
  br i1 %390, label %392, label %391, !prof !22

391:                                              ; preds = %387
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %388, i32 noundef %389) #26
  br label %392

392:                                              ; preds = %391, %387
  %393 = load ptr, ptr %383, align 4
  %394 = load i32, ptr %384, align 4
  %395 = load i32, ptr %131, align 4
  %396 = add i32 %395, %385
  %397 = inttoptr i32 %396 to ptr
  store ptr %393, ptr %397, align 4
  %398 = sub i32 %394, %261
  %399 = and i32 %398, 65535
  %400 = and i32 %394, -65536
  %401 = or i32 %399, %400
  %402 = icmp ne i32 %399, 0
  %403 = icmp ne ptr %393, null
  %404 = and i1 %403, %402
  %405 = icmp slt i32 %394, 0
  %406 = select i1 %404, i1 true, i1 %405
  br i1 %406, label %423, label %407

407:                                              ; preds = %392
  %408 = load volatile i32, ptr @slub_debug_enabled, align 4
  %409 = icmp sgt i32 %408, 0
  br i1 %409, label %410, label %414

410:                                              ; preds = %407
  %411 = load i32, ptr %267, align 4
  %412 = and i32 %411, 2166016
  %413 = icmp eq i32 %412, 0
  br label %414

414:                                              ; preds = %410, %407
  %415 = phi i1 [ %413, %410 ], [ true, %407 ]
  %416 = xor i1 %415, true
  %417 = or i1 %403, %416
  br i1 %417, label %420, label %418

418:                                              ; preds = %414
  %419 = or i32 %401, -2147483648
  br label %423

420:                                              ; preds = %414
  %421 = load ptr, ptr %386, align 4
  %422 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %421) #26
  br label %423

423:                                              ; preds = %420, %418, %392
  %424 = phi i32 [ %401, %392 ], [ %401, %420 ], [ %419, %418 ]
  %425 = phi ptr [ null, %392 ], [ %421, %420 ], [ null, %418 ]
  %426 = phi i32 [ %389, %392 ], [ %422, %420 ], [ %389, %418 ]
  %427 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !26
  br label %428

428:                                              ; preds = %442, %423
  %429 = load volatile i32, ptr %38, align 4
  %430 = and i32 %429, 1
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %437, !prof !27

432:                                              ; preds = %428
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %38) #26, !srcloc !17
  %433 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %38, ptr nonnull %38, i32 1, ptr nonnull elementtype(i32) %38) #26, !srcloc !28
  %434 = extractvalue { i32, i32, i32 } %433, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !29
  %435 = and i32 %434, 1
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %443, label %437, !prof !22

437:                                              ; preds = %432, %428
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !30
  br label %438

438:                                              ; preds = %438, %437
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !31
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !32
  %439 = load volatile i32, ptr %38, align 4
  %440 = and i32 %439, 1
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %438

442:                                              ; preds = %438
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !33
  br label %428

443:                                              ; preds = %432
  %444 = load ptr, ptr %383, align 4
  %445 = icmp eq ptr %444, %393
  br i1 %445, label %446, label %449

446:                                              ; preds = %443
  %447 = load i32, ptr %384, align 4
  %448 = icmp eq i32 %447, %394
  br i1 %448, label %452, label %449

449:                                              ; preds = %446, %443
  %450 = load volatile i32, ptr %38, align 4
  %451 = and i32 %450, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %451, ptr %38, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %427) #26, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !36
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !37
  br label %387

452:                                              ; preds = %446
  store ptr %14, ptr %383, align 4
  store i32 %424, ptr %384, align 4
  %453 = load volatile i32, ptr %38, align 4
  %454 = and i32 %453, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %454, ptr %38, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %427) #26, !srcloc !16
  %455 = icmp eq ptr %425, null
  br i1 %455, label %456, label %460, !prof !22

456:                                              ; preds = %452
  br i1 %405, label %516, label %457, !prof !22

457:                                              ; preds = %456
  %458 = icmp sgt i32 %424, -1
  br i1 %458, label %516, label %459

459:                                              ; preds = %457
  tail call fastcc void @put_cpu_partial(ptr noundef %130, ptr noundef nonnull %38, i32 noundef 1) #26
  br label %516

460:                                              ; preds = %452
  %461 = and i32 %424, 65535
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %469

463:                                              ; preds = %460
  %464 = getelementptr inbounds %struct.kmem_cache_node, ptr %425, i32 0, i32 1
  %465 = load i32, ptr %464, align 4
  %466 = getelementptr inbounds %struct.kmem_cache, ptr %130, i32 0, i32 2
  %467 = load i32, ptr %466, align 4
  %468 = icmp ult i32 %465, %467
  br i1 %468, label %469, label %496, !prof !22

469:                                              ; preds = %463, %460
  %470 = load volatile i32, ptr @slub_debug_enabled, align 4
  %471 = icmp sgt i32 %470, 0
  br i1 %471, label %472, label %495

472:                                              ; preds = %469
  %473 = load i32, ptr %267, align 4
  %474 = and i32 %473, 2166016
  %475 = icmp eq i32 %474, 0
  %476 = or i1 %403, %475
  br i1 %476, label %495, label %477, !prof !38

477:                                              ; preds = %472
  %478 = and i32 %473, 65536
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %486, label %480

480:                                              ; preds = %477
  %481 = getelementptr inbounds %struct.slab, ptr %38, i32 0, i32 1
  %482 = getelementptr inbounds %struct.slab, ptr %38, i32 0, i32 1, i32 0, i32 1
  %483 = load ptr, ptr %482, align 4
  %484 = load ptr, ptr %481, align 4
  %485 = getelementptr inbounds %struct.list_head, ptr %484, i32 0, i32 1
  store ptr %483, ptr %485, align 4
  store volatile ptr %484, ptr %483, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %481, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %482, align 4
  br label %486

486:                                              ; preds = %480, %477
  %487 = getelementptr inbounds %struct.kmem_cache_node, ptr %425, i32 0, i32 1
  %488 = load i32, ptr %487, align 4
  %489 = add i32 %488, 1
  store i32 %489, ptr %487, align 4
  %490 = getelementptr inbounds %struct.kmem_cache_node, ptr %425, i32 0, i32 2
  %491 = getelementptr inbounds %struct.kmem_cache_node, ptr %425, i32 0, i32 2, i32 1
  %492 = load ptr, ptr %491, align 4
  %493 = getelementptr inbounds %struct.slab, ptr %38, i32 0, i32 1
  store ptr %493, ptr %491, align 4
  store ptr %490, ptr %493, align 4
  %494 = getelementptr inbounds %struct.slab, ptr %38, i32 0, i32 1, i32 0, i32 1
  store ptr %492, ptr %494, align 4
  store volatile ptr %493, ptr %492, align 4
  br label %495

495:                                              ; preds = %486, %472, %469
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %425, i32 noundef %426) #26
  br label %516

496:                                              ; preds = %463
  br i1 %403, label %497, label %505

497:                                              ; preds = %496
  %498 = getelementptr inbounds %struct.slab, ptr %38, i32 0, i32 1
  %499 = getelementptr inbounds %struct.slab, ptr %38, i32 0, i32 1, i32 0, i32 1
  %500 = load ptr, ptr %499, align 4
  %501 = load ptr, ptr %498, align 4
  %502 = getelementptr inbounds %struct.list_head, ptr %501, i32 0, i32 1
  store ptr %500, ptr %502, align 4
  store volatile ptr %501, ptr %500, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %498, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %499, align 4
  %503 = load i32, ptr %464, align 4
  %504 = add i32 %503, -1
  store i32 %504, ptr %464, align 4
  br label %515

505:                                              ; preds = %496
  %506 = load i32, ptr %267, align 4
  %507 = and i32 %506, 65536
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %515, label %509

509:                                              ; preds = %505
  %510 = getelementptr inbounds %struct.slab, ptr %38, i32 0, i32 1
  %511 = getelementptr inbounds %struct.slab, ptr %38, i32 0, i32 1, i32 0, i32 1
  %512 = load ptr, ptr %511, align 4
  %513 = load ptr, ptr %510, align 4
  %514 = getelementptr inbounds %struct.list_head, ptr %513, i32 0, i32 1
  store ptr %512, ptr %514, align 4
  store volatile ptr %513, ptr %512, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %510, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %511, align 4
  br label %515

515:                                              ; preds = %509, %505, %497
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %425, i32 noundef %426) #26
  tail call fastcc void @discard_slab(ptr noundef %130, ptr noundef nonnull %38) #26
  br label %516

516:                                              ; preds = %515, %495, %459, %457, %456, %379, %355, %259, %64
  %517 = phi i32 [ %262, %259 ], [ %262, %355 ], [ %262, %379 ], [ %262, %456 ], [ %262, %457 ], [ %262, %459 ], [ %262, %495 ], [ %262, %515 ], [ %12, %64 ]
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %18, !prof !11

519:                                              ; preds = %516, %20, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kmem_cache_alloc_bulk(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = load i32, ptr @gfp_allowed_mask, align 4
  %6 = and i32 %5, %1
  %7 = tail call i32 @should_failslab(ptr noundef %0, i32 noundef %6) #26
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq ptr %0, null
  %10 = or i1 %9, %8
  br i1 %10, label %131, label %11, !prof !11

11:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !39
  %12 = load ptr, ptr %0, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #19, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #26, !srcloc !40
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #19, !srcloc !12
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %90, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 14
  %26 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  br label %27

27:                                               ; preds = %86, %23
  %28 = phi ptr [ %18, %23 ], [ %87, %86 ]
  %29 = phi i32 [ 0, %23 ], [ %88, %86 ]
  %30 = load ptr, ptr %28, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %68, !prof !11

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %28, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %37 = inttoptr i32 %36 to ptr
  %38 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %37) #19, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #26, !srcloc !41
  %39 = tail call ptr @llvm.returnaddress(i32 0)
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call fastcc ptr @___slab_alloc(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %40, ptr noundef %28)
  %42 = getelementptr ptr, ptr %3, i32 %29
  store ptr %41, ptr %42, align 4
  %43 = icmp eq ptr %41, null
  br i1 %43, label %130, label %44, !prof !11

44:                                               ; preds = %32
  %45 = load ptr, ptr %0, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %48 = inttoptr i32 %47 to ptr
  %49 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #19, !srcloc !12
  %50 = add i32 %49, %46
  %51 = inttoptr i32 %50 to ptr
  %52 = load volatile i32, ptr @init_on_free, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %64, !prof !11

54:                                               ; preds = %44
  %55 = load ptr, ptr %25, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, ptr %26, align 4
  %59 = and i32 %58, 526336
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64, !prof !11

61:                                               ; preds = %57
  %62 = load i32, ptr %24, align 4
  %63 = getelementptr i8, ptr %41, i32 %62
  store i32 0, ptr %63, align 1
  br label %64

64:                                               ; preds = %61, %57, %54, %44
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #26, !srcloc !40
  %65 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %66 = inttoptr i32 %65 to ptr
  %67 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %66) #19, !srcloc !12
  br label %86

68:                                               ; preds = %27
  %69 = load i32, ptr %24, align 4
  %70 = getelementptr i8, ptr %30, i32 %69
  %71 = load i32, ptr %70, align 4
  %72 = inttoptr i32 %71 to ptr
  store ptr %72, ptr %28, align 4
  %73 = getelementptr ptr, ptr %3, i32 %29
  store ptr %30, ptr %73, align 4
  %74 = load volatile i32, ptr @init_on_free, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %86, !prof !11

76:                                               ; preds = %68
  %77 = load ptr, ptr %25, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, ptr %26, align 4
  %81 = and i32 %80, 526336
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86, !prof !11

83:                                               ; preds = %79
  %84 = load i32, ptr %24, align 4
  %85 = getelementptr i8, ptr %30, i32 %84
  store i32 0, ptr %85, align 1
  br label %86

86:                                               ; preds = %83, %79, %76, %68, %64
  %87 = phi ptr [ %28, %83 ], [ %28, %79 ], [ %28, %76 ], [ %28, %68 ], [ %51, %64 ]
  %88 = add nuw i32 %29, 1
  %89 = icmp eq i32 %88, %2
  br i1 %89, label %90, label %27

90:                                               ; preds = %86, %11
  %91 = phi ptr [ %18, %11 ], [ %87, %86 ]
  %92 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %91, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 4
  %95 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %96 = inttoptr i32 %95 to ptr
  %97 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %96) #19, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #26, !srcloc !41
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !42
  %98 = load volatile i32, ptr @init_on_alloc, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %112, !prof !11

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 14
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 526336
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %104
  %110 = and i32 %1, 256
  %111 = icmp ne i32 %110, 0
  br label %115

112:                                              ; preds = %90
  %113 = and i32 %1, 256
  %114 = icmp ne i32 %113, 0
  br label %115

115:                                              ; preds = %112, %109, %104, %100
  %116 = phi i1 [ %111, %109 ], [ %114, %112 ], [ false, %100 ], [ true, %104 ]
  br i1 %22, label %131, label %117

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  br label %119

119:                                              ; preds = %127, %117
  %120 = phi i32 [ 0, %117 ], [ %128, %127 ]
  %121 = getelementptr ptr, ptr %3, i32 %120
  %122 = load ptr, ptr %121, align 4
  %123 = icmp ne ptr %122, null
  %124 = and i1 %116, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, ptr %118, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %122, i8 0, i32 %126, i1 false) #26
  br label %127

127:                                              ; preds = %125, %119
  %128 = add nuw i32 %120, 1
  %129 = icmp eq i32 %128, %2
  br i1 %129, label %131, label %119

130:                                              ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !43
  tail call void @__kmem_cache_free_bulk(ptr noundef nonnull %0, i32 noundef %29, ptr noundef %3) #26
  br label %131

131:                                              ; preds = %130, %127, %115, %4
  %132 = phi i32 [ 0, %130 ], [ 0, %4 ], [ %2, %115 ], [ %2, %127 ]
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @___slab_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %6 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 8
  br label %8

8:                                                ; preds = %30, %4
  %9 = phi ptr [ %3, %4 ], [ %31, %30 ]
  %10 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %9, i32 0, i32 2
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %111, label %13

13:                                               ; preds = %133, %8
  %14 = phi ptr [ %130, %133 ], [ %11, %8 ]
  %15 = phi ptr [ %116, %133 ], [ %9, %8 ]
  %16 = load volatile i32, ptr %14, align 4
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !22

19:                                               ; preds = %13
  %20 = tail call zeroext i1 @gfp_pfmemalloc_allowed(i32 noundef %1) #26
  br i1 %20, label %21, label %97, !prof !22

21:                                               ; preds = %19, %13
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #19, !srcloc !12
  %26 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %15, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %14, %27
  br i1 %28, label %32, label %29, !prof !22

29:                                               ; preds = %21
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #26, !srcloc !16
  br label %30

30:                                               ; preds = %128, %105, %29
  %31 = phi ptr [ %15, %105 ], [ %116, %128 ], [ %15, %29 ]
  br label %8

32:                                               ; preds = %21
  %33 = load ptr, ptr %15, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %79

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.slab, ptr %14, i32 0, i32 3
  %37 = getelementptr inbounds %struct.slab, ptr %14, i32 0, i32 4
  br label %38

38:                                               ; preds = %62, %35
  %39 = load ptr, ptr %36, align 4
  %40 = load i32, ptr %37, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !26
  br label %41

41:                                               ; preds = %55, %38
  %42 = load volatile i32, ptr %14, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50, !prof !27

45:                                               ; preds = %41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #26, !srcloc !17
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #26, !srcloc !28
  %47 = extractvalue { i32, i32, i32 } %46, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !29
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50, !prof !22

50:                                               ; preds = %45, %41
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !30
  br label %51

51:                                               ; preds = %51, %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !31
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !32
  %52 = load volatile i32, ptr %14, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %51

55:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !33
  br label %41

56:                                               ; preds = %45
  %57 = load ptr, ptr %36, align 4
  %58 = icmp eq ptr %57, %39
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, ptr %37, align 4
  %61 = icmp eq i32 %60, %40
  br i1 %61, label %65, label %62

62:                                               ; preds = %59, %56
  %63 = load volatile i32, ptr %14, align 4
  %64 = and i32 %63, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %64, ptr %14, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !45
  br label %38

65:                                               ; preds = %59
  %66 = and i32 %40, 2147418112
  %67 = lshr i32 %40, 16
  %68 = and i32 %67, 32767
  %69 = icmp eq ptr %39, null
  %70 = select i1 %69, i32 0, i32 -2147483648
  %71 = or i32 %70, %66
  %72 = or i32 %71, %68
  store ptr null, ptr %36, align 4
  store i32 %72, ptr %37, align 4
  %73 = load volatile i32, ptr %14, align 4
  %74 = and i32 %73, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %74, ptr %14, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  br i1 %69, label %75, label %79

75:                                               ; preds = %65
  store ptr null, ptr %26, align 4
  %76 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %77 = inttoptr i32 %76 to ptr
  %78 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %77) #19, !srcloc !12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #26, !srcloc !16
  br label %111

79:                                               ; preds = %330, %65, %32
  %80 = phi i32 [ %331, %330 ], [ %22, %32 ], [ %22, %65 ]
  %81 = phi ptr [ %288, %330 ], [ %39, %65 ], [ %33, %32 ]
  %82 = phi ptr [ %289, %330 ], [ %15, %32 ], [ %15, %65 ]
  %83 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %84 = inttoptr i32 %83 to ptr
  %85 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %84) #19, !srcloc !12
  %86 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr i8, ptr %81, i32 %87
  %89 = load i32, ptr %88, align 4
  %90 = inttoptr i32 %89 to ptr
  store ptr %90, ptr %82, align 4
  %91 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %82, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %91, align 4
  %94 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %95 = inttoptr i32 %94 to ptr
  %96 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %95) #19, !srcloc !12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %80) #26, !srcloc !16
  br label %338

97:                                               ; preds = %19
  %98 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %99 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %100 = inttoptr i32 %99 to ptr
  %101 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %100) #19, !srcloc !12
  %102 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %15, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %14, %103
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %98) #26, !srcloc !16
  br label %30

106:                                              ; preds = %97
  %107 = load ptr, ptr %15, align 4
  store ptr null, ptr %102, align 4
  store ptr null, ptr %15, align 4
  %108 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %109 = inttoptr i32 %108 to ptr
  %110 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %109) #19, !srcloc !12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %98) #26, !srcloc !16
  tail call fastcc void @deactivate_slab(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %107)
  br label %111

111:                                              ; preds = %106, %75, %8
  %112 = phi ptr [ null, %8 ], [ %14, %75 ], [ %14, %106 ]
  %113 = phi ptr [ %9, %8 ], [ %15, %75 ], [ %15, %106 ]
  br label %114

114:                                              ; preds = %296, %111
  %115 = phi ptr [ %287, %296 ], [ %112, %111 ]
  %116 = phi ptr [ %289, %296 ], [ %113, %111 ]
  %117 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %116, i32 0, i32 3
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %140, label %120

120:                                              ; preds = %114
  %121 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %122 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %123 = inttoptr i32 %122 to ptr
  %124 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %123) #19, !srcloc !12
  %125 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %116, i32 0, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128, !prof !22

128:                                              ; preds = %120
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %121) #26, !srcloc !16
  br label %30

129:                                              ; preds = %120
  %130 = load ptr, ptr %117, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %133, !prof !11

132:                                              ; preds = %129
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %121) #26, !srcloc !16
  br label %140

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %116, i32 0, i32 2
  store ptr %130, ptr %134, align 4
  %135 = getelementptr inbounds %struct.slab, ptr %130, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  store ptr %136, ptr %117, align 4
  %137 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %138 = inttoptr i32 %137 to ptr
  %139 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %138) #19, !srcloc !12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %121) #26, !srcloc !16
  br label %13

140:                                              ; preds = %132, %114
  %141 = load ptr, ptr %5, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %272, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.kmem_cache_node, ptr %141, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %272, label %147

147:                                              ; preds = %143
  %148 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %141) #26
  %149 = getelementptr inbounds %struct.kmem_cache_node, ptr %141, i32 0, i32 2
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, %149
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %141, i32 noundef %148) #26
  br label %272

153:                                              ; preds = %262, %147
  %154 = phi ptr [ %263, %262 ], [ %115, %147 ]
  %155 = phi ptr [ %159, %262 ], [ %150, %147 ]
  %156 = phi ptr [ %265, %262 ], [ null, %147 ]
  %157 = phi i32 [ %264, %262 ], [ 0, %147 ]
  %158 = getelementptr i8, ptr %155, i32 -4
  %159 = load ptr, ptr %155, align 4
  %160 = load volatile i32, ptr %158, align 4
  %161 = and i32 %160, 32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163, !prof !22

163:                                              ; preds = %153
  %164 = tail call zeroext i1 @gfp_pfmemalloc_allowed(i32 noundef %1) #26
  br i1 %164, label %165, label %262

165:                                              ; preds = %163, %153
  %166 = getelementptr i8, ptr %155, i32 12
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr i8, ptr %155, i32 16
  %169 = load i32, ptr %168, align 4
  %170 = lshr i32 %169, 16
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !26
  br label %171

171:                                              ; preds = %185, %165
  %172 = load volatile i32, ptr %158, align 4
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %180, !prof !27

175:                                              ; preds = %171
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %158) #26, !srcloc !17
  %176 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %158, ptr %158, i32 1, ptr elementtype(i32) %158) #26, !srcloc !28
  %177 = extractvalue { i32, i32, i32 } %176, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !29
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %186, label %180, !prof !22

180:                                              ; preds = %175, %171
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !30
  br label %181

181:                                              ; preds = %181, %180
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !31
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !32
  %182 = load volatile i32, ptr %158, align 4
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %181

185:                                              ; preds = %181
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !33
  br label %171

186:                                              ; preds = %175
  %187 = and i32 %169, 2147418112
  %188 = and i32 %170, 32767
  %189 = or i32 %188, %187
  %190 = icmp eq ptr %156, null
  %191 = select i1 %190, i32 %189, i32 %169
  %192 = select i1 %190, ptr null, ptr %167
  %193 = or i32 %191, -2147483648
  %194 = load ptr, ptr %166, align 4
  %195 = icmp eq ptr %194, %167
  br i1 %195, label %196, label %199

196:                                              ; preds = %186
  %197 = load i32, ptr %168, align 4
  %198 = icmp eq i32 %197, %169
  br i1 %198, label %202, label %199

199:                                              ; preds = %196, %186
  %200 = load volatile i32, ptr %158, align 4
  %201 = and i32 %200, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %201, ptr %158, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !45
  br label %268

202:                                              ; preds = %196
  store ptr %192, ptr %166, align 4
  store i32 %193, ptr %168, align 4
  %203 = load volatile i32, ptr %158, align 4
  %204 = and i32 %203, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %204, ptr %158, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  %205 = getelementptr i8, ptr %155, i32 4
  %206 = load ptr, ptr %205, align 4
  %207 = load ptr, ptr %155, align 4
  %208 = getelementptr inbounds %struct.list_head, ptr %207, i32 0, i32 1
  store ptr %206, ptr %208, align 4
  store volatile ptr %207, ptr %206, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %155, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %205, align 4
  %209 = load i32, ptr %144, align 4
  %210 = add i32 %209, -1
  store i32 %210, ptr %144, align 4
  %211 = icmp eq ptr %167, null
  br i1 %211, label %212, label %213, !prof !11

212:                                              ; preds = %202
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2121, i32 noundef 9, ptr noundef null) #26
  br label %268

213:                                              ; preds = %202
  br i1 %190, label %248, label %214

214:                                              ; preds = %213
  %215 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %216 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %217 = inttoptr i32 %216 to ptr
  %218 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %217) #19, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !46
  %219 = load ptr, ptr %0, align 4
  %220 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %219, i32 0, i32 3
  %221 = ptrtoint ptr %220 to i32
  %222 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %223 = inttoptr i32 %222 to ptr
  %224 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %223) #19, !srcloc !12
  %225 = add i32 %224, %221
  %226 = inttoptr i32 %225 to ptr
  %227 = load volatile ptr, ptr %226, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !47
  %228 = icmp eq ptr %227, null
  br i1 %228, label %233, label %229

229:                                              ; preds = %214
  %230 = getelementptr inbounds %struct.slab, ptr %227, i32 0, i32 1, i32 0, i32 1
  %231 = load i32, ptr %230, align 4
  %232 = add i32 %231, 1
  br label %233

233:                                              ; preds = %229, %214
  %234 = phi i32 [ %232, %229 ], [ 1, %214 ]
  store i32 %234, ptr %205, align 4
  store ptr %227, ptr %155, align 4
  %235 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %236 = load ptr, ptr %0, align 4
  %237 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %236, i32 0, i32 3
  %238 = ptrtoint ptr %237 to i32
  %239 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %240 = inttoptr i32 %239 to ptr
  %241 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %240) #19, !srcloc !12
  %242 = add i32 %241, %238
  %243 = inttoptr i32 %242 to ptr
  store ptr %158, ptr %243, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %235) #26, !srcloc !16
  %244 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %245 = inttoptr i32 %244 to ptr
  %246 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %245) #19, !srcloc !12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %215) #26, !srcloc !16
  %247 = add i32 %157, 1
  br label %248

248:                                              ; preds = %233, %213
  %249 = phi ptr [ %154, %233 ], [ %158, %213 ]
  %250 = phi i32 [ %247, %233 ], [ %157, %213 ]
  %251 = phi ptr [ %156, %233 ], [ %167, %213 ]
  %252 = load volatile i32, ptr @slub_debug_enabled, align 4
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %248
  %255 = load i32, ptr %6, align 4
  %256 = and i32 %255, 2166016
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %254, %248
  %259 = load i32, ptr %7, align 4
  %260 = lshr i32 %259, 1
  %261 = icmp ugt i32 %250, %260
  br i1 %261, label %267, label %262

262:                                              ; preds = %258, %163
  %263 = phi ptr [ %249, %258 ], [ %154, %163 ]
  %264 = phi i32 [ %250, %258 ], [ %157, %163 ]
  %265 = phi ptr [ %251, %258 ], [ %156, %163 ]
  %266 = icmp eq ptr %159, %149
  br i1 %266, label %268, label %153

267:                                              ; preds = %258, %254
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %141, i32 noundef %148) #26
  br label %286

268:                                              ; preds = %262, %212, %199
  %269 = phi ptr [ %154, %212 ], [ %154, %199 ], [ %263, %262 ]
  %270 = phi ptr [ %156, %212 ], [ %156, %199 ], [ %265, %262 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %141, i32 noundef %148) #26
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %286

272:                                              ; preds = %268, %152, %143, %140
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !48
  %273 = tail call fastcc ptr @new_slab(ptr noundef %0, i32 noundef %1, i32 noundef -1)
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !49
  %274 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %275 = inttoptr i32 %274 to ptr
  %276 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %275) #19, !srcloc !12
  %277 = icmp eq ptr %273, null
  br i1 %277, label %278, label %279, !prof !11

278:                                              ; preds = %272
  tail call fastcc void @slab_out_of_memory(ptr noundef %0, i32 noundef %1)
  br label %338

279:                                              ; preds = %272
  %280 = load ptr, ptr %0, align 4
  %281 = ptrtoint ptr %280 to i32
  %282 = add i32 %276, %281
  %283 = inttoptr i32 %282 to ptr
  %284 = getelementptr inbounds %struct.slab, ptr %273, i32 0, i32 3
  %285 = load ptr, ptr %284, align 4
  store ptr null, ptr %284, align 4
  br label %286

286:                                              ; preds = %279, %268, %267
  %287 = phi ptr [ %273, %279 ], [ %249, %267 ], [ %269, %268 ]
  %288 = phi ptr [ %285, %279 ], [ %251, %267 ], [ %270, %268 ]
  %289 = phi ptr [ %283, %279 ], [ %116, %267 ], [ %116, %268 ]
  %290 = load volatile i32, ptr @slub_debug_enabled, align 4
  %291 = icmp sgt i32 %290, 0
  br i1 %291, label %292, label %299

292:                                              ; preds = %286
  %293 = load i32, ptr %6, align 4
  %294 = and i32 %293, 2166016
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %292
  %297 = tail call fastcc i32 @alloc_debug_processing(ptr noundef %0, ptr noundef %287, ptr noundef %288, i32 noundef %2)
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %114, label %332

299:                                              ; preds = %292, %286
  %300 = load volatile i32, ptr %287, align 4
  %301 = and i32 %300, 32
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %305, label %303, !prof !22

303:                                              ; preds = %299
  %304 = tail call zeroext i1 @gfp_pfmemalloc_allowed(i32 noundef %1) #26
  br i1 %304, label %305, label %332, !prof !22

305:                                              ; preds = %303, %299
  %306 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %307 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %308 = inttoptr i32 %307 to ptr
  %309 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %308) #19, !srcloc !12
  %310 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %289, i32 0, i32 2
  %311 = load ptr, ptr %310, align 4
  %312 = icmp eq ptr %311, null
  br i1 %312, label %330, label %313, !prof !22

313:                                              ; preds = %305
  %314 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %289, i32 0, i32 1
  br label %315

315:                                              ; preds = %315, %313
  %316 = phi ptr [ %311, %313 ], [ %328, %315 ]
  %317 = phi i32 [ %306, %313 ], [ %324, %315 ]
  %318 = load ptr, ptr %289, align 4
  store ptr null, ptr %310, align 4
  store ptr null, ptr %289, align 4
  %319 = load i32, ptr %314, align 4
  %320 = add i32 %319, 1
  store i32 %320, ptr %314, align 4
  %321 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %322 = inttoptr i32 %321 to ptr
  %323 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %322) #19, !srcloc !12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %317) #26, !srcloc !16
  tail call fastcc void @deactivate_slab(ptr noundef %0, ptr noundef nonnull %316, ptr noundef %318)
  %324 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %325 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %326 = inttoptr i32 %325 to ptr
  %327 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %326) #19, !srcloc !12
  %328 = load ptr, ptr %310, align 4
  %329 = icmp eq ptr %328, null
  br i1 %329, label %330, label %315, !prof !22

330:                                              ; preds = %315, %305
  %331 = phi i32 [ %306, %305 ], [ %324, %315 ]
  store ptr %287, ptr %310, align 4
  br label %79

332:                                              ; preds = %303, %296
  %333 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %334 = load i32, ptr %333, align 4
  %335 = getelementptr i8, ptr %288, i32 %334
  %336 = load i32, ptr %335, align 4
  %337 = inttoptr i32 %336 to ptr
  tail call fastcc void @deactivate_slab(ptr noundef %0, ptr noundef %287, ptr noundef %337)
  br label %338

338:                                              ; preds = %332, %278, %79
  %339 = phi ptr [ %288, %332 ], [ %81, %79 ], [ null, %278 ]
  ret ptr %339
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kmem_cache_free_bulk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__kmem_cache_release(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  tail call void @free_percpu(ptr noundef %2) #26
  %3 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  store ptr null, ptr %3, align 4
  %7 = load ptr, ptr @kmem_cache_node, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef nonnull %4) #26
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__kmem_cache_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.kmem_cache_node, ptr %3, i32 0, i32 3
  br i1 %4, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.kmem_cache_node, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load volatile i32, ptr %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %1
  br label %14

14:                                               ; preds = %13, %10, %6
  %15 = phi i1 [ true, %13 ], [ false, %6 ], [ false, %10 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kmem_cache_shutdown(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.list_head, align 8
  tail call fastcc void @flush_all_cpus_locked(ptr noundef %0)
  %3 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %214, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  store ptr %2, ptr %2, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %7, align 4
  %8 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #26, !srcloc !50
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !22

11:                                               ; preds = %6
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/slub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4278, 0\0A.popsection", ""() #26, !srcloc !51
  unreachable

12:                                               ; preds = %6
  call void @_raw_spin_lock_irq(ptr noundef nonnull %4) #26
  %13 = getelementptr inbounds %struct.kmem_cache_node, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %178, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  %18 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 5
  %19 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 5, i32 1
  %20 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %22 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %23 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %24 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  %25 = getelementptr inbounds %struct.kmem_cache_node, ptr %4, i32 0, i32 1
  br label %26

26:                                               ; preds = %176, %16
  %27 = phi ptr [ %14, %16 ], [ %29, %176 ]
  %28 = getelementptr i8, ptr %27, i32 -4
  %29 = load ptr, ptr %27, align 4
  %30 = getelementptr i8, ptr %27, i32 16
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = getelementptr i8, ptr %27, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %29, ptr %36, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  %38 = load i32, ptr %25, align 4
  %39 = add i32 %38, -1
  store i32 %39, ptr %25, align 4
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %27, ptr %41, align 4
  store ptr %40, ptr %27, align 4
  store ptr %2, ptr %35, align 4
  store volatile ptr %27, ptr %2, align 8
  br label %176

42:                                               ; preds = %26
  %43 = call ptr @page_address(ptr noundef %28) #26
  %44 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef %0, ptr noundef %28, ptr noundef nonnull @.str.76, ptr noundef %44) #26
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !26
  br label %45

45:                                               ; preds = %59, %42
  %46 = load volatile i32, ptr %28, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54, !prof !27

49:                                               ; preds = %45
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #26, !srcloc !17
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #26, !srcloc !28
  %51 = extractvalue { i32, i32, i32 } %50, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !29
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54, !prof !22

54:                                               ; preds = %49, %45
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !30
  br label %55

55:                                               ; preds = %55, %54
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !31
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !32
  %56 = load volatile i32, ptr %28, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %55

59:                                               ; preds = %55
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !33
  br label %45

60:                                               ; preds = %49
  call void @_raw_spin_lock(ptr noundef nonnull @object_map_lock) #26
  %61 = call ptr @page_address(ptr noundef %28) #26
  %62 = load i32, ptr %30, align 4
  %63 = lshr i32 %62, 16
  %64 = and i32 %63, 32767
  %65 = add nuw nsw i32 %64, 31
  %66 = lshr i32 %65, 3
  %67 = and i32 %66, 8188
  call void @llvm.memset.p0.i32(ptr nonnull align 4 @object_map, i8 0, i32 %67, i1 false) #26
  %68 = getelementptr i8, ptr %27, i32 12
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %96, label %71

71:                                               ; preds = %60
  %72 = ptrtoint ptr %61 to i32
  br label %73

73:                                               ; preds = %73, %71
  %74 = phi ptr [ %69, %71 ], [ %94, %73 ]
  %75 = ptrtoint ptr %74 to i32
  %76 = sub i32 %75, %72
  %77 = load i32, ptr %18, align 4
  %78 = load i32, ptr %19, align 4
  %79 = lshr i32 %78, 8
  %80 = zext i32 %76 to i64
  %81 = zext i32 %77 to i64
  %82 = mul nuw i64 %80, %81
  %83 = lshr i64 %82, 32
  %84 = trunc i64 %83 to i32
  %85 = sub i32 %76, %84
  %86 = and i32 %78, 255
  %87 = lshr i32 %85, %86
  %88 = add i32 %87, %84
  %89 = and i32 %79, 255
  %90 = lshr i32 %88, %89
  call void @_set_bit(i32 noundef %90, ptr noundef nonnull @object_map) #26
  %91 = load i32, ptr %20, align 4
  %92 = getelementptr i8, ptr %74, i32 %91
  %93 = load i32, ptr %92, align 4
  %94 = inttoptr i32 %93 to ptr
  %95 = icmp eq i32 %93, 0
  br i1 %95, label %96, label %73

96:                                               ; preds = %73, %60
  %97 = load volatile i32, ptr @slub_debug_enabled, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i32, ptr %21, align 4
  %101 = and i32 %100, 1024
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr %22, align 4
  %105 = getelementptr i8, ptr %43, i32 %104
  br label %106

106:                                              ; preds = %103, %99, %96
  %107 = phi ptr [ %105, %103 ], [ %43, %99 ], [ %43, %96 ]
  %108 = load i32, ptr %30, align 4
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 32767
  %111 = load i32, ptr %23, align 4
  %112 = mul i32 %110, %111
  %113 = getelementptr i8, ptr %43, i32 %112
  %114 = icmp ult ptr %107, %113
  br i1 %114, label %115, label %171

115:                                              ; preds = %106
  %116 = ptrtoint ptr %43 to i32
  br label %117

117:                                              ; preds = %162, %115
  %118 = phi ptr [ %107, %115 ], [ %164, %162 ]
  %119 = ptrtoint ptr %118 to i32
  %120 = sub i32 %119, %116
  %121 = load i32, ptr %18, align 4
  %122 = load i32, ptr %19, align 4
  %123 = lshr i32 %122, 8
  %124 = zext i32 %120 to i64
  %125 = zext i32 %121 to i64
  %126 = mul nuw i64 %124, %125
  %127 = lshr i64 %126, 32
  %128 = trunc i64 %127 to i32
  %129 = sub i32 %120, %128
  %130 = and i32 %122, 255
  %131 = lshr i32 %129, %130
  %132 = add i32 %131, %128
  %133 = and i32 %123, 255
  %134 = lshr i32 %132, %133
  %135 = lshr i32 %134, 5
  %136 = getelementptr i32, ptr @object_map, i32 %135
  %137 = load volatile i32, ptr %136, align 4
  %138 = and i32 %134, 31
  %139 = shl nuw i32 1, %138
  %140 = and i32 %139, %137
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %162

142:                                              ; preds = %117
  %143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %118, i32 noundef %120) #25
  %144 = load volatile i32, ptr @jiffies, align 64
  %145 = load i32, ptr %21, align 4
  %146 = and i32 %145, 65536
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %162, label %148

148:                                              ; preds = %142
  %149 = load i32, ptr %20, align 4
  %150 = load i32, ptr %24, align 4
  %151 = icmp ult i32 %149, %150
  %152 = add i32 %150, 4
  %153 = select i1 %151, i32 %150, i32 %152
  %154 = getelementptr i8, ptr %118, i32 %153
  call fastcc void @print_track(ptr noundef nonnull @.str, ptr noundef %154, i32 noundef %144) #26
  %155 = load i32, ptr %20, align 4
  %156 = load i32, ptr %24, align 4
  %157 = icmp ult i32 %155, %156
  %158 = add i32 %156, 4
  %159 = select i1 %157, i32 %156, i32 %158
  %160 = getelementptr i8, ptr %118, i32 %159
  %161 = getelementptr %struct.track, ptr %160, i32 1
  call fastcc void @print_track(ptr noundef nonnull @.str.1, ptr noundef %161, i32 noundef %144) #26
  br label %162

162:                                              ; preds = %148, %142, %117
  %163 = load i32, ptr %23, align 4
  %164 = getelementptr i8, ptr %118, i32 %163
  %165 = load i32, ptr %30, align 4
  %166 = lshr i32 %165, 16
  %167 = and i32 %166, 32767
  %168 = mul i32 %167, %163
  %169 = getelementptr i8, ptr %43, i32 %168
  %170 = icmp ult ptr %164, %169
  br i1 %170, label %117, label %171

171:                                              ; preds = %162, %106
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !52
  %172 = load i16, ptr @object_map_lock, align 4
  %173 = add i16 %172, 1
  store i16 %173, ptr @object_map_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #26, !srcloc !53
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #26, !srcloc !54
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !55
  %174 = load volatile i32, ptr %28, align 4
  %175 = and i32 %174, -2
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %175, ptr %28, align 4
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  br label %176

176:                                              ; preds = %171, %34
  %177 = icmp eq ptr %29, %13
  br i1 %177, label %178, label %26

178:                                              ; preds = %176, %12
  call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !52
  %179 = load i16, ptr %4, align 4
  %180 = add i16 %179, 1
  store i16 %180, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #26, !srcloc !53
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #26, !srcloc !54
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #26, !srcloc !41
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !56
  %181 = load ptr, ptr %2, align 8
  %182 = icmp eq ptr %181, %2
  br i1 %182, label %205, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  br label %185

185:                                              ; preds = %203, %183
  %186 = phi ptr [ %181, %183 ], [ %187, %203 ]
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr i8, ptr %186, i32 16
  %189 = load i32, ptr %188, align 4
  %190 = lshr i32 %189, 16
  %191 = and i32 %190, 32767
  %192 = load ptr, ptr %3, align 4
  %193 = getelementptr inbounds %struct.kmem_cache_node, ptr %192, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %193) #26, !srcloc !17
  %194 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %193, ptr %193, i32 1, ptr elementtype(i32) %193) #26, !srcloc !57
  %195 = getelementptr inbounds %struct.kmem_cache_node, ptr %192, i32 0, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %195) #26, !srcloc !17
  %196 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %195, ptr %195, i32 %191, ptr elementtype(i32) %195) #26, !srcloc !57
  %197 = load i32, ptr %184, align 4
  %198 = and i32 %197, 524288
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %201, label %200, !prof !22

200:                                              ; preds = %185
  call void @call_rcu(ptr noundef %186, ptr noundef nonnull @rcu_free_slab) #26
  br label %203

201:                                              ; preds = %185
  %202 = getelementptr i8, ptr %186, i32 -4
  call fastcc void @__free_slab(ptr noundef %0, ptr noundef %202) #26
  br label %203

203:                                              ; preds = %201, %200
  %204 = icmp eq ptr %187, %2
  br i1 %204, label %205, label %185

205:                                              ; preds = %203, %178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  %206 = getelementptr inbounds %struct.kmem_cache_node, ptr %4, i32 0, i32 1
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = load ptr, ptr %3, align 4
  %211 = getelementptr inbounds %struct.kmem_cache_node, ptr %210, i32 0, i32 3
  %212 = load volatile i32, ptr %211, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %209, %1
  br label %215

215:                                              ; preds = %214, %209, %205
  %216 = phi i32 [ 0, %214 ], [ 1, %209 ], [ 1, %205 ]
  ret i32 %216
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @flush_all_cpus_locked(ptr noundef %0) unnamed_addr #1 {
  tail call void @lockdep_assert_cpus_held() #26
  tail call void @mutex_lock(ptr noundef nonnull @flush_lock) #26
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #27
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %9, label %5

5:                                                ; preds = %29, %1
  %6 = phi i32 [ %3, %1 ], [ %30, %29 ]
  %7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #27
  %8 = icmp ult i32 %7, %6
  br i1 %8, label %42, label %59

9:                                                ; preds = %29, %1
  %10 = phi i32 [ %30, %29 ], [ %3, %1 ]
  %11 = phi i32 [ %31, %29 ], [ %2, %1 ]
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, ptrtoint (ptr @slub_flush to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = load ptr, ptr %0, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = add i32 %13, %17
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %19, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.slub_flush_work, ptr %15, i32 0, i32 2
  store i8 1, ptr %28, align 4
  br label %29

29:                                               ; preds = %33, %27
  %30 = phi i32 [ %10, %27 ], [ %41, %33 ]
  %31 = tail call i32 @cpumask_next(i32 noundef %11, ptr noundef nonnull @__cpu_online_mask) #27
  %32 = icmp ult i32 %31, %30
  br i1 %32, label %9, label %5

33:                                               ; preds = %23, %9
  store i32 -32, ptr %15, align 4
  %34 = getelementptr inbounds %struct.work_struct, ptr %15, i32 0, i32 1
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr inbounds %struct.work_struct, ptr %15, i32 0, i32 1, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.work_struct, ptr %15, i32 0, i32 2
  store ptr @flush_cpu_slab, ptr %36, align 4
  %37 = getelementptr inbounds %struct.slub_flush_work, ptr %15, i32 0, i32 2
  store i8 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.slub_flush_work, ptr %15, i32 0, i32 1
  store ptr %0, ptr %38, align 4
  %39 = load ptr, ptr @system_wq, align 4
  %40 = tail call zeroext i1 @queue_work_on(i32 noundef %11, ptr noundef %39, ptr noundef %15) #26
  %41 = load i32, ptr @nr_cpu_ids, align 4
  br label %29

42:                                               ; preds = %55, %5
  %43 = phi i32 [ %56, %55 ], [ %6, %5 ]
  %44 = phi i32 [ %57, %55 ], [ %7, %5 ]
  %45 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, ptrtoint (ptr @slub_flush to i32)
  %48 = inttoptr i32 %47 to ptr
  %49 = getelementptr inbounds %struct.slub_flush_work, ptr %48, i32 0, i32 2
  %50 = load i8, ptr %49, align 4, !range !10
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = tail call zeroext i1 @flush_work(ptr noundef %48) #26
  %54 = load i32, ptr @nr_cpu_ids, align 4
  br label %55

55:                                               ; preds = %52, %42
  %56 = phi i32 [ %54, %52 ], [ %43, %42 ]
  %57 = tail call i32 @cpumask_next(i32 noundef %44, ptr noundef nonnull @__cpu_online_mask) #27
  %58 = icmp ult i32 %57, %56
  br i1 %58, label %42, label %59

59:                                               ; preds = %55, %5
  tail call void @mutex_unlock(ptr noundef nonnull @flush_lock) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kmem_obj_info(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.slab, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  store ptr %1, ptr %0, align 4
  %6 = getelementptr inbounds %struct.kmem_obj_info, ptr %0, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.kmem_obj_info, ptr %0, i32 0, i32 4
  store ptr %5, ptr %7, align 4
  %8 = tail call ptr @page_address(ptr noundef %2) #26
  %9 = getelementptr inbounds %struct.kmem_cache, ptr %5, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.kmem_cache, ptr %5, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 0, %15
  %17 = getelementptr i8, ptr %1, i32 %16
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi ptr [ %17, %13 ], [ %1, %3 ]
  %20 = tail call ptr @page_address(ptr noundef %2) #26
  %21 = ptrtoint ptr %19 to i32
  %22 = ptrtoint ptr %20 to i32
  %23 = sub i32 %21, %22
  %24 = getelementptr inbounds %struct.kmem_cache, ptr %5, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.kmem_cache, ptr %5, i32 0, i32 5, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 8
  %29 = zext i32 %23 to i64
  %30 = zext i32 %25 to i64
  %31 = mul nuw i64 %29, %30
  %32 = lshr i64 %31, 32
  %33 = trunc i64 %32 to i32
  %34 = sub i32 %23, %33
  %35 = and i32 %27, 255
  %36 = lshr i32 %34, %35
  %37 = add i32 %36, %33
  %38 = and i32 %28, 255
  %39 = lshr i32 %37, %38
  %40 = ptrtoint ptr %1 to i32
  %41 = sub i32 %40, %21
  %42 = getelementptr inbounds %struct.kmem_obj_info, ptr %0, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.kmem_cache, ptr %5, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = mul i32 %39, %44
  %46 = getelementptr i8, ptr %8, i32 %45
  %47 = getelementptr inbounds %struct.kmem_obj_info, ptr %0, i32 0, i32 2
  store ptr %46, ptr %47, align 4
  %48 = icmp ult ptr %46, %8
  br i1 %48, label %61, label %49

49:                                               ; preds = %18
  %50 = getelementptr inbounds %struct.slab, ptr %2, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 32767
  %54 = load i32, ptr %43, align 4
  %55 = mul i32 %53, %54
  %56 = getelementptr i8, ptr %8, i32 %55
  %57 = icmp ult ptr %46, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = urem i32 %45, %54
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %49, %18
  %62 = phi i1 [ true, %49 ], [ true, %18 ], [ %60, %58 ]
  %63 = load i1, ptr @kmem_obj_info.__already_done, align 1
  %64 = xor i1 %63, true
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %67, !prof !11

66:                                               ; preds = %61
  store i1 true, ptr @kmem_obj_info.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 4350, i32 noundef 9, ptr noundef null) #26
  br label %67

67:                                               ; preds = %66, %61
  br i1 %62, label %291, label %68

68:                                               ; preds = %67
  %69 = load i32, ptr %9, align 4
  %70 = and i32 %69, 65536
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %291, label %72

72:                                               ; preds = %68
  %73 = load volatile i32, ptr @slub_debug_enabled, align 4
  %74 = icmp slt i32 %73, 1
  %75 = and i32 %69, 1024
  %76 = icmp eq i32 %75, 0
  %77 = select i1 %74, i1 true, i1 %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.kmem_cache, ptr %5, i32 0, i32 17
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %46, i32 %80
  br label %82

82:                                               ; preds = %78, %72
  %83 = phi ptr [ %81, %78 ], [ %46, %72 ]
  %84 = getelementptr inbounds %struct.kmem_cache, ptr %5, i32 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.kmem_cache, ptr %5, i32 0, i32 15
  %87 = load i32, ptr %86, align 4
  %88 = icmp ult i32 %85, %87
  %89 = add i32 %87, 4
  %90 = select i1 %88, i32 %87, i32 %89
  %91 = getelementptr i8, ptr %83, i32 %90
  %92 = load i32, ptr %91, align 4
  %93 = inttoptr i32 %92 to ptr
  %94 = getelementptr inbounds %struct.kmem_obj_info, ptr %0, i32 0, i32 5
  store ptr %93, ptr %94, align 4
  %95 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 0
  %96 = load i32, ptr %95, align 4
  %97 = inttoptr i32 %96 to ptr
  %98 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 0
  store ptr %97, ptr %98, align 4
  %99 = icmp eq i32 %96, 0
  br i1 %99, label %189, label %100

100:                                              ; preds = %82
  %101 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = inttoptr i32 %102 to ptr
  %104 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 1
  store ptr %103, ptr %104, align 4
  %105 = icmp eq i32 %102, 0
  br i1 %105, label %189, label %106

106:                                              ; preds = %100
  %107 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = inttoptr i32 %108 to ptr
  %110 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 2
  store ptr %109, ptr %110, align 4
  %111 = icmp eq i32 %108, 0
  br i1 %111, label %189, label %112

112:                                              ; preds = %106
  %113 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = inttoptr i32 %114 to ptr
  %116 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 3
  store ptr %115, ptr %116, align 4
  %117 = icmp eq i32 %114, 0
  br i1 %117, label %189, label %118

118:                                              ; preds = %112
  %119 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 4
  %120 = load i32, ptr %119, align 4
  %121 = inttoptr i32 %120 to ptr
  %122 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 4
  store ptr %121, ptr %122, align 4
  %123 = icmp eq i32 %120, 0
  br i1 %123, label %189, label %124

124:                                              ; preds = %118
  %125 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 5
  %126 = load i32, ptr %125, align 4
  %127 = inttoptr i32 %126 to ptr
  %128 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 5
  store ptr %127, ptr %128, align 4
  %129 = icmp eq i32 %126, 0
  br i1 %129, label %189, label %130

130:                                              ; preds = %124
  %131 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = inttoptr i32 %132 to ptr
  %134 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 6
  store ptr %133, ptr %134, align 4
  %135 = icmp eq i32 %132, 0
  br i1 %135, label %189, label %136

136:                                              ; preds = %130
  %137 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 7
  %138 = load i32, ptr %137, align 4
  %139 = inttoptr i32 %138 to ptr
  %140 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 7
  store ptr %139, ptr %140, align 4
  %141 = icmp eq i32 %138, 0
  br i1 %141, label %189, label %142

142:                                              ; preds = %136
  %143 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 8
  %144 = load i32, ptr %143, align 4
  %145 = inttoptr i32 %144 to ptr
  %146 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 8
  store ptr %145, ptr %146, align 4
  %147 = icmp eq i32 %144, 0
  br i1 %147, label %189, label %148

148:                                              ; preds = %142
  %149 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 9
  %150 = load i32, ptr %149, align 4
  %151 = inttoptr i32 %150 to ptr
  %152 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 9
  store ptr %151, ptr %152, align 4
  %153 = icmp eq i32 %150, 0
  br i1 %153, label %189, label %154

154:                                              ; preds = %148
  %155 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 10
  %156 = load i32, ptr %155, align 4
  %157 = inttoptr i32 %156 to ptr
  %158 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 10
  store ptr %157, ptr %158, align 4
  %159 = icmp eq i32 %156, 0
  br i1 %159, label %189, label %160

160:                                              ; preds = %154
  %161 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 11
  %162 = load i32, ptr %161, align 4
  %163 = inttoptr i32 %162 to ptr
  %164 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 11
  store ptr %163, ptr %164, align 4
  %165 = icmp eq i32 %162, 0
  br i1 %165, label %189, label %166

166:                                              ; preds = %160
  %167 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 12
  %168 = load i32, ptr %167, align 4
  %169 = inttoptr i32 %168 to ptr
  %170 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 12
  store ptr %169, ptr %170, align 4
  %171 = icmp eq i32 %168, 0
  br i1 %171, label %189, label %172

172:                                              ; preds = %166
  %173 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 13
  %174 = load i32, ptr %173, align 4
  %175 = inttoptr i32 %174 to ptr
  %176 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 13
  store ptr %175, ptr %176, align 4
  %177 = icmp eq i32 %174, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %172
  %179 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 14
  %180 = load i32, ptr %179, align 4
  %181 = inttoptr i32 %180 to ptr
  %182 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 14
  store ptr %181, ptr %182, align 4
  %183 = icmp eq i32 %180, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %178
  %185 = getelementptr %struct.track, ptr %91, i32 0, i32 1, i32 15
  %186 = load i32, ptr %185, align 4
  %187 = inttoptr i32 %186 to ptr
  %188 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 6, i32 15
  store ptr %187, ptr %188, align 4
  br label %189

189:                                              ; preds = %184, %178, %172, %166, %160, %154, %148, %142, %136, %130, %124, %118, %112, %106, %100, %82
  %190 = load i32, ptr %84, align 4
  %191 = load i32, ptr %86, align 4
  %192 = icmp ult i32 %190, %191
  %193 = add i32 %191, 4
  %194 = select i1 %192, i32 %191, i32 %193
  %195 = getelementptr i8, ptr %83, i32 %194
  %196 = getelementptr %struct.track, ptr %195, i32 1
  %197 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 0
  %198 = load i32, ptr %197, align 4
  %199 = inttoptr i32 %198 to ptr
  %200 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 0
  store ptr %199, ptr %200, align 4
  %201 = icmp eq i32 %198, 0
  br i1 %201, label %291, label %202

202:                                              ; preds = %189
  %203 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 1
  %204 = load i32, ptr %203, align 4
  %205 = inttoptr i32 %204 to ptr
  %206 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 1
  store ptr %205, ptr %206, align 4
  %207 = icmp eq i32 %204, 0
  br i1 %207, label %291, label %208

208:                                              ; preds = %202
  %209 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 2
  %210 = load i32, ptr %209, align 4
  %211 = inttoptr i32 %210 to ptr
  %212 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 2
  store ptr %211, ptr %212, align 4
  %213 = icmp eq i32 %210, 0
  br i1 %213, label %291, label %214

214:                                              ; preds = %208
  %215 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 3
  %216 = load i32, ptr %215, align 4
  %217 = inttoptr i32 %216 to ptr
  %218 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 3
  store ptr %217, ptr %218, align 4
  %219 = icmp eq i32 %216, 0
  br i1 %219, label %291, label %220

220:                                              ; preds = %214
  %221 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 4
  %222 = load i32, ptr %221, align 4
  %223 = inttoptr i32 %222 to ptr
  %224 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 4
  store ptr %223, ptr %224, align 4
  %225 = icmp eq i32 %222, 0
  br i1 %225, label %291, label %226

226:                                              ; preds = %220
  %227 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 5
  %228 = load i32, ptr %227, align 4
  %229 = inttoptr i32 %228 to ptr
  %230 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 5
  store ptr %229, ptr %230, align 4
  %231 = icmp eq i32 %228, 0
  br i1 %231, label %291, label %232

232:                                              ; preds = %226
  %233 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 6
  %234 = load i32, ptr %233, align 4
  %235 = inttoptr i32 %234 to ptr
  %236 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 6
  store ptr %235, ptr %236, align 4
  %237 = icmp eq i32 %234, 0
  br i1 %237, label %291, label %238

238:                                              ; preds = %232
  %239 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 7
  %240 = load i32, ptr %239, align 4
  %241 = inttoptr i32 %240 to ptr
  %242 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 7
  store ptr %241, ptr %242, align 4
  %243 = icmp eq i32 %240, 0
  br i1 %243, label %291, label %244

244:                                              ; preds = %238
  %245 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 8
  %246 = load i32, ptr %245, align 4
  %247 = inttoptr i32 %246 to ptr
  %248 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 8
  store ptr %247, ptr %248, align 4
  %249 = icmp eq i32 %246, 0
  br i1 %249, label %291, label %250

250:                                              ; preds = %244
  %251 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 9
  %252 = load i32, ptr %251, align 4
  %253 = inttoptr i32 %252 to ptr
  %254 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 9
  store ptr %253, ptr %254, align 4
  %255 = icmp eq i32 %252, 0
  br i1 %255, label %291, label %256

256:                                              ; preds = %250
  %257 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 10
  %258 = load i32, ptr %257, align 4
  %259 = inttoptr i32 %258 to ptr
  %260 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 10
  store ptr %259, ptr %260, align 4
  %261 = icmp eq i32 %258, 0
  br i1 %261, label %291, label %262

262:                                              ; preds = %256
  %263 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 11
  %264 = load i32, ptr %263, align 4
  %265 = inttoptr i32 %264 to ptr
  %266 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 11
  store ptr %265, ptr %266, align 4
  %267 = icmp eq i32 %264, 0
  br i1 %267, label %291, label %268

268:                                              ; preds = %262
  %269 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 12
  %270 = load i32, ptr %269, align 4
  %271 = inttoptr i32 %270 to ptr
  %272 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 12
  store ptr %271, ptr %272, align 4
  %273 = icmp eq i32 %270, 0
  br i1 %273, label %291, label %274

274:                                              ; preds = %268
  %275 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 13
  %276 = load i32, ptr %275, align 4
  %277 = inttoptr i32 %276 to ptr
  %278 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 13
  store ptr %277, ptr %278, align 4
  %279 = icmp eq i32 %276, 0
  br i1 %279, label %291, label %280

280:                                              ; preds = %274
  %281 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 14
  %282 = load i32, ptr %281, align 4
  %283 = inttoptr i32 %282 to ptr
  %284 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 14
  store ptr %283, ptr %284, align 4
  %285 = icmp eq i32 %282, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %280
  %287 = getelementptr %struct.track, ptr %196, i32 0, i32 1, i32 15
  %288 = load i32, ptr %287, align 4
  %289 = inttoptr i32 %288 to ptr
  %290 = getelementptr %struct.kmem_obj_info, ptr %0, i32 0, i32 7, i32 15
  store ptr %289, ptr %290, align 4
  br label %291

291:                                              ; preds = %286, %280, %274, %268, %262, %256, %250, %244, %238, %232, %226, %220, %214, %208, %202, %189, %68, %67
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @setup_slub_min_order(ptr noundef %0) #3 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = call i32 @get_option(ptr noundef nonnull %2, ptr noundef nonnull @slub_min_order) #26
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @setup_slub_max_order(ptr noundef %0) #3 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = call i32 @get_option(ptr noundef nonnull %2, ptr noundef nonnull @slub_max_order) #26
  %4 = load i32, ptr @slub_max_order, align 4
  %5 = call i32 @llvm.umin.i32(i32 %4, i32 11)
  store i32 %5, ptr @slub_max_order, align 4
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @setup_slub_min_objects(ptr noundef %0) #3 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = call i32 @get_option(ptr noundef nonnull %2, ptr noundef nonnull @slub_min_objects) #26
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @__kmalloc(i32 noundef %0, i32 noundef %1) #10 {
  %3 = icmp ugt i32 %0, 8192
  br i1 %3, label %4, label %10, !prof !11

4:                                                ; preds = %2
  %5 = add i32 %0, -1
  %6 = lshr i32 %5, 12
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 false) #26, !range !58
  %8 = sub nuw nsw i32 32, %7
  %9 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef %0, i32 noundef %1, i32 noundef %8) #28
  br label %154

10:                                               ; preds = %2
  %11 = tail call ptr @kmalloc_slab(i32 noundef %0, i32 noundef %1) #26
  %12 = icmp ult ptr %11, inttoptr (i32 17 to ptr)
  br i1 %12, label %154, label %13, !prof !11

13:                                               ; preds = %10
  %14 = tail call ptr @llvm.returnaddress(i32 0)
  %15 = ptrtoint ptr %14 to i32
  %16 = load i32, ptr @gfp_allowed_mask, align 4
  %17 = and i32 %16, %1
  %18 = tail call i32 @should_failslab(ptr noundef %11, i32 noundef %17) #26
  %19 = icmp ne i32 %18, 0
  %20 = icmp eq ptr %11, null
  %21 = or i1 %20, %19
  br i1 %21, label %135, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr %11, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #19, !srcloc !12
  %28 = add i32 %27, %24
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %29, i32 0, i32 1
  %31 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !13
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %29, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp ne ptr %32, null
  %36 = icmp ne ptr %34, null
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %58, !prof !14

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.kmem_cache, ptr %11, i32 0, i32 6
  br label %40

40:                                               ; preds = %75, %38
  %41 = phi ptr [ %32, %38 ], [ %85, %75 ]
  %42 = phi i32 [ %31, %38 ], [ %84, %75 ]
  %43 = load i32, ptr %39, align 4
  %44 = getelementptr i8, ptr %41, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %47 = load ptr, ptr %11, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #19, !srcloc !12
  %52 = add i32 %51, %48
  %53 = inttoptr i32 %52 to ptr
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %41
  br i1 %55, label %61, label %75

56:                                               ; preds = %75
  %57 = inttoptr i32 %81 to ptr
  br label %58

58:                                               ; preds = %56, %22
  %59 = phi ptr [ %29, %22 ], [ %57, %56 ]
  %60 = tail call fastcc ptr @___slab_alloc(ptr noundef %11, i32 noundef %1, i32 noundef %15, ptr noundef %59) #26
  br label %91

61:                                               ; preds = %40
  %62 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %47, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  %64 = add i32 %51, %63
  %65 = inttoptr i32 %64 to ptr
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, %42
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = inttoptr i32 %52 to ptr
  %70 = inttoptr i32 %64 to ptr
  %71 = inttoptr i32 %45 to ptr
  store ptr %71, ptr %69, align 4
  %72 = add i32 %42, 1
  store i32 %72, ptr %70, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #26, !srcloc !16
  %73 = load i32, ptr %39, align 4
  %74 = getelementptr i8, ptr %71, i32 %73
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #26, !srcloc !17
  br label %91

75:                                               ; preds = %61, %40
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #26, !srcloc !16
  %76 = load ptr, ptr %11, align 4
  %77 = ptrtoint ptr %76 to i32
  %78 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %79 = inttoptr i32 %78 to ptr
  %80 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %79) #19, !srcloc !12
  %81 = add i32 %80, %77
  %82 = inttoptr i32 %81 to ptr
  %83 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %82, i32 0, i32 1
  %84 = load volatile i32, ptr %83, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !13
  %85 = load ptr, ptr %82, align 4
  %86 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %82, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = icmp ne ptr %85, null
  %89 = icmp ne ptr %87, null
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %40, label %56, !prof !14

91:                                               ; preds = %68, %58
  %92 = phi ptr [ %41, %68 ], [ %60, %58 ]
  %93 = load volatile i32, ptr @init_on_free, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %110, !prof !11

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.kmem_cache, ptr %11, i32 0, i32 14
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.kmem_cache, ptr %11, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 526336
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %110, !prof !11

104:                                              ; preds = %99
  %105 = icmp eq ptr %92, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.kmem_cache, ptr %11, i32 0, i32 6
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr i8, ptr %92, i32 %108
  store i32 0, ptr %109, align 1
  br label %110

110:                                              ; preds = %106, %104, %99, %95, %91
  %111 = load volatile i32, ptr @init_on_alloc, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %125, !prof !11

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.kmem_cache, ptr %11, i32 0, i32 14
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %135

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.kmem_cache, ptr %11, i32 0, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 526336
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %117
  %123 = and i32 %1, 256
  %124 = icmp ne i32 %123, 0
  br label %128

125:                                              ; preds = %110
  %126 = and i32 %1, 256
  %127 = icmp ne i32 %126, 0
  br label %128

128:                                              ; preds = %125, %122, %117
  %129 = phi i1 [ %124, %122 ], [ %127, %125 ], [ true, %117 ]
  %130 = icmp ne ptr %92, null
  %131 = and i1 %130, %129
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.kmem_cache, ptr %11, i32 0, i32 4
  %134 = load i32, ptr %133, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %92, i8 0, i32 %134, i1 false) #26
  br label %135

135:                                              ; preds = %132, %128, %113, %13
  %136 = phi ptr [ null, %13 ], [ %92, %132 ], [ %92, %128 ], [ %92, %113 ]
  %137 = getelementptr inbounds %struct.kmem_cache, ptr %11, i32 0, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kmalloc, i32 0, i32 1), align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  %142 = tail call ptr @llvm.thread.pointer() #26
  %143 = getelementptr inbounds %struct.thread_info, ptr %142, i32 0, i32 2
  %144 = load i32, ptr %143, align 8
  %145 = lshr i32 %144, 5
  %146 = getelementptr i32, ptr @__cpu_online_mask, i32 %145
  %147 = load volatile i32, ptr %146, align 4
  %148 = and i32 %144, 31
  %149 = shl nuw i32 1, %148
  %150 = and i32 %149, %147
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %141
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !20
  %153 = tail call i32 @__traceiter_kmalloc(ptr noundef null, i32 noundef %15, ptr noundef %136, i32 noundef %0, i32 noundef %138, i32 noundef %1) #26
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !21
  br label %154

154:                                              ; preds = %152, %141, %135, %10, %4
  %155 = phi ptr [ %9, %4 ], [ %11, %10 ], [ %136, %135 ], [ %136, %141 ], [ %136, %152 ]
  ret ptr %155
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmalloc_slab(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @__ksize(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, inttoptr (i32 16 to ptr)
  br i1 %2, label %54, label %3, !prof !11

3:                                                ; preds = %1
  %4 = load ptr, ptr @mem_map, align 4
  %5 = ptrtoint ptr %0 to i32
  %6 = add i32 %5, 1073741824
  %7 = lshr i32 %6, 12
  %8 = getelementptr %struct.page, ptr %4, i32 %7, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !22

12:                                               ; preds = %3
  %13 = add i32 %9, -1
  br label %17

14:                                               ; preds = %3
  %15 = getelementptr %struct.page, ptr %4, i32 %7
  %16 = ptrtoint ptr %15 to i32
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i32 [ %13, %12 ], [ %16, %14 ]
  %19 = inttoptr i32 %18 to ptr
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 512
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35, !prof !11

23:                                               ; preds = %17
  %24 = load volatile i32, ptr %19, align 4
  %25 = and i32 %24, 65536
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr %struct.page, ptr %19, i32 1, i32 1
  %29 = getelementptr inbounds %struct.anon.8, ptr %28, i32 0, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i32 [ %31, %27 ], [ 0, %23 ]
  %34 = shl i32 4096, %33
  br label %54

35:                                               ; preds = %17
  %36 = getelementptr inbounds %struct.slab, ptr %19, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.kmem_cache, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 3072
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.kmem_cache, ptr %37, i32 0, i32 4
  br label %51

44:                                               ; preds = %35
  %45 = and i32 %39, 589824
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.kmem_cache, ptr %37, i32 0, i32 15
  br label %51

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.kmem_cache, ptr %37, i32 0, i32 3
  br label %51

51:                                               ; preds = %49, %47, %42
  %52 = phi ptr [ %43, %42 ], [ %48, %47 ], [ %50, %49 ]
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %32, %1
  %55 = phi i32 [ %34, %32 ], [ %53, %51 ], [ 0, %1 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kfree(ptr noundef %0) #1 {
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %3 = ptrtoint ptr %2 to i32
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kfree, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #26
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !59
  %18 = tail call i32 @__traceiter_kfree(ptr noundef null, i32 noundef %3, ptr noundef %0) #26
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !60
  br label %19

19:                                               ; preds = %17, %6, %1
  %20 = icmp ult ptr %0, inttoptr (i32 17 to ptr)
  br i1 %20, label %297, label %21, !prof !11

21:                                               ; preds = %19
  %22 = load ptr, ptr @mem_map, align 4
  %23 = ptrtoint ptr %0 to i32
  %24 = add i32 %23, 1073741824
  %25 = lshr i32 %24, 12
  %26 = getelementptr %struct.page, ptr %22, i32 %25, i32 1
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30, !prof !22

30:                                               ; preds = %21
  %31 = add i32 %27, -1
  br label %35

32:                                               ; preds = %21
  %33 = getelementptr %struct.page, ptr %22, i32 %25
  %34 = ptrtoint ptr %33 to i32
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i32 [ %31, %30 ], [ %34, %32 ]
  %37 = inttoptr i32 %36 to ptr
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 512
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42, !prof !11

41:                                               ; preds = %35
  tail call fastcc void @free_large_kmalloc(ptr noundef %37, ptr noundef %0)
  br label %297

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.slab, ptr %37, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.kmem_cache, ptr %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.kmem_cache, ptr %44, i32 0, i32 14
  %47 = getelementptr inbounds %struct.kmem_cache, ptr %44, i32 0, i32 1
  %48 = getelementptr inbounds %struct.kmem_cache, ptr %44, i32 0, i32 4
  %49 = getelementptr inbounds %struct.kmem_cache, ptr %44, i32 0, i32 17
  %50 = getelementptr inbounds %struct.kmem_cache, ptr %44, i32 0, i32 15
  %51 = getelementptr inbounds %struct.kmem_cache, ptr %44, i32 0, i32 3
  br label %52

52:                                               ; preds = %84, %42
  %53 = phi ptr [ null, %42 ], [ %90, %84 ]
  %54 = phi ptr [ null, %42 ], [ %55, %84 ]
  %55 = phi ptr [ %0, %42 ], [ %59, %84 ]
  %56 = load i32, ptr %45, align 4
  %57 = getelementptr i8, ptr %55, i32 %56
  %58 = load i32, ptr %57, align 4
  %59 = inttoptr i32 %58 to ptr
  %60 = load volatile i32, ptr @init_on_free, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %84, !prof !11

62:                                               ; preds = %52
  %63 = load ptr, ptr %46, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load i32, ptr %47, align 4
  %67 = and i32 %66, 526336
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load i32, ptr %48, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %55, i8 0, i32 %70, i1 false) #26
  %71 = load i32, ptr %47, align 4
  %72 = and i32 %71, 1024
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = load i32, ptr %49, align 4
  br label %76

76:                                               ; preds = %74, %69
  %77 = phi i32 [ %75, %74 ], [ 0, %69 ]
  %78 = load i32, ptr %50, align 4
  %79 = getelementptr i8, ptr %55, i32 %78
  %80 = load i32, ptr %51, align 4
  %81 = add i32 %78, %77
  %82 = sub i32 %80, %81
  tail call void @llvm.memset.p0.i32(ptr align 1 %79, i8 0, i32 %82, i1 false) #26
  %83 = load i32, ptr %45, align 4
  br label %84

84:                                               ; preds = %76, %65, %62, %52
  %85 = phi i32 [ %56, %52 ], [ %56, %62 ], [ %56, %65 ], [ %83, %76 ]
  %86 = ptrtoint ptr %55 to i32
  %87 = add i32 %85, %86
  %88 = inttoptr i32 %87 to ptr
  store ptr %54, ptr %88, align 4
  %89 = icmp eq ptr %53, null
  %90 = select i1 %89, ptr %55, ptr %53
  %91 = icmp eq ptr %55, %0
  br i1 %91, label %92, label %52

92:                                               ; preds = %84
  %93 = icmp eq ptr %0, null
  br i1 %93, label %297, label %94

94:                                               ; preds = %92
  %95 = select i1 %89, ptr %0, ptr %53
  %96 = icmp eq ptr %95, %0
  %97 = select i1 %96, ptr %0, ptr %90
  %98 = load ptr, ptr %44, align 4
  %99 = ptrtoint ptr %98 to i32
  %100 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %101 = inttoptr i32 %100 to ptr
  %102 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %101) #19, !srcloc !12
  %103 = add i32 %102, %99
  %104 = inttoptr i32 %103 to ptr
  %105 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %104, i32 0, i32 1
  %106 = load volatile i32, ptr %105, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !25
  %107 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %104, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, %37
  br i1 %109, label %110, label %153, !prof !22

110:                                              ; preds = %94
  %111 = ptrtoint ptr %97 to i32
  br label %112

112:                                              ; preds = %140, %110
  %113 = phi i32 [ %106, %110 ], [ %149, %140 ]
  %114 = phi ptr [ %104, %110 ], [ %147, %140 ]
  %115 = load volatile ptr, ptr %114, align 4
  %116 = load i32, ptr %45, align 4
  %117 = add i32 %116, %111
  %118 = inttoptr i32 %117 to ptr
  store ptr %115, ptr %118, align 4
  %119 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %120 = load ptr, ptr %44, align 4
  %121 = ptrtoint ptr %120 to i32
  %122 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %123 = inttoptr i32 %122 to ptr
  %124 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %123) #19, !srcloc !12
  %125 = add i32 %124, %121
  %126 = inttoptr i32 %125 to ptr
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, %115
  br i1 %128, label %129, label %140

129:                                              ; preds = %112
  %130 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %120, i32 0, i32 1
  %131 = ptrtoint ptr %130 to i32
  %132 = add i32 %124, %131
  %133 = inttoptr i32 %132 to ptr
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, %113
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = inttoptr i32 %125 to ptr
  %138 = inttoptr i32 %132 to ptr
  store ptr %0, ptr %137, align 4
  %139 = add i32 %113, 1
  store i32 %139, ptr %138, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %119) #26, !srcloc !16
  br label %297

140:                                              ; preds = %129, %112
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %119) #26, !srcloc !16
  %141 = load ptr, ptr %44, align 4
  %142 = ptrtoint ptr %141 to i32
  %143 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %144 = inttoptr i32 %143 to ptr
  %145 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %144) #19, !srcloc !12
  %146 = add i32 %145, %142
  %147 = inttoptr i32 %146 to ptr
  %148 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %147, i32 0, i32 1
  %149 = load volatile i32, ptr %148, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !25
  %150 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %147, i32 0, i32 2
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, %37
  br i1 %152, label %112, label %153, !prof !22

153:                                              ; preds = %140, %94
  %154 = load volatile i32, ptr @slub_debug_enabled, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = load i32, ptr %47, align 4
  %158 = and i32 %157, 2166016
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = tail call fastcc i32 @free_debug_processing(ptr noundef %44, ptr noundef %37, ptr noundef nonnull %0, ptr noundef %97, i32 noundef 1, i32 noundef %3) #26
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %297, label %163

163:                                              ; preds = %160, %156, %153
  %164 = getelementptr inbounds %struct.slab, ptr %37, i32 0, i32 3
  %165 = getelementptr inbounds %struct.slab, ptr %37, i32 0, i32 4
  %166 = ptrtoint ptr %97 to i32
  %167 = getelementptr %struct.kmem_cache, ptr %44, i32 0, i32 23, i32 0
  br label %168

168:                                              ; preds = %230, %163
  %169 = phi ptr [ null, %163 ], [ %206, %230 ]
  %170 = phi i32 [ 0, %163 ], [ %207, %230 ]
  %171 = icmp eq ptr %169, null
  br i1 %171, label %173, label %172, !prof !22

172:                                              ; preds = %168
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %169, i32 noundef %170) #26
  br label %173

173:                                              ; preds = %172, %168
  %174 = load ptr, ptr %164, align 4
  %175 = load i32, ptr %165, align 4
  %176 = load i32, ptr %45, align 4
  %177 = add i32 %176, %166
  %178 = inttoptr i32 %177 to ptr
  store ptr %174, ptr %178, align 4
  %179 = add i32 %175, 65535
  %180 = and i32 %179, 65535
  %181 = and i32 %175, -65536
  %182 = or i32 %180, %181
  %183 = icmp ne i32 %180, 0
  %184 = icmp ne ptr %174, null
  %185 = and i1 %184, %183
  %186 = icmp slt i32 %175, 0
  %187 = select i1 %185, i1 true, i1 %186
  br i1 %187, label %204, label %188

188:                                              ; preds = %173
  %189 = load volatile i32, ptr @slub_debug_enabled, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load i32, ptr %47, align 4
  %193 = and i32 %192, 2166016
  %194 = icmp eq i32 %193, 0
  br label %195

195:                                              ; preds = %191, %188
  %196 = phi i1 [ %194, %191 ], [ true, %188 ]
  %197 = xor i1 %196, true
  %198 = or i1 %184, %197
  br i1 %198, label %201, label %199

199:                                              ; preds = %195
  %200 = or i32 %182, -2147483648
  br label %204

201:                                              ; preds = %195
  %202 = load ptr, ptr %167, align 4
  %203 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %202) #26
  br label %204

204:                                              ; preds = %201, %199, %173
  %205 = phi i32 [ %182, %173 ], [ %182, %201 ], [ %200, %199 ]
  %206 = phi ptr [ null, %173 ], [ %202, %201 ], [ null, %199 ]
  %207 = phi i32 [ %170, %173 ], [ %203, %201 ], [ %170, %199 ]
  %208 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !26
  br label %209

209:                                              ; preds = %223, %204
  %210 = load volatile i32, ptr %37, align 4
  %211 = and i32 %210, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %218, !prof !27

213:                                              ; preds = %209
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #26, !srcloc !17
  %214 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #26, !srcloc !28
  %215 = extractvalue { i32, i32, i32 } %214, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !29
  %216 = and i32 %215, 1
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %224, label %218, !prof !22

218:                                              ; preds = %213, %209
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !30
  br label %219

219:                                              ; preds = %219, %218
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !31
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !32
  %220 = load volatile i32, ptr %37, align 4
  %221 = and i32 %220, 1
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %219

223:                                              ; preds = %219
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !33
  br label %209

224:                                              ; preds = %213
  %225 = load ptr, ptr %164, align 4
  %226 = icmp eq ptr %225, %174
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32, ptr %165, align 4
  %229 = icmp eq i32 %228, %175
  br i1 %229, label %233, label %230

230:                                              ; preds = %227, %224
  %231 = load volatile i32, ptr %37, align 4
  %232 = and i32 %231, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %232, ptr %37, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %208) #26, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !36
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !37
  br label %168

233:                                              ; preds = %227
  store ptr %0, ptr %164, align 4
  store i32 %205, ptr %165, align 4
  %234 = load volatile i32, ptr %37, align 4
  %235 = and i32 %234, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %235, ptr %37, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %208) #26, !srcloc !16
  %236 = icmp eq ptr %206, null
  br i1 %236, label %237, label %241, !prof !22

237:                                              ; preds = %233
  br i1 %186, label %297, label %238, !prof !22

238:                                              ; preds = %237
  %239 = icmp sgt i32 %205, -1
  br i1 %239, label %297, label %240

240:                                              ; preds = %238
  tail call fastcc void @put_cpu_partial(ptr noundef %44, ptr noundef %37, i32 noundef 1) #26
  br label %297

241:                                              ; preds = %233
  %242 = and i32 %205, 65535
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.kmem_cache_node, ptr %206, i32 0, i32 1
  %246 = load i32, ptr %245, align 4
  %247 = getelementptr inbounds %struct.kmem_cache, ptr %44, i32 0, i32 2
  %248 = load i32, ptr %247, align 4
  %249 = icmp ult i32 %246, %248
  br i1 %249, label %250, label %277, !prof !22

250:                                              ; preds = %244, %241
  %251 = load volatile i32, ptr @slub_debug_enabled, align 4
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %276

253:                                              ; preds = %250
  %254 = load i32, ptr %47, align 4
  %255 = and i32 %254, 2166016
  %256 = icmp eq i32 %255, 0
  %257 = or i1 %184, %256
  br i1 %257, label %276, label %258, !prof !38

258:                                              ; preds = %253
  %259 = and i32 %254, 65536
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %267, label %261

261:                                              ; preds = %258
  %262 = getelementptr inbounds %struct.slab, ptr %37, i32 0, i32 1
  %263 = getelementptr inbounds %struct.slab, ptr %37, i32 0, i32 1, i32 0, i32 1
  %264 = load ptr, ptr %263, align 4
  %265 = load ptr, ptr %262, align 4
  %266 = getelementptr inbounds %struct.list_head, ptr %265, i32 0, i32 1
  store ptr %264, ptr %266, align 4
  store volatile ptr %265, ptr %264, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %262, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %263, align 4
  br label %267

267:                                              ; preds = %261, %258
  %268 = getelementptr inbounds %struct.kmem_cache_node, ptr %206, i32 0, i32 1
  %269 = load i32, ptr %268, align 4
  %270 = add i32 %269, 1
  store i32 %270, ptr %268, align 4
  %271 = getelementptr inbounds %struct.kmem_cache_node, ptr %206, i32 0, i32 2
  %272 = getelementptr inbounds %struct.kmem_cache_node, ptr %206, i32 0, i32 2, i32 1
  %273 = load ptr, ptr %272, align 4
  %274 = getelementptr inbounds %struct.slab, ptr %37, i32 0, i32 1
  store ptr %274, ptr %272, align 4
  store ptr %271, ptr %274, align 4
  %275 = getelementptr inbounds %struct.slab, ptr %37, i32 0, i32 1, i32 0, i32 1
  store ptr %273, ptr %275, align 4
  store volatile ptr %274, ptr %273, align 4
  br label %276

276:                                              ; preds = %267, %253, %250
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %206, i32 noundef %207) #26
  br label %297

277:                                              ; preds = %244
  br i1 %184, label %278, label %286

278:                                              ; preds = %277
  %279 = getelementptr inbounds %struct.slab, ptr %37, i32 0, i32 1
  %280 = getelementptr inbounds %struct.slab, ptr %37, i32 0, i32 1, i32 0, i32 1
  %281 = load ptr, ptr %280, align 4
  %282 = load ptr, ptr %279, align 4
  %283 = getelementptr inbounds %struct.list_head, ptr %282, i32 0, i32 1
  store ptr %281, ptr %283, align 4
  store volatile ptr %282, ptr %281, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %279, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %280, align 4
  %284 = load i32, ptr %245, align 4
  %285 = add i32 %284, -1
  store i32 %285, ptr %245, align 4
  br label %296

286:                                              ; preds = %277
  %287 = load i32, ptr %47, align 4
  %288 = and i32 %287, 65536
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %296, label %290

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.slab, ptr %37, i32 0, i32 1
  %292 = getelementptr inbounds %struct.slab, ptr %37, i32 0, i32 1, i32 0, i32 1
  %293 = load ptr, ptr %292, align 4
  %294 = load ptr, ptr %291, align 4
  %295 = getelementptr inbounds %struct.list_head, ptr %294, i32 0, i32 1
  store ptr %293, ptr %295, align 4
  store volatile ptr %294, ptr %293, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %291, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %292, align 4
  br label %296

296:                                              ; preds = %290, %286, %278
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %206, i32 noundef %207) #26
  tail call fastcc void @discard_slab(ptr noundef %44, ptr noundef %37) #26
  br label %297

297:                                              ; preds = %296, %276, %240, %238, %237, %160, %136, %92, %41, %19
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_large_kmalloc(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = load volatile i32, ptr %0, align 4
  %4 = and i32 %3, 65536
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %8 = getelementptr inbounds %struct.anon.8, ptr %7, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ 0, %2 ]
  %13 = icmp eq i32 %12, 0
  %14 = load i1, ptr @free_large_kmalloc.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !11

17:                                               ; preds = %11
  store i1 true, ptr @free_large_kmalloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3542, i32 noundef 9, ptr noundef null) #26
  br label %18

18:                                               ; preds = %17, %11
  br i1 %13, label %19, label %23

19:                                               ; preds = %18
  %20 = load i1, ptr @free_large_kmalloc.__already_done.78, align 1
  br i1 %20, label %23, label %21, !prof !22

21:                                               ; preds = %19
  store i1 true, ptr @free_large_kmalloc.__already_done.78, align 1
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %1) #25
  br label %23

23:                                               ; preds = %21, %19, %18
  %24 = shl i32 -4096, %12
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 6, i32 noundef %24) #26
  tail call void @__free_pages(ptr noundef %0, i32 noundef %12) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kmem_cache_shrink(ptr noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca [32 x %struct.list_head], align 4
  tail call void @cpus_read_lock() #26
  tail call fastcc void @flush_all_cpus_locked(ptr noundef %0) #26
  tail call void @cpus_read_unlock() #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %3, i8 0, i32 256, i1 false) #26, !annotation !9
  %4 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %5 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %105, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store volatile ptr %2, ptr %2, align 8
  store ptr %2, ptr %9, align 4
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %14, %10 ]
  %12 = getelementptr %struct.list_head, ptr %3, i32 %11
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr %struct.list_head, ptr %3, i32 %11, i32 1
  store ptr %12, ptr %13, align 4
  %14 = add nuw nsw i32 %11, 1
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %16, label %10

16:                                               ; preds = %10
  %17 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %6) #26
  %18 = getelementptr inbounds %struct.kmem_cache_node, ptr %6, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %61, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.kmem_cache_node, ptr %6, i32 0, i32 1
  %23 = getelementptr %struct.list_head, ptr %3, i32 -1
  br label %24

24:                                               ; preds = %59, %21
  %25 = phi ptr [ %19, %21 ], [ %26, %59 ]
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %25, i32 16
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 32767
  %31 = and i32 %28, 65535
  %32 = sub nsw i32 %30, %31
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !61
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %35, !prof !11

34:                                               ; preds = %24
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/slub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4609, 0\0A.popsection", ""() #26, !srcloc !62
  unreachable

35:                                               ; preds = %24
  %36 = load i32, ptr %27, align 4
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 32767
  %39 = icmp eq i32 %32, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %25, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %43, ptr %42, align 4
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %25, ptr %46, align 4
  store ptr %45, ptr %25, align 4
  store ptr %2, ptr %41, align 4
  store volatile ptr %25, ptr %2, align 8
  %47 = load i32, ptr %22, align 4
  %48 = add i32 %47, -1
  store i32 %48, ptr %22, align 4
  br label %59

49:                                               ; preds = %35
  %50 = icmp ult i32 %32, 33
  br i1 %50, label %51, label %59

51:                                               ; preds = %49
  %52 = getelementptr %struct.list_head, ptr %23, i32 %32
  %53 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %25, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  %57 = load ptr, ptr %52, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %25, ptr %58, align 4
  store ptr %57, ptr %25, align 4
  store ptr %52, ptr %53, align 4
  store volatile ptr %25, ptr %52, align 4
  br label %59

59:                                               ; preds = %51, %49, %40
  %60 = icmp eq ptr %26, %18
  br i1 %60, label %61, label %24

61:                                               ; preds = %59, %16
  br label %62

62:                                               ; preds = %73, %61
  %63 = phi i32 [ %74, %73 ], [ 31, %61 ]
  %64 = getelementptr %struct.list_head, ptr %3, i32 %63
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %64
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %18, align 4
  %69 = getelementptr %struct.list_head, ptr %3, i32 %63, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  store ptr %18, ptr %71, align 4
  store ptr %65, ptr %18, align 4
  store ptr %68, ptr %70, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %70, ptr %72, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = add nsw i32 %63, -1
  %75 = icmp eq i32 %63, 0
  br i1 %75, label %76, label %62

76:                                               ; preds = %73
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %6, i32 noundef %17) #26
  %77 = load ptr, ptr %2, align 8
  %78 = icmp eq ptr %77, %2
  br i1 %78, label %99, label %79

79:                                               ; preds = %97, %76
  %80 = phi ptr [ %81, %97 ], [ %77, %76 ]
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %80, i32 16
  %83 = load i32, ptr %82, align 4
  %84 = lshr i32 %83, 16
  %85 = and i32 %84, 32767
  %86 = load ptr, ptr %4, align 4
  %87 = getelementptr inbounds %struct.kmem_cache_node, ptr %86, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #26, !srcloc !17
  %88 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #26, !srcloc !57
  %89 = getelementptr inbounds %struct.kmem_cache_node, ptr %86, i32 0, i32 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #26, !srcloc !17
  %90 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %89, ptr %89, i32 %85, ptr elementtype(i32) %89) #26, !srcloc !57
  %91 = load i32, ptr %5, align 4
  %92 = and i32 %91, 524288
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94, !prof !22

94:                                               ; preds = %79
  call void @call_rcu(ptr noundef %80, ptr noundef nonnull @rcu_free_slab) #26
  br label %97

95:                                               ; preds = %79
  %96 = getelementptr i8, ptr %80, i32 -4
  call fastcc void @__free_slab(ptr noundef %0, ptr noundef %96) #26
  br label %97

97:                                               ; preds = %95, %94
  %98 = icmp eq ptr %81, %2
  br i1 %98, label %99, label %79

99:                                               ; preds = %97, %76
  %100 = load ptr, ptr %4, align 4
  %101 = getelementptr inbounds %struct.kmem_cache_node, ptr %100, i32 0, i32 3
  %102 = load volatile i32, ptr %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i32
  br label %105

105:                                              ; preds = %99, %1
  %106 = phi i32 [ 0, %1 ], [ %104, %99 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  ret i32 %106
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @kmem_cache_init() local_unnamed_addr #3 section ".init.text" {
  %1 = load volatile i32, ptr @slub_debug_enabled, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 @no_hash_pointers_enable(ptr noundef null) #26
  br label %5

5:                                                ; preds = %3, %0
  store ptr @kmem_cache_init.boot_kmem_cache_node, ptr @kmem_cache_node, align 4
  store ptr @kmem_cache_init.boot_kmem_cache, ptr @kmem_cache, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull @slab_nodes) #26
  %6 = load ptr, ptr @kmem_cache_node, align 4
  tail call void @create_boot_cache(ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef 32, i32 noundef 8192, i32 noundef 0, i32 noundef 0) #26
  store i32 1, ptr @slab_state, align 4
  %7 = load ptr, ptr @kmem_cache, align 4
  tail call void @create_boot_cache(ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef 136, i32 noundef 8192, i32 noundef 0, i32 noundef 0) #26
  %8 = tail call fastcc ptr @bootstrap(ptr noundef nonnull @kmem_cache_init.boot_kmem_cache) #29
  store ptr %8, ptr @kmem_cache, align 4
  %9 = tail call fastcc ptr @bootstrap(ptr noundef nonnull @kmem_cache_init.boot_kmem_cache_node) #29
  store ptr %9, ptr @kmem_cache_node, align 4
  tail call void @setup_kmalloc_cache_index_table() #26
  tail call void @create_kmalloc_caches(i32 noundef 0) #26
  %10 = tail call i32 @__cpuhp_setup_state(i32 noundef 11, ptr noundef nonnull @.str.5, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @slub_cpu_dead, i1 noundef zeroext false) #26
  %11 = load i32, ptr @slub_min_order, align 4
  %12 = load i32, ptr @slub_max_order, align 4
  %13 = load i32, ptr @slub_min_objects, align 4
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 64, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef 1) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @no_hash_pointers_enable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_boot_cache(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @bootstrap(ptr nocapture noundef readonly %0) unnamed_addr #3 section ".init.text" {
  %2 = load ptr, ptr @kmem_cache, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 2304) #26
  %4 = load ptr, ptr @kmem_cache, align 4
  %5 = getelementptr inbounds %struct.kmem_cache, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %3, ptr align 4 %0, i32 %6, i1 false)
  %7 = tail call ptr @llvm.thread.pointer() #26
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = ptrtoint ptr %10 to i32
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = inttoptr i32 %14 to ptr
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %15, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  store ptr null, ptr %17, align 4
  store ptr null, ptr %15, align 4
  %19 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %15, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  %22 = icmp eq ptr %18, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  tail call fastcc void @deactivate_slab(ptr noundef %3, ptr noundef nonnull %18, ptr noundef %16) #26
  br label %24

24:                                               ; preds = %23, %1
  %25 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %15, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  store ptr null, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call fastcc void @__unfreeze_partials(ptr noundef %3, ptr noundef nonnull %26) #26
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr %struct.kmem_cache, ptr %3, i32 0, i32 23, i32 0
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.kmem_cache_node, ptr %31, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %42, label %37

37:                                               ; preds = %37, %33
  %38 = phi ptr [ %40, %37 ], [ %35, %33 ]
  %39 = getelementptr i8, ptr %38, i32 8
  store ptr %3, ptr %39, align 4
  %40 = load ptr, ptr %38, align 4
  %41 = icmp eq ptr %40, %34
  br i1 %41, label %42, label %37

42:                                               ; preds = %37, %33
  %43 = getelementptr inbounds %struct.kmem_cache_node, ptr %31, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %51, label %46

46:                                               ; preds = %46, %42
  %47 = phi ptr [ %49, %46 ], [ %44, %42 ]
  %48 = getelementptr i8, ptr %47, i32 8
  store ptr %3, ptr %48, align 4
  %49 = load ptr, ptr %47, align 4
  %50 = icmp eq ptr %49, %43
  br i1 %50, label %51, label %46

51:                                               ; preds = %46, %42, %29
  %52 = getelementptr inbounds %struct.kmem_cache, ptr %3, i32 0, i32 19
  %53 = load ptr, ptr @slab_caches, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  store ptr %53, ptr %52, align 8
  %55 = getelementptr inbounds %struct.kmem_cache, ptr %3, i32 0, i32 19, i32 1
  store ptr @slab_caches, ptr %55, align 4
  store volatile ptr %52, ptr @slab_caches, align 4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_kmalloc_cache_index_table() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_kmalloc_caches(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slub_cpu_dead(i32 noundef %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @slab_mutex) #26
  %2 = load ptr, ptr @slab_caches, align 4
  %3 = icmp eq ptr %2, @slab_caches
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  br label %6

6:                                                ; preds = %27, %4
  %7 = phi ptr [ %2, %4 ], [ %28, %27 ]
  %8 = getelementptr i8, ptr %7, i32 -80
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = load i32, ptr %5, align 4
  %12 = add i32 %11, %10
  %13 = inttoptr i32 %12 to ptr
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %13, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  store ptr null, ptr %15, align 4
  store ptr null, ptr %13, align 4
  %17 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %13, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  %20 = icmp eq ptr %16, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  tail call fastcc void @deactivate_slab(ptr noundef %8, ptr noundef nonnull %16, ptr noundef %14) #26
  br label %22

22:                                               ; preds = %21, %6
  %23 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %13, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  store ptr null, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call fastcc void @__unfreeze_partials(ptr noundef %8, ptr noundef nonnull %24) #26
  br label %27

27:                                               ; preds = %26, %22
  %28 = load ptr, ptr %7, align 4
  %29 = icmp eq ptr %28, @slab_caches
  br i1 %29, label %30, label %6

30:                                               ; preds = %27, %1
  tail call void @mutex_unlock(ptr noundef nonnull @slab_mutex) #26
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define dso_local void @kmem_cache_init_late() local_unnamed_addr #13 section ".init.text" {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__kmem_cache_alias(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = tail call ptr @find_mergeable(i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %0, ptr noundef %4) #26
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.kmem_cache, ptr %6, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.kmem_cache, ptr %6, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 %1)
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.kmem_cache, ptr %6, i32 0, i32 15
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %1, 3
  %18 = and i32 %17, -4
  %19 = tail call i32 @llvm.umax.i32(i32 %16, i32 %18)
  store i32 %19, ptr %15, align 4
  %20 = load i32, ptr @slab_state, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %30, label %22

22:                                               ; preds = %8
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3264, i32 noundef 12) #30
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  store ptr %6, ptr %24, align 8
  %27 = getelementptr inbounds %struct.saved_alias, ptr %24, i32 0, i32 1
  store ptr %0, ptr %27, align 4
  %28 = load ptr, ptr @alias_list, align 4
  %29 = getelementptr inbounds %struct.saved_alias, ptr %24, i32 0, i32 2
  store ptr %28, ptr %29, align 8
  store ptr %24, ptr @alias_list, align 4
  br label %41

30:                                               ; preds = %8
  %31 = load ptr, ptr @slab_kset, align 4
  %32 = getelementptr inbounds %struct.kset, ptr %31, i32 0, i32 2
  tail call void @sysfs_remove_link(ptr noundef %32, ptr noundef %0) #26
  %33 = load ptr, ptr @slab_kset, align 4
  %34 = getelementptr inbounds %struct.kset, ptr %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.kmem_cache, ptr %6, i32 0, i32 20
  %36 = tail call i32 @sysfs_create_link(ptr noundef %34, ptr noundef %35, ptr noundef %0) #26
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30, %22
  %39 = load i32, ptr %9, align 4
  %40 = add i32 %39, -1
  store i32 %40, ptr %9, align 4
  br label %41

41:                                               ; preds = %38, %30, %26, %5
  %42 = phi ptr [ null, %38 ], [ %6, %30 ], [ null, %5 ], [ %6, %26 ]
  ret ptr %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_mergeable(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kmem_cache_create(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @kmem_cache_flags(i32 undef, i32 noundef %1, ptr noundef %5) #26
  %7 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = tail call fastcc i32 @calculate_sizes(ptr noundef %0) #26
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %227, label %10

10:                                               ; preds = %2
  %11 = load i1, ptr @disable_higher_order_debug, align 4
  br i1 %11, label %12, label %35

12:                                               ; preds = %10
  %13 = load i32, ptr %3, align 4
  %14 = add i32 %13, -1
  %15 = lshr i32 %14, 12
  %16 = icmp ult i32 %14, 4096
  %17 = tail call i32 @llvm.ctlz.i32(i32 %15, i1 false) #26, !range !58
  %18 = sub nuw nsw i32 32, %17
  %19 = select i1 %16, i32 0, i32 %18
  %20 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -1
  %23 = icmp ult i32 %22, 4096
  %24 = lshr i32 %22, 12
  %25 = tail call i32 @llvm.ctlz.i32(i32 %24, i1 false) #26, !range !58
  %26 = sub nuw nsw i32 32, %25
  %27 = select i1 %23, i32 0, i32 %26
  %28 = icmp sgt i32 %19, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %12
  %30 = load i32, ptr %7, align 4
  %31 = and i32 %30, -68609
  store i32 %31, ptr %7, align 4
  %32 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  store i32 0, ptr %32, align 4
  %33 = tail call fastcc i32 @calculate_sizes(ptr noundef %0) #26
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %227, label %35

35:                                               ; preds = %29, %12, %10
  %36 = load i32, ptr %3, align 4
  %37 = icmp eq i32 %36, 0
  %38 = tail call i32 @llvm.ctlz.i32(i32 %36, i1 false) #26, !range !58
  %39 = sub nsw i32 31, %38
  %40 = sdiv i32 %39, 2
  %41 = call i32 @llvm.umin.i32(i32 %40, i32 10)
  %42 = call i32 @llvm.umax.i32(i32 %41, i32 5)
  %43 = select i1 %37, i32 5, i32 %42
  %44 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 2
  store i32 %43, ptr %44, align 4
  %45 = load volatile i32, ptr @slub_debug_enabled, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load i32, ptr %7, align 4
  %49 = and i32 %48, 2166016
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47, %35
  %52 = icmp ugt i32 %36, 4095
  br i1 %52, label %58, label %53

53:                                               ; preds = %51
  %54 = icmp ugt i32 %36, 1023
  br i1 %54, label %58, label %55

55:                                               ; preds = %53
  %56 = icmp ugt i32 %36, 255
  %57 = select i1 %56, i32 52, i32 120
  br label %58

58:                                               ; preds = %55, %53, %51, %47
  %59 = phi i32 [ 0, %47 ], [ 6, %51 ], [ 24, %53 ], [ %57, %55 ]
  %60 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 7
  store i32 %59, ptr %60, align 4
  %61 = shl nuw nsw i32 %59, 1
  %62 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 9
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 65535
  %65 = add nsw i32 %61, -1
  %66 = add nsw i32 %65, %64
  %67 = udiv i32 %66, %64
  %68 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 8
  store i32 %67, ptr %68, align 4
  %69 = load i32, ptr @slab_nodes, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %200, label %72

72:                                               ; preds = %58
  %73 = load i32, ptr @slab_state, align 4
  %74 = icmp eq i32 %73, 0
  %75 = load ptr, ptr @kmem_cache_node, align 4
  br i1 %74, label %76, label %182

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.kmem_cache, ptr %75, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = icmp ult i32 %78, 32
  br i1 %79, label %80, label %81, !prof !11

80:                                               ; preds = %76
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/slub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3929, 0\0A.popsection", ""() #26, !srcloc !63
  unreachable

81:                                               ; preds = %76
  %82 = tail call fastcc ptr @new_slab(ptr noundef %75, i32 noundef 2048, i32 noundef 0) #26
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85, !prof !11

84:                                               ; preds = %81
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/slub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3933, 0\0A.popsection", ""() #26, !srcloc !64
  unreachable

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.slab, ptr %82, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %90, !prof !11

89:                                               ; preds = %85
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/slub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3940, 0\0A.popsection", ""() #26, !srcloc !65
  unreachable

90:                                               ; preds = %85
  %91 = load ptr, ptr @kmem_cache_node, align 4
  %92 = getelementptr inbounds %struct.kmem_cache, ptr %91, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 1024
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.kmem_cache, ptr %91, i32 0, i32 17
  %98 = load i32, ptr %97, align 4
  %99 = sub i32 0, %98
  %100 = getelementptr i8, ptr %87, i32 %99
  tail call void @llvm.memset.p0.i32(ptr align 1 %100, i8 -52, i32 %98, i1 false) #26
  %101 = load i32, ptr %92, align 4
  br label %102

102:                                              ; preds = %96, %90
  %103 = phi i32 [ %101, %96 ], [ %93, %90 ]
  %104 = icmp sgt i32 %103, -1
  br i1 %104, label %113, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.kmem_cache, ptr %91, i32 0, i32 4
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, -1
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %87, i8 107, i32 %108, i1 false) #26
  %109 = load i32, ptr %106, align 4
  %110 = add i32 %109, -1
  %111 = getelementptr i8, ptr %87, i32 %110
  store i8 -91, ptr %111, align 1
  %112 = load i32, ptr %92, align 4
  br label %113

113:                                              ; preds = %105, %102
  %114 = phi i32 [ %112, %105 ], [ %103, %102 ]
  %115 = and i32 %114, 1024
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.kmem_cache, ptr %91, i32 0, i32 4
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr i8, ptr %87, i32 %119
  %121 = getelementptr inbounds %struct.kmem_cache, ptr %91, i32 0, i32 15
  %122 = load i32, ptr %121, align 4
  %123 = sub i32 %122, %119
  tail call void @llvm.memset.p0.i32(ptr align 1 %120, i8 -52, i32 %123, i1 false) #26
  %124 = load i32, ptr %92, align 4
  br label %125

125:                                              ; preds = %117, %113
  %126 = phi i32 [ %114, %113 ], [ %124, %117 ]
  %127 = and i32 %126, 65536
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.kmem_cache, ptr %91, i32 0, i32 6
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.kmem_cache, ptr %91, i32 0, i32 15
  %133 = load i32, ptr %132, align 4
  %134 = icmp ult i32 %131, %133
  %135 = add i32 %133, 4
  %136 = select i1 %134, i32 %133, i32 %135
  %137 = getelementptr i8, ptr %87, i32 %136
  %138 = getelementptr %struct.track, ptr %137, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(80) %138, i8 0, i32 80, i1 false) #26
  %139 = load i32, ptr %130, align 4
  %140 = load i32, ptr %132, align 4
  %141 = icmp ult i32 %139, %140
  %142 = add i32 %140, 4
  %143 = select i1 %141, i32 %140, i32 %142
  %144 = getelementptr i8, ptr %87, i32 %143
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(80) %144, i8 0, i32 80, i1 false) #26
  br label %145

145:                                              ; preds = %129, %125
  %146 = getelementptr inbounds %struct.kmem_cache, ptr %91, i32 0, i32 6
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr i8, ptr %87, i32 %147
  %149 = load i32, ptr %148, align 4
  %150 = inttoptr i32 %149 to ptr
  store ptr %150, ptr %86, align 4
  %151 = getelementptr inbounds %struct.slab, ptr %82, i32 0, i32 4
  %152 = load i32, ptr %151, align 4
  %153 = and i32 %152, 2147418112
  %154 = or i32 %153, 1
  store i32 %154, ptr %151, align 4
  %155 = getelementptr %struct.kmem_cache, ptr %91, i32 0, i32 23
  store ptr %87, ptr %155, align 4
  %156 = getelementptr inbounds %struct.kmem_cache_node, ptr %87, i32 0, i32 1
  store i32 0, ptr %156, align 4
  store i32 0, ptr %87, align 4
  %157 = getelementptr inbounds %struct.kmem_cache_node, ptr %87, i32 0, i32 2
  store volatile ptr %157, ptr %157, align 4
  %158 = getelementptr inbounds %struct.kmem_cache_node, ptr %87, i32 0, i32 2, i32 1
  store ptr %157, ptr %158, align 4
  %159 = getelementptr inbounds %struct.kmem_cache_node, ptr %87, i32 0, i32 3
  store volatile i32 0, ptr %159, align 4
  %160 = getelementptr inbounds %struct.kmem_cache_node, ptr %87, i32 0, i32 4
  store volatile i32 0, ptr %160, align 4
  %161 = getelementptr inbounds %struct.kmem_cache_node, ptr %87, i32 0, i32 5
  store volatile ptr %161, ptr %161, align 4
  %162 = getelementptr inbounds %struct.kmem_cache_node, ptr %87, i32 0, i32 5, i32 1
  store ptr %161, ptr %162, align 4
  %163 = load ptr, ptr %155, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %176, label %165, !prof !11

165:                                              ; preds = %145
  %166 = load i32, ptr %151, align 4
  %167 = lshr i32 %166, 16
  %168 = and i32 %167, 32767
  %169 = getelementptr inbounds %struct.kmem_cache_node, ptr %163, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %169) #26, !srcloc !17
  %170 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %169, ptr %169, i32 1, ptr elementtype(i32) %169) #26, !srcloc !66
  %171 = getelementptr inbounds %struct.kmem_cache_node, ptr %163, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %171) #26, !srcloc !17
  %172 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %171, ptr %171, i32 %168, ptr elementtype(i32) %171) #26, !srcloc !66
  %173 = load i32, ptr %156, align 4
  %174 = load ptr, ptr %157, align 4
  %175 = add i32 %173, 1
  br label %176

176:                                              ; preds = %165, %145
  %177 = phi ptr [ %157, %145 ], [ %174, %165 ]
  %178 = phi i32 [ 1, %145 ], [ %175, %165 ]
  store i32 %178, ptr %156, align 4
  %179 = getelementptr inbounds %struct.list_head, ptr %177, i32 0, i32 1
  %180 = getelementptr inbounds %struct.slab, ptr %82, i32 0, i32 1
  store ptr %180, ptr %179, align 4
  store ptr %177, ptr %180, align 4
  %181 = getelementptr inbounds %struct.slab, ptr %82, i32 0, i32 1, i32 0, i32 1
  store ptr %157, ptr %181, align 4
  store volatile ptr %180, ptr %157, align 4
  br label %200

182:                                              ; preds = %72
  %183 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %75, i32 noundef 3264) #26
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %227, label %189

189:                                              ; preds = %185
  store ptr null, ptr %186, align 4
  %190 = load ptr, ptr @kmem_cache_node, align 4
  tail call void @kmem_cache_free(ptr noundef %190, ptr noundef nonnull %187) #26
  br label %227

191:                                              ; preds = %182
  %192 = getelementptr inbounds %struct.kmem_cache_node, ptr %183, i32 0, i32 1
  store i32 0, ptr %192, align 4
  store i32 0, ptr %183, align 8
  %193 = getelementptr inbounds %struct.kmem_cache_node, ptr %183, i32 0, i32 2
  store volatile ptr %193, ptr %193, align 8
  %194 = getelementptr inbounds %struct.kmem_cache_node, ptr %183, i32 0, i32 2, i32 1
  store ptr %193, ptr %194, align 4
  %195 = getelementptr inbounds %struct.kmem_cache_node, ptr %183, i32 0, i32 3
  store volatile i32 0, ptr %195, align 8
  %196 = getelementptr inbounds %struct.kmem_cache_node, ptr %183, i32 0, i32 4
  store volatile i32 0, ptr %196, align 4
  %197 = getelementptr inbounds %struct.kmem_cache_node, ptr %183, i32 0, i32 5
  store volatile ptr %197, ptr %197, align 8
  %198 = getelementptr inbounds %struct.kmem_cache_node, ptr %183, i32 0, i32 5, i32 1
  store ptr %197, ptr %198, align 4
  %199 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 23
  store ptr %183, ptr %199, align 4
  br label %200

200:                                              ; preds = %191, %176, %58
  %201 = tail call noalias ptr @__alloc_percpu(i32 noundef 16, i32 noundef 8) #28
  store ptr %201, ptr %0, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %227, label %203

203:                                              ; preds = %200
  %204 = load i32, ptr @nr_cpu_ids, align 4
  %205 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #27
  %206 = icmp ult i32 %205, %204
  br i1 %206, label %207, label %234

207:                                              ; preds = %203
  %208 = ptrtoint ptr %201 to i32
  %209 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %205
  %210 = load i32, ptr %209, align 4
  %211 = add i32 %210, %208
  %212 = inttoptr i32 %211 to ptr
  %213 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %212, i32 0, i32 1
  store i32 %205, ptr %213, align 4
  %214 = tail call i32 @cpumask_next(i32 noundef %205, ptr noundef nonnull @__cpu_possible_mask) #27
  %215 = icmp ult i32 %214, %204
  br i1 %215, label %216, label %234

216:                                              ; preds = %216, %207
  %217 = phi i32 [ %225, %216 ], [ %214, %207 ]
  %218 = load ptr, ptr %0, align 4
  %219 = ptrtoint ptr %218 to i32
  %220 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %217
  %221 = load i32, ptr %220, align 4
  %222 = add i32 %221, %219
  %223 = inttoptr i32 %222 to ptr
  %224 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %223, i32 0, i32 1
  store i32 %217, ptr %224, align 4
  %225 = tail call i32 @cpumask_next(i32 noundef %217, ptr noundef nonnull @__cpu_possible_mask) #27
  %226 = icmp ult i32 %225, %204
  br i1 %226, label %216, label %234

227:                                              ; preds = %200, %189, %185, %29, %2
  %228 = load ptr, ptr %0, align 4
  tail call void @free_percpu(ptr noundef %228) #26
  %229 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %259, label %232

232:                                              ; preds = %227
  store ptr null, ptr %229, align 4
  %233 = load ptr, ptr @kmem_cache_node, align 4
  tail call void @kmem_cache_free(ptr noundef %233, ptr noundef nonnull %230) #26
  br label %259

234:                                              ; preds = %216, %207, %203
  %235 = load i32, ptr @slab_state, align 4
  %236 = icmp ult i32 %235, 4
  br i1 %236, label %259, label %237

237:                                              ; preds = %234
  %238 = tail call fastcc i32 @sysfs_slab_add(ptr noundef %0)
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %237
  %241 = load ptr, ptr %0, align 4
  tail call void @free_percpu(ptr noundef %241) #26
  %242 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %259, label %245

245:                                              ; preds = %240
  store ptr null, ptr %242, align 4
  %246 = load ptr, ptr @kmem_cache_node, align 4
  tail call void @kmem_cache_free(ptr noundef %246, ptr noundef nonnull %243) #26
  br label %259

247:                                              ; preds = %237
  %248 = load i32, ptr %7, align 4
  %249 = and i32 %248, 65536
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %259, label %251

251:                                              ; preds = %247
  %252 = load ptr, ptr @slab_debugfs_root, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %259, label %254, !prof !11

254:                                              ; preds = %251
  %255 = load ptr, ptr %4, align 4
  %256 = tail call ptr @debugfs_create_dir(ptr noundef %255, ptr noundef nonnull %252) #26
  %257 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.127, i16 noundef zeroext 256, ptr noundef %256, ptr noundef %0, ptr noundef nonnull @slab_debugfs_fops) #26
  %258 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.128, i16 noundef zeroext 256, ptr noundef %256, ptr noundef %0, ptr noundef nonnull @slab_debugfs_fops) #26
  br label %259

259:                                              ; preds = %254, %251, %247, %245, %240, %234, %232, %227
  %260 = phi i32 [ 0, %234 ], [ 0, %247 ], [ -22, %227 ], [ -22, %232 ], [ %238, %240 ], [ %238, %245 ], [ 0, %251 ], [ 0, %254 ]
  ret i32 %260
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sysfs_slab_add(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr @slab_kset, align 4
  %3 = tail call i32 @slab_unmergeable(ptr noundef %0) #26
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 20
  tail call void @kobject_init(ptr noundef %6, ptr noundef nonnull @slab_ktype) #26
  br label %104

7:                                                ; preds = %1
  %8 = icmp eq i32 %3, 0
  %9 = load i1, ptr @disable_higher_order_debug, align 4
  %10 = select i1 %8, i1 %9, i1 false
  %11 = load i32, ptr @slub_debug, align 4
  %12 = and i32 %11, 68608
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = select i1 %10, i32 %14, i32 %3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %7
  %18 = load ptr, ptr @slab_kset, align 4
  %19 = getelementptr inbounds %struct.kset, ptr %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  %21 = load ptr, ptr %20, align 4
  tail call void @sysfs_remove_link(ptr noundef %19, ptr noundef %21) #26
  %22 = load ptr, ptr %20, align 4
  br label %70

23:                                               ; preds = %7
  %24 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 64) #30
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !11

27:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/slub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5888, 0\0A.popsection", ""() #26, !srcloc !67
  unreachable

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %25, i32 1
  store i8 58, ptr %25, align 8
  %30 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 16384
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = getelementptr i8, ptr %25, i32 2
  store i8 100, ptr %29, align 1
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi ptr [ %35, %34 ], [ %29, %28 ]
  %38 = and i32 %31, 32768
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %37, i32 1
  store i8 68, ptr %37, align 1
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi ptr [ %41, %40 ], [ %37, %36 ]
  %44 = and i32 %31, 131072
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %43, i32 1
  store i8 97, ptr %43, align 1
  %48 = load i32, ptr %30, align 4
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi i32 [ %48, %46 ], [ %31, %42 ]
  %51 = phi ptr [ %47, %46 ], [ %43, %42 ]
  %52 = and i32 %50, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = getelementptr i8, ptr %51, i32 1
  store i8 70, ptr %51, align 1
  br label %56

56:                                               ; preds = %54, %49
  %57 = phi ptr [ %55, %54 ], [ %51, %49 ]
  %58 = icmp eq ptr %57, %29
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = getelementptr i8, ptr %57, i32 1
  store i8 45, ptr %57, align 1
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi ptr [ %60, %59 ], [ %29, %56 ]
  %63 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %62, ptr noundef nonnull @.str.85, i32 noundef %64) #26
  %66 = getelementptr i8, ptr %62, i32 %65
  %67 = getelementptr i8, ptr %25, i32 63
  %68 = icmp ugt ptr %66, %67
  br i1 %68, label %69, label %70, !prof !11

69:                                               ; preds = %61
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/slub.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5912, 0\0A.popsection", ""() #26, !srcloc !68
  unreachable

70:                                               ; preds = %61, %17
  %71 = phi ptr [ %22, %17 ], [ %25, %61 ]
  %72 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 20
  %73 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 20, i32 3
  store ptr %2, ptr %73, align 4
  %74 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %72, ptr noundef nonnull @slab_ktype, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef %71) #26
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %70
  %77 = tail call i32 @sysfs_create_group(ptr noundef %72, ptr noundef nonnull @slab_attr_group) #26
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %76
  br i1 %16, label %80, label %104

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  %82 = load ptr, ptr %81, align 4
  %83 = load i32, ptr @slab_state, align 4
  %84 = icmp eq i32 %83, 4
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load ptr, ptr @slab_kset, align 4
  %87 = getelementptr inbounds %struct.kset, ptr %86, i32 0, i32 2
  tail call void @sysfs_remove_link(ptr noundef %87, ptr noundef %82) #26
  %88 = load ptr, ptr @slab_kset, align 4
  %89 = getelementptr inbounds %struct.kset, ptr %88, i32 0, i32 2
  %90 = tail call i32 @sysfs_create_link(ptr noundef %89, ptr noundef %72, ptr noundef %82) #26
  br label %101

91:                                               ; preds = %80
  %92 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %93 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3264, i32 noundef 12) #30
  %94 = icmp eq ptr %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %91
  store ptr %0, ptr %93, align 8
  %96 = getelementptr inbounds %struct.saved_alias, ptr %93, i32 0, i32 1
  store ptr %82, ptr %96, align 4
  %97 = load ptr, ptr @alias_list, align 4
  %98 = getelementptr inbounds %struct.saved_alias, ptr %93, i32 0, i32 2
  store ptr %97, ptr %98, align 8
  store ptr %93, ptr @alias_list, align 4
  br label %101

99:                                               ; preds = %103, %70
  %100 = phi i32 [ %74, %70 ], [ %77, %103 ]
  br i1 %16, label %101, label %104

101:                                              ; preds = %99, %95, %91, %85
  %102 = phi i32 [ %100, %99 ], [ 0, %95 ], [ 0, %91 ], [ 0, %85 ]
  tail call void @kfree(ptr noundef %71)
  br label %104

103:                                              ; preds = %76
  tail call void @kobject_del(ptr noundef %72) #26
  br label %99

104:                                              ; preds = %101, %99, %79, %5
  %105 = phi i32 [ 0, %5 ], [ %102, %101 ], [ %100, %99 ], [ 0, %79 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__kmalloc_track_caller(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = icmp ugt i32 %0, 8192
  br i1 %4, label %5, label %11, !prof !11

5:                                                ; preds = %3
  %6 = add i32 %0, -1
  %7 = lshr i32 %6, 12
  %8 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 false) #26, !range !58
  %9 = sub nuw nsw i32 32, %8
  %10 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef %0, i32 noundef %1, i32 noundef %9) #28
  br label %153

11:                                               ; preds = %3
  %12 = tail call ptr @kmalloc_slab(i32 noundef %0, i32 noundef %1) #26
  %13 = icmp ult ptr %12, inttoptr (i32 17 to ptr)
  br i1 %13, label %153, label %14, !prof !11

14:                                               ; preds = %11
  %15 = load i32, ptr @gfp_allowed_mask, align 4
  %16 = and i32 %15, %1
  %17 = tail call i32 @should_failslab(ptr noundef %12, i32 noundef %16) #26
  %18 = icmp ne i32 %17, 0
  %19 = icmp eq ptr %12, null
  %20 = or i1 %19, %18
  br i1 %20, label %134, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %12, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #19, !srcloc !12
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %28, i32 0, i32 1
  %30 = load volatile i32, ptr %29, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !13
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %28, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp ne ptr %31, null
  %35 = icmp ne ptr %33, null
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %57, !prof !14

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.kmem_cache, ptr %12, i32 0, i32 6
  br label %39

39:                                               ; preds = %74, %37
  %40 = phi ptr [ %31, %37 ], [ %84, %74 ]
  %41 = phi i32 [ %30, %37 ], [ %83, %74 ]
  %42 = load i32, ptr %38, align 4
  %43 = getelementptr i8, ptr %40, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %46 = load ptr, ptr %12, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %49) #19, !srcloc !12
  %51 = add i32 %50, %47
  %52 = inttoptr i32 %51 to ptr
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %40
  br i1 %54, label %60, label %74

55:                                               ; preds = %74
  %56 = inttoptr i32 %80 to ptr
  br label %57

57:                                               ; preds = %55, %21
  %58 = phi ptr [ %28, %21 ], [ %56, %55 ]
  %59 = tail call fastcc ptr @___slab_alloc(ptr noundef %12, i32 noundef %1, i32 noundef %2, ptr noundef %58) #26
  br label %90

60:                                               ; preds = %39
  %61 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %46, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  %63 = add i32 %50, %62
  %64 = inttoptr i32 %63 to ptr
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, %41
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = inttoptr i32 %51 to ptr
  %69 = inttoptr i32 %63 to ptr
  %70 = inttoptr i32 %44 to ptr
  store ptr %70, ptr %68, align 4
  %71 = add i32 %41, 1
  store i32 %71, ptr %69, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #26, !srcloc !16
  %72 = load i32, ptr %38, align 4
  %73 = getelementptr i8, ptr %70, i32 %72
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #26, !srcloc !17
  br label %90

74:                                               ; preds = %60, %39
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #26, !srcloc !16
  %75 = load ptr, ptr %12, align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %78 = inttoptr i32 %77 to ptr
  %79 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %78) #19, !srcloc !12
  %80 = add i32 %79, %76
  %81 = inttoptr i32 %80 to ptr
  %82 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %81, i32 0, i32 1
  %83 = load volatile i32, ptr %82, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !13
  %84 = load ptr, ptr %81, align 4
  %85 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %81, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = icmp ne ptr %84, null
  %88 = icmp ne ptr %86, null
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %39, label %55, !prof !14

90:                                               ; preds = %67, %57
  %91 = phi ptr [ %40, %67 ], [ %59, %57 ]
  %92 = load volatile i32, ptr @init_on_free, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %109, !prof !11

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.kmem_cache, ptr %12, i32 0, i32 14
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.kmem_cache, ptr %12, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 526336
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109, !prof !11

103:                                              ; preds = %98
  %104 = icmp eq ptr %91, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.kmem_cache, ptr %12, i32 0, i32 6
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr i8, ptr %91, i32 %107
  store i32 0, ptr %108, align 1
  br label %109

109:                                              ; preds = %105, %103, %98, %94, %90
  %110 = load volatile i32, ptr @init_on_alloc, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %124, !prof !11

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.kmem_cache, ptr %12, i32 0, i32 14
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %134

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.kmem_cache, ptr %12, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 526336
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = and i32 %1, 256
  %123 = icmp ne i32 %122, 0
  br label %127

124:                                              ; preds = %109
  %125 = and i32 %1, 256
  %126 = icmp ne i32 %125, 0
  br label %127

127:                                              ; preds = %124, %121, %116
  %128 = phi i1 [ %123, %121 ], [ %126, %124 ], [ true, %116 ]
  %129 = icmp ne ptr %91, null
  %130 = and i1 %129, %128
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.kmem_cache, ptr %12, i32 0, i32 4
  %133 = load i32, ptr %132, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %91, i8 0, i32 %133, i1 false) #26
  br label %134

134:                                              ; preds = %131, %127, %112, %14
  %135 = phi ptr [ null, %14 ], [ %91, %131 ], [ %91, %127 ], [ %91, %112 ]
  %136 = getelementptr inbounds %struct.kmem_cache, ptr %12, i32 0, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kmalloc, i32 0, i32 1), align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %134
  %141 = tail call ptr @llvm.thread.pointer() #26
  %142 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 2
  %143 = load i32, ptr %142, align 8
  %144 = lshr i32 %143, 5
  %145 = getelementptr i32, ptr @__cpu_online_mask, i32 %144
  %146 = load volatile i32, ptr %145, align 4
  %147 = and i32 %143, 31
  %148 = shl nuw i32 1, %147
  %149 = and i32 %148, %146
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %140
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !20
  %152 = tail call i32 @__traceiter_kmalloc(ptr noundef null, i32 noundef %2, ptr noundef %135, i32 noundef %0, i32 noundef %137, i32 noundef %1) #26
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !21
  br label %153

153:                                              ; preds = %151, %140, %134, %11, %5
  %154 = phi ptr [ %10, %5 ], [ %12, %11 ], [ %135, %134 ], [ %135, %140 ], [ %135, %151 ]
  ret ptr %154
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @validate_slab_cache(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 65535
  %5 = tail call ptr @bitmap_alloc(i32 noundef %4, i32 noundef 3264) #26
  %6 = icmp eq ptr %5, null
  br i1 %6, label %61, label %7

7:                                                ; preds = %1
  tail call void @cpus_read_lock() #26
  tail call fastcc void @flush_all_cpus_locked(ptr noundef %0) #26
  tail call void @cpus_read_unlock() #26
  %8 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %9 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  %10 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %59, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %11) #26
  %15 = getelementptr inbounds %struct.kmem_cache_node, ptr %11, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %25, label %18

18:                                               ; preds = %18, %13
  %19 = phi ptr [ %23, %18 ], [ %16, %13 ]
  %20 = phi i32 [ %22, %18 ], [ 0, %13 ]
  %21 = getelementptr i8, ptr %19, i32 -4
  tail call fastcc void @validate_slab(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %5) #26
  %22 = add i32 %20, 1
  %23 = load ptr, ptr %19, align 4
  %24 = icmp eq ptr %23, %15
  br i1 %24, label %25, label %18

25:                                               ; preds = %18, %13
  %26 = phi i32 [ 0, %13 ], [ %22, %18 ]
  %27 = getelementptr inbounds %struct.kmem_cache_node, ptr %11, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %9, align 4
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %31, i32 noundef %26, i32 noundef %28) #25
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, ptr %10, align 4
  %35 = and i32 %34, 65536
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.kmem_cache_node, ptr %11, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %48, label %41

41:                                               ; preds = %41, %37
  %42 = phi ptr [ %46, %41 ], [ %39, %37 ]
  %43 = phi i32 [ %45, %41 ], [ %26, %37 ]
  %44 = getelementptr i8, ptr %42, i32 -4
  tail call fastcc void @validate_slab(ptr noundef %0, ptr noundef %44, ptr noundef nonnull %5) #26
  %45 = add i32 %43, 1
  %46 = load ptr, ptr %42, align 4
  %47 = icmp eq ptr %46, %38
  br i1 %47, label %48, label %41

48:                                               ; preds = %41, %37
  %49 = phi i32 [ %26, %37 ], [ %45, %41 ]
  %50 = getelementptr inbounds %struct.kmem_cache_node, ptr %11, i32 0, i32 3
  %51 = load volatile i32, ptr %50, align 4
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %9, align 4
  %55 = load volatile i32, ptr %50, align 4
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %54, i32 noundef %49, i32 noundef %55) #25
  br label %57

57:                                               ; preds = %53, %48, %33
  %58 = phi i32 [ %49, %53 ], [ %49, %48 ], [ %26, %33 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %11, i32 noundef %14) #26
  br label %59

59:                                               ; preds = %57, %7
  %60 = phi i32 [ %58, %57 ], [ 0, %7 ]
  tail call void @bitmap_free(ptr noundef nonnull %5) #26
  br label %61

61:                                               ; preds = %59, %1
  %62 = phi i32 [ %60, %59 ], [ -12, %1 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sysfs_slab_unlink(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr @slab_state, align 4
  %3 = icmp ugt i32 %2, 3
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 20
  tail call void @kobject_del(ptr noundef %5) #26
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sysfs_slab_release(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load i32, ptr @slab_state, align 4
  %3 = icmp ugt i32 %2, 3
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 20
  tail call void @kobject_put(ptr noundef %5) #26
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @slab_sysfs_init() #3 section ".init.text" {
  tail call void @mutex_lock(ptr noundef nonnull @slab_mutex) #26
  %1 = load ptr, ptr @kernel_kobj, align 4
  %2 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.123, ptr noundef null, ptr noundef %1) #26
  store ptr %2, ptr @slab_kset, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  tail call void @mutex_unlock(ptr noundef nonnull @slab_mutex) #26
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #25
  br label %56

6:                                                ; preds = %0
  store i32 4, ptr @slab_state, align 4
  %7 = load ptr, ptr @slab_caches, align 4
  %8 = icmp eq ptr %7, @slab_caches
  br i1 %8, label %9, label %12

9:                                                ; preds = %21, %6
  %10 = load ptr, ptr @alias_list, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %55, label %24

12:                                               ; preds = %21, %6
  %13 = phi ptr [ %22, %21 ], [ %7, %6 ]
  %14 = getelementptr i8, ptr %13, i32 -80
  %15 = tail call fastcc i32 @sysfs_slab_add(ptr noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %13, i32 -4
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %19) #25
  br label %21

21:                                               ; preds = %17, %12
  %22 = load ptr, ptr %13, align 4
  %23 = icmp eq ptr %22, @slab_caches
  br i1 %23, label %9, label %12

24:                                               ; preds = %52, %9
  %25 = phi ptr [ %53, %52 ], [ %10, %9 ]
  %26 = getelementptr inbounds %struct.saved_alias, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  store ptr %27, ptr @alias_list, align 4
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.saved_alias, ptr %25, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr @slab_state, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3264, i32 noundef 12) #30
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  store ptr %28, ptr %35, align 8
  %38 = getelementptr inbounds %struct.saved_alias, ptr %35, i32 0, i32 1
  store ptr %30, ptr %38, align 4
  %39 = load ptr, ptr @alias_list, align 4
  %40 = getelementptr inbounds %struct.saved_alias, ptr %35, i32 0, i32 2
  store ptr %39, ptr %40, align 8
  store ptr %35, ptr @alias_list, align 4
  br label %52

41:                                               ; preds = %24
  %42 = load ptr, ptr @slab_kset, align 4
  %43 = getelementptr inbounds %struct.kset, ptr %42, i32 0, i32 2
  tail call void @sysfs_remove_link(ptr noundef %43, ptr noundef %30) #26
  %44 = load ptr, ptr @slab_kset, align 4
  %45 = getelementptr inbounds %struct.kset, ptr %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.kmem_cache, ptr %28, i32 0, i32 20
  %47 = tail call i32 @sysfs_create_link(ptr noundef %45, ptr noundef %46, ptr noundef %30) #26
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41, %33
  %50 = load ptr, ptr %29, align 4
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %50) #25
  br label %52

52:                                               ; preds = %49, %41, %37
  tail call void @kfree(ptr noundef nonnull %25)
  %53 = load ptr, ptr @alias_list, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %24

55:                                               ; preds = %52, %9
  tail call void @mutex_unlock(ptr noundef nonnull @slab_mutex) #26
  br label %56

56:                                               ; preds = %55, %4
  %57 = phi i32 [ 0, %55 ], [ -38, %4 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_slab_release(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr @slab_debugfs_root, align 4
  %5 = tail call ptr @debugfs_lookup(ptr noundef %3, ptr noundef %4) #26
  tail call void @debugfs_remove(ptr noundef %5) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_lookup(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @slab_debugfs_init() #3 section ".init.text" {
  %1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.123, ptr noundef null) #26
  store ptr %1, ptr @slab_debugfs_root, align 4
  %2 = load ptr, ptr @slab_caches, align 4
  %3 = icmp eq ptr %2, @slab_caches
  br i1 %3, label %23, label %4

4:                                                ; preds = %20, %0
  %5 = phi ptr [ %21, %20 ], [ %2, %0 ]
  %6 = getelementptr i8, ptr %5, i32 -80
  %7 = getelementptr i8, ptr %5, i32 -76
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 65536
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr @slab_debugfs_root, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14, !prof !11

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %5, i32 -4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @debugfs_create_dir(ptr noundef %16, ptr noundef nonnull %12) #26
  %18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.127, i16 noundef zeroext 256, ptr noundef %17, ptr noundef %6, ptr noundef nonnull @slab_debugfs_fops) #26
  %19 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.128, i16 noundef zeroext 256, ptr noundef %17, ptr noundef %6, ptr noundef nonnull @slab_debugfs_fops) #26
  br label %20

20:                                               ; preds = %14, %11, %4
  %21 = load ptr, ptr %5, align 4
  %22 = icmp eq ptr %21, @slab_caches
  br i1 %22, label %23, label %4

23:                                               ; preds = %20, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @get_slabinfo(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.kmem_cache_node, ptr %4, i32 0, i32 3
  %8 = load volatile i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.kmem_cache_node, ptr %4, i32 0, i32 4
  %10 = load volatile i32, ptr %9, align 4
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %4) #26
  %12 = getelementptr inbounds %struct.kmem_cache_node, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %27, label %15

15:                                               ; preds = %15, %6
  %16 = phi ptr [ %25, %15 ], [ %13, %6 ]
  %17 = phi i32 [ %24, %15 ], [ 0, %6 ]
  %18 = getelementptr i8, ptr %16, i32 16
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 32767
  %22 = and i32 %19, 65535
  %23 = sub nsw i32 %21, %22
  %24 = add i32 %23, %17
  %25 = load ptr, ptr %16, align 4
  %26 = icmp eq ptr %25, %12
  br i1 %26, label %27, label %15

27:                                               ; preds = %15, %6
  %28 = phi i32 [ 0, %6 ], [ %24, %15 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %4, i32 noundef %11) #26
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi i32 [ %8, %27 ], [ 0, %2 ]
  %31 = phi i32 [ %10, %27 ], [ 0, %2 ]
  %32 = phi i32 [ %28, %27 ], [ 0, %2 ]
  %33 = sub i32 %31, %32
  store i32 %33, ptr %1, align 4
  %34 = getelementptr inbounds %struct.slabinfo, ptr %1, i32 0, i32 1
  store i32 %31, ptr %34, align 4
  %35 = getelementptr inbounds %struct.slabinfo, ptr %1, i32 0, i32 2
  store i32 %30, ptr %35, align 4
  %36 = getelementptr inbounds %struct.slabinfo, ptr %1, i32 0, i32 3
  store i32 %30, ptr %36, align 4
  %37 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 9
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 65535
  %40 = getelementptr inbounds %struct.slabinfo, ptr %1, i32 0, i32 8
  store i32 %39, ptr %40, align 4
  %41 = load i32, ptr %37, align 4
  %42 = lshr i32 %41, 16
  %43 = getelementptr inbounds %struct.slabinfo, ptr %1, i32 0, i32 9
  store i32 %42, ptr %43, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @count_partial(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #26
  %4 = getelementptr inbounds %struct.kmem_cache_node, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %2
  %8 = phi ptr [ %13, %7 ], [ %5, %2 ]
  %9 = phi i32 [ %12, %7 ], [ 0, %2 ]
  %10 = getelementptr i8, ptr %8, i32 -4
  %11 = tail call i32 %1(ptr noundef %10) #26, !callees !69
  %12 = add i32 %11, %9
  %13 = load ptr, ptr %8, align 4
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %2
  %16 = phi i32 [ 0, %2 ], [ %12, %7 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #26
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @count_free(ptr nocapture noundef readonly %0) #14 {
  %2 = getelementptr inbounds %struct.slab, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 32767
  %6 = and i32 %3, 65535
  %7 = sub nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @slabinfo_show_stats(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #15 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @slabinfo_write(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #15 {
  ret i32 -5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_kmem_cache_alloc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_kmalloc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_kmem_cache_free(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @free_debug_processing(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readnone %3, i32 noundef %4, i32 noundef %5) unnamed_addr #16 {
  %7 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #26
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !26
  br label %10

10:                                               ; preds = %24, %6
  %11 = load volatile i32, ptr %1, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19, !prof !27

14:                                               ; preds = %10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #26, !srcloc !17
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #26, !srcloc !28
  %16 = extractvalue { i32, i32, i32 } %15, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !29
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19, !prof !22

19:                                               ; preds = %14, %10
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !30
  br label %20

20:                                               ; preds = %20, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !31
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !32
  %21 = load volatile i32, ptr %1, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %20

24:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !33
  br label %10

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = tail call fastcc i32 @check_slab(ptr noundef %0, ptr noundef %1)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %178, label %33

33:                                               ; preds = %30, %25
  %34 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %35 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 4
  %36 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %37 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 2
  %38 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %39 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  %40 = icmp eq i32 %5, 0
  %41 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  %42 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 3
  %43 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  br label %44

44:                                               ; preds = %173, %33
  %45 = phi ptr [ %2, %33 ], [ %177, %173 ]
  %46 = phi i32 [ 0, %33 ], [ %47, %173 ]
  %47 = add i32 %46, 1
  %48 = load i32, ptr %26, align 4
  %49 = and i32 %48, 256
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %102, label %51

51:                                               ; preds = %44
  %52 = icmp eq ptr %45, null
  br i1 %52, label %80, label %53

53:                                               ; preds = %51
  %54 = tail call ptr @page_address(ptr noundef %1) #26
  %55 = load i32, ptr %26, align 4
  %56 = and i32 %55, 1024
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load i32, ptr %34, align 4
  %60 = sub i32 0, %59
  %61 = getelementptr i8, ptr %45, i32 %60
  br label %62

62:                                               ; preds = %58, %53
  %63 = phi ptr [ %61, %58 ], [ %45, %53 ]
  %64 = icmp ult ptr %63, %54
  br i1 %64, label %79, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %35, align 4
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 32767
  %69 = load i32, ptr %36, align 4
  %70 = mul i32 %68, %69
  %71 = getelementptr i8, ptr %54, i32 %70
  %72 = icmp ult ptr %63, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = ptrtoint ptr %63 to i32
  %75 = ptrtoint ptr %54 to i32
  %76 = sub i32 %74, %75
  %77 = urem i32 %76, %69
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73, %65, %62
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull %45) #26
  br label %178

80:                                               ; preds = %73, %51
  %81 = tail call fastcc i32 @on_freelist(ptr noundef %0, ptr noundef %1, ptr noundef %45) #26
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  tail call void (ptr, ptr, ...) @slab_bug(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.31) #26
  tail call fastcc void @print_trailer(ptr noundef %0, ptr noundef %1, ptr noundef %45) #26
  tail call void @add_taint(i32 noundef 5, i32 noundef 1) #26
  br label %178

84:                                               ; preds = %80
  %85 = tail call fastcc i32 @check_object(ptr noundef %0, ptr noundef %1, ptr noundef %45, i8 noundef zeroext -52) #26
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %178, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %37, align 4
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %90, label %92, !prof !22

90:                                               ; preds = %87
  %91 = load i32, ptr %26, align 4
  br label %102

92:                                               ; preds = %87
  %93 = load volatile i32, ptr %1, align 4
  %94 = and i32 %93, 512
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef %45) #26
  br label %178

97:                                               ; preds = %92
  %98 = icmp eq ptr %88, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %97
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %45) #25
  tail call void @dump_stack() #25
  br label %178

101:                                              ; preds = %97
  tail call fastcc void @object_err(ptr noundef %0, ptr noundef %1, ptr noundef %45, ptr noundef nonnull @.str.34) #26
  br label %178

102:                                              ; preds = %90, %44
  %103 = phi i32 [ %91, %90 ], [ %48, %44 ]
  %104 = and i32 %103, 65536
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %131, label %106

106:                                              ; preds = %102
  %107 = load i32, ptr %38, align 4
  %108 = load i32, ptr %39, align 4
  %109 = icmp ult i32 %107, %108
  %110 = add i32 %108, 4
  %111 = select i1 %109, i32 %108, i32 %110
  %112 = getelementptr i8, ptr %45, i32 %111
  %113 = getelementptr %struct.track, ptr %112, i32 1
  br i1 %40, label %130, label %114

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.track, ptr %113, i32 0, i32 1
  %116 = tail call i32 @stack_trace_save(ptr noundef %115, i32 noundef 16, i32 noundef 3) #26
  %117 = icmp ult i32 %116, 16
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = getelementptr %struct.track, ptr %113, i32 0, i32 1, i32 %116
  store i32 0, ptr %119, align 4
  br label %120

120:                                              ; preds = %118, %114
  store i32 %5, ptr %113, align 4
  %121 = tail call ptr @llvm.thread.pointer() #26
  %122 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %123 = load i32, ptr %122, align 8
  %124 = getelementptr inbounds %struct.track, ptr %113, i32 0, i32 2
  store i32 %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 52
  %126 = load i32, ptr %125, align 8
  %127 = getelementptr inbounds %struct.track, ptr %113, i32 0, i32 3
  store i32 %126, ptr %127, align 4
  %128 = load volatile i32, ptr @jiffies, align 64
  %129 = getelementptr inbounds %struct.track, ptr %113, i32 0, i32 4
  store i32 %128, ptr %129, align 4
  br label %131

130:                                              ; preds = %106
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(80) %113, i8 0, i32 80, i1 false) #26
  br label %131

131:                                              ; preds = %130, %120, %102
  %132 = load i32, ptr %26, align 4
  %133 = and i32 %132, 2097152
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr %41, align 4
  %137 = load i32, ptr %35, align 4
  %138 = and i32 %137, 65535
  %139 = load ptr, ptr %42, align 4
  %140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %136, ptr noundef nonnull @.str.62, ptr noundef %45, i32 noundef %138, ptr noundef %139) #25
  %141 = load i32, ptr %43, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %45, i32 noundef %141, i1 noundef zeroext true) #26
  tail call void @dump_stack() #25
  %142 = load i32, ptr %26, align 4
  br label %143

143:                                              ; preds = %135, %131
  %144 = phi i32 [ %132, %131 ], [ %142, %135 ]
  %145 = and i32 %144, 1024
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %143
  %148 = load i32, ptr %34, align 4
  %149 = sub i32 0, %148
  %150 = getelementptr i8, ptr %45, i32 %149
  tail call void @llvm.memset.p0.i32(ptr align 1 %150, i8 -69, i32 %148, i1 false) #26
  %151 = load i32, ptr %26, align 4
  br label %152

152:                                              ; preds = %147, %143
  %153 = phi i32 [ %151, %147 ], [ %144, %143 ]
  %154 = icmp sgt i32 %153, -1
  br i1 %154, label %162, label %155

155:                                              ; preds = %152
  %156 = load i32, ptr %43, align 4
  %157 = add i32 %156, -1
  tail call void @llvm.memset.p0.i32(ptr align 1 %45, i8 107, i32 %157, i1 false) #26
  %158 = load i32, ptr %43, align 4
  %159 = add i32 %158, -1
  %160 = getelementptr i8, ptr %45, i32 %159
  store i8 -91, ptr %160, align 1
  %161 = load i32, ptr %26, align 4
  br label %162

162:                                              ; preds = %155, %152
  %163 = phi i32 [ %161, %155 ], [ %153, %152 ]
  %164 = and i32 %163, 1024
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = load i32, ptr %43, align 4
  %168 = getelementptr i8, ptr %45, i32 %167
  %169 = load i32, ptr %39, align 4
  %170 = sub i32 %169, %167
  tail call void @llvm.memset.p0.i32(ptr align 1 %168, i8 -69, i32 %170, i1 false) #26
  br label %171

171:                                              ; preds = %166, %162
  %172 = icmp eq ptr %45, %3
  br i1 %172, label %178, label %173

173:                                              ; preds = %171
  %174 = load i32, ptr %38, align 4
  %175 = getelementptr i8, ptr %45, i32 %174
  %176 = load i32, ptr %175, align 4
  %177 = inttoptr i32 %176 to ptr
  br label %44

178:                                              ; preds = %171, %101, %99, %96, %84, %83, %79, %30
  %179 = phi ptr [ %2, %30 ], [ %45, %83 ], [ %45, %79 ], [ %45, %99 ], [ %45, %101 ], [ %45, %96 ], [ %45, %84 ], [ %3, %171 ]
  %180 = phi i32 [ 0, %30 ], [ %47, %83 ], [ %47, %79 ], [ %47, %99 ], [ %47, %101 ], [ %47, %96 ], [ %47, %171 ], [ %47, %84 ]
  %181 = phi i1 [ true, %30 ], [ true, %83 ], [ true, %79 ], [ true, %99 ], [ true, %101 ], [ true, %96 ], [ true, %84 ], [ false, %171 ]
  %182 = phi i32 [ 0, %30 ], [ 0, %83 ], [ 0, %79 ], [ 0, %99 ], [ 0, %101 ], [ 0, %96 ], [ 0, %84 ], [ 1, %171 ]
  %183 = icmp eq i32 %180, %4
  br i1 %183, label %185, label %184

184:                                              ; preds = %178
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %4, i32 noundef %180)
  br label %185

185:                                              ; preds = %184, %178
  %186 = load volatile i32, ptr %1, align 4
  %187 = and i32 %186, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %187, ptr %1, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #26
  br i1 %181, label %188, label %189

188:                                              ; preds = %185
  tail call void (ptr, ptr, ...) @slab_fix(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %179)
  br label %189

189:                                              ; preds = %188, %185
  ret i32 %182
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_cpu_partial(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #19, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !46
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %8, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #19, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = load volatile ptr, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %3
  %19 = icmp eq i32 %2, 0
  %20 = getelementptr inbounds %struct.slab, ptr %16, i32 0, i32 1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  br i1 %19, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %18
  %27 = add i32 %21, 1
  br label %28

28:                                               ; preds = %26, %22, %3
  %29 = phi i32 [ %27, %26 ], [ 1, %3 ], [ 1, %22 ]
  %30 = phi ptr [ null, %26 ], [ null, %3 ], [ %16, %22 ]
  %31 = phi ptr [ %16, %26 ], [ null, %3 ], [ null, %22 ]
  %32 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 1
  %33 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 1, i32 0, i32 1
  store i32 %29, ptr %33, align 4
  store ptr %31, ptr %32, align 4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %35, i32 0, i32 3
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #19, !srcloc !12
  %41 = add i32 %40, %37
  %42 = inttoptr i32 %41 to ptr
  store ptr %1, ptr %42, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #26, !srcloc !16
  %43 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %44 = inttoptr i32 %43 to ptr
  %45 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %44) #19, !srcloc !12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #26, !srcloc !16
  %46 = icmp eq ptr %30, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %28
  tail call fastcc void @__unfreeze_partials(ptr noundef %0, ptr noundef nonnull %30)
  br label %48

48:                                               ; preds = %47, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @discard_slab(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 32767
  %7 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.kmem_cache_node, ptr %8, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #26, !srcloc !17
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #26, !srcloc !57
  %11 = getelementptr inbounds %struct.kmem_cache_node, ptr %8, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #26, !srcloc !17
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 %6, ptr elementtype(i32) %11) #26, !srcloc !57
  %13 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 524288
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !22

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %18, ptr noundef nonnull @rcu_free_slab) #26
  br label %20

19:                                               ; preds = %2
  tail call fastcc void @__free_slab(ptr noundef %0, ptr noundef %1) #26
  br label %20

20:                                               ; preds = %19, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_slab(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.22)
  br label %33

7:                                                ; preds = %2
  %8 = load volatile i32, ptr %1, align 4
  %9 = and i32 %8, 65536
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr %struct.page, ptr %1, i32 1, i32 1
  %13 = getelementptr inbounds %struct.anon.8, ptr %12, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  br label %16

16:                                               ; preds = %11, %7
  %17 = phi i32 [ %15, %11 ], [ 0, %7 ]
  %18 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 4096, %17
  %21 = udiv i32 %20, %19
  %22 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 32767
  %26 = icmp sgt i32 %25, %21
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %25, i32 noundef %21)
  br label %33

28:                                               ; preds = %16
  %29 = and i32 %23, 65535
  %30 = icmp ugt i32 %29, %25
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %29, i32 noundef %25)
  br label %33

32:                                               ; preds = %28
  tail call fastcc void @slab_pad_check(ptr noundef %0, ptr noundef %1)
  br label %33

33:                                               ; preds = %32, %31, %27, %6
  %34 = phi i32 [ 0, %27 ], [ 0, %31 ], [ 1, %32 ], [ 0, %6 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @slab_err(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ...) unnamed_addr #1 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca [100 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %5) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(100) %5, i8 0, i32 100, i1 false), !annotation !9
  call void @llvm.va_start(ptr nonnull %4)
  %6 = load i32, ptr %4, align 4
  %7 = insertvalue [1 x i32] poison, i32 %6, 0
  %8 = call i32 @vsnprintf(ptr noundef nonnull %5, i32 noundef 100, ptr noundef %2, [1 x i32] %7)
  call void @llvm.va_end(ptr nonnull %4)
  call void (ptr, ptr, ...) @slab_bug(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull %5)
  %9 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 32767
  %13 = and i32 %10, 65535
  %14 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %1, i32 noundef %12, i32 noundef %13, ptr noundef %15, ptr noundef %1) #25
  call void @dump_stack() #25
  call void @add_taint(i32 noundef 5, i32 noundef 1) #26
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @slab_fix(ptr nocapture noundef readonly %0, ptr noundef %1, ...) unnamed_addr #1 {
  %3 = alloca %struct.va_format, align 8
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %4)
  store ptr %1, ptr %3, align 8
  %5 = getelementptr inbounds %struct.va_format, ptr %3, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %7, ptr noundef nonnull %3) #25
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @slab_pad_check(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %44, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @page_address(ptr noundef %1) #26
  %9 = load volatile i32, ptr %1, align 4
  %10 = and i32 %9, 65536
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr %struct.page, ptr %1, i32 1, i32 1
  %14 = getelementptr inbounds %struct.anon.8, ptr %13, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i32 [ %16, %12 ], [ 0, %7 ]
  %19 = shl i32 4096, %18
  %20 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = urem i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %8, i32 %19
  %26 = sub i32 0, %22
  %27 = getelementptr i8, ptr %25, i32 %26
  %28 = tail call ptr @memchr_inv(ptr noundef %27, i32 noundef 90, i32 noundef %22) #26
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %33, %24
  %31 = phi ptr [ %34, %33 ], [ %25, %24 ]
  %32 = icmp ugt ptr %31, %28
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %31, i32 -1
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 90
  br i1 %36, label %30, label %37

37:                                               ; preds = %33, %30
  %38 = getelementptr i8, ptr %31, i32 -1
  %39 = ptrtoint ptr %28 to i32
  %40 = ptrtoint ptr %8 to i32
  %41 = sub i32 %39, %40
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef nonnull %28, ptr noundef %38, i32 noundef %41)
  tail call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %27, i32 noundef %22, i1 noundef zeroext true) #26
  tail call void (ptr, ptr, ...) @slab_fix(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, ptr noundef nonnull %28, ptr noundef %38, i32 noundef 90) #26
  %42 = ptrtoint ptr %31 to i32
  %43 = sub i32 %42, %39
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %28, i8 90, i32 %43, i1 false) #26
  br label %44

44:                                               ; preds = %37, %24, %17, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @on_freelist(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %70, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 4
  %9 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %11 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %8, align 4
  br label %14

14:                                               ; preds = %63, %7
  %15 = phi i32 [ %13, %7 ], [ %37, %63 ]
  %16 = phi ptr [ null, %7 ], [ %17, %63 ]
  %17 = phi ptr [ %5, %7 ], [ %67, %63 ]
  %18 = phi i32 [ 0, %7 ], [ %68, %63 ]
  %19 = lshr i32 %15, 16
  %20 = and i32 %19, 32767
  %21 = icmp ugt i32 %18, %20
  br i1 %21, label %70, label %22

22:                                               ; preds = %14
  %23 = icmp eq ptr %17, %2
  br i1 %23, label %118, label %24

24:                                               ; preds = %22
  %25 = tail call ptr @page_address(ptr noundef %1) #26
  %26 = load i32, ptr %9, align 4
  %27 = and i32 %26, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, ptr %10, align 4
  %31 = sub i32 0, %30
  %32 = getelementptr i8, ptr %17, i32 %31
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi ptr [ %32, %29 ], [ %17, %24 ]
  %35 = icmp ult ptr %34, %25
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %8, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 32767
  %40 = load i32, ptr %11, align 4
  %41 = mul i32 %39, %40
  %42 = getelementptr i8, ptr %25, i32 %41
  %43 = icmp ult ptr %34, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = ptrtoint ptr %34 to i32
  %46 = ptrtoint ptr %25 to i32
  %47 = sub i32 %45, %46
  %48 = urem i32 %47, %40
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %44, %36, %33
  %51 = icmp eq ptr %16, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @slab_bug(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.35) #26
  tail call fastcc void @print_trailer(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %16) #26
  tail call void @add_taint(i32 noundef 5, i32 noundef 1) #26
  %53 = ptrtoint ptr %16 to i32
  %54 = load i32, ptr %12, align 4
  %55 = add i32 %54, %53
  %56 = inttoptr i32 %55 to ptr
  store ptr null, ptr %56, align 4
  br label %70

57:                                               ; preds = %50
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.36)
  store ptr null, ptr %4, align 4
  %58 = load i32, ptr %8, align 4
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 32767
  %61 = and i32 %58, -65536
  %62 = or i32 %60, %61
  store i32 %62, ptr %8, align 4
  tail call void (ptr, ptr, ...) @slab_fix(ptr noundef %0, ptr noundef nonnull @.str.37)
  br label %118

63:                                               ; preds = %44
  %64 = load i32, ptr %12, align 4
  %65 = getelementptr i8, ptr %17, i32 %64
  %66 = load i32, ptr %65, align 4
  %67 = inttoptr i32 %66 to ptr
  %68 = add nuw nsw i32 %18, 1
  %69 = icmp eq i32 %66, 0
  br i1 %69, label %70, label %14

70:                                               ; preds = %63, %52, %14, %3
  %71 = phi i32 [ %18, %52 ], [ 0, %3 ], [ %18, %14 ], [ %68, %63 ]
  %72 = load volatile i32, ptr %1, align 4
  %73 = and i32 %72, 65536
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = getelementptr %struct.page, ptr %1, i32 1, i32 1
  %77 = getelementptr inbounds %struct.anon.8, ptr %76, i32 0, i32 2
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  br label %80

80:                                               ; preds = %75, %70
  %81 = phi i32 [ %79, %75 ], [ 0, %70 ]
  %82 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = shl i32 4096, %81
  %85 = udiv i32 %84, %83
  %86 = tail call i32 @llvm.smin.i32(i32 %85, i32 32767)
  %87 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = lshr i32 %88, 16
  %90 = and i32 %89, 32767
  %91 = icmp eq i32 %90, %86
  br i1 %91, label %101, label %92

92:                                               ; preds = %80
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %90, i32 noundef %86)
  %93 = load i32, ptr %87, align 4
  %94 = shl i32 %86, 16
  %95 = and i32 %94, 2147418112
  %96 = and i32 %93, -2147418113
  %97 = or i32 %96, %95
  store i32 %97, ptr %87, align 4
  tail call void (ptr, ptr, ...) @slab_fix(ptr noundef %0, ptr noundef nonnull @.str.39)
  %98 = load i32, ptr %87, align 4
  %99 = lshr i32 %98, 16
  %100 = and i32 %99, 32767
  br label %101

101:                                              ; preds = %92, %80
  %102 = phi i32 [ %100, %92 ], [ %90, %80 ]
  %103 = phi i32 [ %98, %92 ], [ %88, %80 ]
  %104 = and i32 %103, 65535
  %105 = sub i32 %102, %71
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %115, label %107

107:                                              ; preds = %101
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %104, i32 noundef %105)
  %108 = load i32, ptr %87, align 4
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 32767
  %111 = sub i32 %110, %71
  %112 = and i32 %111, 65535
  %113 = and i32 %108, -65536
  %114 = or i32 %112, %113
  store i32 %114, ptr %87, align 4
  tail call void (ptr, ptr, ...) @slab_fix(ptr noundef %0, ptr noundef nonnull @.str.41)
  br label %115

115:                                              ; preds = %107, %101
  %116 = icmp eq ptr %2, null
  %117 = zext i1 %116 to i32
  br label %118

118:                                              ; preds = %115, %57, %22
  %119 = phi i32 [ %117, %115 ], [ 0, %57 ], [ 1, %22 ]
  ret i32 %119
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @object_err(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
  tail call void (ptr, ptr, ...) @slab_bug(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %3)
  tail call fastcc void @print_trailer(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @add_taint(i32 noundef 5, i32 noundef 1) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_object(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %2, i32 %6
  %8 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1024
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 0, %14
  %16 = getelementptr i8, ptr %2, i32 %15
  %17 = zext i8 %3 to i32
  %18 = tail call fastcc i32 @check_bytes_and_report(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.52, ptr noundef %16, i32 noundef %17, i32 noundef %14)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %134, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %5, align 4
  %24 = sub i32 %22, %23
  %25 = tail call fastcc i32 @check_bytes_and_report(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.53, ptr noundef %7, i32 noundef %17, i32 noundef %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %134, label %37

27:                                               ; preds = %4
  %28 = and i32 %9, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  %32 = load i32, ptr %31, align 4
  %33 = icmp ugt i32 %32, %6
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = sub i32 %32, %6
  %36 = tail call fastcc i32 @check_bytes_and_report(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.54, ptr noundef %7, i32 noundef 90, i32 noundef %35)
  br label %37

37:                                               ; preds = %34, %30, %27, %20
  %38 = load i32, ptr %8, align 4
  %39 = and i32 %38, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %87, label %41

41:                                               ; preds = %37
  %42 = icmp eq i8 %3, -52
  %43 = icmp sgt i32 %38, -1
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %58, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %5, align 4
  %47 = add i32 %46, -1
  %48 = tail call fastcc i32 @check_bytes_and_report(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.55, ptr noundef %2, i32 noundef 107, i32 noundef %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %134, label %50

50:                                               ; preds = %45
  %51 = load i32, ptr %5, align 4
  %52 = getelementptr i8, ptr %2, i32 %51
  %53 = getelementptr i8, ptr %52, i32 -1
  %54 = tail call fastcc i32 @check_bytes_and_report(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.56, ptr noundef %53, i32 noundef 165, i32 noundef 1)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %134, label %56

56:                                               ; preds = %50
  %57 = load i32, ptr %8, align 4
  br label %58

58:                                               ; preds = %56, %41
  %59 = phi i32 [ %57, %56 ], [ %38, %41 ]
  %60 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  %63 = load i32, ptr %62, align 4
  %64 = icmp ult i32 %61, %63
  %65 = add i32 %63, 4
  %66 = select i1 %64, i32 %63, i32 %65
  %67 = and i32 %59, 65536
  %68 = icmp eq i32 %67, 0
  %69 = add i32 %66, 160
  %70 = select i1 %68, i32 %66, i32 %69
  %71 = and i32 %59, 1024
  %72 = icmp eq i32 %71, 0
  %73 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  br i1 %72, label %75, label %77

75:                                               ; preds = %58
  %76 = icmp eq i32 %74, %70
  br i1 %76, label %87, label %82

77:                                               ; preds = %58
  %78 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %79 = load i32, ptr %78, align 4
  %80 = sub i32 %74, %79
  %81 = icmp eq i32 %80, %70
  br i1 %81, label %87, label %82

82:                                               ; preds = %77, %75
  %83 = phi i32 [ %74, %75 ], [ %80, %77 ]
  %84 = getelementptr i8, ptr %2, i32 %70
  %85 = sub i32 %83, %70
  %86 = tail call fastcc i32 @check_bytes_and_report(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.59, ptr noundef %84, i32 noundef 90, i32 noundef %85) #26
  br label %87

87:                                               ; preds = %82, %77, %75, %37
  %88 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  %91 = load i32, ptr %90, align 4
  %92 = icmp uge i32 %89, %91
  %93 = icmp ne i8 %3, -52
  %94 = or i1 %93, %92
  br i1 %94, label %95, label %134

95:                                               ; preds = %87
  %96 = getelementptr i8, ptr %2, i32 %89
  %97 = load i32, ptr %96, align 4
  %98 = inttoptr i32 %97 to ptr
  %99 = icmp eq i32 %97, 0
  br i1 %99, label %134, label %100

100:                                              ; preds = %95
  %101 = tail call ptr @page_address(ptr noundef %1) #26
  %102 = load i32, ptr %8, align 4
  %103 = and i32 %102, 1024
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %107 = load i32, ptr %106, align 4
  %108 = sub i32 0, %107
  %109 = getelementptr i8, ptr %98, i32 %108
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi ptr [ %109, %105 ], [ %98, %100 ]
  %112 = icmp ult ptr %111, %101
  br i1 %112, label %129, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = lshr i32 %115, 16
  %117 = and i32 %116, 32767
  %118 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %119 = load i32, ptr %118, align 4
  %120 = mul i32 %117, %119
  %121 = getelementptr i8, ptr %101, i32 %120
  %122 = icmp ult ptr %111, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %113
  %124 = ptrtoint ptr %111 to i32
  %125 = ptrtoint ptr %101 to i32
  %126 = sub i32 %124, %125
  %127 = urem i32 %126, %119
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %123, %113, %110
  tail call void (ptr, ptr, ...) @slab_bug(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.36) #26
  tail call fastcc void @print_trailer(ptr noundef %0, ptr noundef %1, ptr noundef %2) #26
  tail call void @add_taint(i32 noundef 5, i32 noundef 1) #26
  %130 = ptrtoint ptr %2 to i32
  %131 = load i32, ptr %88, align 4
  %132 = add i32 %131, %130
  %133 = inttoptr i32 %132 to ptr
  store ptr null, ptr %133, align 4
  br label %134

134:                                              ; preds = %129, %123, %95, %87, %50, %45, %20, %12
  %135 = phi i32 [ 0, %129 ], [ 0, %12 ], [ 0, %20 ], [ 0, %50 ], [ 0, %45 ], [ 1, %87 ], [ 1, %123 ], [ 1, %95 ]
  ret i32 %135
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @slab_bug(ptr nocapture noundef readonly %0, ptr noundef %1, ...) unnamed_addr #1 {
  %3 = alloca %struct.va_format, align 8
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %4)
  store ptr %1, ptr %3, align 8
  %5 = getelementptr inbounds %struct.va_format, ptr %3, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #25
  %7 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = call ptr @print_tainted() #26
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %3) #25
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #25
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_trailer(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call ptr @page_address(ptr noundef %1) #26
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 65536
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %12, %14
  %16 = add i32 %14, 4
  %17 = select i1 %15, i32 %14, i32 %16
  %18 = getelementptr i8, ptr %2, i32 %17
  tail call fastcc void @print_track(ptr noundef nonnull @.str, ptr noundef %18, i32 noundef %5) #26
  %19 = load i32, ptr %11, align 4
  %20 = load i32, ptr %13, align 4
  %21 = icmp ult i32 %19, %20
  %22 = add i32 %20, 4
  %23 = select i1 %21, i32 %20, i32 %22
  %24 = getelementptr i8, ptr %2, i32 %23
  %25 = getelementptr %struct.track, ptr %24, i32 1
  tail call fastcc void @print_track(ptr noundef nonnull @.str.1, ptr noundef %25, i32 noundef %5) #26
  br label %26

26:                                               ; preds = %10, %3
  %27 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 32767
  %31 = and i32 %28, 65535
  %32 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %1, i32 noundef %30, i32 noundef %31, ptr noundef %33, ptr noundef %1) #25
  %35 = ptrtoint ptr %2 to i32
  %36 = ptrtoint ptr %4 to i32
  %37 = sub i32 %35, %36
  %38 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %2, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = inttoptr i32 %41 to ptr
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %2, i32 noundef %37, ptr noundef %42) #25
  %44 = load i32, ptr %6, align 4
  %45 = and i32 %44, 1024
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %26
  %48 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 0, %49
  %51 = getelementptr i8, ptr %2, i32 %50
  tail call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %51, i32 noundef %49, i1 noundef zeroext true) #26
  br label %57

52:                                               ; preds = %26
  %53 = getelementptr i8, ptr %4, i32 16
  %54 = icmp ult ptr %53, %2
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = getelementptr i8, ptr %2, i32 -16
  tail call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.48, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %56, i32 noundef 16, i1 noundef zeroext true) #26
  br label %57

57:                                               ; preds = %55, %52, %47
  %58 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 @llvm.umin.i32(i32 %59, i32 4096)
  tail call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.49, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %2, i32 noundef %60, i1 noundef zeroext true) #26
  %61 = load i32, ptr %6, align 4
  %62 = and i32 %61, 1024
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = load i32, ptr %58, align 4
  %66 = getelementptr i8, ptr %2, i32 %65
  %67 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  %68 = load i32, ptr %67, align 4
  %69 = sub i32 %68, %65
  tail call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.47, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %66, i32 noundef %69, i1 noundef zeroext true) #26
  %70 = load i32, ptr %6, align 4
  br label %71

71:                                               ; preds = %64, %57
  %72 = phi i32 [ %70, %64 ], [ %61, %57 ]
  %73 = load i32, ptr %38, align 4
  %74 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  %75 = load i32, ptr %74, align 4
  %76 = icmp ult i32 %73, %75
  %77 = add i32 %75, 4
  %78 = select i1 %76, i32 %75, i32 %77
  %79 = and i32 %72, 65536
  %80 = icmp eq i32 %79, 0
  %81 = add i32 %78, 160
  %82 = select i1 %80, i32 %78, i32 %81
  %83 = and i32 %72, 1024
  %84 = icmp eq i32 %83, 0
  %85 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  br i1 %84, label %87, label %89

87:                                               ; preds = %71
  %88 = icmp eq i32 %82, %86
  br i1 %88, label %98, label %94

89:                                               ; preds = %71
  %90 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %91 = load i32, ptr %90, align 4
  %92 = sub i32 %86, %91
  %93 = icmp eq i32 %82, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %89, %87
  %95 = phi i32 [ %86, %87 ], [ %92, %89 ]
  %96 = getelementptr i8, ptr %2, i32 %82
  %97 = sub i32 %95, %82
  tail call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.50, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %96, i32 noundef %97, i1 noundef zeroext true) #26
  br label %98

98:                                               ; preds = %94, %89, %87
  tail call void @dump_stack() #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @print_tainted() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_bytes_and_report(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #1 {
  %8 = tail call ptr @page_address(ptr noundef %1) #26
  %9 = tail call ptr @memchr_inv(ptr noundef %4, i32 noundef %5, i32 noundef %6) #26
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %4, i32 %6
  br label %13

13:                                               ; preds = %16, %11
  %14 = phi ptr [ %12, %11 ], [ %17, %16 ]
  %15 = icmp ugt ptr %14, %9
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %14, i32 -1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, %5
  br i1 %20, label %13, label %21

21:                                               ; preds = %16, %13
  tail call void (ptr, ptr, ...) @slab_bug(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef %3)
  %22 = getelementptr i8, ptr %14, i32 -1
  %23 = ptrtoint ptr %9 to i32
  %24 = ptrtoint ptr %8 to i32
  %25 = sub i32 %23, %24
  %26 = load i8, ptr %9, align 1
  %27 = zext i8 %26 to i32
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull %9, ptr noundef %22, i32 noundef %25, i32 noundef %27, i32 noundef %5) #25
  tail call fastcc void @print_trailer(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  tail call void @add_taint(i32 noundef 5, i32 noundef 1) #26
  %29 = trunc i32 %5 to i8
  %30 = and i32 %5, 255
  tail call void (ptr, ptr, ...) @slab_fix(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %3, ptr noundef nonnull %9, ptr noundef %22, i32 noundef %30) #26
  %31 = ptrtoint ptr %14 to i32
  %32 = sub i32 %31, %23
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %9, i8 %29, i32 %32, i1 false) #26
  br label %33

33:                                               ; preds = %21, %7
  %34 = phi i32 [ 0, %21 ], [ 1, %7 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__unfreeze_partials(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %103, label %4

4:                                                ; preds = %2
  %5 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %6 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %72, %4
  %8 = phi ptr [ %1, %4 ], [ %13, %72 ]
  %9 = phi i32 [ 0, %4 ], [ %23, %72 ]
  %10 = phi ptr [ null, %4 ], [ %73, %72 ]
  %11 = phi ptr [ null, %4 ], [ %22, %72 ]
  %12 = getelementptr inbounds %struct.slab, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = icmp eq ptr %11, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %7
  %17 = icmp eq ptr %11, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %11, i32 noundef %9) #26
  br label %19

19:                                               ; preds = %18, %16
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #26
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi ptr [ %14, %19 ], [ %11, %7 ]
  %23 = phi i32 [ %20, %19 ], [ %9, %7 ]
  %24 = getelementptr inbounds %struct.slab, ptr %8, i32 0, i32 3
  %25 = getelementptr inbounds %struct.slab, ptr %8, i32 0, i32 4
  br label %26

26:                                               ; preds = %50, %21
  %27 = load ptr, ptr %24, align 4
  %28 = load i32, ptr %25, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !26
  br label %29

29:                                               ; preds = %43, %26
  %30 = load volatile i32, ptr %8, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38, !prof !27

33:                                               ; preds = %29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %8) #26, !srcloc !17
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #26, !srcloc !28
  %35 = extractvalue { i32, i32, i32 } %34, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !29
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38, !prof !22

38:                                               ; preds = %33, %29
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !30
  br label %39

39:                                               ; preds = %39, %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !31
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !32
  %40 = load volatile i32, ptr %8, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %39

43:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !33
  br label %29

44:                                               ; preds = %33
  %45 = load ptr, ptr %24, align 4
  %46 = icmp eq ptr %45, %27
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, ptr %25, align 4
  %49 = icmp eq i32 %48, %28
  br i1 %49, label %53, label %50

50:                                               ; preds = %47, %44
  %51 = load volatile i32, ptr %8, align 4
  %52 = and i32 %51, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %52, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !44
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !45
  br label %26

53:                                               ; preds = %47
  %54 = and i32 %28, 2147483647
  store ptr %27, ptr %24, align 4
  store i32 %54, ptr %25, align 4
  %55 = load volatile i32, ptr %8, align 4
  %56 = and i32 %55, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %56, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  %57 = and i32 %28, 65535
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr inbounds %struct.kmem_cache_node, ptr %22, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  br i1 %58, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, ptr %6, align 4
  %63 = icmp ult i32 %60, %62
  br i1 %63, label %65, label %64, !prof !22

64:                                               ; preds = %61
  store ptr %10, ptr %12, align 4
  br label %72

65:                                               ; preds = %61, %53
  %66 = getelementptr inbounds %struct.kmem_cache_node, ptr %22, i32 0, i32 1
  %67 = add i32 %60, 1
  store i32 %67, ptr %66, align 4
  %68 = getelementptr inbounds %struct.kmem_cache_node, ptr %22, i32 0, i32 2
  %69 = getelementptr inbounds %struct.kmem_cache_node, ptr %22, i32 0, i32 2, i32 1
  %70 = load ptr, ptr %69, align 4
  store ptr %12, ptr %69, align 4
  store ptr %68, ptr %12, align 4
  %71 = getelementptr inbounds %struct.slab, ptr %8, i32 0, i32 1, i32 0, i32 1
  store ptr %70, ptr %71, align 4
  store volatile ptr %12, ptr %70, align 4
  br label %72

72:                                               ; preds = %65, %64
  %73 = phi ptr [ %8, %64 ], [ %10, %65 ]
  %74 = icmp eq ptr %13, null
  br i1 %74, label %75, label %7

75:                                               ; preds = %72
  %76 = icmp eq ptr %22, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %22, i32 noundef %23) #26
  br label %78

78:                                               ; preds = %77, %75
  %79 = icmp eq ptr %73, null
  br i1 %79, label %103, label %80

80:                                               ; preds = %78
  %81 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %82 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  br label %83

83:                                               ; preds = %101, %80
  %84 = phi ptr [ %73, %80 ], [ %86, %101 ]
  %85 = getelementptr inbounds %struct.slab, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.slab, ptr %84, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = lshr i32 %88, 16
  %90 = and i32 %89, 32767
  %91 = load ptr, ptr %81, align 4
  %92 = getelementptr inbounds %struct.kmem_cache_node, ptr %91, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %92) #26, !srcloc !17
  %93 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %92, ptr %92, i32 1, ptr elementtype(i32) %92) #26, !srcloc !57
  %94 = getelementptr inbounds %struct.kmem_cache_node, ptr %91, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %94) #26, !srcloc !17
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %94, ptr %94, i32 %90, ptr elementtype(i32) %94) #26, !srcloc !57
  %96 = load i32, ptr %82, align 4
  %97 = and i32 %96, 524288
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99, !prof !22

99:                                               ; preds = %83
  tail call void @call_rcu(ptr noundef %85, ptr noundef nonnull @rcu_free_slab) #26
  br label %101

100:                                              ; preds = %83
  tail call fastcc void @__free_slab(ptr noundef %0, ptr noundef nonnull %84) #26
  br label %101

101:                                              ; preds = %100, %99
  %102 = icmp eq ptr %86, null
  br i1 %102, label %103, label %83

103:                                              ; preds = %101, %78, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcu_free_slab(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 8
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @__free_slab(ptr noundef %4, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__free_slab(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 65536
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.page, ptr %1, i32 1, i32 1
  %8 = getelementptr inbounds %struct.anon.8, ptr %7, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ 0, %2 ]
  %13 = shl nuw i32 1, %12
  %14 = load volatile i32, ptr @slub_debug_enabled, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %16
  tail call fastcc void @slab_pad_check(ptr noundef %0, ptr noundef %1)
  %22 = tail call ptr @page_address(ptr noundef %1) #26
  %23 = load volatile i32, ptr @slub_debug_enabled, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32, ptr %17, align 4
  %27 = and i32 %26, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %22, i32 %31
  br label %33

33:                                               ; preds = %29, %25, %21
  %34 = phi ptr [ %32, %29 ], [ %22, %25 ], [ %22, %21 ]
  %35 = tail call ptr @page_address(ptr noundef %1) #26
  %36 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 32767
  %40 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = mul i32 %39, %41
  %43 = getelementptr i8, ptr %35, i32 %42
  %44 = icmp ult ptr %34, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %45, %33
  %46 = phi ptr [ %49, %45 ], [ %34, %33 ]
  %47 = tail call fastcc i32 @check_object(ptr noundef %0, ptr noundef %1, ptr noundef %46, i8 noundef zeroext -69)
  %48 = load i32, ptr %40, align 4
  %49 = getelementptr i8, ptr %46, i32 %48
  %50 = tail call ptr @page_address(ptr noundef %1) #26
  %51 = load i32, ptr %36, align 4
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 32767
  %54 = load i32, ptr %40, align 4
  %55 = mul i32 %53, %54
  %56 = getelementptr i8, ptr %50, i32 %55
  %57 = icmp ult ptr %49, %56
  br i1 %57, label %45, label %58

58:                                               ; preds = %45, %33, %16, %11
  %59 = load i32, ptr %1, align 4
  %60 = and i32 %59, -545
  store i32 %60, ptr %1, align 4
  %61 = getelementptr inbounds %struct.anon.74, ptr %1, i32 0, i32 2
  store ptr null, ptr %61, align 4
  %62 = tail call ptr @llvm.thread.pointer() #26
  %63 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 116
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load i32, ptr %64, align 4
  %68 = add i32 %67, %13
  store i32 %68, ptr %64, align 4
  br label %69

69:                                               ; preds = %66, %58
  %70 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 131072
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 6, i32 5
  %75 = shl i32 -4096, %12
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef %74, i32 noundef %75) #26
  tail call void @__free_pages(ptr noundef %1, i32 noundef %12) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @should_failslab(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #19

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @deactivate_slab(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %2, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %14 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 4
  %15 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %12, align 4
  br label %17

17:                                               ; preds = %57, %10
  %18 = phi i32 [ %16, %10 ], [ %58, %57 ]
  %19 = phi i32 [ 0, %10 ], [ %59, %57 ]
  %20 = phi ptr [ null, %10 ], [ %21, %57 ]
  %21 = phi ptr [ %2, %10 ], [ %25, %57 ]
  %22 = load i32, ptr %11, align 4
  %23 = getelementptr i8, ptr %21, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = inttoptr i32 %24 to ptr
  %26 = and i32 %18, 256
  %27 = icmp eq i32 %26, 0
  %28 = icmp eq i32 %24, 0
  %29 = or i1 %28, %27
  br i1 %29, label %57, label %30

30:                                               ; preds = %17
  %31 = tail call ptr @page_address(ptr noundef %1) #26
  %32 = load i32, ptr %12, align 4
  %33 = and i32 %32, 1024
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, ptr %13, align 4
  %37 = sub i32 0, %36
  %38 = getelementptr i8, ptr %25, i32 %37
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi ptr [ %38, %35 ], [ %25, %30 ]
  %41 = icmp ult ptr %40, %31
  br i1 %41, label %56, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %14, align 4
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 32767
  %46 = load i32, ptr %15, align 4
  %47 = mul i32 %45, %46
  %48 = getelementptr i8, ptr %31, i32 %47
  %49 = icmp ult ptr %40, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = ptrtoint ptr %40 to i32
  %52 = ptrtoint ptr %31 to i32
  %53 = sub i32 %51, %52
  %54 = urem i32 %53, %46
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50, %42, %39
  tail call void (ptr, ptr, ...) @slab_bug(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.35) #26
  tail call fastcc void @print_trailer(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %21) #26
  tail call void @add_taint(i32 noundef 5, i32 noundef 1) #26
  tail call void (ptr, ptr, ...) @slab_fix(ptr noundef %0, ptr noundef nonnull @.str.68) #26
  br label %60

57:                                               ; preds = %50, %17
  %58 = phi i32 [ %32, %50 ], [ %18, %17 ]
  %59 = add i32 %19, 1
  br i1 %28, label %60, label %17

60:                                               ; preds = %57, %56, %3
  %61 = phi ptr [ %20, %56 ], [ null, %3 ], [ %21, %57 ]
  %62 = phi i32 [ %19, %56 ], [ 0, %3 ], [ %59, %57 ]
  %63 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 4
  %64 = icmp eq ptr %61, null
  %65 = ptrtoint ptr %61 to i32
  %66 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %67 = getelementptr inbounds %struct.kmem_cache_node, ptr %5, i32 0, i32 1
  %68 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 2
  %69 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %70 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 1
  %71 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 1, i32 0, i32 1
  %72 = getelementptr inbounds %struct.kmem_cache_node, ptr %5, i32 0, i32 5
  %73 = getelementptr inbounds %struct.kmem_cache_node, ptr %5, i32 0, i32 2
  %74 = getelementptr inbounds %struct.kmem_cache_node, ptr %5, i32 0, i32 2, i32 1
  br label %75

75:                                               ; preds = %181, %60
  %76 = phi i32 [ 0, %60 ], [ %119, %181 ]
  %77 = phi i32 [ 0, %60 ], [ %118, %181 ]
  %78 = phi i32 [ 0, %60 ], [ %120, %181 ]
  %79 = load volatile ptr, ptr %6, align 4
  %80 = load volatile i32, ptr %63, align 4
  br i1 %64, label %89, label %81

81:                                               ; preds = %75
  %82 = sub i32 %80, %62
  %83 = and i32 %82, 65535
  %84 = and i32 %80, -65536
  %85 = or i32 %83, %84
  %86 = load i32, ptr %66, align 4
  %87 = add i32 %86, %65
  %88 = inttoptr i32 %87 to ptr
  store ptr %79, ptr %88, align 4
  br label %89

89:                                               ; preds = %81, %75
  %90 = phi ptr [ %2, %81 ], [ %79, %75 ]
  %91 = phi i32 [ %85, %81 ], [ %80, %75 ]
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, ptr %67, align 4
  %96 = load i32, ptr %68, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %94, %89
  %99 = icmp eq ptr %90, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %98
  %101 = icmp eq i32 %78, 0
  br i1 %101, label %111, label %115

102:                                              ; preds = %98
  %103 = load volatile i32, ptr @slub_debug_enabled, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load i32, ptr %69, align 4
  %107 = and i32 %106, 65536
  %108 = icmp eq i32 %107, 0
  %109 = icmp ne i32 %78, 0
  %110 = select i1 %108, i1 true, i1 %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %105, %100
  %112 = phi i32 [ 1, %100 ], [ 2, %105 ]
  %113 = xor i1 %99, true
  %114 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #26
  br label %115

115:                                              ; preds = %111, %105, %102, %100, %94
  %116 = phi i1 [ true, %100 ], [ false, %105 ], [ false, %94 ], [ false, %102 ], [ %113, %111 ]
  %117 = phi i1 [ false, %100 ], [ true, %105 ], [ false, %94 ], [ true, %102 ], [ %99, %111 ]
  %118 = phi i32 [ 1, %100 ], [ 2, %105 ], [ 3, %94 ], [ 2, %102 ], [ %112, %111 ]
  %119 = phi i32 [ %76, %100 ], [ %76, %105 ], [ %76, %94 ], [ %76, %102 ], [ %114, %111 ]
  %120 = phi i32 [ 1, %100 ], [ %78, %105 ], [ %78, %94 ], [ %78, %102 ], [ 1, %111 ]
  %121 = icmp eq i32 %77, %118
  br i1 %121, label %158, label %122

122:                                              ; preds = %115
  switch i32 %77, label %137 [
    i32 1, label %123
    i32 2, label %129
  ]

123:                                              ; preds = %122
  %124 = load ptr, ptr %71, align 4
  %125 = load ptr, ptr %70, align 4
  %126 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  store ptr %124, ptr %126, align 4
  store volatile ptr %125, ptr %124, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %70, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %71, align 4
  %127 = load i32, ptr %67, align 4
  %128 = add i32 %127, -1
  store i32 %128, ptr %67, align 4
  br label %137

129:                                              ; preds = %122
  %130 = load i32, ptr %69, align 4
  %131 = and i32 %130, 65536
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %71, align 4
  %135 = load ptr, ptr %70, align 4
  %136 = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  store ptr %134, ptr %136, align 4
  store volatile ptr %135, ptr %134, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %70, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %71, align 4
  br label %137

137:                                              ; preds = %133, %129, %123, %122
  br i1 %116, label %138, label %146

138:                                              ; preds = %137
  %139 = load i32, ptr %67, align 4
  %140 = add i32 %139, 1
  store i32 %140, ptr %67, align 4
  br i1 %8, label %143, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr %74, align 4
  br label %154

143:                                              ; preds = %138
  %144 = load ptr, ptr %73, align 4
  %145 = getelementptr inbounds %struct.list_head, ptr %144, i32 0, i32 1
  br label %154

146:                                              ; preds = %137
  br i1 %117, label %147, label %158

147:                                              ; preds = %146
  %148 = load i32, ptr %69, align 4
  %149 = and i32 %148, 65536
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr %72, align 4
  %153 = getelementptr inbounds %struct.list_head, ptr %152, i32 0, i32 1
  br label %154

154:                                              ; preds = %151, %143, %141
  %155 = phi ptr [ %153, %151 ], [ %145, %143 ], [ %74, %141 ]
  %156 = phi ptr [ %152, %151 ], [ %144, %143 ], [ %73, %141 ]
  %157 = phi ptr [ %72, %151 ], [ %73, %143 ], [ %142, %141 ]
  store ptr %70, ptr %155, align 4
  store ptr %156, ptr %70, align 4
  store ptr %157, ptr %71, align 4
  store volatile ptr %70, ptr %157, align 4
  br label %158

158:                                              ; preds = %154, %147, %146, %115
  %159 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !26
  br label %160

160:                                              ; preds = %174, %158
  %161 = load volatile i32, ptr %1, align 4
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %169, !prof !27

164:                                              ; preds = %160
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #26, !srcloc !17
  %165 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #26, !srcloc !28
  %166 = extractvalue { i32, i32, i32 } %165, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !29
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %175, label %169, !prof !22

169:                                              ; preds = %164, %160
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !30
  br label %170

170:                                              ; preds = %170, %169
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !31
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !32
  %171 = load volatile i32, ptr %1, align 4
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %170

174:                                              ; preds = %170
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !33
  br label %160

175:                                              ; preds = %164
  %176 = load ptr, ptr %6, align 4
  %177 = icmp eq ptr %176, %79
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, ptr %63, align 4
  %180 = icmp eq i32 %179, %80
  br i1 %180, label %184, label %181

181:                                              ; preds = %178, %175
  %182 = load volatile i32, ptr %1, align 4
  %183 = and i32 %182, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %183, ptr %1, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %159) #26, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !36
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !37
  br label %75

184:                                              ; preds = %178
  %185 = and i32 %91, 2147483647
  store ptr %90, ptr %6, align 4
  store i32 %185, ptr %63, align 4
  %186 = load volatile i32, ptr %1, align 4
  %187 = and i32 %186, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %187, ptr %1, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %159) #26, !srcloc !16
  %188 = icmp eq i32 %120, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %184
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %119) #26
  br label %190

190:                                              ; preds = %189, %184
  %191 = or i1 %116, %117
  br i1 %191, label %206, label %192

192:                                              ; preds = %190
  %193 = load i32, ptr %63, align 4
  %194 = lshr i32 %193, 16
  %195 = and i32 %194, 32767
  %196 = load ptr, ptr %4, align 4
  %197 = getelementptr inbounds %struct.kmem_cache_node, ptr %196, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %197) #26, !srcloc !17
  %198 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %197, ptr %197, i32 1, ptr elementtype(i32) %197) #26, !srcloc !57
  %199 = getelementptr inbounds %struct.kmem_cache_node, ptr %196, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %199) #26, !srcloc !17
  %200 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %199, ptr %199, i32 %195, ptr elementtype(i32) %199) #26, !srcloc !57
  %201 = load i32, ptr %69, align 4
  %202 = and i32 %201, 524288
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %205, label %204, !prof !22

204:                                              ; preds = %192
  tail call void @call_rcu(ptr noundef %70, ptr noundef nonnull @rcu_free_slab) #26
  br label %206

205:                                              ; preds = %192
  tail call fastcc void @__free_slab(ptr noundef %0, ptr noundef %1) #26
  br label %206

206:                                              ; preds = %205, %204, %190
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @new_slab(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = and i32 %1, -33554426
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !22

6:                                                ; preds = %3
  %7 = tail call i32 @kmalloc_fix_flags(i32 noundef %1) #26
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %1, %3 ]
  %10 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ne ptr %11, null
  %13 = and i32 %9, 256
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  %16 = load i1, ptr @new_slab.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !11

19:                                               ; preds = %8
  store i1 true, ptr @new_slab.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2002, i32 noundef 9, ptr noundef null) #26
  br label %20

20:                                               ; preds = %19, %8
  %21 = and i32 %9, 3927776
  %22 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr @gfp_allowed_mask, align 4
  %25 = and i32 %21, %24
  %26 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %25, %27
  %29 = and i32 %28, -106497
  %30 = or i32 %29, 73728
  %31 = and i32 %28, 1024
  %32 = icmp eq i32 %31, 0
  %33 = lshr i32 %23, 16
  br i1 %32, label %42, label %34

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 16
  %38 = icmp ugt i32 %33, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = and i32 %28, -633857
  %41 = or i32 %40, 598016
  br label %42

42:                                               ; preds = %39, %34, %20
  %43 = phi i32 [ %41, %39 ], [ %30, %34 ], [ %30, %20 ]
  %44 = tail call ptr @__alloc_pages(i32 noundef %43, i32 noundef %33, i32 noundef 0, ptr noundef null) #26
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %44, align 4
  %48 = or i32 %47, 512
  store i32 %48, ptr %44, align 4
  %49 = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = and i32 %51, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %72, label %68

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 11
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 16
  %58 = tail call ptr @__alloc_pages(i32 noundef %28, i32 noundef %57, i32 noundef 0, ptr noundef null) #26
  %59 = icmp eq ptr %58, null
  br i1 %59, label %288, label %60

60:                                               ; preds = %54
  %61 = load i32, ptr %58, align 4
  %62 = or i32 %61, 512
  store i32 %62, ptr %58, align 4
  %63 = getelementptr inbounds %struct.page, ptr %58, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = and i32 %65, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %60, %46
  %69 = phi ptr [ %44, %46 ], [ %58, %60 ]
  %70 = phi i32 [ %33, %46 ], [ %57, %60 ]
  %71 = phi i32 [ %23, %46 ], [ %56, %60 ]
  tail call void @_set_bit(i32 noundef 5, ptr noundef nonnull %69) #26
  br label %72

72:                                               ; preds = %68, %60, %46
  %73 = phi i32 [ %33, %46 ], [ %57, %60 ], [ %70, %68 ]
  %74 = phi ptr [ %44, %46 ], [ %58, %60 ], [ %69, %68 ]
  %75 = phi i32 [ %23, %46 ], [ %56, %60 ], [ %71, %68 ]
  %76 = getelementptr inbounds %struct.slab, ptr %74, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = shl i32 %75, 16
  %79 = and i32 %78, 2147418112
  %80 = and i32 %77, -2147418113
  %81 = or i32 %80, %79
  store i32 %81, ptr %76, align 4
  %82 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 131072
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 6, i32 5
  %87 = shl i32 4096, %73
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef %86, i32 noundef %87) #26
  %88 = getelementptr inbounds %struct.slab, ptr %74, i32 0, i32 2
  store ptr %0, ptr %88, align 4
  %89 = tail call ptr @page_address(ptr noundef nonnull %74) #26
  %90 = load volatile i32, ptr @slub_debug_enabled, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %72
  %93 = load i32, ptr %82, align 4
  %94 = and i32 %93, 2048
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %92
  %97 = load volatile i32, ptr %74, align 4
  %98 = and i32 %97, 65536
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = getelementptr %struct.page, ptr %74, i32 1, i32 1
  %102 = getelementptr inbounds %struct.anon.8, ptr %101, i32 0, i32 2
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  br label %105

105:                                              ; preds = %100, %96
  %106 = phi i32 [ %104, %100 ], [ 0, %96 ]
  %107 = shl i32 4096, %106
  tail call void @llvm.memset.p0.i32(ptr align 1 %89, i8 90, i32 %107, i1 false) #26
  br label %108

108:                                              ; preds = %105, %92, %72
  %109 = load volatile i32, ptr @slub_debug_enabled, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32, ptr %82, align 4
  %113 = and i32 %112, 1024
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr i8, ptr %89, i32 %117
  br label %119

119:                                              ; preds = %115, %111, %108
  %120 = phi ptr [ %118, %115 ], [ %89, %111 ], [ %89, %108 ]
  %121 = load volatile i32, ptr @slub_debug_enabled, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %179

123:                                              ; preds = %119
  %124 = load i32, ptr %82, align 4
  %125 = and i32 %124, -2147417088
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %179, label %127

127:                                              ; preds = %123
  %128 = and i32 %124, 1024
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %132 = load i32, ptr %131, align 4
  %133 = sub i32 0, %132
  %134 = getelementptr i8, ptr %120, i32 %133
  tail call void @llvm.memset.p0.i32(ptr align 1 %134, i8 -69, i32 %132, i1 false) #26
  %135 = load i32, ptr %82, align 4
  br label %136

136:                                              ; preds = %130, %127
  %137 = phi i32 [ %135, %130 ], [ %124, %127 ]
  %138 = icmp sgt i32 %137, -1
  br i1 %138, label %147, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  %141 = load i32, ptr %140, align 4
  %142 = add i32 %141, -1
  tail call void @llvm.memset.p0.i32(ptr align 1 %120, i8 107, i32 %142, i1 false) #26
  %143 = load i32, ptr %140, align 4
  %144 = add i32 %143, -1
  %145 = getelementptr i8, ptr %120, i32 %144
  store i8 -91, ptr %145, align 1
  %146 = load i32, ptr %82, align 4
  br label %147

147:                                              ; preds = %139, %136
  %148 = phi i32 [ %146, %139 ], [ %137, %136 ]
  %149 = and i32 %148, 1024
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr i8, ptr %120, i32 %153
  %155 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  %156 = load i32, ptr %155, align 4
  %157 = sub i32 %156, %153
  tail call void @llvm.memset.p0.i32(ptr align 1 %154, i8 -69, i32 %157, i1 false) #26
  %158 = load i32, ptr %82, align 4
  br label %159

159:                                              ; preds = %151, %147
  %160 = phi i32 [ %148, %147 ], [ %158, %151 ]
  %161 = and i32 %160, 65536
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %179, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  %167 = load i32, ptr %166, align 4
  %168 = icmp ult i32 %165, %167
  %169 = add i32 %167, 4
  %170 = select i1 %168, i32 %167, i32 %169
  %171 = getelementptr i8, ptr %120, i32 %170
  %172 = getelementptr %struct.track, ptr %171, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(80) %172, i8 0, i32 80, i1 false) #26
  %173 = load i32, ptr %164, align 4
  %174 = load i32, ptr %166, align 4
  %175 = icmp ult i32 %173, %174
  %176 = add i32 %174, 4
  %177 = select i1 %175, i32 %174, i32 %176
  %178 = getelementptr i8, ptr %120, i32 %177
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(80) %178, i8 0, i32 80, i1 false) #26
  br label %179

179:                                              ; preds = %163, %159, %123, %119
  %180 = load ptr, ptr %10, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %183, label %182, !prof !22

182:                                              ; preds = %179
  tail call void %180(ptr noundef %120) #26
  br label %183

183:                                              ; preds = %182, %179
  %184 = getelementptr inbounds %struct.slab, ptr %74, i32 0, i32 3
  store ptr %120, ptr %184, align 4
  %185 = load i32, ptr %76, align 4
  %186 = and i32 %185, 2147352576
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %266, label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %190 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %191 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  %192 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  %193 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  br label %194

194:                                              ; preds = %255, %188
  %195 = phi i32 [ 0, %188 ], [ %260, %255 ]
  %196 = phi ptr [ %120, %188 ], [ %198, %255 ]
  %197 = load i32, ptr %189, align 4
  %198 = getelementptr i8, ptr %196, i32 %197
  %199 = load volatile i32, ptr @slub_debug_enabled, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %251

201:                                              ; preds = %194
  %202 = load i32, ptr %82, align 4
  %203 = and i32 %202, -2147417088
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %251, label %205

205:                                              ; preds = %201
  %206 = and i32 %202, 1024
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %205
  %209 = load i32, ptr %190, align 4
  %210 = sub i32 0, %209
  %211 = getelementptr i8, ptr %198, i32 %210
  tail call void @llvm.memset.p0.i32(ptr align 1 %211, i8 -69, i32 %209, i1 false) #26
  %212 = load i32, ptr %82, align 4
  br label %213

213:                                              ; preds = %208, %205
  %214 = phi i32 [ %212, %208 ], [ %202, %205 ]
  %215 = icmp sgt i32 %214, -1
  br i1 %215, label %223, label %216

216:                                              ; preds = %213
  %217 = load i32, ptr %191, align 4
  %218 = add i32 %217, -1
  tail call void @llvm.memset.p0.i32(ptr align 1 %198, i8 107, i32 %218, i1 false) #26
  %219 = load i32, ptr %191, align 4
  %220 = add i32 %219, -1
  %221 = getelementptr i8, ptr %198, i32 %220
  store i8 -91, ptr %221, align 1
  %222 = load i32, ptr %82, align 4
  br label %223

223:                                              ; preds = %216, %213
  %224 = phi i32 [ %222, %216 ], [ %214, %213 ]
  %225 = and i32 %224, 1024
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %223
  %228 = load i32, ptr %191, align 4
  %229 = getelementptr i8, ptr %198, i32 %228
  %230 = load i32, ptr %192, align 4
  %231 = sub i32 %230, %228
  tail call void @llvm.memset.p0.i32(ptr align 1 %229, i8 -69, i32 %231, i1 false) #26
  %232 = load i32, ptr %82, align 4
  br label %233

233:                                              ; preds = %227, %223
  %234 = phi i32 [ %224, %223 ], [ %232, %227 ]
  %235 = and i32 %234, 65536
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %251, label %237

237:                                              ; preds = %233
  %238 = load i32, ptr %193, align 4
  %239 = load i32, ptr %192, align 4
  %240 = icmp ult i32 %238, %239
  %241 = add i32 %239, 4
  %242 = select i1 %240, i32 %239, i32 %241
  %243 = getelementptr i8, ptr %198, i32 %242
  %244 = getelementptr %struct.track, ptr %243, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(80) %244, i8 0, i32 80, i1 false) #26
  %245 = load i32, ptr %193, align 4
  %246 = load i32, ptr %192, align 4
  %247 = icmp ult i32 %245, %246
  %248 = add i32 %246, 4
  %249 = select i1 %247, i32 %246, i32 %248
  %250 = getelementptr i8, ptr %198, i32 %249
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(80) %250, i8 0, i32 80, i1 false) #26
  br label %251

251:                                              ; preds = %237, %233, %201, %194
  %252 = load ptr, ptr %10, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %255, label %254, !prof !22

254:                                              ; preds = %251
  tail call void %252(ptr noundef %198) #26
  br label %255

255:                                              ; preds = %254, %251
  %256 = ptrtoint ptr %196 to i32
  %257 = load i32, ptr %193, align 4
  %258 = add i32 %257, %256
  %259 = inttoptr i32 %258 to ptr
  store ptr %198, ptr %259, align 4
  %260 = add nuw nsw i32 %195, 1
  %261 = load i32, ptr %76, align 4
  %262 = lshr i32 %261, 16
  %263 = and i32 %262, 32767
  %264 = add nsw i32 %263, -1
  %265 = icmp slt i32 %260, %264
  br i1 %265, label %194, label %266

266:                                              ; preds = %255, %183
  %267 = phi ptr [ %120, %183 ], [ %198, %255 ]
  %268 = ptrtoint ptr %267 to i32
  %269 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %270 = load i32, ptr %269, align 4
  %271 = add i32 %270, %268
  %272 = inttoptr i32 %271 to ptr
  store ptr null, ptr %272, align 4
  %273 = load i32, ptr %76, align 4
  %274 = lshr i32 %273, 16
  %275 = and i32 %274, 32767
  %276 = and i32 %273, 2147418112
  %277 = or i32 %276, %275
  %278 = or i32 %277, -2147483648
  store i32 %278, ptr %76, align 4
  %279 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %280 = load ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, null
  br i1 %281, label %288, label %282, !prof !11

282:                                              ; preds = %266
  %283 = lshr exact i32 %276, 16
  %284 = getelementptr inbounds %struct.kmem_cache_node, ptr %280, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %284) #26, !srcloc !17
  %285 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %284, ptr %284, i32 1, ptr elementtype(i32) %284) #26, !srcloc !66
  %286 = getelementptr inbounds %struct.kmem_cache_node, ptr %280, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %286) #26, !srcloc !17
  %287 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %286, ptr %286, i32 %283, ptr elementtype(i32) %286) #26, !srcloc !66
  br label %288

288:                                              ; preds = %282, %266, %54
  %289 = phi ptr [ %74, %266 ], [ %74, %282 ], [ null, %54 ]
  ret ptr %289
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @slab_out_of_memory(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #16 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = and i32 %1, 8192
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %48

6:                                                ; preds = %2
  %7 = tail call i32 @___ratelimit(ptr noundef nonnull @slab_out_of_memory.slub_oom_rs, ptr noundef nonnull @__func__.slab_out_of_memory) #26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %6
  %10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef -1, i32 noundef %1, ptr noundef nonnull %3) #25
  %11 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 16
  %20 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %19, i32 noundef %22) #25
  %24 = load i32, ptr %20, align 4
  %25 = lshr i32 %24, 16
  %26 = load i32, ptr %13, align 4
  %27 = add i32 %26, -1
  %28 = icmp ult i32 %27, 4096
  %29 = lshr i32 %27, 12
  %30 = call i32 @llvm.ctlz.i32(i32 %29, i1 false) #26, !range !58
  %31 = sub nuw nsw i32 32, %30
  %32 = select i1 %28, i32 0, i32 %31
  %33 = icmp ugt i32 %25, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %9
  %35 = load ptr, ptr %11, align 4
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %35) #25
  br label %37

37:                                               ; preds = %34, %9
  %38 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = call fastcc i32 @count_partial(ptr noundef nonnull %39, ptr noundef nonnull @count_free)
  %43 = getelementptr inbounds %struct.kmem_cache_node, ptr %39, i32 0, i32 3
  %44 = load volatile i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.kmem_cache_node, ptr %39, i32 0, i32 4
  %46 = load volatile i32, ptr %45, align 4
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef 0, i32 noundef %44, i32 noundef %46, i32 noundef %42) #25
  br label %48

48:                                               ; preds = %41, %37, %6, %2
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @alloc_debug_processing(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #16 {
  %5 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %49, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @check_slab(ptr noundef %0, ptr noundef %1) #26
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %126, label %12

12:                                               ; preds = %9
  %13 = icmp eq ptr %2, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %12
  %15 = tail call ptr @page_address(ptr noundef %1) #26
  %16 = load i32, ptr %5, align 4
  %17 = and i32 %16, 1024
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %21 = load i32, ptr %20, align 4
  %22 = sub i32 0, %21
  %23 = getelementptr i8, ptr %2, i32 %22
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi ptr [ %23, %19 ], [ %2, %14 ]
  %26 = icmp ult ptr %25, %15
  br i1 %26, label %43, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 32767
  %32 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = mul i32 %31, %33
  %35 = getelementptr i8, ptr %15, i32 %34
  %36 = icmp ult ptr %25, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = ptrtoint ptr %25 to i32
  %39 = ptrtoint ptr %15 to i32
  %40 = sub i32 %38, %39
  %41 = urem i32 %40, %33
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37, %27, %24
  tail call void (ptr, ptr, ...) @slab_bug(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.75) #26
  tail call fastcc void @print_trailer(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #26
  tail call void @add_taint(i32 noundef 5, i32 noundef 1) #26
  br label %126

44:                                               ; preds = %37, %12
  %45 = tail call fastcc i32 @check_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext -69) #26
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %126, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %5, align 4
  br label %49

49:                                               ; preds = %47, %4
  %50 = phi i32 [ %48, %47 ], [ %6, %4 ]
  %51 = and i32 %50, 65536
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %80, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  %57 = load i32, ptr %56, align 4
  %58 = icmp ult i32 %55, %57
  %59 = add i32 %57, 4
  %60 = select i1 %58, i32 %57, i32 %59
  %61 = getelementptr i8, ptr %2, i32 %60
  %62 = icmp eq i32 %3, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.track, ptr %61, i32 0, i32 1
  %65 = tail call i32 @stack_trace_save(ptr noundef %64, i32 noundef 16, i32 noundef 3) #26
  %66 = icmp ult i32 %65, 16
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = getelementptr %struct.track, ptr %61, i32 0, i32 1, i32 %65
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %63
  store i32 %3, ptr %61, align 4
  %70 = tail call ptr @llvm.thread.pointer() #26
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = getelementptr inbounds %struct.track, ptr %61, i32 0, i32 2
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 52
  %75 = load i32, ptr %74, align 8
  %76 = getelementptr inbounds %struct.track, ptr %61, i32 0, i32 3
  store i32 %75, ptr %76, align 4
  %77 = load volatile i32, ptr @jiffies, align 64
  %78 = getelementptr inbounds %struct.track, ptr %61, i32 0, i32 4
  store i32 %77, ptr %78, align 4
  br label %80

79:                                               ; preds = %53
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(80) %61, i8 0, i32 80, i1 false) #26
  br label %80

80:                                               ; preds = %79, %69, %49
  %81 = load i32, ptr %5, align 4
  %82 = and i32 %81, 2097152
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 18
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 65535
  %90 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %86, ptr noundef nonnull @.str.61, ptr noundef %2, i32 noundef %89, ptr noundef %91) #25
  tail call void @dump_stack() #25
  %93 = load i32, ptr %5, align 4
  br label %94

94:                                               ; preds = %84, %80
  %95 = phi i32 [ %81, %80 ], [ %93, %84 ]
  %96 = and i32 %95, 1024
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %100 = load i32, ptr %99, align 4
  %101 = sub i32 0, %100
  %102 = getelementptr i8, ptr %2, i32 %101
  tail call void @llvm.memset.p0.i32(ptr align 1 %102, i8 -52, i32 %100, i1 false) #26
  %103 = load i32, ptr %5, align 4
  br label %104

104:                                              ; preds = %98, %94
  %105 = phi i32 [ %103, %98 ], [ %95, %94 ]
  %106 = icmp sgt i32 %105, -1
  br i1 %106, label %115, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, -1
  tail call void @llvm.memset.p0.i32(ptr align 1 %2, i8 107, i32 %110, i1 false) #26
  %111 = load i32, ptr %108, align 4
  %112 = add i32 %111, -1
  %113 = getelementptr i8, ptr %2, i32 %112
  store i8 -91, ptr %113, align 1
  %114 = load i32, ptr %5, align 4
  br label %115

115:                                              ; preds = %107, %104
  %116 = phi i32 [ %114, %107 ], [ %105, %104 ]
  %117 = and i32 %116, 1024
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %138, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr i8, ptr %2, i32 %121
  %123 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  %124 = load i32, ptr %123, align 4
  %125 = sub i32 %124, %121
  tail call void @llvm.memset.p0.i32(ptr align 1 %122, i8 -52, i32 %125, i1 false) #26
  br label %138

126:                                              ; preds = %44, %43, %9
  %127 = load volatile i32, ptr %1, align 4
  %128 = and i32 %127, 512
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %126
  tail call void (ptr, ptr, ...) @slab_fix(ptr noundef %0, ptr noundef nonnull @.str.74)
  %131 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 4
  %132 = load i32, ptr %131, align 4
  %133 = lshr i32 %132, 16
  %134 = and i32 %133, 32767
  %135 = and i32 %132, -65536
  %136 = or i32 %134, %135
  store i32 %136, ptr %131, align 4
  %137 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 3
  store ptr null, ptr %137, align 4
  br label %138

138:                                              ; preds = %130, %126, %119, %115
  %139 = phi i32 [ 0, %130 ], [ 0, %126 ], [ 1, %115 ], [ 1, %119 ]
  ret i32 %139
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gfp_pfmemalloc_allowed(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmalloc_fix_flags(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #20

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #21

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_assert_cpus_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #22

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @flush_cpu_slab(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.slub_flush_work, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #19, !srcloc !12
  %9 = add i32 %8, %5
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %1
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #19, !srcloc !12
  %19 = load ptr, ptr %11, align 4
  %20 = load ptr, ptr %10, align 4
  store ptr null, ptr %11, align 4
  store ptr null, ptr %10, align 4
  %21 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %10, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #19, !srcloc !12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #26, !srcloc !16
  %27 = icmp eq ptr %19, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %14
  tail call fastcc void @deactivate_slab(ptr noundef %3, ptr noundef nonnull %19, ptr noundef %20) #26
  br label %29

29:                                               ; preds = %28, %14, %1
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #19, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !70
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %34, i32 0, i32 3
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #19, !srcloc !12
  %40 = add i32 %39, %36
  %41 = inttoptr i32 %40 to ptr
  %42 = load volatile ptr, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !71
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #26, !srcloc !15
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %44, i32 0, i32 3
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %48 = inttoptr i32 %47 to ptr
  %49 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %48) #19, !srcloc !12
  %50 = add i32 %49, %46
  %51 = inttoptr i32 %50 to ptr
  store ptr null, ptr %51, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %43) #26, !srcloc !16
  %52 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %53 = inttoptr i32 %52 to ptr
  %54 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %53) #19, !srcloc !12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #26, !srcloc !16
  %55 = icmp eq ptr %42, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %29
  tail call fastcc void @__unfreeze_partials(ptr noundef %3, ptr noundef nonnull %42) #26
  br label %57

57:                                               ; preds = %56, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_kfree(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @calculate_sizes(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = alloca %struct.reciprocal_value, align 8
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 3
  %8 = and i32 %7, -4
  %9 = and i32 %4, 526336
  %10 = icmp eq i32 %9, 2048
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %19

15:                                               ; preds = %1
  %16 = and i32 %4, 2147483647
  store i32 %16, ptr %3, align 4
  %17 = and i32 %4, 1024
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %41, label %27

19:                                               ; preds = %11
  %20 = and i32 %4, 2147483647
  store i32 %20, ptr %3, align 4
  %21 = and i32 %4, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %58, label %27

23:                                               ; preds = %11
  %24 = or i32 %4, -2147483648
  store i32 %24, ptr %3, align 4
  %25 = and i32 %4, 1024
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %23, %19, %15
  %28 = icmp eq i32 %8, %6
  %29 = add i32 %8, 4
  %30 = select i1 %28, i32 %29, i32 %8
  %31 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  store i32 %30, ptr %31, align 4
  %32 = icmp ne i32 %9, 0
  %33 = icmp ult i32 %6, 4
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  store i32 %30, ptr %36, align 4
  %37 = and i32 %4, 65536
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 4, i32 164
  %40 = add i32 %30, %39
  br label %77

41:                                               ; preds = %15
  %42 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  store i32 %8, ptr %42, align 4
  %43 = icmp eq i32 %9, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41, %27
  %45 = phi i1 [ true, %41 ], [ false, %27 ]
  %46 = phi i32 [ %8, %41 ], [ %30, %27 ]
  %47 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 14
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = lshr i32 %6, 1
  %52 = and i32 %51, 2147483644
  %53 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  store i32 %52, ptr %53, align 4
  %54 = and i32 %4, 65536
  %55 = icmp eq i32 %54, 0
  %56 = add i32 %46, 160
  %57 = select i1 %55, i32 %46, i32 %56
  br i1 %45, label %72, label %77

58:                                               ; preds = %23, %19
  %59 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 15
  store i32 %8, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %41
  %61 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  store i32 %8, ptr %61, align 4
  %62 = and i32 %4, 65536
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 4, i32 164
  %65 = add i32 %8, %64
  br label %72

66:                                               ; preds = %44
  %67 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  store i32 %46, ptr %67, align 4
  %68 = and i32 %4, 65536
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 4, i32 164
  %71 = add i32 %46, %70
  br i1 %45, label %72, label %77

72:                                               ; preds = %66, %60, %50
  %73 = phi i32 [ %57, %50 ], [ %71, %66 ], [ %65, %60 ]
  %74 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 16
  %75 = load i32, ptr %74, align 4
  %76 = sub i32 0, %75
  br label %87

77:                                               ; preds = %66, %50, %35
  %78 = phi i32 [ %57, %50 ], [ %71, %66 ], [ %40, %35 ]
  %79 = add i32 %78, 4
  %80 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %81 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 16
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, 3
  %84 = sub i32 0, %82
  %85 = and i32 %83, %84
  store i32 %85, ptr %80, align 4
  %86 = add i32 %79, %85
  br label %87

87:                                               ; preds = %77, %72
  %88 = phi i32 [ %76, %72 ], [ %84, %77 ]
  %89 = phi i32 [ %75, %72 ], [ %82, %77 ]
  %90 = phi i32 [ %73, %72 ], [ %86, %77 ]
  %91 = add i32 %90, -1
  %92 = add i32 %91, %89
  %93 = and i32 %92, %88
  %94 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  call void @reciprocal_value(ptr nonnull sret(%struct.reciprocal_value) align 4 %2, i32 noundef %93) #26
  %96 = load i64, ptr %2, align 8
  store i64 %96, ptr %95, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  %97 = load i32, ptr @slub_min_objects, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %87
  %100 = load i32, ptr @__cpu_present_mask, align 4
  %101 = and i32 %100, 65535
  %102 = call i32 @__sw_hweight32(i32 noundef %101) #26
  %103 = icmp ult i32 %102, 2
  %104 = load i32, ptr @nr_cpu_ids, align 4
  %105 = select i1 %103, i32 %104, i32 %102
  %106 = icmp eq i32 %105, 0
  %107 = call i32 @llvm.ctlz.i32(i32 %105, i1 false) #26, !range !58
  %108 = mul nsw i32 %107, -4
  %109 = add nsw i32 %108, 132
  %110 = select i1 %106, i32 4, i32 %109
  br label %111

111:                                              ; preds = %99, %87
  %112 = phi i32 [ %97, %87 ], [ %110, %99 ]
  %113 = load i32, ptr @slub_max_order, align 4
  %114 = shl i32 4096, %113
  %115 = udiv i32 %114, %93
  %116 = call i32 @llvm.umin.i32(i32 %112, i32 %115) #26
  %117 = load i32, ptr @slub_min_order, align 4
  %118 = shl i32 4096, %117
  %119 = mul i32 %93, 32767
  %120 = add i32 %119, -1
  %121 = lshr i32 %120, 12
  %122 = icmp ult i32 %120, 4096
  %123 = call i32 @llvm.ctlz.i32(i32 %121, i1 false) #26, !range !72
  %124 = sub nuw nsw i32 32, %123
  %125 = select i1 %122, i32 0, i32 %124
  %126 = udiv i32 %118, %93
  %127 = icmp ugt i32 %126, 32767
  %128 = icmp ugt i32 %116, 1
  br i1 %128, label %129, label %184

129:                                              ; preds = %111
  %130 = add nsw i32 %125, -1
  %131 = icmp ugt i32 %130, %113
  br label %135

132:                                              ; preds = %158
  %133 = add i32 %136, -1
  %134 = icmp ugt i32 %133, 1
  br i1 %134, label %135, label %184

135:                                              ; preds = %132, %129
  %136 = phi i32 [ %133, %132 ], [ %116, %129 ]
  br i1 %127, label %183, label %161

137:                                              ; preds = %180, %143
  %138 = phi i32 [ %144, %143 ], [ %169, %180 ]
  %139 = shl i32 4096, %138
  %140 = urem i32 %139, %93
  %141 = lshr exact i32 %139, 3
  %142 = icmp ugt i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = add i32 %138, 1
  %145 = icmp ugt i32 %144, %113
  br i1 %145, label %146, label %137

146:                                              ; preds = %143, %137
  %147 = phi i32 [ %144, %143 ], [ %138, %137 ]
  %148 = icmp ugt i32 %147, %113
  br i1 %148, label %149, label %202

149:                                              ; preds = %155, %146
  %150 = phi i32 [ %156, %155 ], [ %169, %146 ]
  %151 = shl i32 4096, %150
  %152 = urem i32 %151, %93
  %153 = lshr exact i32 %151, 2
  %154 = icmp ugt i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = add i32 %150, 1
  %157 = icmp ugt i32 %156, %113
  br i1 %157, label %158, label %149

158:                                              ; preds = %183, %161, %155, %149
  %159 = phi i32 [ %169, %161 ], [ %130, %183 ], [ %156, %155 ], [ %150, %149 ]
  %160 = icmp ugt i32 %159, %113
  br i1 %160, label %132, label %202

161:                                              ; preds = %135
  %162 = mul i32 %136, %93
  %163 = add i32 %162, -1
  %164 = icmp ult i32 %163, 4096
  %165 = lshr i32 %163, 12
  %166 = call i32 @llvm.ctlz.i32(i32 %165, i1 false) #26, !range !72
  %167 = sub nuw nsw i32 32, %166
  %168 = select i1 %164, i32 0, i32 %167
  %169 = call i32 @llvm.umax.i32(i32 %117, i32 %168) #26
  %170 = icmp ugt i32 %169, %113
  br i1 %170, label %158, label %171

171:                                              ; preds = %177, %161
  %172 = phi i32 [ %178, %177 ], [ %169, %161 ]
  %173 = shl i32 4096, %172
  %174 = urem i32 %173, %93
  %175 = lshr exact i32 %173, 4
  %176 = icmp ugt i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = add i32 %172, 1
  %179 = icmp ugt i32 %178, %113
  br i1 %179, label %180, label %171

180:                                              ; preds = %177, %171
  %181 = phi i32 [ %178, %177 ], [ %172, %171 ]
  %182 = icmp ugt i32 %181, %113
  br i1 %182, label %137, label %202

183:                                              ; preds = %135
  br i1 %131, label %158, label %202

184:                                              ; preds = %132, %111
  br i1 %127, label %185, label %188

185:                                              ; preds = %184
  %186 = add nsw i32 %125, -1
  %187 = icmp ugt i32 %186, %113
  br i1 %187, label %199, label %202

188:                                              ; preds = %184
  %189 = add i32 %93, -1
  %190 = lshr i32 %189, 12
  %191 = icmp ult i32 %189, 4096
  %192 = call i32 @llvm.ctlz.i32(i32 %190, i1 false) #26, !range !58
  %193 = sub nuw nsw i32 32, %192
  %194 = select i1 %191, i32 0, i32 %193
  %195 = call i32 @llvm.umax.i32(i32 %117, i32 %194) #26
  %196 = icmp ugt i32 %195, %113
  br i1 %196, label %197, label %202

197:                                              ; preds = %188
  %198 = call i32 @llvm.umax.i32(i32 %117, i32 %194) #26
  br label %199

199:                                              ; preds = %197, %185
  %200 = phi i32 [ %198, %197 ], [ %186, %185 ]
  %201 = icmp ult i32 %200, 12
  br i1 %201, label %205, label %249

202:                                              ; preds = %188, %185, %183, %180, %158, %146
  %203 = phi i32 [ %186, %185 ], [ %195, %188 ], [ %181, %180 ], [ %147, %146 ], [ %159, %158 ], [ %130, %183 ]
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %249, label %205

205:                                              ; preds = %202, %199
  %206 = phi i32 [ %203, %202 ], [ %200, %199 ]
  %207 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 12
  %208 = icmp eq i32 %206, 0
  %209 = select i1 %208, i32 0, i32 262144
  store i32 %209, ptr %207, align 4
  %210 = load i32, ptr %3, align 4
  %211 = and i32 %210, 180224
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %223, label %213

213:                                              ; preds = %205
  %214 = lshr i32 %210, 13
  %215 = and i32 %214, 4
  %216 = lshr i32 %210, 14
  %217 = and i32 %216, 1
  %218 = or i32 %217, %209
  %219 = or i32 %215, %218
  %220 = lshr i32 %210, 13
  %221 = and i32 %220, 16
  %222 = or i32 %221, %219
  store i32 %222, ptr %207, align 4
  br label %223

223:                                              ; preds = %213, %205
  %224 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 9
  %225 = shl i32 %206, 16
  %226 = shl i32 4096, %206
  %227 = udiv i32 %226, %93
  %228 = add i32 %227, %225
  store i32 %228, ptr %224, align 4
  %229 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 11
  %230 = add i32 %93, -1
  %231 = icmp ult i32 %230, 4096
  %232 = lshr i32 %230, 12
  %233 = call i32 @llvm.ctlz.i32(i32 %232, i1 false) #26, !range !58
  %234 = sub nuw nsw i32 32, %233
  %235 = select i1 %231, i32 0, i32 %234
  %236 = shl nsw i32 %235, 16
  %237 = shl i32 4096, %235
  %238 = udiv i32 %237, %93
  %239 = add i32 %238, %236
  store i32 %239, ptr %229, align 4
  %240 = and i32 %228, 65535
  %241 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 10
  %242 = load i32, ptr %241, align 4
  %243 = and i32 %242, 65535
  %244 = icmp ugt i32 %240, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %223
  store i32 %228, ptr %241, align 4
  br label %246

246:                                              ; preds = %245, %223
  %247 = icmp ne i32 %240, 0
  %248 = zext i1 %247 to i32
  br label %249

249:                                              ; preds = %246, %202, %199
  %250 = phi i32 [ %248, %246 ], [ 0, %202 ], [ 0, %199 ]
  ret i32 %250
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reciprocal_value(ptr sret(%struct.reciprocal_value) align 4, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @validate_slab(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call ptr @page_address(ptr noundef %1) #26
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !26
  br label %5

5:                                                ; preds = %19, %3
  %6 = load volatile i32, ptr %1, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14, !prof !27

9:                                                ; preds = %5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #26, !srcloc !17
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #26, !srcloc !28
  %11 = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !29
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14, !prof !22

14:                                               ; preds = %9, %5
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !30
  br label %15

15:                                               ; preds = %15, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !31
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #26, !srcloc !32
  %16 = load volatile i32, ptr %1, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !33
  br label %5

20:                                               ; preds = %9
  %21 = tail call fastcc i32 @check_slab(ptr noundef %0, ptr noundef %1)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %129, label %23

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @on_freelist(ptr noundef %0, ptr noundef %1, ptr noundef null)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %129, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @page_address(ptr noundef %1) #26
  %28 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 32767
  %32 = add nuw nsw i32 %31, 31
  %33 = lshr i32 %32, 3
  %34 = and i32 %33, 8188
  tail call void @llvm.memset.p0.i32(ptr align 4 %2, i8 0, i32 %34, i1 false) #26
  %35 = getelementptr inbounds %struct.slab, ptr %1, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %66, label %38

38:                                               ; preds = %26
  %39 = ptrtoint ptr %27 to i32
  %40 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 5
  %41 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 5, i32 1
  %42 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 6
  br label %43

43:                                               ; preds = %43, %38
  %44 = phi ptr [ %36, %38 ], [ %64, %43 ]
  %45 = ptrtoint ptr %44 to i32
  %46 = sub i32 %45, %39
  %47 = load i32, ptr %40, align 4
  %48 = load i32, ptr %41, align 4
  %49 = lshr i32 %48, 8
  %50 = zext i32 %46 to i64
  %51 = zext i32 %47 to i64
  %52 = mul nuw i64 %50, %51
  %53 = lshr i64 %52, 32
  %54 = trunc i64 %53 to i32
  %55 = sub i32 %46, %54
  %56 = and i32 %48, 255
  %57 = lshr i32 %55, %56
  %58 = add i32 %57, %54
  %59 = and i32 %49, 255
  %60 = lshr i32 %58, %59
  tail call void @_set_bit(i32 noundef %60, ptr noundef %2) #26
  %61 = load i32, ptr %42, align 4
  %62 = getelementptr i8, ptr %44, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = inttoptr i32 %63 to ptr
  %65 = icmp eq i32 %63, 0
  br i1 %65, label %66, label %43

66:                                               ; preds = %43, %26
  %67 = load volatile i32, ptr @slub_debug_enabled, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 1024
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 17
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr i8, ptr %4, i32 %76
  br label %78

78:                                               ; preds = %74, %69, %66
  %79 = phi ptr [ %77, %74 ], [ %4, %69 ], [ %4, %66 ]
  %80 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %81 = load i32, ptr %28, align 4
  %82 = lshr i32 %81, 16
  %83 = and i32 %82, 32767
  %84 = load i32, ptr %80, align 4
  %85 = mul i32 %83, %84
  %86 = getelementptr i8, ptr %4, i32 %85
  %87 = icmp ult ptr %79, %86
  br i1 %87, label %88, label %129

88:                                               ; preds = %78
  %89 = ptrtoint ptr %4 to i32
  %90 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 5
  %91 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 5, i32 1
  br label %92

92:                                               ; preds = %120, %88
  %93 = phi ptr [ %79, %88 ], [ %122, %120 ]
  %94 = ptrtoint ptr %93 to i32
  %95 = sub i32 %94, %89
  %96 = load i32, ptr %90, align 4
  %97 = load i32, ptr %91, align 4
  %98 = lshr i32 %97, 8
  %99 = zext i32 %95 to i64
  %100 = zext i32 %96 to i64
  %101 = mul nuw i64 %100, %99
  %102 = lshr i64 %101, 32
  %103 = trunc i64 %102 to i32
  %104 = sub i32 %95, %103
  %105 = and i32 %97, 255
  %106 = lshr i32 %104, %105
  %107 = add i32 %106, %103
  %108 = and i32 %98, 255
  %109 = lshr i32 %107, %108
  %110 = lshr i32 %109, 5
  %111 = getelementptr i32, ptr %2, i32 %110
  %112 = load volatile i32, ptr %111, align 4
  %113 = and i32 %109, 31
  %114 = shl nuw i32 1, %113
  %115 = and i32 %114, %112
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i8 -52, i8 -69
  %118 = tail call fastcc i32 @check_object(ptr noundef %0, ptr noundef %1, ptr noundef %93, i8 noundef zeroext %117)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %92
  %121 = load i32, ptr %80, align 4
  %122 = getelementptr i8, ptr %93, i32 %121
  %123 = load i32, ptr %28, align 4
  %124 = lshr i32 %123, 16
  %125 = and i32 %124, 32767
  %126 = mul i32 %125, %121
  %127 = getelementptr i8, ptr %4, i32 %126
  %128 = icmp ult ptr %122, %127
  br i1 %128, label %92, label %129

129:                                              ; preds = %120, %92, %78, %23, %20
  %130 = load volatile i32, ptr %1, align 4
  %131 = and i32 %130, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !34
  store volatile i32 %131, ptr %1, align 4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slab_unmergeable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kmem_cache_release(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -88
  tail call void @slab_kmem_cache_release(ptr noundef %2) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @slab_kmem_cache_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slab_attr_show(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.slab_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -88
  %9 = tail call i32 %5(ptr noundef %8, ptr noundef %2) #26
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ -5, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slab_attr_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.slab_attribute, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -88
  %10 = tail call i32 %6(ptr noundef %9, ptr noundef %2, i32 noundef %3) #26
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ -5, %4 ]
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slab_size_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef %4) #26
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @object_size_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef %4) #26
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @objs_per_slab_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 65535
  %6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef %5) #26
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @order_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 16
  %6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef %5) #26
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_partial_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.92, i32 noundef %4) #26
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_partial_store(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call i32 @_kstrtoul(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = call i32 @llvm.umin.i32(i32 %8, i32 10) #26
  %10 = call i32 @llvm.umax.i32(i32 %9, i32 5) #26
  %11 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %2, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_partial_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef %4) #26
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_partial_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = load volatile i32, ptr @slub_debug_enabled, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 2166016
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13, %10, %7
  %19 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 7
  store i32 %8, ptr %19, align 4
  %20 = shl i32 %8, 1
  %21 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 65535
  %24 = add i32 %20, -1
  %25 = add i32 %24, %23
  %26 = udiv i32 %25, %23
  %27 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 8
  store i32 %26, ptr %27, align 4
  call void @cpus_read_lock() #26
  call fastcc void @flush_all_cpus_locked(ptr noundef %0) #26
  call void @cpus_read_unlock() #26
  br label %28

28:                                               ; preds = %18, %13, %3
  %29 = phi i32 [ %2, %18 ], [ %5, %3 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @objects_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = tail call fastcc i32 @show_slab_objects(ptr noundef %0, ptr noundef %1, i32 noundef 9)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @show_slab_objects(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4) #30
  %6 = icmp eq ptr %5, null
  br i1 %6, label %184, label %7

7:                                                ; preds = %3
  %8 = and i32 %2, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %83, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #27
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %83

14:                                               ; preds = %10
  %15 = and i32 %2, 16
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %2, 8
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %78, %14
  %20 = phi i32 [ %12, %14 ], [ %79, %78 ]
  %21 = phi i32 [ %11, %14 ], [ %81, %78 ]
  %22 = phi i32 [ 0, %14 ], [ %80, %78 ]
  %23 = load ptr, ptr %0, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %28, i32 0, i32 2
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %78, label %32

32:                                               ; preds = %19
  br i1 %16, label %33, label %51

33:                                               ; preds = %32
  br i1 %18, label %34, label %41

34:                                               ; preds = %33
  %35 = add i32 %22, 1
  %36 = load i32, ptr %5, align 8
  %37 = add i32 %36, 1
  store i32 %37, ptr %5, align 8
  %38 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %28, i32 0, i32 3
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %78, label %68

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.slab, ptr %30, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 65535
  %45 = add i32 %44, %22
  %46 = load i32, ptr %5, align 8
  %47 = add i32 %46, %44
  store i32 %47, ptr %5, align 8
  %48 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %28, i32 0, i32 3
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %78, label %65

51:                                               ; preds = %32
  %52 = getelementptr inbounds %struct.slab, ptr %30, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = lshr i32 %53, 16
  %55 = and i32 %54, 32767
  %56 = add i32 %55, %22
  %57 = load i32, ptr %5, align 8
  %58 = add i32 %55, %57
  store i32 %58, ptr %5, align 8
  %59 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %28, i32 0, i32 3
  %60 = load volatile ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %78, label %62

62:                                               ; preds = %51
  %63 = load i1, ptr @show_slab_objects.__already_done, align 1
  br i1 %63, label %71, label %64, !prof !22

64:                                               ; preds = %62
  store i1 true, ptr @show_slab_objects.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 5266, i32 noundef 9, ptr noundef null) #26
  br label %71

65:                                               ; preds = %41
  %66 = load i1, ptr @show_slab_objects.__already_done.95, align 1
  br i1 %66, label %71, label %67, !prof !22

67:                                               ; preds = %65
  store i1 true, ptr @show_slab_objects.__already_done.95, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 5268, i32 noundef 9, ptr noundef null) #26
  br label %71

68:                                               ; preds = %34
  %69 = getelementptr inbounds %struct.slab, ptr %39, i32 0, i32 1, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %67, %65, %64, %62
  %72 = phi i32 [ %37, %68 ], [ %58, %64 ], [ %58, %62 ], [ %47, %67 ], [ %47, %65 ]
  %73 = phi i32 [ %35, %68 ], [ %56, %64 ], [ %56, %62 ], [ %45, %67 ], [ %45, %65 ]
  %74 = phi i32 [ %70, %68 ], [ %55, %64 ], [ %55, %62 ], [ %44, %67 ], [ %44, %65 ]
  %75 = add i32 %74, %73
  %76 = add i32 %72, %74
  store i32 %76, ptr %5, align 8
  %77 = load i32, ptr @nr_cpu_ids, align 4
  br label %78

78:                                               ; preds = %71, %51, %41, %34, %19
  %79 = phi i32 [ %20, %19 ], [ %77, %71 ], [ %20, %34 ], [ %20, %51 ], [ %20, %41 ]
  %80 = phi i32 [ %22, %19 ], [ %75, %71 ], [ %35, %34 ], [ %56, %51 ], [ %45, %41 ]
  %81 = tail call i32 @cpumask_next(i32 noundef %21, ptr noundef nonnull @__cpu_possible_mask) #27
  %82 = icmp ult i32 %81, %79
  br i1 %82, label %19, label %83

83:                                               ; preds = %78, %10, %7
  %84 = phi i32 [ 0, %7 ], [ 0, %10 ], [ %80, %78 ]
  %85 = and i32 %2, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %125, label %87

87:                                               ; preds = %83
  %88 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %89 = and i32 %2, 8
  %90 = icmp eq i32 %89, 0
  %91 = load ptr, ptr %88, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %179, label %93

93:                                               ; preds = %87
  %94 = and i32 %2, 16
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.kmem_cache_node, ptr %91, i32 0, i32 4
  %98 = load volatile i32, ptr %97, align 4
  br label %174

99:                                               ; preds = %93
  br i1 %90, label %122, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.kmem_cache_node, ptr %91, i32 0, i32 4
  %102 = load volatile i32, ptr %101, align 4
  %103 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %91) #26
  %104 = getelementptr inbounds %struct.kmem_cache_node, ptr %91, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, %104
  br i1 %106, label %119, label %107

107:                                              ; preds = %107, %100
  %108 = phi ptr [ %117, %107 ], [ %105, %100 ]
  %109 = phi i32 [ %116, %107 ], [ 0, %100 ]
  %110 = getelementptr i8, ptr %108, i32 16
  %111 = load i32, ptr %110, align 4
  %112 = lshr i32 %111, 16
  %113 = and i32 %112, 32767
  %114 = and i32 %111, 65535
  %115 = sub nsw i32 %113, %114
  %116 = add i32 %115, %109
  %117 = load ptr, ptr %108, align 4
  %118 = icmp eq ptr %117, %104
  br i1 %118, label %119, label %107

119:                                              ; preds = %107, %100
  %120 = phi i32 [ 0, %100 ], [ %116, %107 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %91, i32 noundef %103) #26
  %121 = sub i32 %102, %120
  br label %174

122:                                              ; preds = %99
  %123 = getelementptr inbounds %struct.kmem_cache_node, ptr %91, i32 0, i32 3
  %124 = load volatile i32, ptr %123, align 4
  br label %174

125:                                              ; preds = %83
  %126 = and i32 %2, 2
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %179, label %128

128:                                              ; preds = %125
  %129 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %130 = and i32 %2, 8
  %131 = icmp eq i32 %130, 0
  %132 = load ptr, ptr %129, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %179, label %134

134:                                              ; preds = %128
  %135 = and i32 %2, 16
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %154, label %137

137:                                              ; preds = %134
  %138 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %132) #26
  %139 = getelementptr inbounds %struct.kmem_cache_node, ptr %132, i32 0, i32 2
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, %139
  br i1 %141, label %152, label %142

142:                                              ; preds = %142, %137
  %143 = phi ptr [ %150, %142 ], [ %140, %137 ]
  %144 = phi i32 [ %149, %142 ], [ 0, %137 ]
  %145 = getelementptr i8, ptr %143, i32 16
  %146 = load i32, ptr %145, align 4
  %147 = lshr i32 %146, 16
  %148 = and i32 %147, 32767
  %149 = add i32 %148, %144
  %150 = load ptr, ptr %143, align 4
  %151 = icmp eq ptr %150, %139
  br i1 %151, label %152, label %142

152:                                              ; preds = %142, %137
  %153 = phi i32 [ 0, %137 ], [ %149, %142 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %132, i32 noundef %138) #26
  br label %174

154:                                              ; preds = %134
  br i1 %131, label %171, label %155

155:                                              ; preds = %154
  %156 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %132) #26
  %157 = getelementptr inbounds %struct.kmem_cache_node, ptr %132, i32 0, i32 2
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, %157
  br i1 %159, label %169, label %160

160:                                              ; preds = %160, %155
  %161 = phi ptr [ %167, %160 ], [ %158, %155 ]
  %162 = phi i32 [ %166, %160 ], [ 0, %155 ]
  %163 = getelementptr i8, ptr %161, i32 16
  %164 = load i32, ptr %163, align 4
  %165 = and i32 %164, 65535
  %166 = add i32 %165, %162
  %167 = load ptr, ptr %161, align 4
  %168 = icmp eq ptr %167, %157
  br i1 %168, label %169, label %160

169:                                              ; preds = %160, %155
  %170 = phi i32 [ 0, %155 ], [ %166, %160 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %132, i32 noundef %156) #26
  br label %174

171:                                              ; preds = %154
  %172 = getelementptr inbounds %struct.kmem_cache_node, ptr %132, i32 0, i32 1
  %173 = load i32, ptr %172, align 4
  br label %174

174:                                              ; preds = %171, %169, %152, %122, %119, %96
  %175 = phi i32 [ %98, %96 ], [ %121, %119 ], [ %124, %122 ], [ %153, %152 ], [ %170, %169 ], [ %173, %171 ]
  %176 = add i32 %175, %84
  %177 = load i32, ptr %5, align 8
  %178 = add i32 %177, %175
  store i32 %178, ptr %5, align 8
  br label %179

179:                                              ; preds = %174, %128, %125, %87
  %180 = phi i32 [ %84, %125 ], [ %84, %128 ], [ %84, %87 ], [ %176, %174 ]
  %181 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.96, i32 noundef %180) #26
  %182 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %1, i32 noundef %181, ptr noundef nonnull @.str.97) #26
  %183 = add i32 %182, %181
  tail call void @kfree(ptr noundef nonnull %5)
  br label %184

184:                                              ; preds = %179, %3
  %185 = phi i32 [ %183, %179 ], [ -12, %3 ]
  ret i32 %185
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @objects_partial_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = tail call fastcc i32 @show_slab_objects(ptr noundef %0, ptr noundef %1, i32 noundef 10)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @partial_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4) #30
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.kmem_cache_node, ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %4, align 8
  %14 = add i32 %13, %12
  store i32 %14, ptr %4, align 8
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i32 [ 0, %6 ], [ %12, %10 ]
  %17 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.96, i32 noundef %16) #26
  %18 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %1, i32 noundef %17, ptr noundef nonnull @.str.97) #26
  %19 = add i32 %18, %17
  tail call void @kfree(ptr noundef nonnull %4) #26
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i32 [ %19, %15 ], [ -12, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_slabs_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = tail call fastcc i32 @show_slab_objects(ptr noundef %0, ptr noundef %1, i32 noundef 4)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ctor_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.102, ptr noundef nonnull %4) #26
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ %7, %6 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aliases_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  %6 = add i32 %4, -1
  %7 = select i1 %5, i32 0, i32 %6
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.104, i32 noundef %7) #26
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @align_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 16
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef %4) #26
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hwcache_align_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 13
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.104, i32 noundef %6) #26
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reclaim_account_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 17
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.104, i32 noundef %6) #26
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @destroy_by_rcu_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 19
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.104, i32 noundef %6) #26
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @shrink_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #15 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shrink_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 49
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 @kmem_cache_shrink(ptr noundef %0) #26
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %2, %6 ], [ -22, %3 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmem_cache_shrink(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slabs_cpu_partial_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #27
  %5 = icmp ult i32 %4, %3
  br i1 %5, label %6, label %27

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %9

9:                                                ; preds = %23, %6
  %10 = phi i32 [ %4, %6 ], [ %25, %23 ]
  %11 = phi i32 [ 0, %6 ], [ %24, %23 ]
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %8
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.slab, ptr %17, i32 0, i32 1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %11
  br label %23

23:                                               ; preds = %19, %9
  %24 = phi i32 [ %22, %19 ], [ %11, %9 ]
  %25 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_online_mask) #27
  %26 = icmp ult i32 %25, %3
  br i1 %26, label %9, label %27

27:                                               ; preds = %23, %2
  %28 = phi i32 [ 0, %2 ], [ %24, %23 ]
  %29 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 9
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 65535
  %32 = mul i32 %31, %28
  %33 = lshr i32 %32, 1
  %34 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.111, i32 noundef %33, i32 noundef %28) #26
  %35 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #27
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %61, %27
  %39 = phi i32 [ %62, %61 ], [ %36, %27 ]
  %40 = phi i32 [ %64, %61 ], [ %35, %27 ]
  %41 = phi i32 [ %63, %61 ], [ %34, %27 ]
  %42 = load ptr, ptr %0, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %43
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.kmem_cache_cpu, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %38
  %52 = getelementptr inbounds %struct.slab, ptr %49, i32 0, i32 1, i32 0, i32 1
  %53 = load volatile i32, ptr %52, align 4
  %54 = load i32, ptr %29, align 4
  %55 = and i32 %54, 65535
  %56 = mul i32 %55, %53
  %57 = lshr i32 %56, 1
  %58 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %1, i32 noundef %41, ptr noundef nonnull @.str.112, i32 noundef %40, i32 noundef %57, i32 noundef %53) #26
  %59 = add i32 %58, %41
  %60 = load i32, ptr @nr_cpu_ids, align 4
  br label %61

61:                                               ; preds = %51, %38
  %62 = phi i32 [ %60, %51 ], [ %39, %38 ]
  %63 = phi i32 [ %59, %51 ], [ %41, %38 ]
  %64 = tail call i32 @cpumask_next(i32 noundef %40, ptr noundef nonnull @__cpu_online_mask) #27
  %65 = icmp ult i32 %64, %62
  br i1 %65, label %38, label %66

66:                                               ; preds = %61, %27
  %67 = phi i32 [ %34, %27 ], [ %63, %61 ]
  %68 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %1, i32 noundef %67, ptr noundef nonnull @.str.97) #26
  %69 = add i32 %68, %67
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @total_objects_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4) #30
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.kmem_cache_node, ptr %8, i32 0, i32 4
  %12 = load volatile i32, ptr %11, align 4
  %13 = load i32, ptr %4, align 8
  %14 = add i32 %13, %12
  store i32 %14, ptr %4, align 8
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i32 [ 0, %6 ], [ %12, %10 ]
  %17 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.96, i32 noundef %16) #26
  %18 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %1, i32 noundef %17, ptr noundef nonnull @.str.97) #26
  %19 = add i32 %18, %17
  tail call void @kfree(ptr noundef nonnull %4) #26
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i32 [ %19, %15 ], [ -12, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slabs_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4) #30
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.kmem_cache, ptr %0, i32 0, i32 23, i32 0
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.kmem_cache_node, ptr %8, i32 0, i32 3
  %12 = load volatile i32, ptr %11, align 4
  %13 = load i32, ptr %4, align 8
  %14 = add i32 %13, %12
  store i32 %14, ptr %4, align 8
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i32 [ 0, %6 ], [ %12, %10 ]
  %17 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.96, i32 noundef %16) #26
  %18 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %1, i32 noundef %17, ptr noundef nonnull @.str.97) #26
  %19 = add i32 %18, %17
  tail call void @kfree(ptr noundef nonnull %4) #26
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i32 [ %19, %15 ], [ -12, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sanity_checks_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 8
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.104, i32 noundef %6) #26
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 21
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.104, i32 noundef %6) #26
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @red_zone_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 10
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.104, i32 noundef %6) #26
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @poison_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 11
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.104, i32 noundef %6) #26
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_user_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.104, i32 noundef %6) #26
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @validate_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #15 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @validate_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 49
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call i32 @validate_slab_cache(ptr noundef %0)
  %8 = icmp slt i32 %7, 0
  %9 = select i1 %8, i32 %7, i32 %2
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ -22, %3 ], [ %9, %6 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cache_dma_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = lshr i32 %4, 14
  %6 = and i32 %5, 1
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.104, i32 noundef %6) #26
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usersize_show(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kmem_cache, ptr %0, i32 0, i32 22
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef %4) #26
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slab_debug_trace_open(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call ptr @__seq_open_private(ptr noundef %1, ptr noundef nonnull @slab_debugfs_sops, i32 noundef 24) #26
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %3, null
  br i1 %8, label %80, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.kmem_cache, ptr %7, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = tail call ptr @bitmap_alloc(i32 noundef %12, i32 noundef 3264) #26
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call i32 @seq_release_private(ptr noundef %0, ptr noundef %1) #26
  br label %80

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 4, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 @strcmp(ptr noundef %21, ptr noundef nonnull dereferenceable(13) @.str.127)
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #26
  %26 = inttoptr i32 %25 to ptr
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.loc_track, ptr %3, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.loc_track, ptr %3, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = mul i32 %30, 40
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %26, ptr align 8 %34, i32 %35, i1 false) #26
  %36 = load i32, ptr %3, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 8
  %40 = ptrtoint ptr %39 to i32
  %41 = mul i32 %36, 40
  %42 = add i32 %41, -1
  %43 = icmp ult i32 %42, 4096
  %44 = lshr i32 %42, 12
  %45 = tail call i32 @llvm.ctlz.i32(i32 %44, i1 false) #26, !range !58
  %46 = sub nuw nsw i32 32, %45
  %47 = select i1 %43, i32 0, i32 %46
  tail call void @free_pages(i32 noundef %40, i32 noundef %47) #26
  br label %50

48:                                               ; preds = %17
  tail call void @bitmap_free(ptr noundef nonnull %13) #26
  %49 = tail call i32 @seq_release_private(ptr noundef %0, ptr noundef %1) #26
  br label %80

50:                                               ; preds = %38, %32, %28
  store i32 102, ptr %3, align 8
  %51 = getelementptr inbounds %struct.loc_track, ptr %3, i32 0, i32 2
  store ptr %26, ptr %51, align 8
  %52 = getelementptr %struct.kmem_cache, ptr %7, i32 0, i32 23, i32 0
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %79, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.kmem_cache_node, ptr %53, i32 0, i32 3
  %57 = load volatile i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %53) #26
  %61 = getelementptr inbounds %struct.kmem_cache_node, ptr %53, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %61
  br i1 %63, label %69, label %64

64:                                               ; preds = %64, %59
  %65 = phi ptr [ %67, %64 ], [ %62, %59 ]
  %66 = getelementptr i8, ptr %65, i32 -4
  tail call fastcc void @process_slab(ptr noundef nonnull %3, ptr noundef %7, ptr noundef %66, i32 noundef %24, ptr noundef nonnull %13)
  %67 = load ptr, ptr %65, align 4
  %68 = icmp eq ptr %67, %61
  br i1 %68, label %69, label %64

69:                                               ; preds = %64, %59
  %70 = getelementptr inbounds %struct.kmem_cache_node, ptr %53, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %78, label %73

73:                                               ; preds = %73, %69
  %74 = phi ptr [ %76, %73 ], [ %71, %69 ]
  %75 = getelementptr i8, ptr %74, i32 -4
  tail call fastcc void @process_slab(ptr noundef nonnull %3, ptr noundef %7, ptr noundef %75, i32 noundef %24, ptr noundef nonnull %13)
  %76 = load ptr, ptr %74, align 4
  %77 = icmp eq ptr %76, %70
  br i1 %77, label %78, label %73

78:                                               ; preds = %73, %69
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %53, i32 noundef %60) #26
  br label %79

79:                                               ; preds = %78, %55, %50
  tail call void @bitmap_free(ptr noundef nonnull %13) #26
  br label %80

80:                                               ; preds = %79, %48, %15, %2
  %81 = phi i32 [ 0, %79 ], [ -12, %48 ], [ -12, %15 ], [ -12, %2 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slab_debug_trace_release(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.loc_track, ptr %6, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %11 to i32
  %13 = mul i32 %7, 40
  %14 = add i32 %13, -1
  %15 = icmp ult i32 %14, 4096
  %16 = lshr i32 %14, 12
  %17 = tail call i32 @llvm.ctlz.i32(i32 %16, i1 false) #26, !range !58
  %18 = sub nuw nsw i32 32, %17
  %19 = select i1 %15, i32 0, i32 %18
  tail call void @free_pages(i32 noundef %12, i32 noundef %19) #26
  br label %20

20:                                               ; preds = %9, %2
  %21 = tail call i32 @seq_release_private(ptr noundef %0, ptr noundef %1) #26
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @process_slab(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 {
  %6 = tail call ptr @page_address(ptr noundef %2) #26
  %7 = tail call ptr @page_address(ptr noundef %2) #26
  %8 = getelementptr inbounds %struct.slab, ptr %2, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 32767
  %12 = add nuw nsw i32 %11, 31
  %13 = lshr i32 %12, 3
  %14 = and i32 %13, 8188
  tail call void @llvm.memset.p0.i32(ptr align 4 %4, i8 0, i32 %14, i1 false) #26
  %15 = getelementptr inbounds %struct.slab, ptr %2, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %5
  %19 = ptrtoint ptr %7 to i32
  %20 = getelementptr inbounds %struct.kmem_cache, ptr %1, i32 0, i32 5
  %21 = getelementptr inbounds %struct.kmem_cache, ptr %1, i32 0, i32 5, i32 1
  %22 = getelementptr inbounds %struct.kmem_cache, ptr %1, i32 0, i32 6
  br label %23

23:                                               ; preds = %23, %18
  %24 = phi ptr [ %16, %18 ], [ %44, %23 ]
  %25 = ptrtoint ptr %24 to i32
  %26 = sub i32 %25, %19
  %27 = load i32, ptr %20, align 4
  %28 = load i32, ptr %21, align 4
  %29 = lshr i32 %28, 8
  %30 = zext i32 %26 to i64
  %31 = zext i32 %27 to i64
  %32 = mul nuw i64 %30, %31
  %33 = lshr i64 %32, 32
  %34 = trunc i64 %33 to i32
  %35 = sub i32 %26, %34
  %36 = and i32 %28, 255
  %37 = lshr i32 %35, %36
  %38 = add i32 %37, %34
  %39 = and i32 %29, 255
  %40 = lshr i32 %38, %39
  tail call void @_set_bit(i32 noundef %40, ptr noundef %4) #26
  %41 = load i32, ptr %22, align 4
  %42 = getelementptr i8, ptr %24, i32 %41
  %43 = load i32, ptr %42, align 4
  %44 = inttoptr i32 %43 to ptr
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %46, label %23

46:                                               ; preds = %23, %5
  %47 = load volatile i32, ptr @slub_debug_enabled, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.kmem_cache, ptr %1, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 1024
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.kmem_cache, ptr %1, i32 0, i32 17
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %6, i32 %56
  br label %58

58:                                               ; preds = %54, %49, %46
  %59 = phi ptr [ %57, %54 ], [ %6, %49 ], [ %6, %46 ]
  %60 = getelementptr inbounds %struct.kmem_cache, ptr %1, i32 0, i32 3
  %61 = load i32, ptr %8, align 4
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 32767
  %64 = load i32, ptr %60, align 4
  %65 = mul i32 %63, %64
  %66 = getelementptr i8, ptr %6, i32 %65
  %67 = icmp ult ptr %59, %66
  br i1 %67, label %68, label %254

68:                                               ; preds = %58
  %69 = ptrtoint ptr %6 to i32
  %70 = getelementptr inbounds %struct.kmem_cache, ptr %1, i32 0, i32 5
  %71 = getelementptr inbounds %struct.kmem_cache, ptr %1, i32 0, i32 5, i32 1
  %72 = getelementptr inbounds %struct.kmem_cache, ptr %1, i32 0, i32 6
  %73 = getelementptr inbounds %struct.kmem_cache, ptr %1, i32 0, i32 15
  %74 = getelementptr inbounds %struct.loc_track, ptr %0, i32 0, i32 1
  %75 = getelementptr inbounds %struct.loc_track, ptr %0, i32 0, i32 2
  br label %76

76:                                               ; preds = %245, %68
  %77 = phi ptr [ %59, %68 ], [ %247, %245 ]
  %78 = ptrtoint ptr %77 to i32
  %79 = sub i32 %78, %69
  %80 = load i32, ptr %70, align 4
  %81 = load i32, ptr %71, align 4
  %82 = lshr i32 %81, 8
  %83 = zext i32 %79 to i64
  %84 = zext i32 %80 to i64
  %85 = mul nuw i64 %84, %83
  %86 = lshr i64 %85, 32
  %87 = trunc i64 %86 to i32
  %88 = sub i32 %79, %87
  %89 = and i32 %81, 255
  %90 = lshr i32 %88, %89
  %91 = add i32 %90, %87
  %92 = and i32 %82, 255
  %93 = lshr i32 %91, %92
  %94 = lshr i32 %93, 5
  %95 = getelementptr i32, ptr %4, i32 %94
  %96 = load volatile i32, ptr %95, align 4
  %97 = and i32 %93, 31
  %98 = shl nuw i32 1, %97
  %99 = and i32 %98, %96
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %245

101:                                              ; preds = %76
  %102 = load i32, ptr %72, align 4
  %103 = load i32, ptr %73, align 4
  %104 = icmp ult i32 %102, %103
  %105 = add i32 %103, 4
  %106 = select i1 %104, i32 %103, i32 %105
  %107 = getelementptr i8, ptr %77, i32 %106
  %108 = getelementptr %struct.track, ptr %107, i32 %3
  %109 = load volatile i32, ptr @jiffies, align 64
  %110 = getelementptr inbounds %struct.track, ptr %108, i32 0, i32 4
  %111 = load i32, ptr %110, align 4
  %112 = sub i32 %109, %111
  %113 = load i32, ptr %74, align 4
  %114 = add i32 %113, 2
  %115 = sdiv i32 %114, 2
  %116 = add nsw i32 %115, -1
  %117 = icmp eq i32 %116, %113
  br i1 %117, label %177, label %118

118:                                              ; preds = %101
  %119 = load ptr, ptr %75, align 8
  %120 = load i32, ptr %108, align 4
  br label %121

121:                                              ; preds = %168, %118
  %122 = phi i32 [ %116, %118 ], [ %175, %168 ]
  %123 = phi i32 [ %113, %118 ], [ %171, %168 ]
  %124 = phi i32 [ -1, %118 ], [ %170, %168 ]
  %125 = getelementptr %struct.location, ptr %119, i32 %122, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %120, %126
  br i1 %127, label %128, label %168

128:                                              ; preds = %121
  %129 = getelementptr %struct.location, ptr %119, i32 %122
  %130 = load i32, ptr %129, align 8
  %131 = add i32 %130, 1
  store i32 %131, ptr %129, align 8
  %132 = load i32, ptr %110, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %166, label %134

134:                                              ; preds = %128
  %135 = zext i32 %112 to i64
  %136 = getelementptr %struct.location, ptr %119, i32 %122, i32 2
  %137 = load i64, ptr %136, align 8
  %138 = add i64 %137, %135
  store i64 %138, ptr %136, align 8
  %139 = getelementptr %struct.location, ptr %119, i32 %122, i32 3
  %140 = load i32, ptr %139, align 8
  %141 = icmp ult i32 %112, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  store i32 %112, ptr %139, align 8
  br label %143

143:                                              ; preds = %142, %134
  %144 = getelementptr %struct.location, ptr %119, i32 %122, i32 4
  %145 = load i32, ptr %144, align 4
  %146 = icmp ugt i32 %112, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 %112, ptr %144, align 4
  br label %148

148:                                              ; preds = %147, %143
  %149 = getelementptr inbounds %struct.track, ptr %108, i32 0, i32 3
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr %struct.location, ptr %119, i32 %122, i32 5
  %152 = load i32, ptr %151, align 8
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  store i32 %150, ptr %151, align 8
  %155 = load i32, ptr %149, align 4
  br label %156

156:                                              ; preds = %154, %148
  %157 = phi i32 [ %155, %154 ], [ %150, %148 ]
  %158 = getelementptr %struct.location, ptr %119, i32 %122, i32 6
  %159 = load i32, ptr %158, align 4
  %160 = icmp sgt i32 %157, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 %157, ptr %158, align 4
  br label %162

162:                                              ; preds = %161, %156
  %163 = getelementptr inbounds %struct.track, ptr %108, i32 0, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr %struct.location, ptr %119, i32 %122, i32 7
  tail call void @_set_bit(i32 noundef %164, ptr noundef %165) #26
  br label %166

166:                                              ; preds = %162, %128
  %167 = getelementptr %struct.location, ptr %119, i32 %122, i32 8
  br label %243

168:                                              ; preds = %121
  %169 = icmp ult i32 %120, %126
  %170 = select i1 %169, i32 %124, i32 %122
  %171 = select i1 %169, i32 %122, i32 %123
  %172 = sub i32 1, %170
  %173 = add i32 %172, %171
  %174 = sdiv i32 %173, 2
  %175 = add i32 %174, %170
  %176 = icmp eq i32 %175, %171
  br i1 %176, label %177, label %121

177:                                              ; preds = %168, %101
  %178 = phi i32 [ %113, %101 ], [ %171, %168 ]
  %179 = load i32, ptr %0, align 8
  %180 = icmp ult i32 %113, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load ptr, ptr %75, align 8
  br label %215

183:                                              ; preds = %177
  %184 = shl i32 %179, 1
  %185 = mul i32 %179, 80
  %186 = add i32 %185, -1
  %187 = icmp ult i32 %186, 4096
  %188 = lshr i32 %186, 12
  %189 = tail call i32 @llvm.ctlz.i32(i32 %188, i1 false) #26, !range !58
  %190 = sub nuw nsw i32 32, %189
  %191 = select i1 %187, i32 0, i32 %190
  %192 = tail call i32 @__get_free_pages(i32 noundef 2592, i32 noundef %191) #26
  %193 = inttoptr i32 %192 to ptr
  %194 = icmp eq i32 %192, 0
  br i1 %194, label %245, label %195

195:                                              ; preds = %183
  %196 = load i32, ptr %74, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %213, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr %75, align 8
  %200 = mul i32 %196, 40
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %193, ptr align 8 %199, i32 %200, i1 false) #26
  %201 = load i32, ptr %0, align 8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %213, label %203

203:                                              ; preds = %198
  %204 = load ptr, ptr %75, align 8
  %205 = ptrtoint ptr %204 to i32
  %206 = mul i32 %201, 40
  %207 = add i32 %206, -1
  %208 = icmp ult i32 %207, 4096
  %209 = lshr i32 %207, 12
  %210 = tail call i32 @llvm.ctlz.i32(i32 %209, i1 false) #26, !range !58
  %211 = sub nuw nsw i32 32, %210
  %212 = select i1 %208, i32 0, i32 %211
  tail call void @free_pages(i32 noundef %205, i32 noundef %212) #26
  br label %213

213:                                              ; preds = %203, %198, %195
  store i32 %184, ptr %0, align 8
  store ptr %193, ptr %75, align 8
  %214 = load i32, ptr %74, align 4
  br label %215

215:                                              ; preds = %213, %181
  %216 = phi i32 [ %113, %181 ], [ %214, %213 ]
  %217 = phi ptr [ %182, %181 ], [ %193, %213 ]
  %218 = getelementptr %struct.location, ptr %217, i32 %178
  %219 = icmp ugt i32 %216, %178
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = getelementptr %struct.location, ptr %218, i32 1
  %222 = sub i32 %216, %178
  %223 = mul i32 %222, 40
  tail call void @llvm.memmove.p0.p0.i32(ptr align 8 %221, ptr align 8 %218, i32 %223, i1 false) #26
  %224 = load i32, ptr %74, align 4
  br label %225

225:                                              ; preds = %220, %215
  %226 = phi i32 [ %224, %220 ], [ %216, %215 ]
  %227 = add i32 %226, 1
  store i32 %227, ptr %74, align 4
  store i32 1, ptr %218, align 8
  %228 = load i32, ptr %108, align 4
  %229 = getelementptr %struct.location, ptr %217, i32 %178, i32 1
  store i32 %228, ptr %229, align 4
  %230 = zext i32 %112 to i64
  %231 = getelementptr %struct.location, ptr %217, i32 %178, i32 2
  store i64 %230, ptr %231, align 8
  %232 = getelementptr %struct.location, ptr %217, i32 %178, i32 3
  store i32 %112, ptr %232, align 8
  %233 = getelementptr %struct.location, ptr %217, i32 %178, i32 4
  store i32 %112, ptr %233, align 4
  %234 = getelementptr inbounds %struct.track, ptr %108, i32 0, i32 3
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr %struct.location, ptr %217, i32 %178, i32 5
  store i32 %235, ptr %236, align 8
  %237 = load i32, ptr %234, align 4
  %238 = getelementptr %struct.location, ptr %217, i32 %178, i32 6
  store i32 %237, ptr %238, align 4
  %239 = getelementptr %struct.location, ptr %217, i32 %178, i32 7
  store i32 0, ptr %239, align 4
  %240 = getelementptr inbounds %struct.track, ptr %108, i32 0, i32 2
  %241 = load i32, ptr %240, align 4
  tail call void @_set_bit(i32 noundef %241, ptr noundef %239) #26
  %242 = getelementptr %struct.location, ptr %217, i32 %178, i32 8
  store i32 0, ptr %242, align 4
  br label %243

243:                                              ; preds = %225, %166
  %244 = phi ptr [ %242, %225 ], [ %167, %166 ]
  tail call void @_set_bit(i32 noundef 0, ptr noundef %244) #26
  br label %245

245:                                              ; preds = %243, %183, %76
  %246 = load i32, ptr %60, align 4
  %247 = getelementptr i8, ptr %77, i32 %246
  %248 = load i32, ptr %8, align 4
  %249 = lshr i32 %248, 16
  %250 = and i32 %249, 32767
  %251 = mul i32 %250, %246
  %252 = getelementptr i8, ptr %6, i32 %251
  %253 = icmp ult ptr %247, %252
  br i1 %253, label %76, label %254

254:                                              ; preds = %245, %58
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @slab_debugfs_start(ptr nocapture noundef readonly %0, ptr noundef readonly returned %1) #24 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load i64, ptr %1, align 8
  %6 = getelementptr inbounds %struct.loc_track, ptr %4, i32 0, i32 3
  store i64 %5, ptr %6, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @slab_debugfs_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #15 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @slab_debugfs_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #24 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %2, align 8
  %7 = add i64 %6, 1
  store i64 %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.loc_track, ptr %5, i32 0, i32 3
  store i64 %7, ptr %8, align 8
  %9 = load i64, ptr %2, align 8
  %10 = getelementptr inbounds %struct.loc_track, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp sgt i64 %9, %12
  %14 = select i1 %13, ptr null, ptr %2
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slab_debugfs_show(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.loc_track, ptr %4, i32 0, i32 3
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds %struct.loc_track, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %7
  br i1 %10, label %11, label %63

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.loc_track, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr %struct.location, ptr %13, i32 %7
  %15 = load i32, ptr %14, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.129, i32 noundef %15) #26
  %16 = getelementptr %struct.location, ptr %13, i32 %7, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %11
  %20 = inttoptr i32 %17 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.130, ptr noundef nonnull %20) #26
  br label %22

21:                                               ; preds = %11
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.131) #26
  br label %22

22:                                               ; preds = %21, %19
  %23 = getelementptr %struct.location, ptr %13, i32 %7, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr %struct.location, ptr %13, i32 %7, i32 3
  %26 = load i32, ptr %25, align 8
  %27 = sext i32 %26 to i64
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %43, label %29

29:                                               ; preds = %22
  %30 = load i32, ptr %14, align 8
  %31 = icmp ult i64 %24, 4294967296
  br i1 %31, label %32, label %36, !prof !22

32:                                               ; preds = %29
  %33 = trunc i64 %24 to i32
  %34 = udiv i32 %33, %30
  %35 = zext i32 %34 to i64
  br label %39

36:                                               ; preds = %29
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %30, i64 %24) #31, !srcloc !73
  %38 = extractvalue { i64, i64 } %37, 1
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i64 [ %35, %32 ], [ %38, %36 ]
  %41 = getelementptr %struct.location, ptr %13, i32 %7, i32 4
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.132, i32 noundef %26, i64 noundef %40, i32 noundef %42) #26
  br label %44

43:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.133, i32 noundef %26) #26
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr %struct.location, ptr %13, i32 %7, i32 5
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr %struct.location, ptr %13, i32 %7, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.134, i32 noundef %46, i32 noundef %48) #26
  br label %52

51:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.135, i32 noundef %46) #26
  br label %52

52:                                               ; preds = %51, %50
  %53 = load volatile i32, ptr @__num_online_cpus, align 4
  %54 = icmp ugt i32 %53, 1
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = getelementptr %struct.location, ptr %13, i32 %7, i32 7
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr @nr_cpu_ids, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.136, i32 noundef %61, ptr noundef %56) #26
  br label %62

62:                                               ; preds = %60, %55, %52
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.97) #26
  br label %63

63:                                               ; preds = %62, %2
  %64 = icmp eq i32 %7, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  %66 = load i32, ptr %8, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.137) #26
  br label %69

69:                                               ; preds = %68, %65, %63
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #21

attributes #0 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind null_pointer_is_valid sspstrong allocsize(2) uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nounwind readonly }
attributes #20 = { argmemonly nofree nounwind willreturn }
attributes #21 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #22 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #23 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #25 = { cold nounwind }
attributes #26 = { nounwind }
attributes #27 = { nounwind readonly willreturn }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { cold }
attributes #30 = { nounwind allocsize(2) }
attributes #31 = { nounwind readnone }

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
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 920097}
!13 = !{i64 2154416904}
!14 = !{!"branch_weights", i32 4000000, i32 4001}
!15 = !{i64 901397, i64 901458}
!16 = !{i64 904414}
!17 = !{i64 995719, i64 2148485690, i64 2148485716, i64 2148485763, i64 2148485785, i64 2148485813, i64 2148485833}
!18 = !{i64 2153889878}
!19 = !{i64 2153890120}
!20 = !{i64 2153872456}
!21 = !{i64 2153872680}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2153962896}
!24 = !{i64 2153963078}
!25 = !{i64 2154448711}
!26 = !{i64 2150274737}
!27 = !{!"branch_weights", i32 2146410443, i32 1073205}
!28 = !{i64 2148505567, i64 2148505599, i64 2148505628, i64 2148505662, i64 2148505693, i64 2148505716}
!29 = !{i64 2148606907}
!30 = !{i64 2150274848}
!31 = !{i64 2150275077}
!32 = !{i64 2150274919}
!33 = !{i64 2150275159}
!34 = !{i64 2148591579}
!35 = !{i64 2150275945}
!36 = !{i64 2154143580}
!37 = !{i64 2154143422}
!38 = !{!"branch_weights", i32 4001, i32 1}
!39 = !{i64 2154481882}
!40 = !{i64 901832}
!41 = !{i64 901642}
!42 = !{i64 2154487750}
!43 = !{i64 2154487916}
!44 = !{i64 2154142183}
!45 = !{i64 2154142025}
!46 = !{i64 2154317954}
!47 = !{i64 2154334198}
!48 = !{i64 2154409368}
!49 = !{i64 2154409529}
!50 = !{i64 904129}
!51 = !{i64 2154504966, i64 2154505441, i64 2154505003, i64 2154505059, i64 2154505093, i64 2154505117, i64 2154505158, i64 2154505179, i64 2154505207, i64 2154505241}
!52 = !{i64 2149162785}
!53 = !{i64 2149158609}
!54 = !{i64 2149158684, i64 2149158711, i64 2149158758, i64 2149158780, i64 2149158808, i64 2149158828}
!55 = !{i64 2149185788}
!56 = !{i64 2149186929}
!57 = !{i64 2148499462, i64 2148499488, i64 2148499517, i64 2148499551, i64 2148499582, i64 2148499605}
!58 = !{i32 0, i32 33}
!59 = !{i64 2153946835}
!60 = !{i64 2153946985}
!61 = !{i64 2154535549}
!62 = !{i64 2154535815, i64 2154536290, i64 2154535852, i64 2154535908, i64 2154535942, i64 2154535966, i64 2154536007, i64 2154536028, i64 2154536056, i64 2154536090}
!63 = !{i64 2154495759, i64 2154496234, i64 2154495796, i64 2154495852, i64 2154495886, i64 2154495910, i64 2154495951, i64 2154495972, i64 2154496000, i64 2154496034}
!64 = !{i64 2154496803, i64 2154497278, i64 2154496840, i64 2154496896, i64 2154496930, i64 2154496954, i64 2154496995, i64 2154497016, i64 2154497044, i64 2154497078}
!65 = !{i64 2154498982, i64 2154499457, i64 2154499019, i64 2154499075, i64 2154499109, i64 2154499133, i64 2154499174, i64 2154499195, i64 2154499223, i64 2154499257}
!66 = !{i64 2148497105, i64 2148497131, i64 2148497160, i64 2148497194, i64 2148497225, i64 2148497248}
!67 = !{i64 2154640130, i64 2154640605, i64 2154640167, i64 2154640223, i64 2154640257, i64 2154640281, i64 2154640322, i64 2154640343, i64 2154640371, i64 2154640405}
!68 = !{i64 2154641278, i64 2154641753, i64 2154641315, i64 2154641371, i64 2154641405, i64 2154641429, i64 2154641470, i64 2154641491, i64 2154641519, i64 2154641553}
!69 = distinct !{ptr @count_free, null, null}
!70 = !{i64 2154231505}
!71 = !{i64 2154247749}
!72 = !{i32 12, i32 33}
!73 = !{i64 2148346502, i64 2148346782, i64 2148347116, i64 2148347450}
