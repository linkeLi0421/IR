; ModuleID = '/llk/IR/fs/proc/task_mmu.c_pt.bc'
source_filename = "../fs/proc/task_mmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mm_walk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.2 }
%union.anon.2 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.59, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.anon.5 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.proc_maps_private = type { ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.0, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.clear_refs_private = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.6, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.48 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pagemapread = type { i32, i32, ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, ptr, ptr }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.62 = type { %struct.callback_head }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.66 = type { ptr }
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
%struct.list_lru = type { ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mem_size_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.page = type { i32, %union.anon.10, %union.anon.35, %struct.atomic_t }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.35 = type { %struct.atomic_t }
%struct.mm_walk = type { ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.anon.72 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.pagemap_entry_t = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"VmPeak:\09\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c" kB\0AVmSize:\09\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" kB\0AVmLck:\09\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" kB\0AVmPin:\09\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" kB\0AVmHWM:\09\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" kB\0AVmRSS:\09\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" kB\0ARssAnon:\09\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" kB\0ARssFile:\09\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c" kB\0ARssShmem:\09\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c" kB\0AVmData:\09\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" kB\0AVmStk:\09\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c" kB\0AVmExe:\09\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c" kB\0AVmLib:\09\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c" kB\0AVmPTE:\09\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c" kB\0AVmSwap:\09\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" kB\0A\00", align 1
@proc_pid_maps_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pid_maps_open, ptr null, ptr @proc_map_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@proc_pid_smaps_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pid_smaps_open, ptr null, ptr @proc_map_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@proc_pid_smaps_rollup_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @smaps_rollup_open, ptr null, ptr @smaps_rollup_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@proc_clear_refs_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @clear_refs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@proc_pagemap_operations = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @mem_lseek, ptr @pagemap_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pagemap_open, ptr null, ptr @pagemap_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@proc_pid_maps_op = internal constant %struct.seq_operations { ptr @m_start, ptr @m_stop, ptr @m_next, ptr @show_map }, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"[vdso]\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"[heap]\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"[stack]\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c":\00", align 1
@proc_pid_smaps_op = internal constant %struct.seq_operations { ptr @m_start, ptr @m_stop, ptr @m_next, ptr @show_smap }, align 4
@.str.24 = private unnamed_addr constant [17 x i8] c"Size:           \00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c" kB\0AKernelPageSize: \00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c" kB\0AMMUPageSize:    \00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"THPeligible:    %d\0A\00", align 1
@smaps_walk_ops = internal constant %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @smaps_pte_range, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@smaps_shmem_walk_ops = internal constant %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @smaps_pte_range, ptr null, ptr @smaps_pte_hole, ptr null, ptr null, ptr null, ptr null }, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@shmem_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.30 = private unnamed_addr constant [17 x i8] c"Rss:            \00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c" kB\0APss:            \00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c" kB\0APss_Anon:       \00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c" kB\0APss_File:       \00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c" kB\0APss_Shmem:      \00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c" kB\0AShared_Clean:   \00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c" kB\0AShared_Dirty:   \00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c" kB\0APrivate_Clean:  \00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c" kB\0APrivate_Dirty:  \00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c" kB\0AReferenced:     \00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c" kB\0AAnonymous:      \00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c" kB\0ALazyFree:       \00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c" kB\0AAnonHugePages:  \00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c" kB\0AShmemPmdMapped: \00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c" kB\0AFilePmdMapped:  \00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c" kB\0AShared_Hugetlb: \00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c" kB\0APrivate_Hugetlb: \00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c" kB\0ASwap:           \00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c" kB\0ASwapPss:        \00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c" kB\0ALocked:         \00", align 1
@show_smap_vma_flags.mnemonics = internal unnamed_addr constant [32 x [2 x i8]] [[2 x i8] c"rd", [2 x i8] c"wr", [2 x i8] c"ex", [2 x i8] c"sh", [2 x i8] c"mr", [2 x i8] c"mw", [2 x i8] c"me", [2 x i8] c"ms", [2 x i8] c"gd", [2 x i8] c"um", [2 x i8] c"pf", [2 x i8] c"??", [2 x i8] c"uw", [2 x i8] c"lo", [2 x i8] c"io", [2 x i8] c"sr", [2 x i8] c"rr", [2 x i8] c"dc", [2 x i8] c"de", [2 x i8] c"??", [2 x i8] c"ac", [2 x i8] c"nr", [2 x i8] c"ht", [2 x i8] c"sf", [2 x i8] c"ar", [2 x i8] c"wf", [2 x i8] c"dd", [2 x i8] c"??", [2 x i8] c"mm", [2 x i8] c"hg", [2 x i8] c"nh", [2 x i8] c"mg"], align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"VmFlags: \00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.51 = private unnamed_addr constant [10 x i8] c"[rollup]\0A\00", align 1
@clear_refs_walk_ops = internal constant %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @clear_refs_pte_range, ptr null, ptr null, ptr null, ptr @clear_refs_test_walk, ptr null, ptr null }, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@pagemap_ops = internal constant %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @pagemap_pmd_range, ptr null, ptr @pagemap_pte_hole, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @task_mem(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.anon.5, ptr %1, i32 0, i32 40
  %4 = getelementptr %struct.anon.5, ptr %1, i32 0, i32 40, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0) #12
  %7 = load volatile i32, ptr %3, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0) #12
  %9 = getelementptr %struct.anon.5, ptr %1, i32 0, i32 40, i32 0, i32 3
  %10 = load volatile i32, ptr %9, align 4
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0) #12
  %12 = getelementptr inbounds %struct.anon.5, ptr %1, i32 0, i32 19
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.anon.5, ptr %1, i32 0, i32 18
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.umax.i32(i32 %13, i32 %15)
  %17 = add nuw i32 %8, %6
  %18 = add i32 %17, %11
  %19 = getelementptr inbounds %struct.anon.5, ptr %1, i32 0, i32 17
  %20 = load i32, ptr %19, align 8
  %21 = tail call i32 @llvm.umax.i32(i32 %18, i32 %20)
  %22 = getelementptr inbounds %struct.anon.5, ptr %1, i32 0, i32 29
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 4095
  %25 = and i32 %24, -4096
  %26 = getelementptr inbounds %struct.anon.5, ptr %1, i32 0, i32 28
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, -4096
  %29 = sub i32 %25, %28
  %30 = getelementptr inbounds %struct.anon.5, ptr %1, i32 0, i32 23
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 12
  %33 = tail call i32 @llvm.umin.i32(i32 %29, i32 %32)
  %34 = sub i32 %32, %33
  %35 = getelementptr %struct.anon.5, ptr %1, i32 0, i32 40, i32 0, i32 2
  %36 = load volatile i32, ptr %35, align 4
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 0) #12
  %38 = shl i32 %16, 2
  %39 = zext i32 %38 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef %39, i32 noundef 8) #12
  %40 = shl i32 %13, 2
  %41 = zext i32 %40 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef %41, i32 noundef 8) #12
  %42 = getelementptr inbounds %struct.anon.5, ptr %1, i32 0, i32 20
  %43 = load i32, ptr %42, align 4
  %44 = shl i32 %43, 2
  %45 = zext i32 %44 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %45, i32 noundef 8) #12
  %46 = getelementptr inbounds %struct.anon.5, ptr %1, i32 0, i32 21
  %47 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %46, ptr elementtype(i64) %46) #12, !srcloc !8
  %48 = shl i64 %47, 2
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef %48, i32 noundef 8) #12
  %49 = shl i32 %21, 2
  %50 = zext i32 %49 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %50, i32 noundef 8) #12
  %51 = shl i32 %18, 2
  %52 = zext i32 %51 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.5, i64 noundef %52, i32 noundef 8) #12
  %53 = shl i32 %6, 2
  %54 = zext i32 %53 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.6, i64 noundef %54, i32 noundef 8) #12
  %55 = shl i32 %8, 2
  %56 = zext i32 %55 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %56, i32 noundef 8) #12
  %57 = shl i32 %11, 2
  %58 = zext i32 %57 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.8, i64 noundef %58, i32 noundef 8) #12
  %59 = getelementptr inbounds %struct.anon.5, ptr %1, i32 0, i32 22
  %60 = load i32, ptr %59, align 8
  %61 = shl i32 %60, 2
  %62 = zext i32 %61 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef %62, i32 noundef 8) #12
  %63 = getelementptr inbounds %struct.anon.5, ptr %1, i32 0, i32 24
  %64 = load i32, ptr %63, align 8
  %65 = shl i32 %64, 2
  %66 = zext i32 %65 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef %66, i32 noundef 8) #12
  %67 = lshr exact i32 %33, 10
  %68 = zext i32 %67 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.11, i64 noundef %68, i32 noundef 8) #12
  %69 = lshr exact i32 %34, 10
  %70 = zext i32 %69 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %70, i32 noundef 8) #12
  %71 = getelementptr inbounds %struct.anon.5, ptr %1, i32 0, i32 12
  %72 = load volatile i32, ptr %71, align 4
  %73 = lshr i32 %72, 10
  %74 = zext i32 %73 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %74, i32 noundef 8) #12
  %75 = shl i32 %37, 2
  %76 = zext i32 %75 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %76, i32 noundef 8) #12
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.15) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull_width(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @task_vsize(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.anon.5, ptr %0, i32 0, i32 19
  %3 = load i32, ptr %2, align 8
  %4 = shl i32 %3, 12
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @task_statm(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.anon.5, ptr %0, i32 0, i32 40
  %7 = load volatile i32, ptr %6, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0) #12
  %9 = getelementptr %struct.anon.5, ptr %0, i32 0, i32 40, i32 0, i32 3
  %10 = load volatile i32, ptr %9, align 4
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0) #12
  %12 = add nuw i32 %11, %8
  store i32 %12, ptr %1, align 4
  %13 = getelementptr inbounds %struct.anon.5, ptr %0, i32 0, i32 29
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 4095
  %16 = and i32 %15, -4096
  %17 = getelementptr inbounds %struct.anon.5, ptr %0, i32 0, i32 28
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, -4096
  %20 = sub i32 %16, %19
  %21 = lshr exact i32 %20, 12
  store i32 %21, ptr %2, align 4
  %22 = getelementptr inbounds %struct.anon.5, ptr %0, i32 0, i32 22
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.anon.5, ptr %0, i32 0, i32 24
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, %23
  store i32 %26, ptr %3, align 4
  %27 = load i32, ptr %1, align 4
  %28 = getelementptr %struct.anon.5, ptr %0, i32 0, i32 40, i32 0, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 0) #12
  %31 = add i32 %30, %27
  store i32 %31, ptr %4, align 4
  %32 = getelementptr inbounds %struct.anon.5, ptr %0, i32 0, i32 19
  %33 = load i32, ptr %32, align 8
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pid_maps_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @__seq_open_private(ptr noundef %1, ptr noundef nonnull @proc_pid_maps_op, i32 noundef 16) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  store ptr %0, ptr %3, align 4
  %6 = tail call ptr @proc_mem_open(ptr noundef %0, i32 noundef 1) #12
  %7 = getelementptr inbounds %struct.proc_maps_private, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  %11 = tail call i32 @seq_release_private(ptr noundef %0, ptr noundef %1) #12
  br label %12

12:                                               ; preds = %9, %5, %2
  %13 = phi i32 [ %10, %9 ], [ -12, %2 ], [ 0, %5 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_map_release(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.proc_maps_private, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.anon.5, ptr %8, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #12, !srcloc !10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #12, !srcloc !11
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16, !prof !13

15:                                               ; preds = %10
  tail call void @__mmdrop(ptr noundef nonnull %8) #12
  br label %16

16:                                               ; preds = %15, %10, %2
  %17 = tail call i32 @seq_release_private(ptr noundef %0, ptr noundef %1) #12
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pid_smaps_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @__seq_open_private(ptr noundef %1, ptr noundef nonnull @proc_pid_smaps_op, i32 noundef 16) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  store ptr %0, ptr %3, align 4
  %6 = tail call ptr @proc_mem_open(ptr noundef %0, i32 noundef 1) #12
  %7 = getelementptr inbounds %struct.proc_maps_private, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  %11 = tail call i32 @seq_release_private(ptr noundef %0, ptr noundef %1) #12
  br label %12

12:                                               ; preds = %9, %5, %2
  %13 = phi i32 [ %10, %9 ], [ -12, %2 ], [ 0, %5 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smaps_rollup_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 4197824, i32 noundef 16) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @show_smaps_rollup, ptr noundef nonnull %4) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  store ptr %0, ptr %4, align 8
  %10 = tail call ptr @proc_mem_open(ptr noundef %0, i32 noundef 1) #12
  %11 = getelementptr inbounds %struct.proc_maps_private, ptr %4, i32 0, i32 2
  store ptr %10, ptr %11, align 8
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = ptrtoint ptr %10 to i32
  %15 = tail call i32 @single_release(ptr noundef %0, ptr noundef %1) #12
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi i32 [ %7, %6 ], [ %14, %13 ]
  tail call void @kfree(ptr noundef nonnull %4) #12
  br label %18

18:                                               ; preds = %16, %9, %2
  %19 = phi i32 [ %17, %16 ], [ -12, %2 ], [ 0, %9 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smaps_rollup_release(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.proc_maps_private, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.anon.5, ptr %8, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #12, !srcloc !10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #12, !srcloc !11
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16, !prof !13

15:                                               ; preds = %10
  tail call void @__mmdrop(ptr noundef nonnull %8) #12
  br label %16

16:                                               ; preds = %15, %10, %2
  tail call void @kfree(ptr noundef %6) #12
  %17 = tail call i32 @single_release(ptr noundef %0, ptr noundef %1) #12
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clear_refs_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [13 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.clear_refs_private, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %5, i8 0, i32 13, i1 false)
  %8 = tail call i32 @llvm.umin.i32(i32 %2, i32 12)
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %8, i32 -1090519040) #14, !srcloc !15
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19, !prof !16

12:                                               ; preds = %4
  %13 = tail call ptr @llvm.thread.pointer() #12
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #15, !srcloc !17
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #12, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !19
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %8) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #12, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !19
  br label %19

19:                                               ; preds = %12, %4
  %20 = phi i32 [ %18, %12 ], [ %8, %4 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22, !prof !16

22:                                               ; preds = %19
  %23 = sub i32 %8, %20
  %24 = getelementptr i8, ptr %5, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %20, i1 false) #12
  br label %99

25:                                               ; preds = %19
  %26 = call ptr @strim(ptr noundef nonnull %5) #12
  %27 = call i32 @kstrtoint(ptr noundef %26, i32 noundef 10, ptr noundef nonnull %6) #12
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %99, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %6, align 4
  %31 = add i32 %30, -6
  %32 = icmp ult i32 %31, -5
  br i1 %32, label %99, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %35, i32 -40
  %37 = load ptr, ptr %36, align 8
  %38 = call ptr @get_pid_task(ptr noundef %37, i32 noundef 0) #12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %99, label %40

40:                                               ; preds = %33
  %41 = call ptr @get_task_mm(ptr noundef nonnull %38) #12
  %42 = icmp eq ptr %41, null
  br i1 %42, label %89, label %43

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 %30, ptr %7, align 4
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %41, i1 noundef zeroext true) #12
  br label %47

47:                                               ; preds = %46, %43
  %48 = getelementptr inbounds %struct.anon.5, ptr %41, i32 0, i32 15
  %49 = call i32 @down_write_killable(ptr noundef %48) #12
  %50 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = icmp eq i32 %49, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %41, i1 noundef zeroext true, i1 noundef zeroext %53) #12
  br label %54

54:                                               ; preds = %52, %47
  %55 = icmp eq i32 %49, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %54
  switch i32 %30, label %82 [
    i32 5, label %57
    i32 4, label %70
  ]

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.anon.5, ptr %41, i32 0, i32 40
  %59 = load volatile i32, ptr %58, align 4
  %60 = call i32 @llvm.smax.i32(i32 %59, i32 0) #12
  %61 = getelementptr %struct.anon.5, ptr %41, i32 0, i32 40, i32 0, i32 1
  %62 = load volatile i32, ptr %61, align 4
  %63 = call i32 @llvm.smax.i32(i32 %62, i32 0) #12
  %64 = add nuw i32 %63, %60
  %65 = getelementptr %struct.anon.5, ptr %41, i32 0, i32 40, i32 0, i32 3
  %66 = load volatile i32, ptr %65, align 4
  %67 = call i32 @llvm.smax.i32(i32 %66, i32 0) #12
  %68 = add i32 %64, %67
  %69 = getelementptr inbounds %struct.anon.5, ptr %41, i32 0, i32 17
  store i32 %68, ptr %69, align 8
  br label %86

70:                                               ; preds = %70, %56
  %71 = phi ptr [ %74, %70 ], [ %41, %56 ]
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  %74 = getelementptr inbounds %struct.vm_area_struct, ptr %72, i32 0, i32 2
  br i1 %73, label %75, label %70

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.anon.5, ptr %41, i32 0, i32 48
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %76) #12, !srcloc !10
  %77 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %76, ptr %76, i32 1, ptr elementtype(i32) %76) #12, !srcloc !20
  %78 = getelementptr inbounds %struct.anon.5, ptr %41, i32 0, i32 7
  %79 = load i32, ptr %78, align 8
  %80 = call i32 @walk_page_range(ptr noundef nonnull %41, i32 noundef 0, i32 noundef %79, ptr noundef nonnull @clear_refs_walk_ops, ptr noundef nonnull %7) #12
  call void @flush_tlb_mm(ptr noundef nonnull %41) #12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %76) #12, !srcloc !10
  %81 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %76, ptr %76, i32 1, ptr elementtype(i32) %76) #12, !srcloc !21
  br label %86

82:                                               ; preds = %56
  %83 = getelementptr inbounds %struct.anon.5, ptr %41, i32 0, i32 7
  %84 = load i32, ptr %83, align 8
  %85 = call i32 @walk_page_range(ptr noundef nonnull %41, i32 noundef 0, i32 noundef %84, ptr noundef nonnull @clear_refs_walk_ops, ptr noundef nonnull %7) #12
  br label %86

86:                                               ; preds = %82, %75, %57
  call fastcc void @mmap_write_unlock(ptr noundef nonnull %41)
  br label %87

87:                                               ; preds = %86, %54
  %88 = phi i32 [ %8, %86 ], [ -4, %54 ]
  call void @mmput(ptr noundef nonnull %41) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  br label %89

89:                                               ; preds = %87, %40
  %90 = phi i32 [ %88, %87 ], [ %8, %40 ]
  %91 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #12, !srcloc !10
  %92 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #12, !srcloc !23
  %93 = extractvalue { i32, i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = icmp sgt i32 %93, 0
  br i1 %96, label %99, label %97, !prof !16

97:                                               ; preds = %95
  call void @refcount_warn_saturate(ptr noundef %91, i32 noundef 3) #12
  br label %99

98:                                               ; preds = %89
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  call void @__put_task_struct(ptr noundef nonnull %38) #12
  br label %99

99:                                               ; preds = %98, %97, %95, %33, %29, %25, %22
  %100 = phi i32 [ %27, %25 ], [ -22, %29 ], [ -3, %33 ], [ %90, %95 ], [ %90, %97 ], [ %90, %98 ], [ -14, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %5) #12
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mem_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pagemap_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca %struct.pagemapread, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %115, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.anon.5, ptr %7, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #12, !srcloc !10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 0, i32 1, ptr elementtype(i32) %10) #12, !srcloc !26
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %115, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  %15 = load i64, ptr %3, align 8
  %16 = and i64 %15, 7
  %17 = icmp eq i64 %16, 0
  %18 = and i32 %2, 7
  %19 = icmp eq i32 %18, 0
  %20 = and i1 %19, %17
  br i1 %20, label %21, label %113

21:                                               ; preds = %14
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %113, label %23

23:                                               ; preds = %21
  %24 = tail call zeroext i1 @file_ns_capable(ptr noundef %0, ptr noundef nonnull @init_user_ns, i32 noundef 21) #12
  %25 = getelementptr inbounds %struct.pagemapread, ptr %5, i32 0, i32 3
  %26 = zext i1 %24 to i8
  store i8 %26, ptr %25, align 4
  %27 = getelementptr inbounds %struct.pagemapread, ptr %5, i32 0, i32 1
  store i32 512, ptr %27, align 4
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3264, i32 noundef 4096) #13
  %30 = getelementptr inbounds %struct.pagemapread, ptr %5, i32 0, i32 2
  store ptr %29, ptr %30, align 4
  %31 = icmp eq ptr %29, null
  br i1 %31, label %113, label %32

32:                                               ; preds = %23
  %33 = load i64, ptr %3, align 8
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.anon.5, ptr %7, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %34, 8388608
  %38 = shl i32 %34, 9
  %39 = and i32 %38, -4096
  %40 = select i1 %37, i32 %39, i32 %36
  %41 = icmp ugt i32 %36, %40
  br i1 %41, label %42, label %108

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.anon.5, ptr %7, i32 0, i32 15
  br label %44

44:                                               ; preds = %96, %42
  %45 = phi ptr [ %1, %42 ], [ %98, %96 ]
  %46 = phi i32 [ %2, %42 ], [ %99, %96 ]
  %47 = phi i32 [ 0, %42 ], [ %97, %96 ]
  %48 = phi i32 [ %40, %42 ], [ %54, %96 ]
  store i32 0, ptr %5, align 4
  %49 = add i32 %48, 2097152
  %50 = and i32 %49, -2097152
  %51 = icmp ult i32 %50, %48
  %52 = icmp ugt i32 %50, %36
  %53 = select i1 %51, i1 true, i1 %52
  %54 = select i1 %53, i32 %36, i32 %50
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %7, i1 noundef zeroext false) #12
  br label %58

58:                                               ; preds = %57, %44
  %59 = call i32 @down_read_killable(ptr noundef %43) #12
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = icmp eq i32 %59, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %7, i1 noundef zeroext false, i1 noundef zeroext %63) #12
  br label %64

64:                                               ; preds = %62, %58
  %65 = icmp eq i32 %59, 0
  br i1 %65, label %66, label %110

66:                                               ; preds = %64
  %67 = call i32 @walk_page_range(ptr noundef nonnull %7, i32 noundef %48, i32 noundef %54, ptr noundef nonnull @pagemap_ops, ptr noundef nonnull %5) #12
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %7, i1 noundef zeroext false) #12
  br label %71

71:                                               ; preds = %70, %66
  call void @up_read(ptr noundef %43) #12
  %72 = load i32, ptr %5, align 4
  %73 = shl i32 %72, 3
  %74 = call i32 @llvm.umin.i32(i32 %46, i32 %73)
  %75 = load ptr, ptr %30, align 4
  %76 = icmp slt i32 %74, 0
  %77 = load i1, ptr @check_copy_size.__already_done, align 1
  %78 = xor i1 %77, true
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %81, !prof !13

80:                                               ; preds = %71
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %81

81:                                               ; preds = %80, %71
  br i1 %76, label %110, label %82, !prof !13

82:                                               ; preds = %81
  %83 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %45, i32 %74, i32 -1090519040) #14, !srcloc !28
  %84 = extractvalue { i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = tail call ptr @llvm.thread.pointer() #12
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 3
  %89 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %88) #15, !srcloc !17
  %90 = and i32 %89, -13
  %91 = or i32 %90, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %91) #12, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !19
  %92 = call i32 @arm_copy_to_user(ptr noundef %45, ptr noundef %75, i32 noundef %74) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #12, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !19
  br label %93

93:                                               ; preds = %86, %82
  %94 = phi i32 [ %92, %86 ], [ %74, %82 ]
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = add i32 %74, %47
  %98 = getelementptr i8, ptr %45, i32 %74
  %99 = sub i32 %46, %74
  %100 = icmp ne i32 %99, 0
  %101 = icmp ult i32 %54, %36
  %102 = select i1 %100, i1 %101, i1 false
  br i1 %102, label %44, label %103

103:                                              ; preds = %96
  %104 = load i64, ptr %3, align 8
  %105 = sext i32 %97 to i64
  %106 = add i64 %104, %105
  store i64 %106, ptr %3, align 8
  %107 = icmp ult i32 %67, 2
  br i1 %107, label %108, label %110

108:                                              ; preds = %103, %32
  %109 = phi i32 [ %97, %103 ], [ 0, %32 ]
  br label %110

110:                                              ; preds = %108, %103, %93, %81, %64
  %111 = phi i32 [ %109, %108 ], [ %67, %103 ], [ -14, %81 ], [ %59, %64 ], [ -14, %93 ]
  %112 = load ptr, ptr %30, align 4
  call void @kfree(ptr noundef %112) #12
  br label %113

113:                                              ; preds = %110, %23, %21, %14
  %114 = phi i32 [ -22, %14 ], [ %111, %110 ], [ -12, %23 ], [ 0, %21 ]
  call void @mmput(ptr noundef nonnull %7) #12
  br label %115

115:                                              ; preds = %113, %9, %4
  %116 = phi i32 [ %114, %113 ], [ 0, %4 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pagemap_open(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call ptr @proc_mem_open(ptr noundef %0, i32 noundef 1) #12
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %3, ptr %8, align 8
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ 0, %7 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pagemap_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.anon.5, ptr %4, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #12, !srcloc !10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #12, !srcloc !11
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !13

11:                                               ; preds = %6
  tail call void @__mmdrop(ptr noundef nonnull %4) #12
  br label %12

12:                                               ; preds = %11, %6, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mem_open(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @m_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load i64, ptr %1, align 8
  %6 = trunc i64 %5 to i32
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %68, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 -40
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @get_pid_task(ptr noundef %11, i32 noundef 0) #12
  %13 = getelementptr inbounds %struct.proc_maps_private, ptr %4, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %68, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.proc_maps_private, ptr %4, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.anon.5, ptr %17, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #12, !srcloc !10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 0, i32 1, ptr elementtype(i32) %20) #12, !srcloc !26
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load ptr, ptr %13, align 4
  br label %26

26:                                               ; preds = %24, %15
  %27 = phi ptr [ %25, %24 ], [ %12, %15 ]
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #12, !srcloc !10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #12, !srcloc !23
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = icmp sgt i32 %30, 0
  br i1 %33, label %36, label %34, !prof !16

34:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef %28, i32 noundef 3) #12
  br label %36

35:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  tail call void @__put_task_struct(ptr noundef %27) #12
  br label %36

36:                                               ; preds = %35, %34, %32
  store ptr null, ptr %13, align 4
  br label %68

37:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %17, i1 noundef zeroext false) #12
  br label %41

41:                                               ; preds = %40, %37
  %42 = getelementptr inbounds %struct.anon.5, ptr %17, i32 0, i32 15
  %43 = tail call i32 @down_read_killable(ptr noundef %42) #12
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = icmp eq i32 %43, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %17, i1 noundef zeroext false, i1 noundef zeroext %47) #12
  br label %48

48:                                               ; preds = %46, %41
  %49 = icmp eq i32 %43, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %48
  tail call void @mmput(ptr noundef nonnull %17) #12
  %51 = load ptr, ptr %13, align 4
  %52 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #12, !srcloc !10
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #12, !srcloc !23
  %54 = extractvalue { i32, i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = icmp sgt i32 %54, 0
  br i1 %57, label %60, label %58, !prof !16

58:                                               ; preds = %56
  tail call void @refcount_warn_saturate(ptr noundef %52, i32 noundef 3) #12
  br label %60

59:                                               ; preds = %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  tail call void @__put_task_struct(ptr noundef %51) #12
  br label %60

60:                                               ; preds = %59, %58, %56
  store ptr null, ptr %13, align 4
  br label %68

61:                                               ; preds = %48
  %62 = tail call ptr @get_gate_vma(ptr noundef nonnull %17) #12
  %63 = getelementptr inbounds %struct.proc_maps_private, ptr %4, i32 0, i32 3
  store ptr %62, ptr %63, align 4
  %64 = tail call ptr @find_vma(ptr noundef nonnull %17, i32 noundef %6) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load ptr, ptr %63, align 4
  br label %68

68:                                               ; preds = %66, %61, %60, %36, %8, %2
  %69 = phi ptr [ inttoptr (i32 -4 to ptr), %60 ], [ %67, %66 ], [ null, %36 ], [ null, %2 ], [ %64, %61 ], [ inttoptr (i32 -3 to ptr), %8 ]
  ret ptr %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @m_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.proc_maps_private, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.proc_maps_private, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @__mmap_lock_do_trace_released(ptr noundef %10, i1 noundef zeroext false) #12
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %struct.anon.5, ptr %10, i32 0, i32 15
  tail call void @up_read(ptr noundef %15) #12
  tail call void @mmput(ptr noundef %10) #12
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #12, !srcloc !10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #12, !srcloc !23
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %25, label %23, !prof !16

23:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 3) #12
  br label %25

24:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  tail call void @__put_task_struct(ptr noundef %16) #12
  br label %25

25:                                               ; preds = %24, %23, %21
  store ptr null, ptr %5, align 4
  br label %26

26:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @m_next(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.proc_maps_private, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %17, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr %7, ptr %11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %13, align 4
  br label %17

17:                                               ; preds = %15, %9, %3
  %18 = phi ptr [ %13, %15 ], [ null, %9 ], [ null, %3 ]
  %19 = phi i32 [ %16, %15 ], [ -1, %9 ], [ -1, %3 ]
  %20 = zext i32 %19 to i64
  store i64 %20, ptr %2, align 8
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_map(ptr noundef %0, ptr noundef %1) #0 {
  tail call fastcc void @show_map_vma(ptr noundef %0, ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_gate_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @show_map_vma(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq ptr %6, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %20 = load i32, ptr %19, align 4
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 12
  %23 = load i32, ptr %1, align 4
  %24 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  tail call fastcc void @show_vma_header_prefix(ptr noundef %0, i32 noundef %23, i32 noundef %25, i32 noundef %8, i64 noundef %22, i32 noundef %16, i32 noundef %18)
  tail call void @seq_pad(ptr noundef %0, i8 noundef zeroext 32) #12
  %26 = tail call i32 @seq_file_path(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @.str.16) #12
  br label %66

27:                                               ; preds = %2
  %28 = load i32, ptr %1, align 4
  %29 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  tail call fastcc void @show_vma_header_prefix(ptr noundef %0, i32 noundef %28, i32 noundef %30, i32 noundef %8, i64 noundef 0, i32 noundef 0, i32 noundef 0)
  %31 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.vm_operations_struct, ptr %32, i32 0, i32 12
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = tail call ptr %36(ptr noundef %1) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %64

41:                                               ; preds = %38, %34, %27
  %42 = tail call ptr @arch_vma_name(ptr noundef %1) #12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = icmp eq ptr %4, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %44
  %47 = load i32, ptr %1, align 4
  %48 = getelementptr inbounds %struct.anon.5, ptr %4, i32 0, i32 33
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %47, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i32, ptr %29, align 4
  %53 = getelementptr inbounds %struct.anon.5, ptr %4, i32 0, i32 32
  %54 = load i32, ptr %53, align 8
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %51, %46
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr inbounds %struct.anon.5, ptr %57, i32 0, i32 34
  %59 = load i32, ptr %58, align 8
  %60 = icmp ugt i32 %47, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i32, ptr %29, align 4
  %63 = icmp ult i32 %62, %59
  br i1 %63, label %66, label %64

64:                                               ; preds = %61, %51, %44, %41, %38
  %65 = phi ptr [ @.str.19, %61 ], [ @.str.18, %51 ], [ @.str.17, %44 ], [ %42, %41 ], [ %39, %38 ]
  tail call void @seq_pad(ptr noundef %0, i8 noundef zeroext 32) #12
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %65) #12
  br label %66

66:                                               ; preds = %64, %61, %56, %10
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @show_vma_header_prefix(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 48
  %11 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 4
  store i32 %10, ptr %11, align 8
  %12 = zext i32 %1 to i64
  tail call void @seq_put_hex_ll(ptr noundef %0, ptr noundef null, i64 noundef %12, i32 noundef 8) #12
  %13 = zext i32 %2 to i64
  tail call void @seq_put_hex_ll(ptr noundef %0, ptr noundef nonnull @.str.21, i64 noundef %13, i32 noundef 8) #12
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #12
  %14 = and i32 %3, 1
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i8 45, i8 114
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %16) #12
  %17 = and i32 %3, 2
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i8 45, i8 119
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %19) #12
  %20 = and i32 %3, 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i8 45, i8 120
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %22) #12
  %23 = and i32 %3, 128
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i8 112, i8 115
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %25) #12
  tail call void @seq_put_hex_ll(ptr noundef %0, ptr noundef nonnull @.str.22, i64 noundef %4, i32 noundef 8) #12
  %26 = lshr i32 %5, 20
  %27 = zext i32 %26 to i64
  tail call void @seq_put_hex_ll(ptr noundef %0, ptr noundef nonnull @.str.22, i64 noundef %27, i32 noundef 2) #12
  %28 = and i32 %5, 1048575
  %29 = zext i32 %28 to i64
  tail call void @seq_put_hex_ll(ptr noundef %0, ptr noundef nonnull @.str.23, i64 noundef %29, i32 noundef 2) #12
  %30 = zext i32 %6 to i64
  tail call void @seq_put_decimal_ull(ptr noundef %0, ptr noundef nonnull @.str.22, i64 noundef %30) #12
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_pad(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_file_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arch_vma_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_hex_ll(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_smap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.mem_size_stats, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 0, i64 104, i1 false)
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 17
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, @shmem_aops
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = tail call i32 @shmem_swap_usage(ptr noundef %1) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 10
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %27, label %25

25:                                               ; preds = %20, %17
  %26 = getelementptr inbounds %struct.mem_size_stats, ptr %3, i32 0, i32 11
  store i32 %18, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %20, %11, %7
  %28 = phi ptr [ @smaps_shmem_walk_ops, %20 ], [ @smaps_walk_ops, %25 ], [ @smaps_walk_ops, %11 ], [ @smaps_walk_ops, %7 ]
  %29 = call i32 @walk_page_vma(ptr noundef %1, ptr noundef nonnull %28, ptr noundef nonnull %3) #12
  br label %30

30:                                               ; preds = %27, %2
  call fastcc void @show_map_vma(ptr noundef %0, ptr noundef %1)
  %31 = load i32, ptr %4, align 4
  %32 = load i32, ptr %1, align 4
  %33 = sub i32 %31, %32
  %34 = lshr i32 %33, 10
  %35 = zext i32 %34 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.24, i64 noundef %35, i32 noundef 8) #12
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.25, i64 noundef 4, i32 noundef 8) #12
  call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.26, i64 noundef 4, i32 noundef 8) #12
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.15) #12
  call fastcc void @__show_smap(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef 0) #12
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.50) #12
  %36 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  br label %37

37:                                               ; preds = %50, %30
  %38 = phi i32 [ 0, %30 ], [ %51, %50 ]
  %39 = getelementptr [32 x [2 x i8]], ptr @show_smap_vma_flags.mnemonics, i32 0, i32 %38
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %36, align 4
  %44 = shl nuw i32 1, %38
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext %40) #12
  %48 = getelementptr [32 x [2 x i8]], ptr @show_smap_vma_flags.mnemonics, i32 0, i32 %38, i32 1
  %49 = load i8, ptr %48, align 1
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext %49) #12
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #12
  br label %50

50:                                               ; preds = %47, %42, %37
  %51 = add nuw nsw i32 %38, 1
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %37

53:                                               ; preds = %50
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #12
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #12
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__show_smap(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8
  %5 = lshr i32 %4, 10
  %6 = zext i32 %5 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef %6, i32 noundef 8) #12
  %7 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 14
  %8 = load i64, ptr %7, align 8
  %9 = lshr i64 %8, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.31, i64 noundef %9, i32 noundef 8) #12
  br i1 %2, label %10, label %20

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 15
  %12 = load i64, ptr %11, align 8
  %13 = lshr i64 %12, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %13, i32 noundef 8) #12
  %14 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 16
  %15 = load i64, ptr %14, align 8
  %16 = lshr i64 %15, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.33, i64 noundef %16, i32 noundef 8) #12
  %17 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 17
  %18 = load i64, ptr %17, align 8
  %19 = lshr i64 %18, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.34, i64 noundef %19, i32 noundef 8) #12
  br label %20

20:                                               ; preds = %10, %3
  %21 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 10
  %24 = zext i32 %23 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef %24, i32 noundef 8) #12
  %25 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 10
  %28 = zext i32 %27 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.36, i64 noundef %28, i32 noundef 8) #12
  %29 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 10
  %32 = zext i32 %31 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.37, i64 noundef %32, i32 noundef 8) #12
  %33 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 4
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 10
  %36 = zext i32 %35 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.38, i64 noundef %36, i32 noundef 8) #12
  %37 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %38, 10
  %40 = zext i32 %39 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.39, i64 noundef %40, i32 noundef 8) #12
  %41 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 6
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 10
  %44 = zext i32 %43 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.40, i64 noundef %44, i32 noundef 8) #12
  %45 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 7
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 10
  %48 = zext i32 %47 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.41, i64 noundef %48, i32 noundef 8) #12
  %49 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 8
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 10
  %52 = zext i32 %51 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.42, i64 noundef %52, i32 noundef 8) #12
  %53 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 9
  %54 = load i32, ptr %53, align 4
  %55 = lshr i32 %54, 10
  %56 = zext i32 %55 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.43, i64 noundef %56, i32 noundef 8) #12
  %57 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 10
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 10
  %60 = zext i32 %59 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.44, i64 noundef %60, i32 noundef 8) #12
  %61 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 12
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 10
  %64 = zext i32 %63 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.45, i64 noundef %64, i32 noundef 8) #12
  %65 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 13
  %66 = load i32, ptr %65, align 4
  %67 = lshr i32 %66, 10
  %68 = zext i32 %67 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.46, i64 noundef %68, i32 noundef 7) #12
  %69 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 11
  %70 = load i32, ptr %69, align 4
  %71 = lshr i32 %70, 10
  %72 = zext i32 %71 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.47, i64 noundef %72, i32 noundef 8) #12
  %73 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 19
  %74 = load i64, ptr %73, align 8
  %75 = lshr i64 %74, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.48, i64 noundef %75, i32 noundef 8) #12
  %76 = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 18
  %77 = load i64, ptr %76, align 8
  %78 = lshr i64 %77, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %0, ptr noundef nonnull @.str.49, i64 noundef %78, i32 noundef 8) #12
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.15) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_swap_usage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @walk_page_vma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @walk_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smaps_pte_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr @mem_map, align 4
  %6 = load i32, ptr %0, align 4
  %7 = lshr i32 %6, 12
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %9 = sub i32 %7, %8
  %10 = getelementptr %struct.page, ptr %5, i32 %9, i32 1, i32 0, i32 3
  %11 = getelementptr %struct.page, ptr %5, i32 %9
  %12 = load i32, ptr @pgprot_kernel, align 4
  %13 = or i32 %12, 512
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  %14 = tail call ptr @llvm.thread.pointer() #12
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 149
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  %18 = tail call ptr @__kmap_local_page_prot(ptr noundef %11, i32 noundef %13) #12
  %19 = lshr i32 %1, 12
  %20 = and i32 %19, 511
  %21 = getelementptr i32, ptr %18, i32 %20
  tail call void @_raw_spin_lock(ptr noundef %10) #12
  %22 = icmp eq i32 %1, %2
  br i1 %22, label %383, label %23

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 6
  %25 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 3
  br label %26

26:                                               ; preds = %379, %23
  %27 = phi i32 [ %1, %23 ], [ %381, %379 ]
  %28 = phi ptr [ %21, %23 ], [ %380, %379 ]
  %29 = load ptr, ptr %24, align 4
  %30 = load ptr, ptr %25, align 4
  %31 = getelementptr inbounds %struct.vm_area_struct, ptr %30, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 8192
  %34 = icmp eq i32 %33, 0
  %35 = load i32, ptr %28, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %26
  %39 = tail call ptr @vm_normal_page(ptr noundef %30, i32 noundef %27, i32 noundef %35) #12
  br label %112

40:                                               ; preds = %26
  %41 = icmp eq i32 %35, 0
  br i1 %41, label %88, label %42

42:                                               ; preds = %40
  %43 = lshr i32 %35, 7
  %44 = shl i32 %35, 24
  %45 = and i32 %44, 2080374784
  %46 = or i32 %45, %43
  %47 = icmp ult i32 %46, 2013265920
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = insertvalue [1 x i32] poison, i32 %46, 0
  %50 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 11
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 4096
  store i32 %52, ptr %50, align 4
  %53 = tail call i32 @swp_swapcount([1 x i32] %49) #12
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = udiv i32 16777216, %53
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 19
  %59 = load i64, ptr %58, align 8
  %60 = add i64 %59, %57
  store i64 %60, ptr %58, align 8
  br label %379

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 19
  %63 = load i64, ptr %62, align 8
  %64 = add i64 %63, 16777216
  store i64 %64, ptr %62, align 8
  br label %379

65:                                               ; preds = %42
  %66 = and i32 %35, 120
  %67 = icmp eq i32 %66, 120
  br i1 %67, label %68, label %379

68:                                               ; preds = %65
  %69 = load ptr, ptr @mem_map, align 4
  %70 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %71 = sub i32 %43, %70
  %72 = getelementptr %struct.page, ptr %69, i32 %71
  %73 = getelementptr %struct.page, ptr %69, i32 %71, i32 1
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77, !prof !16

77:                                               ; preds = %68
  %78 = add i32 %74, -1
  br label %81

79:                                               ; preds = %68
  %80 = ptrtoint ptr %72 to i32
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = inttoptr i32 %82 to ptr
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %112, !prof !13

87:                                               ; preds = %81
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/swapops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #12, !srcloc !31
  unreachable

88:                                               ; preds = %40
  %89 = load ptr, ptr %3, align 4
  %90 = getelementptr inbounds %struct.mm_walk_ops, ptr %89, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %379, label %93

93:                                               ; preds = %88
  %94 = add i32 %27, 4096
  %95 = getelementptr inbounds %struct.vm_area_struct, ptr %30, i32 0, i32 14
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.file, ptr %96, i32 0, i32 17
  %98 = load ptr, ptr %97, align 8
  %99 = load i32, ptr %30, align 4
  %100 = sub i32 %27, %99
  %101 = lshr i32 %100, 12
  %102 = getelementptr inbounds %struct.vm_area_struct, ptr %30, i32 0, i32 13
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %101, %103
  %105 = sub i32 %94, %99
  %106 = lshr i32 %105, 12
  %107 = add i32 %106, %103
  %108 = tail call i32 @shmem_partial_swap_usage(ptr noundef %98, i32 noundef %104, i32 noundef %107) #12
  %109 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 11
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, %108
  store i32 %111, ptr %109, align 4
  br label %379

112:                                              ; preds = %81, %38
  %113 = phi ptr [ %39, %38 ], [ %72, %81 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %379, label %115

115:                                              ; preds = %112
  %116 = load i32, ptr %28, align 4
  %117 = and i32 %116, 2
  %118 = icmp eq i32 %117, 0
  %119 = and i32 %116, 64
  %120 = icmp eq i32 %119, 0
  %121 = getelementptr inbounds %struct.page, ptr %113, i32 0, i32 1
  %122 = load volatile i32, ptr %121, align 4
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125, !prof !16

125:                                              ; preds = %115
  %126 = add i32 %122, -1
  br label %129

127:                                              ; preds = %115
  %128 = ptrtoint ptr %113 to i32
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = inttoptr i32 %130 to ptr
  %132 = getelementptr inbounds %struct.anon.72, ptr %131, i32 0, i32 2
  %133 = load ptr, ptr %132, align 4
  %134 = ptrtoint ptr %133 to i32
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %173, label %137

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 6
  %139 = load i32, ptr %138, align 8
  %140 = add i32 %139, 4096
  store i32 %140, ptr %138, align 8
  %141 = load volatile i32, ptr %121, align 4
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144, !prof !16

144:                                              ; preds = %137
  %145 = add i32 %141, -1
  br label %148

146:                                              ; preds = %137
  %147 = ptrtoint ptr %113 to i32
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  %150 = inttoptr i32 %149 to ptr
  %151 = load volatile i32, ptr %150, align 4
  %152 = and i32 %151, 524288
  %153 = or i32 %152, %119
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %173

155:                                              ; preds = %148
  %156 = load volatile i32, ptr %121, align 4
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159, !prof !16

159:                                              ; preds = %155
  %160 = add i32 %156, -1
  br label %163

161:                                              ; preds = %155
  %162 = ptrtoint ptr %113 to i32
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  %165 = inttoptr i32 %164 to ptr
  %166 = load volatile i32, ptr %165, align 4
  %167 = and i32 %166, 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 7
  %171 = load i32, ptr %170, align 4
  %172 = add i32 %171, 4096
  store i32 %172, ptr %170, align 4
  br label %173

173:                                              ; preds = %169, %163, %148, %129
  %174 = load i32, ptr %29, align 8
  %175 = add i32 %174, 4096
  store i32 %175, ptr %29, align 8
  br i1 %118, label %176, label %191

176:                                              ; preds = %173
  %177 = load volatile i32, ptr %121, align 4
  %178 = load volatile i32, ptr %121, align 4
  %179 = and i32 %178, 1
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181, !prof !16

181:                                              ; preds = %176
  %182 = add i32 %178, -1
  br label %185

183:                                              ; preds = %176
  %184 = ptrtoint ptr %113 to i32
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi i32 [ %182, %181 ], [ %184, %183 ]
  %187 = inttoptr i32 %186 to ptr
  %188 = load volatile i32, ptr %187, align 4
  %189 = and i32 %188, 2
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %185, %173
  %192 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 5
  %193 = load i32, ptr %192, align 4
  %194 = add i32 %193, 4096
  store i32 %194, ptr %192, align 4
  br label %195

195:                                              ; preds = %191, %185
  %196 = load volatile i32, ptr %121, align 4
  %197 = and i32 %196, 1
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %201, label %199, !prof !16

199:                                              ; preds = %195
  %200 = add i32 %196, -1
  br label %203

201:                                              ; preds = %195
  %202 = ptrtoint ptr %113 to i32
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i32 [ %200, %199 ], [ %202, %201 ]
  %205 = inttoptr i32 %204 to ptr
  %206 = getelementptr inbounds %struct.page, ptr %205, i32 0, i32 3
  %207 = load volatile i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 1
  %209 = or i1 %37, %208
  %210 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 14
  br i1 %209, label %223, label %211

211:                                              ; preds = %203
  %212 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 15
  %213 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 17
  %214 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 16
  %215 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 18
  %216 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 1
  %217 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 3
  %218 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 2
  %219 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 4
  %220 = load volatile i32, ptr %113, align 4
  %221 = and i32 %220, 65536
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %292, label %296

223:                                              ; preds = %203
  %224 = load i64, ptr %210, align 8
  %225 = add i64 %224, 16777216
  store i64 %225, ptr %210, align 8
  %226 = load volatile i32, ptr %121, align 4
  %227 = and i32 %226, 1
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %231, label %229, !prof !16

229:                                              ; preds = %223
  %230 = add i32 %226, -1
  br label %233

231:                                              ; preds = %223
  %232 = ptrtoint ptr %113 to i32
  br label %233

233:                                              ; preds = %231, %229
  %234 = phi i32 [ %230, %229 ], [ %232, %231 ]
  %235 = inttoptr i32 %234 to ptr
  %236 = getelementptr inbounds %struct.anon.72, ptr %235, i32 0, i32 2
  %237 = load ptr, ptr %236, align 4
  %238 = ptrtoint ptr %237 to i32
  %239 = and i32 %238, 1
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %233
  %242 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 15
  br label %261

243:                                              ; preds = %233
  %244 = load volatile i32, ptr %121, align 4
  %245 = and i32 %244, 1
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %249, label %247, !prof !16

247:                                              ; preds = %243
  %248 = add i32 %244, -1
  br label %251

249:                                              ; preds = %243
  %250 = ptrtoint ptr %113 to i32
  br label %251

251:                                              ; preds = %249, %247
  %252 = phi i32 [ %248, %247 ], [ %250, %249 ]
  %253 = inttoptr i32 %252 to ptr
  %254 = load volatile i32, ptr %253, align 4
  %255 = and i32 %254, 524288
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 17
  br label %261

259:                                              ; preds = %251
  %260 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 16
  br label %261

261:                                              ; preds = %259, %257, %241
  %262 = phi ptr [ %258, %257 ], [ %260, %259 ], [ %242, %241 ]
  %263 = load i64, ptr %262, align 8
  %264 = add i64 %263, 16777216
  store i64 %264, ptr %262, align 8
  br i1 %34, label %269, label %265

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 18
  %267 = load i64, ptr %266, align 8
  %268 = add i64 %267, 16777216
  store i64 %268, ptr %266, align 8
  br label %269

269:                                              ; preds = %265, %261
  br i1 %120, label %270, label %284

270:                                              ; preds = %269
  %271 = load volatile i32, ptr %121, align 4
  %272 = and i32 %271, 1
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %276, label %274, !prof !16

274:                                              ; preds = %270
  %275 = add i32 %271, -1
  br label %278

276:                                              ; preds = %270
  %277 = ptrtoint ptr %113 to i32
  br label %278

278:                                              ; preds = %276, %274
  %279 = phi i32 [ %275, %274 ], [ %277, %276 ]
  %280 = inttoptr i32 %279 to ptr
  %281 = load volatile i32, ptr %280, align 4
  %282 = and i32 %281, 8
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %278, %269
  %285 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 4
  %286 = load i32, ptr %285, align 8
  %287 = add i32 %286, 4096
  store i32 %287, ptr %285, align 8
  br label %379

288:                                              ; preds = %278
  %289 = getelementptr inbounds %struct.mem_size_stats, ptr %29, i32 0, i32 3
  %290 = load i32, ptr %289, align 4
  %291 = add i32 %290, 4096
  store i32 %291, ptr %289, align 4
  br label %379

292:                                              ; preds = %211
  %293 = load volatile i32, ptr %121, align 4
  %294 = and i32 %293, 1
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %298, label %296, !prof !16

296:                                              ; preds = %292, %211
  %297 = tail call i32 @__page_mapcount(ptr noundef nonnull %113) #12
  br label %302

298:                                              ; preds = %292
  %299 = getelementptr inbounds %struct.page, ptr %113, i32 0, i32 2
  %300 = load volatile i32, ptr %299, align 4
  %301 = add i32 %300, 1
  br label %302

302:                                              ; preds = %298, %296
  %303 = phi i32 [ %297, %296 ], [ %301, %298 ]
  %304 = icmp sgt i32 %303, 1
  br i1 %304, label %305, label %307

305:                                              ; preds = %302
  %306 = udiv i32 16777216, %303
  br label %307

307:                                              ; preds = %305, %302
  %308 = phi i32 [ %306, %305 ], [ 16777216, %302 ]
  %309 = icmp slt i32 %303, 2
  %310 = zext i32 %308 to i64
  %311 = load i64, ptr %210, align 8
  %312 = add i64 %311, %310
  store i64 %312, ptr %210, align 8
  %313 = load volatile i32, ptr %121, align 4
  %314 = and i32 %313, 1
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %318, label %316, !prof !16

316:                                              ; preds = %307
  %317 = add i32 %313, -1
  br label %320

318:                                              ; preds = %307
  %319 = ptrtoint ptr %113 to i32
  br label %320

320:                                              ; preds = %318, %316
  %321 = phi i32 [ %317, %316 ], [ %319, %318 ]
  %322 = inttoptr i32 %321 to ptr
  %323 = getelementptr inbounds %struct.anon.72, ptr %322, i32 0, i32 2
  %324 = load ptr, ptr %323, align 4
  %325 = ptrtoint ptr %324 to i32
  %326 = and i32 %325, 1
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %343

328:                                              ; preds = %320
  %329 = load volatile i32, ptr %121, align 4
  %330 = and i32 %329, 1
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %334, label %332, !prof !16

332:                                              ; preds = %328
  %333 = add i32 %329, -1
  br label %336

334:                                              ; preds = %328
  %335 = ptrtoint ptr %113 to i32
  br label %336

336:                                              ; preds = %334, %332
  %337 = phi i32 [ %333, %332 ], [ %335, %334 ]
  %338 = inttoptr i32 %337 to ptr
  %339 = load volatile i32, ptr %338, align 4
  %340 = and i32 %339, 524288
  %341 = icmp eq i32 %340, 0
  %342 = select i1 %341, ptr %214, ptr %213
  br label %343

343:                                              ; preds = %336, %320
  %344 = phi ptr [ %212, %320 ], [ %342, %336 ]
  %345 = load i64, ptr %344, align 8
  %346 = add i64 %345, %310
  store i64 %346, ptr %344, align 8
  br i1 %34, label %350, label %347

347:                                              ; preds = %343
  %348 = load i64, ptr %215, align 8
  %349 = add i64 %348, %310
  store i64 %349, ptr %215, align 8
  br label %350

350:                                              ; preds = %347, %343
  br i1 %120, label %351, label %365

351:                                              ; preds = %350
  %352 = load volatile i32, ptr %121, align 4
  %353 = and i32 %352, 1
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %357, label %355, !prof !16

355:                                              ; preds = %351
  %356 = add i32 %352, -1
  br label %359

357:                                              ; preds = %351
  %358 = ptrtoint ptr %113 to i32
  br label %359

359:                                              ; preds = %357, %355
  %360 = phi i32 [ %356, %355 ], [ %358, %357 ]
  %361 = inttoptr i32 %360 to ptr
  %362 = load volatile i32, ptr %361, align 4
  %363 = and i32 %362, 8
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %372, label %365

365:                                              ; preds = %359, %350
  br i1 %309, label %366, label %369

366:                                              ; preds = %365
  %367 = load i32, ptr %219, align 8
  %368 = add i32 %367, 4096
  store i32 %368, ptr %219, align 8
  br label %379

369:                                              ; preds = %365
  %370 = load i32, ptr %218, align 8
  %371 = add i32 %370, 4096
  store i32 %371, ptr %218, align 8
  br label %379

372:                                              ; preds = %359
  br i1 %309, label %373, label %376

373:                                              ; preds = %372
  %374 = load i32, ptr %217, align 4
  %375 = add i32 %374, 4096
  store i32 %375, ptr %217, align 4
  br label %379

376:                                              ; preds = %372
  %377 = load i32, ptr %216, align 4
  %378 = add i32 %377, 4096
  store i32 %378, ptr %216, align 4
  br label %379

379:                                              ; preds = %376, %373, %369, %366, %288, %284, %112, %93, %88, %65, %61, %55
  %380 = getelementptr i32, ptr %28, i32 1
  %381 = add i32 %27, 4096
  %382 = icmp eq i32 %381, %2
  br i1 %382, label %383, label %26

383:                                              ; preds = %379, %4
  %384 = phi ptr [ %21, %4 ], [ %380, %379 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  %385 = load i16, ptr %10, align 4
  %386 = add i16 %385, 1
  store i16 %386, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !33
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  %387 = getelementptr i32, ptr %384, i32 -1
  tail call void @kunmap_local_indexed(ptr noundef %387) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %388 = load i32, ptr %15, align 8
  %389 = add i32 %388, -1
  store i32 %389, ptr %15, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  %390 = tail call i32 @__cond_resched() #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_normal_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swp_swapcount([1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smaps_pte_hole(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 17
  %12 = load ptr, ptr %11, align 8
  %13 = load i32, ptr %8, align 4
  %14 = sub i32 %0, %13
  %15 = lshr i32 %14, 12
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 13
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %15, %17
  %19 = sub i32 %1, %13
  %20 = lshr i32 %19, 12
  %21 = add i32 %20, %17
  %22 = tail call i32 @shmem_partial_swap_usage(ptr noundef %12, i32 noundef %18, i32 noundef %21) #12
  %23 = getelementptr inbounds %struct.mem_size_stats, ptr %6, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  store i32 %25, ptr %23, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_partial_swap_usage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_smaps_rollup(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.mem_size_stats, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 0, i32 104, i1 false), !annotation !14
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -40
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @get_pid_task(ptr noundef %8, i32 noundef 0) #12
  %10 = getelementptr inbounds %struct.proc_maps_private, ptr %5, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %153, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.proc_maps_private, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %141, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.anon.5, ptr %14, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #12, !srcloc !10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 0, i32 1, ptr elementtype(i32) %17) #12, !srcloc !26
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %141, label %21

21:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 0, i32 104, i1 false)
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %14, i1 noundef zeroext false) #12
  br label %25

25:                                               ; preds = %24, %21
  %26 = getelementptr inbounds %struct.anon.5, ptr %14, i32 0, i32 15
  %27 = tail call i32 @down_read_killable(ptr noundef %26) #12
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = icmp eq i32 %27, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %14, i1 noundef zeroext false, i1 noundef zeroext %31) #12
  br label %32

32:                                               ; preds = %30, %25
  %33 = icmp eq i32 %27, 0
  br i1 %33, label %34, label %139

34:                                               ; preds = %32
  %35 = load ptr, ptr %13, align 4
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %131, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.mem_size_stats, ptr %3, i32 0, i32 11
  %40 = getelementptr inbounds %struct.anon.5, ptr %14, i32 0, i32 15, i32 4
  br label %41

41:                                               ; preds = %125, %38
  %42 = phi ptr [ %36, %38 ], [ %126, %125 ]
  %43 = getelementptr inbounds %struct.vm_area_struct, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.vm_area_struct, ptr %42, i32 0, i32 14
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.file, ptr %48, i32 0, i32 17
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.address_space, ptr %52, i32 0, i32 9
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, @shmem_aops
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = call i32 @shmem_swap_usage(ptr noundef nonnull %42) #12
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.vm_area_struct, ptr %42, i32 0, i32 8
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 10
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %67, label %64

64:                                               ; preds = %59, %56
  %65 = load i32, ptr %39, align 4
  %66 = add i32 %65, %57
  store i32 %66, ptr %39, align 4
  br label %67

67:                                               ; preds = %64, %59, %50, %46
  %68 = phi ptr [ @smaps_shmem_walk_ops, %59 ], [ @smaps_walk_ops, %64 ], [ @smaps_walk_ops, %50 ], [ @smaps_walk_ops, %46 ]
  %69 = call i32 @walk_page_vma(ptr noundef nonnull %42, ptr noundef nonnull %68, ptr noundef nonnull %3) #12
  %70 = load i32, ptr %43, align 4
  br label %71

71:                                               ; preds = %67, %41
  %72 = phi i32 [ 0, %41 ], [ %70, %67 ]
  %73 = load volatile ptr, ptr %40, align 4
  %74 = icmp eq ptr %73, %40
  br i1 %74, label %121, label %75

75:                                               ; preds = %71
  %76 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %14, i1 noundef zeroext false) #12
  br label %79

79:                                               ; preds = %78, %75
  call void @up_read(ptr noundef %26) #12
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %14, i1 noundef zeroext false) #12
  br label %83

83:                                               ; preds = %82, %79
  %84 = call i32 @down_read_killable(ptr noundef %26) #12
  %85 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = icmp eq i32 %84, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %14, i1 noundef zeroext false, i1 noundef zeroext %88) #12
  br label %89

89:                                               ; preds = %87, %83
  %90 = icmp eq i32 %84, 0
  br i1 %90, label %91, label %139

91:                                               ; preds = %89
  %92 = add i32 %72, -1
  %93 = call ptr @find_vma(ptr noundef nonnull %14, i32 noundef %92) #12
  %94 = icmp eq ptr %93, null
  br i1 %94, label %128, label %95

95:                                               ; preds = %91
  %96 = load i32, ptr %93, align 4
  %97 = icmp ult i32 %96, %72
  br i1 %97, label %98, label %125

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.vm_area_struct, ptr %93, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = icmp ugt i32 %100, %72
  br i1 %101, label %102, label %121

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.vm_area_struct, ptr %93, i32 0, i32 14
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.file, ptr %104, i32 0, i32 17
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.address_space, ptr %108, i32 0, i32 9
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, @shmem_aops
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = call i32 @shmem_swap_usage(ptr noundef nonnull %93) #12
  %114 = load i32, ptr %99, align 4
  br label %115

115:                                              ; preds = %112, %106, %102
  %116 = phi i32 [ %114, %112 ], [ %100, %106 ], [ %100, %102 ]
  %117 = phi ptr [ @smaps_shmem_walk_ops, %112 ], [ @smaps_walk_ops, %106 ], [ @smaps_walk_ops, %102 ]
  %118 = getelementptr inbounds %struct.vm_area_struct, ptr %93, i32 0, i32 6
  %119 = load ptr, ptr %118, align 4
  %120 = call i32 @walk_page_range(ptr noundef %119, i32 noundef %72, i32 noundef %116, ptr noundef nonnull %117, ptr noundef nonnull %3) #12
  br label %121

121:                                              ; preds = %115, %98, %71
  %122 = phi ptr [ %93, %115 ], [ %93, %98 ], [ %42, %71 ]
  %123 = getelementptr inbounds %struct.vm_area_struct, ptr %122, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  br label %125

125:                                              ; preds = %121, %95
  %126 = phi ptr [ %93, %95 ], [ %124, %121 ]
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %41

128:                                              ; preds = %125, %91
  %129 = load ptr, ptr %13, align 4
  %130 = load ptr, ptr %129, align 8
  br label %131

131:                                              ; preds = %128, %34
  %132 = phi ptr [ null, %34 ], [ %130, %128 ]
  %133 = phi i32 [ 0, %34 ], [ %72, %128 ]
  %134 = load i32, ptr %132, align 4
  call fastcc void @show_vma_header_prefix(ptr noundef %0, i32 noundef %134, i32 noundef %133, i32 noundef 0, i64 noundef 0, i32 noundef 0, i32 noundef 0)
  call void @seq_pad(ptr noundef %0, i8 noundef zeroext 32) #12
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.51) #12
  call fastcc void @__show_smap(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true)
  %135 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %14, i1 noundef zeroext false) #12
  br label %138

138:                                              ; preds = %137, %131
  call void @up_read(ptr noundef %26) #12
  br label %139

139:                                              ; preds = %138, %89, %32
  %140 = phi i32 [ %27, %32 ], [ 0, %138 ], [ %84, %89 ]
  call void @mmput(ptr noundef nonnull %14) #12
  br label %141

141:                                              ; preds = %139, %16, %12
  %142 = phi i32 [ %140, %139 ], [ -3, %12 ], [ -3, %16 ]
  %143 = load ptr, ptr %10, align 4
  %144 = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %144) #12, !srcloc !10
  %145 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %144, ptr %144, i32 1, ptr elementtype(i32) %144) #12, !srcloc !23
  %146 = extractvalue { i32, i32, i32 } %145, 0
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %151, label %148

148:                                              ; preds = %141
  %149 = icmp sgt i32 %146, 0
  br i1 %149, label %152, label %150, !prof !16

150:                                              ; preds = %148
  call void @refcount_warn_saturate(ptr noundef %144, i32 noundef 3) #12
  br label %152

151:                                              ; preds = %141
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  call void @__put_task_struct(ptr noundef %143) #12
  br label %152

152:                                              ; preds = %151, %150, %148
  store ptr null, ptr %10, align 4
  br label %153

153:                                              ; preds = %152, %2
  %154 = phi i32 [ %142, %152 ], [ -3, %2 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #12
  ret i32 %154
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmap_write_unlock(ptr noundef %0) unnamed_addr #9 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext true) #12
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.anon.5, ptr %0, i32 0, i32 15
  tail call void @up_write(ptr noundef %6) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clear_refs_pte_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr @mem_map, align 4
  %10 = load i32, ptr %0, align 4
  %11 = lshr i32 %10, 12
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %13 = sub i32 %11, %12
  %14 = getelementptr %struct.page, ptr %9, i32 %13, i32 1, i32 0, i32 3
  %15 = getelementptr %struct.page, ptr %9, i32 %13
  %16 = load i32, ptr @pgprot_kernel, align 4
  %17 = or i32 %16, 512
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 149
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  %22 = tail call ptr @__kmap_local_page_prot(ptr noundef %15, i32 noundef %17) #12
  %23 = lshr i32 %1, 12
  %24 = and i32 %23, 511
  %25 = getelementptr i32, ptr %22, i32 %24
  tail call void @_raw_spin_lock(ptr noundef %14) #12
  %26 = icmp eq i32 %1, %2
  br i1 %26, label %65, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 6
  br label %29

29:                                               ; preds = %61, %27
  %30 = phi i32 [ %1, %27 ], [ %63, %61 ]
  %31 = phi ptr [ %25, %27 ], [ %62, %61 ]
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %6, align 4
  %34 = icmp eq i32 %33, 4
  %35 = and i32 %32, 1
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %61, label %38

38:                                               ; preds = %29
  %39 = tail call ptr @vm_normal_page(ptr noundef %8, i32 noundef %30, i32 noundef %32) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %61, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %31, align 4
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %28, align 4
  %47 = and i32 %42, -3
  tail call void @set_pte_at(ptr noundef %46, i32 noundef %30, ptr noundef %31, i32 noundef %47) #12
  br label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 1
  %50 = load volatile i32, ptr %49, align 4
  %51 = load volatile i32, ptr %49, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54, !prof !16

54:                                               ; preds = %48
  %55 = add i32 %51, -1
  br label %58

56:                                               ; preds = %48
  %57 = ptrtoint ptr %39 to i32
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = inttoptr i32 %59 to ptr
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %60) #12
  br label %61

61:                                               ; preds = %58, %38, %29
  %62 = getelementptr i32, ptr %31, i32 1
  %63 = add i32 %30, 4096
  %64 = icmp eq i32 %63, %2
  br i1 %64, label %65, label %29

65:                                               ; preds = %61, %4
  %66 = phi ptr [ %25, %4 ], [ %62, %61 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  %67 = load i16, ptr %14, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !33
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  %69 = getelementptr i32, ptr %66, i32 -1
  tail call void @kunmap_local_indexed(ptr noundef %69) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %70 = load i32, ptr %19, align 8
  %71 = add i32 %70, -1
  store i32 %71, ptr %19, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  %72 = tail call i32 @__cond_resched() #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clear_refs_test_walk(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #10 {
  %4 = getelementptr inbounds %struct.mm_walk, ptr %2, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.mm_walk, ptr %2, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %22 [
    i32 2, label %14
    i32 3, label %18
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %23

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 14
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %14, %10
  br label %23

23:                                               ; preds = %22, %18, %14, %3
  %24 = phi i32 [ 0, %22 ], [ 1, %3 ], [ 1, %14 ], [ 1, %18 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pagemap_pmd_range(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr @mem_map, align 4
  %10 = load i32, ptr %0, align 4
  %11 = lshr i32 %10, 12
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %13 = sub i32 %11, %12
  %14 = getelementptr %struct.page, ptr %9, i32 %13, i32 1, i32 0, i32 3
  %15 = getelementptr %struct.page, ptr %9, i32 %13
  %16 = load i32, ptr @pgprot_kernel, align 4
  %17 = or i32 %16, 512
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !29
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 149
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  %22 = tail call ptr @__kmap_local_page_prot(ptr noundef %15, i32 noundef %17) #12
  %23 = lshr i32 %1, 12
  %24 = and i32 %23, 511
  %25 = getelementptr i32, ptr %22, i32 %24
  tail call void @_raw_spin_lock(ptr noundef %14) #12
  %26 = icmp ult i32 %1, %2
  br i1 %26, label %27, label %136

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.pagemapread, ptr %8, i32 0, i32 3
  %29 = getelementptr inbounds %struct.pagemapread, ptr %8, i32 0, i32 2
  %30 = getelementptr inbounds %struct.pagemapread, ptr %8, i32 0, i32 1
  br label %31

31:                                               ; preds = %132, %27
  %32 = phi i32 [ %1, %27 ], [ %134, %132 ]
  %33 = phi ptr [ %25, %27 ], [ %133, %132 ]
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load i8, ptr %28, align 4, !range !38, !noalias !39
  %39 = icmp eq i8 %38, 0
  %40 = lshr i32 %34, 12
  %41 = zext i32 %40 to i64
  %42 = select i1 %39, i64 0, i64 %41
  %43 = tail call ptr @vm_normal_page(ptr noundef %6, i32 noundef %32, i32 noundef %34) #12, !noalias !39
  br label %78

44:                                               ; preds = %31
  %45 = icmp eq i32 %34, 0
  br i1 %45, label %121, label %46

46:                                               ; preds = %44
  %47 = lshr i32 %34, 7
  %48 = load i8, ptr %28, align 4, !range !38, !noalias !39
  %49 = icmp eq i8 %48, 0
  %50 = lshr i32 %34, 2
  %51 = and i32 %50, 31
  %52 = shl nuw nsw i32 %47, 5
  %53 = or i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = select i1 %49, i64 0, i64 %54
  %56 = and i32 %34, 120
  %57 = icmp eq i32 %56, 120
  br i1 %57, label %58, label %121

58:                                               ; preds = %46
  %59 = load ptr, ptr @mem_map, align 4, !noalias !39
  %60 = load i32, ptr @__pv_phys_pfn_offset, align 4, !noalias !39
  %61 = sub i32 %47, %60
  %62 = getelementptr %struct.page, ptr %59, i32 %61
  %63 = getelementptr %struct.page, ptr %59, i32 %61, i32 1
  %64 = load volatile i32, ptr %63, align 4, !noalias !39
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67, !prof !16

67:                                               ; preds = %58
  %68 = add i32 %64, -1
  br label %71

69:                                               ; preds = %58
  %70 = ptrtoint ptr %62 to i32
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = inttoptr i32 %72 to ptr
  %74 = load volatile i32, ptr %73, align 4, !noalias !39
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78, !prof !13

77:                                               ; preds = %71
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/swapops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #12, !noalias !39, !srcloc !31
  unreachable

78:                                               ; preds = %71, %37
  %79 = phi i64 [ -9223372036854775808, %37 ], [ 4611686018427387904, %71 ]
  %80 = phi ptr [ %43, %37 ], [ %62, %71 ]
  %81 = phi i64 [ %42, %37 ], [ %55, %71 ]
  %82 = icmp eq ptr %80, null
  br i1 %82, label %121, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.page, ptr %80, i32 0, i32 1
  %85 = load volatile i32, ptr %84, align 4, !noalias !39
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88, !prof !16

88:                                               ; preds = %83
  %89 = add i32 %85, -1
  br label %92

90:                                               ; preds = %83
  %91 = ptrtoint ptr %80 to i32
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = inttoptr i32 %93 to ptr
  %95 = getelementptr inbounds %struct.anon.72, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4, !noalias !39
  %97 = ptrtoint ptr %96 to i32
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  %100 = or i64 %79, 2305843009213693952
  %101 = select i1 %99, i64 %100, i64 %79
  br i1 %36, label %121, label %102

102:                                              ; preds = %92
  %103 = load volatile i32, ptr %80, align 4, !noalias !39
  %104 = and i32 %103, 65536
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load volatile i32, ptr %84, align 4, !noalias !39
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110, !prof !16

110:                                              ; preds = %106, %102
  %111 = tail call i32 @__page_mapcount(ptr noundef nonnull %80) #12, !noalias !39
  br label %116

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.page, ptr %80, i32 0, i32 2
  %114 = load volatile i32, ptr %113, align 4, !noalias !39
  %115 = add i32 %114, 1
  br label %116

116:                                              ; preds = %112, %110
  %117 = phi i32 [ %111, %110 ], [ %115, %112 ]
  %118 = icmp eq i32 %117, 1
  %119 = or i64 %101, 72057594037927936
  %120 = select i1 %118, i64 %119, i64 %101
  br label %121

121:                                              ; preds = %116, %92, %78, %46, %44
  %122 = phi i64 [ %81, %92 ], [ %81, %116 ], [ %81, %78 ], [ %55, %46 ], [ 0, %44 ]
  %123 = phi i64 [ %101, %92 ], [ %120, %116 ], [ %79, %78 ], [ 4611686018427387904, %46 ], [ 0, %44 ]
  %124 = or i64 %123, %122
  %125 = load ptr, ptr %29, align 4
  %126 = load i32, ptr %8, align 4
  %127 = add i32 %126, 1
  store i32 %127, ptr %8, align 4
  %128 = getelementptr %struct.pagemap_entry_t, ptr %125, i32 %126
  store i64 %124, ptr %128, align 8
  %129 = load i32, ptr %8, align 4
  %130 = load i32, ptr %30, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %121
  %133 = getelementptr i32, ptr %33, i32 1
  %134 = add i32 %32, 4096
  %135 = icmp ult i32 %134, %2
  br i1 %135, label %31, label %136

136:                                              ; preds = %132, %121, %4
  %137 = phi i32 [ 0, %4 ], [ 1, %121 ], [ 0, %132 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !32
  %138 = load i16, ptr %14, align 4
  %139 = add i16 %138, 1
  store i16 %139, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !33
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !35
  tail call void @kunmap_local_indexed(ptr noundef %25) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !36
  %140 = load i32, ptr %19, align 8
  %141 = add i32 %140, -1
  store i32 %141, ptr %19, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !37
  %142 = tail call i32 @__cond_resched() #12
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pagemap_pte_hole(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ult i32 %0, %1
  br i1 %7, label %8, label %63

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mm_walk, ptr %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.pagemapread, ptr %6, i32 0, i32 2
  %11 = getelementptr inbounds %struct.pagemapread, ptr %6, i32 0, i32 1
  br label %15

12:                                               ; preds = %58, %42
  %13 = phi i32 [ %41, %42 ], [ %59, %58 ]
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %15, label %63

15:                                               ; preds = %12, %8
  %16 = phi i32 [ %0, %8 ], [ %13, %12 ]
  %17 = load ptr, ptr %9, align 4
  %18 = tail call ptr @find_vma(ptr noundef %17, i32 noundef %16) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %18, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %1)
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i32 [ %22, %20 ], [ %1, %15 ]
  %25 = icmp ult i32 %16, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, ptr %6, align 4
  br label %28

28:                                               ; preds = %37, %26
  %29 = phi i32 [ %34, %37 ], [ %27, %26 ]
  %30 = phi i32 [ %38, %37 ], [ %16, %26 ]
  %31 = load ptr, ptr %10, align 4
  %32 = add i32 %29, 1
  store i32 %32, ptr %6, align 4
  %33 = getelementptr %struct.pagemap_entry_t, ptr %31, i32 %29
  store i64 0, ptr %33, align 8
  %34 = load i32, ptr %6, align 4
  %35 = load i32, ptr %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %28
  %38 = add i32 %30, 4096
  %39 = icmp ult i32 %38, %24
  br i1 %39, label %28, label %40

40:                                               ; preds = %37, %23
  %41 = phi i32 [ %16, %23 ], [ %38, %37 ]
  br i1 %19, label %63, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.vm_area_struct, ptr %18, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 %1)
  %46 = icmp ult i32 %41, %45
  br i1 %46, label %47, label %12

47:                                               ; preds = %42
  %48 = load i32, ptr %6, align 4
  br label %49

49:                                               ; preds = %58, %47
  %50 = phi i32 [ %55, %58 ], [ %48, %47 ]
  %51 = phi i32 [ %59, %58 ], [ %41, %47 ]
  %52 = load ptr, ptr %10, align 4
  %53 = add i32 %50, 1
  store i32 %53, ptr %6, align 4
  %54 = getelementptr %struct.pagemap_entry_t, ptr %52, i32 %50
  store i64 0, ptr %54, align 8
  %55 = load i32, ptr %6, align 4
  %56 = load i32, ptr %11, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = add i32 %51, 4096
  %60 = load i32, ptr %43, align 4
  %61 = tail call i32 @llvm.umin.i32(i32 %60, i32 %1)
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %49, label %12

63:                                               ; preds = %49, %40, %28, %12, %4
  %64 = phi i32 [ 0, %4 ], [ 1, %49 ], [ 1, %28 ], [ 0, %40 ], [ 0, %12 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readonly }

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
!8 = !{i64 881438, i64 881459}
!9 = !{i64 2148493889}
!10 = !{i64 891824, i64 2148381795, i64 2148381821, i64 2148381868, i64 2148381890, i64 2148381918, i64 2148381938}
!11 = !{i64 2148396251, i64 2148396283, i64 2148396312, i64 2148396346, i64 2148396377, i64 2148396400}
!12 = !{i64 2148494092}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"auto-init"}
!15 = !{i64 2151553053, i64 2151553078}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 4049165}
!18 = !{i64 4049362}
!19 = !{i64 2151534641}
!20 = !{i64 2148393210, i64 2148393236, i64 2148393265, i64 2148393299, i64 2148393330, i64 2148393353}
!21 = !{i64 2148395567, i64 2148395593, i64 2148395622, i64 2148395656, i64 2148395687, i64 2148395710}
!22 = !{i64 2148494890}
!23 = !{i64 2148397025, i64 2148397057, i64 2148397086, i64 2148397120, i64 2148397151, i64 2148397174}
!24 = !{i64 2149408242}
!25 = !{i64 2148392717}
!26 = !{i64 878393, i64 878418, i64 878440, i64 878456, i64 878468, i64 878488, i64 878512, i64 878528, i64 878540}
!27 = !{i64 2148392843}
!28 = !{i64 2151553631, i64 2151553656}
!29 = !{i64 2152897983}
!30 = !{i64 2151555559}
!31 = !{i64 2153550402, i64 2153550890, i64 2153550439, i64 2153550495, i64 2153550529, i64 2153550553, i64 2153550594, i64 2153550615, i64 2153550643, i64 2153550677}
!32 = !{i64 2149058890}
!33 = !{i64 2149054714}
!34 = !{i64 2149054789, i64 2149054816, i64 2149054863, i64 2149054885, i64 2149054913, i64 2149054933}
!35 = !{i64 2149081893}
!36 = !{i64 2151555766}
!37 = !{i64 2152900608}
!38 = !{i8 0, i8 2}
!39 = !{!40}
!40 = distinct !{!40, !41, !"pte_to_pagemap_entry: argument 0"}
!41 = distinct !{!41, !"pte_to_pagemap_entry"}
